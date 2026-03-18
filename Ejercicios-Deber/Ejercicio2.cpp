#include <iostream>
#include <string>
using namespace std;
int main() {
    float promedio, asistencia;
    int materiasPerdidas;
    string ingresosBajos, proyectos, ayuda, razonAcad, razonEcon;

    cout << "Ingrese su promedio: ";
    cin >> promedio;
    cout << "Materias perdidas: ";
    cin >> materiasPerdidas;
    cout << "Asistencia (%): ";
    cin >> asistencia;
    cout << "Posee ingresos bajos (Si/No): ";
    cin >> ingresosBajos;
    cout << "Realizo proyectos (Si/No): ";
    cin >> proyectos;

    if (promedio < 7 || asistencia < 80) {
        ayuda = "Sin beneficio";
        razonAcad = "No alcanza los minimos academicos";
        razonEcon = "Desconocida";
    } else {
        if (promedio >= 9 && asistencia >= 90 && materiasPerdidas == 0) {
            ayuda = "Beca completa";
        } else if (promedio >= 8 && asistencia >= 85) {
            ayuda = "Beca parcial";
        } else {
            ayuda = "Solo ayuda de materiales";
        }

        razonAcad = "Criterios academicos aprobados";

        if (ingresosBajos == "Si" && proyectos == "Si") {
            razonEcon = "Bonificacion por perfil socioeconomico aplicada";
            if (ayuda == "Solo ayuda de materiales") {
                ayuda = "Beca parcial";
            } else if (ayuda == "Beca parcial" && materiasPerdidas <= 1) {
                ayuda = "Beca completa";
            }
        } else {
            razonEcon = "Sin bonificacion extra";
        }
    }

    cout << "\n--- INFORME DE BECA ---" << endl;
    cout << "AYUDA: " << ayuda << endl;
    cout << "MOTIVO ACADEMICO: " << razonAcad << endl;
    cout << "MOTIVO ECONOMICO: " << razonEcon << endl;

    return 0;
}
