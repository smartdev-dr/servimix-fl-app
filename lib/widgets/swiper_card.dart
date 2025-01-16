import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class SwiperCard extends StatelessWidget {
  final VoidCallback onPressed;
  const SwiperCard({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Swiper(
        viewportFraction: 1.0,
        scale: 0.8,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: 35),
          builder: DotSwiperPaginationBuilder(
            activeColor: Colors.black,
            color: Colors.white,
          ),
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return _Slide(onPressed: onPressed);
        },
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final VoidCallback onPressed;

  const _Slide({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 25, top: 12),
      child: DecoratedBox(
        decoration: decoration,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: onPressed,
                child: Image.network(
                  'https://img.freepik.com/fotos-premium/servicio-tecnico-cepillo-limpiar-aire-acondicionado_35076-3608.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
