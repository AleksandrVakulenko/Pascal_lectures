#include <iostream>


class Nyan {
	int value;
	
public: 
	Nyan(int arg) : value(arg) {}
	
	Nyan& operator++(){
		++value;
		std::cout << "++\n";
		return *this;
	}
	
	bool operator < (int arg){
		return value < arg;
	}
	
	/*
	bool operator > (int arg){
		return value > arg;
	}
	*/
	
	explicit operator int(){
		return value;
	}
	
	friend bool operator > (Nyan arg1, int arg2);
	
};


	bool operator > (Nyan arg1, int arg2){
		return arg1.value > arg2;
	}



int  k;

int main(){
	k = 10;
	
	Nyan i(0);
	for (;;){
		std::cout << static_cast<int>(i) << '\n';
		++i;
		if (i > k)
			break;
	}
	
		

	
	
	
	return 0;
}