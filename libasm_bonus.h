/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm_bonus.h                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: flavon <flavon@student.21-school.ru>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/16 22:22:57 by flavon            #+#    #+#             */
/*   Updated: 2020/11/16 22:23:21 by flavon           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_BONUS_H
# define LIBASM_BONUS_H
# include <string.h>
# include <unistd.h>
# include <stdio.h>
# include <fcntl.h>
# include <stdlib.h>

ssize_t				ft_read(int fildes, void *buf, size_t nbyte);
int					ft_strcmp(const char *s1, const char *s2);
char				*ft_strcpy(char *dst, const char *src);
size_t				ft_strlen(const char *s);
ssize_t				ft_write(int fildes, const void *buf, size_t nbyte);
char				*ft_strdup(const char *s1);

typedef struct		s_list
{
	void			*content;
	struct s_list	*next;
}					t_list;

int					ft_list_size(t_list *lst);
int					ft_list_push_front(t_list **begin_list, void *data);
int					ft_atoi_base(const char *str, char *base);
#endif