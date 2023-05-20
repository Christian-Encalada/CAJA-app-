import 'package:flutter/material.dart';
import 'package:hdt_flutter/models/restaurante_model.dart';
import 'package:hdt_flutter/utils/const.dart';

class CardRestaurantes extends StatelessWidget {
  const CardRestaurantes({super.key, required this.restaurante, this.height, this.width, required this.onTap});
  final RestauranteModels restaurante;
  final double? height;
  final double? width;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.saturation),
                child: Image(
                  image: AssetImage(restaurante.imagen),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.low,
                  height: height,
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Icon(
                Icons.location_on,
                color: secundario,
                size: 30,
              ),
            ),
            Positioned(
              bottom: 15,
              left: 20,
              child: Row(
                children: [
                  FittedBox(
                    child: Text(
                      restaurante.nombre,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: restaurante.estado ? Colors.green : Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
