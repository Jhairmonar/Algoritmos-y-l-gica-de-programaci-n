#include <iostream>
#include <string>
using namespace std;

int main() {
    int numEst, numDias;
    float cTrans, cHosp, cAlim = 0, subtotal, desc = 0, total, totalInd, precioT, precioH;
    string transporte, comida, instituc;

    cout << "Numero de estudiantes: "; cin >> numEst;
    cout << "Transporte (Bus/Avion): "; cin >> transporte;
    cout << "Dias de viaje: "; cin >> numDias;
    cout << "Precio hospedaje por dia: "; cin >> precioH;
    cout << "Alimentacion (Si/No): "; cin >> comida;
    cout << "Descuento institucional (Si/No): "; cin >> instituc;

    if (transporte == "Bus") precioT = (numEst > 20) ? 20 : 30;
    else precioT = (numEst > 20) ? 150 : 200;
    cTrans = (numEst - 1) * precioT;
    cHosp = numEst * numDias * precioH;
    if (numDias > 3) cHosp *= 0.90;
    if (comida == "Si") cAlim = numEst * numDias * 15;
    subtotal = cTrans + cHosp + cAlim;
    if (instituc == "Si" && subtotal > 2000) desc = subtotal * 0.05;
    total = subtotal - desc;
    totalInd = total / numEst;

    cout << "\n--- DESGLOSE DE GASTOS ---" << endl;
    cout << "Costo Transporte:   $" << cTrans << endl;
    cout << "Costo Hospedaje:    $" << cHosp << endl;
    cout << "Costo Alimentacion: $" << cAlim << endl;
    cout << "Descuento Aplicado: $" << desc << endl;
    cout << "--------------------------" << endl;
    cout << "TOTAL FINAL:        $" << total << endl;
    cout << "INDIVIDUAL:         $" << totalInd << endl;

    if (totalInd > 250) cout << "RESULTADO: Viaje no recomendable." << endl;
    else cout << "RESULTADO: Viaje aprobado." << endl;

    return 0;
}
