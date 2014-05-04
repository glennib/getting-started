#include <iostream>
using namespace std;

int main() {
	int input_var = 0;
	
	do {
		cout << "Enter a number (-1 to quit): ";
		if (!(cin >> input_var)) {
			cout << "You entered a non-numeric. Exiting..." << endl;
			break;
		}
		else if (input_var != -1) {
			cout << "You entered " << input_var << endl;
		}
	} while (input_var != -1);
	cout << "All done." << endl;
	return 0;
}
