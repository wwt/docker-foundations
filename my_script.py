#! /usr/bin/env python3

def main():
    try:
        name = input('\nHello! What is your name? ')
        if name:
            print(f'\nWell, {name}, it is nice to meet you!\n')
    except:
        print('\n\nSorry. Something went wrong, please try again.\n')

if __name__ == '__main__':
    main()
    