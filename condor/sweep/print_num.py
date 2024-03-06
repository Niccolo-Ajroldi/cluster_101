import sys

def main():
    # Check if the number argument is provided
    if len(sys.argv) != 2:
        print("Usage: python print_number.py <number>")
        return

    # Get the number from command line argument
    number = sys.argv[1]

    # Print the number
    print("Argument: ", number)

if __name__ == "__main__":
    main()
