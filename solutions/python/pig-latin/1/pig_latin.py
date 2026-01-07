import re

def translate(text):
    translated_words = []
    
    words = text.split(" ")
    for word in words:
        translated_word = ""
        
        # Rule 1
        if re.match('^(?:xr|yt|[aeiou]+)', word, re.IGNORECASE) != None:
             translated_word = word
        # Rule 3
        elif (m := re.match('^([^aeiou]*qu)(.*)', word, re.IGNORECASE)) != None:
            translated_word = m.group(2) + m.group(1)            
        # Rule 4
        elif (m := re.match('^([^aeiou]+)(y.*)', word, re.IGNORECASE)) != None:
            translated_word = m.group(2) + m.group(1)        
        # Rule 2
        elif (m := re.match('^([^aeiou]+)(.*)', word, re.IGNORECASE)) != None:
            translated_word = m.group(2) + m.group(1)

        translated_words.append(translated_word + "ay")

    return " ".join(translated_words)