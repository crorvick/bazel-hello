#include <iostream>

int main(int argc, char *argv[])
{
    while (std::cin)
    {
        char c;

        std::cin.read(&c, 1);

	if (c == '?')
	    c = '!';

        std::cout.write(&c, 1);
    }
}
