/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_bonus.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: flavon <flavon@student.21-school.ru>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/16 02:48:01 by flavon            #+#    #+#             */
/*   Updated: 2020/11/16 03:33:24 by flavon           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

t_list	*ft_lstnew(void *content)
{
	t_list *list;

	list = malloc(sizeof(t_list));
	if (list == NULL)
		return (NULL);
	list->content = content;
	list->next = NULL;
	return (list);
}

int main(void)
{
	t_list *list = ft_lstnew("first");
	ft_list_push_front(&list, "second");
	ft_list_push_front(&list, "third");
	ft_list_push_front(&list, "fourth");
	ft_list_push_front(&list, "fifth");

	printf("list size = %d\n", ft_list_size(list));
	int i = 0;
	while (list)
	{
		printf("list[%d] = %s\n", i++, list->content);
		list = list->next;
	}
}