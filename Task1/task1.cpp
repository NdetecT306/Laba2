#include <iostream>
#include <limits> 
using namespace std;
int main()
{
    setlocale(LC_ALL, "RUS"); 
    string myString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"; 
    int number;
    cout << "Введите число: ";
    cin >> number;
    while (cin.fail())
    {
        cin.clear();
        cin.ignore(numeric_limits<streamsize>::max(), '\n');
        cout << "Это не число. Попробуйте снова: ";
        cin >> number;
    }
    if (number <= 0 || number > 26)
    {
        cout << "Неправильное число." << endl;
        return 0;
    }
    int point = number - 1;
    cout << "Результат: " << endl;
    while (point >= 0)
    {
        for (int i = number - 1; i >= point; i--)
        {
            cout << myString[i] << " ";
        }
        point--;
        cout << endl;
    }
    return 0;
}
