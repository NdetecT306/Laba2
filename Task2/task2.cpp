#include <iostream>
#include <vector>
using namespace std;
int main()
{
    setlocale(LC_ALL, "RUS");
    int numbers, max = 0;
    cin >> numbers;
    if (numbers <= 0){
            cout << "Быть не может";
            return 0;
    }
    vector<int> clumba;
    for (int i = 0; i < numbers; ++i) {
        int flower;
        cin >> flower;
        if (flower > 0)
        {
            clumba.push_back(flower);
        }
        if (flower > max)
        {
            max = flower;
        }
    }
    int poliv;
    cin >> poliv;
    if (poliv < max)
    {
        cout << " Как купишь новую лейку - приходи.";
        return 0;
    }
    int step = 0;
    int perem = poliv;
    for (int i = 0; i < clumba.size();i++)
    {
        if (perem < clumba[i])
        {
            step = step + (i * 2 + 1);
            perem = poliv;
        }
        else
        {
            step += 1;
        }
        perem -= clumba[i];
    }
    cout << step;
}
