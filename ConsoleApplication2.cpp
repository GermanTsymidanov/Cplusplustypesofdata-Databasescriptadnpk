#include <iostream>
#include <cmath>
using namespace std;

int main() {
    //1
    const double Pi = 3.141592653589793;
    double radius;
    cout << "Enter the radius of the circle: ";
    cin >> radius;
    cout << "Area: " << Pi * radius * radius;
    cout << "Circumference: " << 2 * Pi * radius;

    //2
    int a, b;
    cout << "Enter a: ";
    cin >> a;
    cout << "Enter b: ";
    cin >> b;
    int temp = a;
    a = b;
    b = temp;
    cout << "After swap: a = " << a << ", b = " << b;

    //3
    double amount;
    cout << "Enter amount in UAH: ";
    cin >> amount;
    int hryvnias = (int)amount;
    int kopecks = (int)((amount - hryvnias) * 100);
    cout << hryvnias << " hryvnias " << kopecks << " kopecks";

    // 4
    int seconds;
    cout << "\nTask 4: Enter time in seconds: ";
    cin >> seconds;
    cout << seconds / 86400 << " days " << (seconds % 86400) / 3600 << " hours "
        << (seconds % 3600) / 60 << " minutes " << seconds % 60 << " seconds";

    //5
    int start_hour, start_minute, start_second, end_hour, end_minute, end_second;
    cout << "Enter start time (h m s): ";
    cin >> start_hour >> start_minute >> start_second;
    cout << "Enter end time (h m s): ";
    cin >> end_hour >> end_minute >> end_second;
    int duration = (end_hour * 3600 + end_minute * 60 + end_second) -
        (start_hour * 3600 + start_minute * 60 + start_second);
    cout << "Call cost: " << (duration / 60.0) * 0.15 << " UAH";

    //7
    int num1, num2;
    cout << "Enter first 3-digit number: ";
    cin >> num1;
    cout << "Enter second 3-digit number: ";
    cin >> num2;
    int middle1 = (num1 / 10) % 10, middle2 = (num2 / 10) % 10;
    num1 = (num1 / 100) * 100 + middle2 * 10 + num1 % 10;
    num2 = (num2 / 100) * 100 + middle1 * 10 + num2 % 10;
    cout << "After middle digits swap: " << num1 << " and " << num2;

    //8
    int N, M, X, G;
    cout << "Enter number of hens, price per hen, eggs per hen per week, and price per dozen eggs: ";
    cin >> N >> M >> X >> G;
    double weekly_income = N * X * (G / 10.0);
    double total_cost = N * M;
    cout << "Hens will pay back in " << (total_cost / weekly_income) * 7 << " days.";
}
