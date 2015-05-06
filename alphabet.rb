#1.)
alphabet = {a: 'Apple',
            b: 'Ball',
            c: 'Cat',
            d: 'Dog',
            e: 'Elephant',
            f: 'Fun',
            g: 'Girl',
            h: 'Hat',
            i: 'It',
            j: 'Joker',
            k: 'Kite',
            l: 'Lion',
            m: 'Man',
            n: 'Nickel',
            o: 'Ocean',
            p: 'Piano',
            q: 'Quest',
            r: 'Rack',
            s: 'Slack',
            t: 'Top',
            u: 'Under',
            v: 'Violin',
            w: 'Willow',
            x: 'Xray',
            y: 'Yellow',
            z: 'Zebra'}

def encode_string(alphabet, word)
  word.each_char do |letter|
    puts alphabet[letter.to_sym]
  end
  
end
x = "dog"
encode_string(alphabet, x)



def decode_string(alphabet, telephony)
result=[]
  telephony do |letter|

    puts alphabet[word.to_s]

  end

end

x = a

decode_string(alphabet, x)

#2.) merge!
#This feature provides the user with a way to merge the contents of multiple hashes.
#If the block of code is not specified and there are some keys that are duplicated, the feature
#will overwrite the values of old hash with the new hash being added to it.
