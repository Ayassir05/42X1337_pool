/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_iterative.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Ayassir05 <abdelaliyassir149@gmail.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/14 21:42:11 by Ayassir05         #+#    #+#             */
/*   Updated: 2025/02/15 00:49:08 by yassir05         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include <unistd.h>

void	ft_putchar(char a)
{
	write (1, &a, 1);
}

void	ft_putnbr(int nb)
{
	int	div;

	div = 1;
	if (nb == -2147483648)
	{
		write (1, "-2147483648", 11);
		return ;
	}
	if (nb < 0)
	{
		ft_putchar('-');
		nb = -nb;
	}
	while (nb / div > 9)
	{
		div *= 10;
	}
	while (div)
	{
		ft_putchar((nb / div) + '0');
		nb %= div;
		div /= 10;
	}
}
/*
int main()
{
	ft_putnbr(42);

}
*/
