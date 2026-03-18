#include <iostream>
#include <string>
using namespace std;

int main() {
    float lAnt, lAct, consumo, costoBase, final;
    int numHab;
    string tipoV, altoC, deuda, alerta;

    cout << "Lectura Anterior: "; cin >> lAnt;
    cout << "Lectura Actual: "; cin >> lAct;
    cout << "Num. Habitantes: "; cin >> numHab;
    cout << "Vivienda (Social/Normal): "; cin >> tipoV;
    cout << "Alto Consumo? (Si/No): "; cin >> altoC;
    cout << "Tiene deuda? (Si/No): "; cin >> deuda;

    if (lAct < lAnt) {
        cout << "Error: Datos invalidos." << endl;
    } else {
        consumo = lAct - lAnt;
        costoBase = (consumo <= 150) ? consumo * 0.10 : consumo * 0.15;
        final = costoBase;
        alerta = "Consumo Estable";

        if (tipoV == "Social" && consumo < 100) final *= 0.75;
        if (deuda == "Si") final += (costoBase * 0.05);

        if ((consumo / numHab) > 100) alerta = "ALERTA: Exceso por habitante";
        else if (altoC == "Si" && consumo > 300) alerta = "RIESGO: Sobrefacturacion";

        cout << "--- REPORTE DE CONSUMO ---" << endl;
        cout << "CONSUMO: " << consumo << " kWh" << endl;
        cout << "COSTO BASE: $" << costoBase << endl;
        cout << "TOTAL FINAL: $" << final << endl;
        cout << "ESTADO: " << alerta << endl;
    }
    return 0;
}
