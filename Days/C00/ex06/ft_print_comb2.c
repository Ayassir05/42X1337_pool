/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_comb2.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Ayassir05 <abdelaliyassir149@gmail.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/14 01:33:30 by Ayassir05         #+#    #+#             */
/*   Updated: 2025/02/14 02:54:16 by yassir05         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include <unistd.h>

void	ft_putchar(char a)
{
	write (1, &a, 1);
}

void	ft_print_comb2(void)
{
	int	i;
	int	j;

	i = 0;
	while (i <= 98)
	{
		j = i + 1;
		while (j <= 99)
		{
			ft_putchar ((i / 10) + '0');
			ft_putchar ((i % 10) + '0');
			write (1, " ", 1);
			ft_putchar ((j / 10) + '0');
			ft_putchar ((j % 10) + '0');
			if (i != 98)
				write (1, ", ", 2);
			j++;
		}
		i++;
	}
}
/*
int	main(void)
{
	ft_print_comb2();
}
*/
