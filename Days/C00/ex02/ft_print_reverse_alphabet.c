/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_reverse_alphabet.c                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Ayassir05 <abdelaliyassir149@gmail.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/13 15:21:52 by Ayassir05         #+#    #+#             */
/*   Updated: 2025/02/13 15:36:38 by yassir05         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_print_reverse_alphabet(void)
{
	int	x;

	x = 'z';
	while (x >= 'a')
	{
		write (1, &x, 1);
		x--;
	}
}
/*
int main(void)
{
	ft_print_reverse_alphabet();
} */
