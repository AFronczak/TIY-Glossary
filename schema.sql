CREATE TABLE terms(id INTEGER PRIMARY KEY AUTOINCREMENT,
                    name varchar,
                    definition varchar,
                    author varchar,
                    web_link varchar,
                    category_id integer);

CREATE TABLE categories(id INTEGER PRIMARY KEY AUTOINCREMENT,
                         name varchar,
                         subject varchar);

INSERT INTO categories VALUES (NULL, 'Front End Engineering', 'All words related to Ruby and other front-end engineering');
INSERT INTO categories VALUES (NULL, 'Back End Engineering', 'All words related to Ruby and other back-end engineering');



INSERT INTO terms VALUES (NULL, "Array", "You can get elements out of arrays if you know their index. Array elements' indexes start at 0 and increment by 1, so the first element's index is 0, the second element's index is 1, the third element's is 2, etc.",
                                "Codecademy", "https://www.codecademy.com/articles/glossary-javascript", 1);
INSERT INTO terms VALUES (NULL, "Boolean", "A simple explanation would be that == does just value checking ( no type checking ) , whereas , === does both value checking and type checking . Seeing the examples may make it all clear. It is always advisable that you never use == , because == often produces unwanted results",
                                "Codecademy", "https://www.codecademy.com/articles/glossary-javascript", 1);
INSERT INTO terms VALUES (NULL, "Code Comment", "Code comments are used for increasing the readability of the code.If you write 100 lines of code and then forget what each function did , it's not useful at all. Comments are like notes , suggestions , warnings ,etc. that you can put for yourself. Code comments are not executed",
                                "Codecademy", "https://www.codecademy.com/articles/glossary-javascript", 1);
INSERT INTO terms VALUES (NULL, "Console", "Prints text to the console. Useful for debugging.",
                                "Codecademy", "https://www.codecademy.com/articles/glossary-javascript", 1);
INSERT INTO terms VALUES (NULL, "Function", "A function is a JavaScript procedure—a set of statements that performs a task or calculates a value.It is like a reusable piece of code. Imagine , having 20 for loops ,and then having a single function to handle it all . To use a function, you must define it somewhere in the scope from which you wish to call it. A function definition (also called a function declaration) consists of the function keyword, followed by the name of the function, a list of arguments to the function, enclosed in parentheses and separated by commas, the JavaScript statements that define the function, enclosed in curly braces, { }.",
                                "Codecademy", "https://www.codecademy.com/articles/glossary-javascript", 1);
