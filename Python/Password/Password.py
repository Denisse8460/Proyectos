import random

def generate_password():
    
    capital_letters = ['A','B','C','D','E','F','G','H',
                       'I','J','K','L','M','N','O','P',
                       'Q','R','S','T','U','V','W','X',
                       'Y','Z']
    
    lower_case= ['a','b','c','d','e','f','g','h',
                 'i','j','k','l','m','n','o','p',
                 'q','r','s','t','u','v','w','x',
                 'y','z']
    
    symbols = ['!','#','$','%','^','&','*',
               '(','_','+',')','-','=',
               '{','}','|',':',';','"',"'",',',
               '.','<','>','?']
    
    numbers = ['0','1','2','3','4','5','6',
               '7','8','9']

    characters = capital_letters + lower_case + symbols + numbers
    password = []

    for i in range(15):
        character_random = random.choice(characters)
        password.append(character_random)
    password = "".join(password)
    return password

def run ():
    password = generate_password()
    print("Your new password is: " + password)

if __name__ == "__main__":
    run()