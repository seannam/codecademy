pyg = 'ay'
vowel = ['a','e','i','o','u']
original = raw_input('Enter a word:')

if len(original) > 0 and original.isalpha():
    print original
    word = original.lower()
    first = word[0]
    if first == vowel[0] or first == vowel[1] or first == [2] or first == vowel[3] or first == vowel[4]:
        new_word = word + pyg
        print new_word
    else:
        new_word = word[1:len(word)] + first + pyg
        print new_word
else:
    print 'empty'