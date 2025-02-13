/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_alphabet.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Ayassir05 <abdelaliyassir149@gmail.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/13 02:04:22 by Ayassir05         #+#    #+#             */
/*   Updated: 2025/02/13 02:17:28 by yassir05         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_print_alphabet(void)
{
	int	x;

	x = 'a';
	while (x <= 'z')
	{
		write (1, &x, 1);
		x++;
	}
}
/*
int main(void)
{
	ft_print_alphabet();
}
*/
