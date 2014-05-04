#include <iostream>
#include <stdlib.h>

using namespace std;

bool compare(int g, int n) {
	if (g == n) {
		cout << "Congratulations! You guessed right." << endl;
		return true;
	}
	else if (g > n) {
		cout << "I'm sorry, that's too high. Guess lower!" << endl;
	}
	else {
		cout << "You guessed too low. Guess higher!" << endl;
	}
	return false;
}
		

int main() {
	int n = 1 + rand() % 100;
	cout << "I have picked a number at random, between 1 and 100. Make your guess!" << endl;
	int g = 0; // guess
	int i = 0; // count
	do {
		cout << "Guess " << ++i << ": ";
		cin >> g;
	} while (!compare(g, n));
	cout << "Exiting..." << endl;
	return 0;
}
