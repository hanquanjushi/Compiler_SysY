#!/usr/bin/env python3
import subprocess
# 17
lv0_1 = {
    "00_comment2": (1, False),
    "03_arr_defn2": (1, False),
    "05_arr_defn4": (1, False),
    "06_const_var_defn2": (1, False),
    "08_const_array_defn": (1, False),
    "08_global_arr_init": (1, False),
    "27_scope5": (1, False),
    "36_rotate": (1, True),
    "66_exgcd": (1, False),
    "74_kmp": (1, False),
    "77_substr": (1, False),
    "78_side_effect": (1, False),
    "83_long_array": (1, False),
    "84_long_array2": (1, False),
    "87_many_params": (1, True),
    "88_many_params2": (1, False),
    "89_many_globals": (1, False),
    "90_many_locals": (1, False),

}


suite = [
    ("lv0_1", lv0_1, 0),
]


def eval():
    f = open("eval_result", 'w')
    EXE_PATH = "../../../build/cminusfc"
    TEST_BASE_PATH = "../../func/testcases"
    ANSWER_BASE_PATH = "../../func/answer"
    total_points = 0
    for level in suite:
        lv_points = 0
        has_bonus = True
        level_name = level[0]
        bonus = level[2]
        cases = level[1]
        f.write('===========%s START========\n' % level_name)
        for case in cases:
            f.write('%s:' % case)
            TEST_PATH = TEST_BASE_PATH + level_name + "/" + case
            ANSWER_PATH = ANSWER_BASE_PATH + level_name + "/" + case
            score = cases[case][0]
            need_input = cases[case][1]

            COMMAND = [TEST_PATH]

            try:
                result = subprocess.run([EXE_PATH, "-o", TEST_PATH + ".ll", "-emit-llvm", TEST_PATH + ".sy"], stderr=subprocess.PIPE, timeout=1)
            except Exception as _:
                f.write('\tFail\n')
                continue

            if result.returncode == 0:
                subprocess.run(["clang", "-O0", "-w", "-no-pie", TEST_PATH + ".ll", "-o", TEST_PATH, "-L", "../../../build", "-lcminus_io"])# 这里还是cminus库
                input_option = None
                if need_input:
                    with open(ANSWER_PATH + ".in", "rb") as fin:
                        input_option = fin.read()

                try:
                    result = subprocess.run(COMMAND, input=input_option, stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=1)
                    with open(ANSWER_PATH + ".out", "rb") as fout:
                        if result.stdout == fout.read():
                            f.write('\tSuccess\n')
                            lv_points += score
                        else:
                            f.write('\tFail\n')
                            has_bonus = False
                except Exception as _:
                    f.write('\tFail\n')
                    has_bonus = False
                #finally:
                    #subprocess.call(["rm", "-rf", TEST_PATH, TEST_PATH + ".o", TEST_PATH + ".ll"])

            else:
                f.write('\tFail\n')
                has_bonus = False

        if has_bonus:
            lv_points += bonus

        total_points += lv_points
        f.write('points of %s is: %d\n' % (level_name, lv_points))
        f.write('===========%s END========\n\n' % level_name)
    f.write('total points: %d\n' % total_points)


if __name__ == "__main__":
    eval()
