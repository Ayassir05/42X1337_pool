// Include the unistd.h library, which provides the `write` function for output operations.
#include <unistd.h>

// Function to print a single character.
void	ft_putchar(char a)
{
	// The write function takes three arguments: 
	// - 1 (file descriptor for standard output)
	// - &a (address of the character to be printed)
	// - 1 (number of bytes to write)
	write (1, &a, 1);
}

// Function to print an integer (positive or negative).
void	ft_putnbr(int nb)
{
	int	div; // Variable used to find the highest power of 10 in the number.

	div = 1; // Initialize div to 1, will be used to extract digits.

	// Special case: If the number is the smallest possible integer (-2147483648),
	// it cannot be directly converted to positive (since 2147483648 is out of range for int).
	// So we print it as a string and return.
	if (nb == -2147483648)
	{
		write (1, "-2147483648", 11);
		return ;
	}

	// If the number is negative, print a '-' sign and convert it to positive.
	if (nb < 0)
	{
		ft_putchar('-'); // Print the negative sign.
		nb = -nb;        // Convert to positive.
	}

	// Find the highest power of 10 in the number.
	while (nb / div > 9) // Example: If nb = 1234, div will become 1000.
	{
		div *= 10;
	}

	// Extract and print digits one by one.
	while (div)
	{
		ft_putchar((nb / div) + '0'); // Print the leftmost digit.
		nb %= div; // Remove the leftmost digit from nb.
		div /= 10; // Reduce div to process the next digit.
	}
}

/*
// Uncomment this main function to test `ft_putnbr`

int main()
{
	ft_putnbr(42); // Expected output: "42"
}
*/
