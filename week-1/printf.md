# <b> Using `printf` command to create a file </b>

With the `printf` command, you are able to add formatted contents into your file. e.g.

```
printf 'The man is a good salesman'
```

This outputs the words on the terminal but when you redirect it to a another file, it will create the file with the contents. e.g.

```
printf "The sailor was very positive about the weather today\n" > sailor.txt
```

I added `\n` which indicates a new line to this new code example because the previous example had the terminal's prompt on the same line as the output.

![printf-command](images/printf-command.png "printf-command")

Also, if we want to add another line to the file we just created, we would not use the <b>></b> sign again, we will use <b>>></b> instead. 

