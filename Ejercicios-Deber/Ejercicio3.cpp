#include <iostream>
#include <string>
using namespace std;

int main() {
    float l1, l2, l3, h, ang, area;
    string tLados, tAngulo, consistencia;

    cout << "Ingrese el lado 1 (Base): "; cin >> l1;
    cout << "Ingrese el lado 2: "; cin >> l2;
    cout << "Ingrese el lado 3: "; cin >> l3;
    cout << "Ingrese la altura: "; cin >> h;
    cout << "Ingrese el angulo: "; cin >> ang;

    if ((l1 + l2 > l3) && (l1 + l3 > l2) && (l2 + l3 > l1)) {

        if (l1 == l2 && l2 == l3) tLados = "Equilatero";
        else if (l1 == l2 || l1 == l3 || l2 == l3) tLados = "Isosceles";
        else tLados = "Escaleno";

        if (ang == 90) tAngulo = "Rectangulo";
        else if (ang > 90) tAngulo = "Obtusangulo";
        else tAngulo = "Acutangulo";

        area = (l1 * h) / 2.0;

        if (h > l2 || h > l3) consistencia = "Inconsistente (altura muy grande)";
        else consistencia = "Consistente";

        cout << "\n--- REPORTE GEOMETRICO ---" << endl;
        cout << "TIPO LADOS: " << tLados << endl;
        cout << "TIPO ANGULO: " << tAngulo << endl;
        cout << "AREA: " << area << endl;
        cout << "ESTADO: " << consistencia << endl;

    } else {
        cout << "Error: Los lados no forman un triangulo." << endl;
    }

    return 0;
}
