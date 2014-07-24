from collections import Counter
import random

NUM_CHARS = 20 # Number of characters generated 
ALPHABET = "abcdef"

string = [ALPHABET[random.randint(0, len(ALPHABET) - 1)] for _ in range(20)]
count = Counter(string)

print "Generated string: {}".format(count)
print ''.join([pair[0] for pair in sorted(count.items(), key=lambda x: x[1], reverse=True)])
