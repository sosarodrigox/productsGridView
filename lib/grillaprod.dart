import 'package:flutter/material.dart';

class GrillaProductos {
  Widget build(BuildContext context, List listado, int columnas, Axis direccion,
      Color colorItems, Color colorFuente) {
    return Padding(
      padding: const EdgeInsets.only(top: 3.0),
      child: GridView.builder(
        itemCount: listado.length,
        scrollDirection: direccion,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: columnas,
        ),
        
        // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //   maxCrossAxisExtent: 250,
        //   childAspectRatio: 1,
        //   crossAxisSpacing: 1,
        //   mainAxisSpacing: 6,
        //   ),
        
        itemBuilder: (context, index) {
          final prod = listado[index];
          String marca = prod.marcaProd;
          String descripcion = prod.descProd;
          double precio = prod.precio;
          String img = prod.imagen;
          return Padding(
            padding: const EdgeInsets.all(1),
            child: GestureDetector(
              child: Card(
                color: colorItems,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [

                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.monetization_on_rounded,
                          color: colorFuente,
                        ),
                        Flexible(
                          child: Text(
                            
                            precio.toString(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: colorFuente,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),


                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        child: Image.asset(img),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              marca,
                              style: TextStyle(
                                  color: colorFuente,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              descripcion,
                              style: TextStyle(
                                  color: colorFuente,
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
