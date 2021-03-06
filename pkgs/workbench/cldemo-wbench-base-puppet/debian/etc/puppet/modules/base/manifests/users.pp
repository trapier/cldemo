class base::users {

  account { 'rocket':
    uid      => '600',
    groups   => ['cumulus', 'sudo'],
    ssh_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCs0iscDeejPmguBLIKoes6bZrxIq89mW4dfeox9Bhel1qqDVJZjeqgj6MaI53WnNHcLZFzNyIL4wzNvTL9dVIgc3hHissiieFvtK71q9xqbxwYbySq+yKxJMTe+MrbyLpj5XZVDL/E8/xVxP+YIXMpHm9GeMVeyAT/fPRgkXHGWoHsBz7bGJQi6s78NU0gjtIuT2h+mKhSo2ZZrDNjqR11x5AVjZLB304Y3UxNCsuTjozNNu5JqjW2+9QhKWHLI3kUWUz9EjCV77KKS0GbevQo7Mx8D7uQT3IQxbm3UBhK88GnZeRzkP4ULZ5uYkY1D3hiuSAirDBTdT2lHc/iTX7R',
    #password is lettuce
    password => '$1$mKzk5zJc$rjQIr24v.ZF27J7TAaZxQ.',
  }

  account { 'turtle':
    uid      => '601',
    groups   => ['cumulus', 'sudo'],
    ssh_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCs0iscDeejPmguBLIKoes6bZrxIq89mW4dfeox9Bhel1qqDVJZjeqgj6MaI53WnNHcLZFzNyIL4wzNvTL9dVIgc3hHissiieFvtK71q9xqbxwYbySq+yKxJMTe+MrbyLpj5XZVDL/E8/xVxP+YIXMpHm9GeMVeyAT/fPRgkXHGWoHsBz7bGJQi6s78NU0gjtIuT2h+mKhSo2ZZrDNjqR11x5AVjZLB304Y3UxNCsuTjozNNu5JqjW2+9QhKWHLI3kUWUz9EjCV77KKS0GbevQo7Mx8D7uQT3IQxbm3UBhK88GnZeRzkP4ULZ5uYkY1D3hiuSAirDBTdT2lHc/iTX7R',
    #password is lettuce
    password => '$1$mKzk5zJc$rjQIr24v.ZF27J7TAaZxQ.',
  }

  base::sudo_user { ['rocket', 'turtle', 'cumulus' ]:
    privileges => ['ALL = (root) NOPASSWD: ALL']
  }

}
