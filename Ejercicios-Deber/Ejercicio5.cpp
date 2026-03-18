#include <iostream>
using namespace std;

int main() {
    float saldoU = 300, efectivoC = 500, monto;
    int b20, b10, b5, b1, residuo;
    cout << "Ingrese el monto a retirar: ";
    cin >> monto;

    if (monto <= 0 || monto > saldoU || monto > efectivoC) {
        cout << "Monto no permitido o fondos insuficientes." << endl;
    } else {
        int m = (int)monto;

        b20 = m / 20;
        m = m % 20;
        b10 = m / 10;
        m = m % 10;
        b5 = m / 5;
        m = m % 5;
        b1 = m;

        cout << "--- RECIBO DE CAJERO ---" << endl;
        cout << "Billetes de $20: " << b20 << endl;
        cout << "Billetes de $10: " << b10 << endl;
        cout << "Billetes de $5:  " << b5 << endl;
        cout << "Billetes de $1:  " << b1 << endl;

        cout << "Saldo restante: " << (saldoU - monto) << endl;
        cout << "Efectivo en el cajero: " << (efectivoC - monto) << endl;
    }
    return 0;
}
