function print_rainbow

    set rainbow_colors e87d7d e8977d e8b07d e8ca7d e8e47d d3e87d b9e87d 9fe87d 86e87d 7de88e 7de8a8 7de8c1 7de8db 7ddbe8 7dc1e8 7da8e8 7d8ee8 867de8 9f7de8 b97de8 d37de8 e87de4 e87dca e87db0 e87d97 e87d8a
    set rainbow_count (count $rainbow_colors)

    set word_to_print (string split '' $argv[1])
    set w_index 0

    for c in $word_to_print

        set_color $rainbow_colors[(math "$w_index + 1")]
        printf "$c"

        set w_index (math "($w_index + 1) % $rainbow_count")

    end    

end 
