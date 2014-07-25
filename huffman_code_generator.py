from collections import Counter
import random


def generate_huffman_code(alphabet, num_chars):
    string = [alphabet[random.randint(0, len(alphabet) - 1)] for _ in range(20)]
    count = Counter(string)

    print "Generated string: {}".format(count)
    return ''.join([pair[0] for pair in sorted(count.items(), key=lambda x: x[1], reverse=True)])


"""
Generates two tables: LUT (Look up table) and code_lengths.
Given a string which represents alphabets sorted by their frequencies of appearance, the code will
generate a lookup table. An index i is considered as a binary number, and the first alphabet
which would be recognized if the code was decoded one character at a time is placed at LUT[i].
For example, if the code to be decoded was 11110010, the first Huffman code to be recognized would
be 1110, and LUT[114] = alphabet corresponding to 1110. For each of these mappings, the code lengths
are recorded as well e.g. LUT[114] = len(1110) = 4.
"""
def generate_LUT(sorted_alphabet):
    huffman_code = {"1"*i + "0": sorted_alphabet[i] for i in range(len(sorted_alphabet))}
    LUT, code_lengths = {}, {}
    max_len = len(sorted_alphabet)

    for i in range(0, 1 << max_len):
        binary = "{0:06b}".format(i)
        for code in huffman_code.keys():
            if binary.startswith(code):
                LUT[i] = huffman_code[code]
                print "{0:06b} {1}".format(i, LUT[i])
                print code, len(code)
                code_lengths[i] = len(code)
                break
        if i not in LUT: #1, 11, 111, ...
            LUT[i] = 'x'
            code_lengths[i] = 0

    # Special case. If max code length was reached, then LUT[i] should be the least occurring code
    # e.g. LUT[111111] = a where sorted_alphabet = dbecfa
    max_array_len = (1 << max_len) - 1
    LUT[max_array_len] = sorted_alphabet[-1]
    code_lengths[max_array_len] = max_len

    LUT = [b for a, b in sorted(("{0:06b}".format(k), v) for k, v in LUT.items())]
    code_lengths = [b for a, b in sorted(("{0:06b}".format(k), v) for k, v in code_lengths.items())]
    print code_lengths

    return LUT, code_lengths

def main():
    num_chars = 35 # Number of characters generated 
    alphabet = "abcdefg"

    # sorted_alphabet = generate_huffman_code(alphabet, num_chars)
    # print sorted_alphabet
    # LUT, code_lengths = generate_LUT(sorted_alphabet)
    LUT, code_lengths = generate_LUT("dbecfa")
    
    with open("LUT.txt", "w") as f:
        f.write(','.join(LUT))
        f.write("\n")
        f.write(','.join(str(x) for x in code_lengths))
    # print ''.join(LUT)
    # print ''.join(str(x) for x in code_lengths)

if __name__ == "__main__":
    main()
