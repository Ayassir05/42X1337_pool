#include <unistd.h> // Include the header for the write function
// unistd.h provides access to the POSIX operating system API, including the write function.

// Function to print a single character
void	ft_putchar(char a)
{
	// write(1, &a, 1) writes the character 'a' to the standard output (file descriptor 1)
	// Parameters:
	// 1: File descriptor (1 = standard output)
	// &a: Address of the character to write
	// 1: Number of bytes to write
	write(1, &a, 1);
}

// Function to print an integer
void	ft_putnbr(int nb)
{
	// Handle the special case of -2147483648 (smallest 32-bit integer)
	// This number is special because its absolute value (2147483648) cannot be represented
	// as a positive 32-bit integer, so we handle it separately.
	if (nb == -2147483648)
	{
		// Directly write the string "-2147483648" to the standard output
		write(1, "-2147483648", 11);
		// Return early to avoid further processing
		return;
	}

	// Handle negative numbers
	if (nb < 0)
	{
		// Print the minus sign to indicate the number is negative
		ft_putchar('-');
		// Convert the number to positive for easier processing
		nb = -nb;
	}

	// Recursively print the number
	// If the number has more than one digit (nb > 9), we need to print the higher digits first
	if (nb > 9)
	{
		// Recursively call ft_putnbr with nb / 10 to print the higher digits
		// For example, if nb = 1234, nb / 10 = 123
		ft_putnbr(nb / 10);
	}

	// Print the last digit of the number
	// nb % 10 gives the last digit of the number
	// Adding '0' converts the digit to its ASCII character representation
	// For example, 5 + '0' = '5'
	ft_putchar((nb % 10) + '0');
}

/*
// Main function to test ft_putnbr
int main()
{
	// Test cases to demonstrate the functionality of ft_putnbr

	// Test small positive number
	ft_putnbr(42);
	ft_putchar('\n'); // Print a newline for clarity

	// Test small negative number
	ft_putnbr(-42);
	ft_putchar('\n'); // Print a newline for clarity

	// Test large positive number
	ft_putnbr(123456789);
	ft_putchar('\n'); // Print a newline for clarity

	// Test large negative number
	ft_putnbr(-123456789);
	ft_putchar('\n'); // Print a newline for clarity

	// Test maximum 32-bit integer
	ft_putnbr(2147483647);
	ft_putchar('\n'); // Print a newline for clarity

	// Test minimum 32-bit integer
	ft_putnbr(-2147483648);
	ft_putchar('\n'); // Print a newline for clarity

	// Test zero
	ft_putnbr(0);
	ft_putchar('\n'); // Print a newline for clarity

	// Return 0 to indicate successful execution
	return 0;
}
*/
