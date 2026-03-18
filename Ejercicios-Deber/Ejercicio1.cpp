#include <iostream>
using namespace std;

int main() {
    float horaLlegada;
    int faltas;
    string tieneCredencial, perteneceCurso, estadoFinal, motivo, prioridad;

    cout << "--- SISTEMA DE CONTROL DE ACCESO AL LABORATORIO ---" << endl;

    cout << "Ingrese hora de llegada (ej: 7.10): ";
    cin >> horaLlegada;
    cout << "Ingrese numero de faltas acumuladas: ";
    cin >> faltas;
    cout << "Tiene credencial? (Si/No): ";
    cin >> tieneCredencial;
    cout << "Pertenece al curso del horario actual? (Si/No): ";
    cin >> perteneceCurso;

    if (tieneCredencial == "No") {
        estadoFinal = "No puede ingresar";
        motivo = "Falta de credencial";
        prioridad = "Alta";
    }
    else if (perteneceCurso == "No") {
        estadoFinal = "No puede ingresar";
        motivo = "No pertenece al curso actual";
        prioridad = "Alta";
    }
    else if (faltas >= 5) {
        estadoFinal = "No puede ingresar";
        motivo = "Exceso de faltas (5 o mas)";
        prioridad = "Alta";
    }
    else if (horaLlegada > 7.10) {
        estadoFinal = "No puede ingresar";
        motivo = "Llegada muy tarde (mas de 10 min)";
        prioridad = "Media";
    }

    else if (horaLlegada > 7.00 || (faltas >= 3 && faltas < 5)) {
        estadoFinal = "Ingresa con advertencia";
        prioridad = "Baja";

        if (horaLlegada > 7.00 && faltas >= 3) {
            motivo = "Retraso menor a 10 min y acumulacion de faltas";
        } else if (horaLlegada > 7.00) {
            motivo = "Retraso menor a 10 min";
        } else {
            motivo = "Acumulacion de faltas (3 o 4)";
        }
    }

    else {
        estadoFinal = "Ingresa sin problema";
        motivo = "Cumple con todos los requisitos";
        prioridad = "Nula";
    }

    cout << "\n--- FORMATO DE INFORME ---" << endl;
    cout << "ESTADO FINAL: " << estadoFinal << endl;
    cout << "MOTIVO: " << motivo << endl;
    cout << "NIVEL DE PRIORIDAD: " << prioridad << endl;

    return 0;
}
