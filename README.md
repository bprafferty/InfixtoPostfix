Brian Rafferty bprafferty03@gmail.com

prog3_1.cpp Class that starts by printing the header for the program, including the assignment number, author name, 
and author email. Following the header, the class creates a lua state and initializes it by opening the libraries. 
The user types in a file into the console following the initial program calling, and it will run it via the initialized 
lua state. Following the termination of the lua program, the state will be closed.

prog3_2.lua This lua program receives string data from the C++ environment and operates on it by implementing 
the InfixToPostfix algorithm. The string is immediately iterated through while being split by a space delimiter.
The resulting tokens are placed into an array. The array is then incremented through and compared to find out if
each element is a number or a form of computation. If it is a number, then the token is immediately added to the
postfix array. If the token is a form of computation it goes through another comparison with an array containing 
predetermined values based upon PEMDAS for every form of operation. By following these rules, the algorithm is able 
to organize the final postfix array. After the array is in the correct order it is reconnected into a string, with
each token separated by a space. Before returning the final string, the assignment header is printed which includes 
the assignment number, author name, and author email.

prog3_3.cpp Class that starts by printing the header for the program, including the assignment number, author name, 
and author email. Following the header, the class creates a lua state and initializes it by opening the libraries. 
The user types in a file into the console following the initial program calling, and it will run it via the initialized 
lua state. The class will then read in a line via cin and send it to the lua file's 'InfixToPostfix' function in the form 
of a string. Following processing of the data, the lua program does the InfixToPostfix algorithm to rearrange the input.
After the rearrangement, all of the information that was calculated in the lua state will be sent back and printed at the 
end of C++ state. Lastly, the lua state will be closed and the program will end.