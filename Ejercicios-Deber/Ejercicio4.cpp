#include <iostream>
#include <string>
using namespace std;

int main() {
    int cant;
    float precioHoja, subtotal, desc = 0, recargo = 0, valorAnillado = 0, total;
    string tipo, rol, horario, anillado;

    cout << "Cantidad de hojas: "; cin >> cant;
    cout << "Tipo (BN/Color): "; cin >> tipo;
    cout << "Rol (Docente/Estudiante): "; cin >> rol;
    cout << "Horario (Normal/Nocturno): "; cin >> horario;
    cout << "Lleva anillado (Si/No): "; cin >> anillado;

    if (tipo == "BN") {
        if (cant <= 20) precioHoja = 0.05;
        else if (cant <= 100) precioHoja = 0.04;
        else precioHoja = 0.03;
    } else {
        if (cant <= 20) precioHoja = 0.20;
        else if (cant <= 100) precioHoja = 0.15;
        else precioHoja = 0.12;
    }

    subtotal = cant * precioHoja;
    float descDocente = (rol == "Docente") ? subtotal * 0.05 : 0;
    float descEstudiante = (rol == "Estudiante" && cant > 50) ? subtotal * 0.08 : 0;

    if (descDocente > descEstudiante) desc = descDocente;
    else desc = descEstudiante;

    if (horario == "Nocturno") recargo = subtotal * 0.10;

    if (anillado == "Si") {
        valorAnillado = (cant > 100) ? 0.50 : 1.00;
    }

    total = subtotal - desc + recargo + valorAnillado;

    cout << "\n--- DETALLE DE COBRO ---" << endl;
    cout << "SUBTOTAL IMPRESION: $" << subtotal << endl;
    cout << "DESCUENTO APLICADO: $" << desc << endl;
    cout << "RECARGO HORARIO:    $" << recargo << endl;
    cout << "COSTO ANILLADO:     $" << valorAnillado << endl;
    cout << "TOTAL A PAGAR:      $" << total << endl;

    return 0;
}
