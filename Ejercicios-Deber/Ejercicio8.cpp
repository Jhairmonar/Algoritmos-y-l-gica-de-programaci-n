#include <iostream>
#include <string>
using namespace std;

int main() {
    float n1, n2, n3, prom, asistencia;
    string proyecto, plagio, estado, obsDisc, obsRend = "Normal";

    cout << "Notas (n1 n2 n3): "; cin >> n1 >> n2 >> n3;
    cout << "Asistencia (%): "; cin >> asistencia;
    cout << "Proyecto (Si/No): "; cin >> proyecto;
    cout << "Plagio (Si/No): "; cin >> plagio;

    prom = (n1 + n2 + n3) / 3.0;

    if (plagio == "Si") {
        estado = "REPROBADO (Sancion)";
        obsDisc = "Cometio Plagio";
    } else if (asistencia < 70) {
        estado = "REPROBADO (Asistencia)";
        obsDisc = "Asistencia insuficiente";
    } else {
        obsDisc = "Ninguna";
        if (prom >= 9 && asistencia >= 95 && proyecto == "Si") estado = "APROBADO CON FELICITACION";
        else if (prom >= 7 && proyecto == "Si") estado = "APROBADO";
        else if (prom >= 5 || proyecto == "No") estado = "RECUPERACION";
        else estado = "REPROBADO";
    }
    int bajas = 0;
    if (n1 < 4) bajas++;
    if (n2 < 4) bajas++;
    if (n3 < 4) bajas++;
    if ((n1 == 10 || n2 == 10 || n3 == 10) && bajas >= 2) obsRend = "Irregular";

    cout << "--- RESULTADO FINAL---" << endl;
    cout << "PROMEDIO: " << prom << endl;
    cout << "ESTADO:   " << estado << endl;
    cout << "SANCION:  " << obsDisc << endl;
    cout << "NOTAS:    " << obsRend << endl;

    return 0;
}
