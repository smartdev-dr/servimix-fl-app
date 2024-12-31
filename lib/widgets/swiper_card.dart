import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class SwiperCard extends StatelessWidget {
  const SwiperCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Swiper(
        viewportFraction: 0.9,
        scale: 0.8,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: 25),
          builder: DotSwiperPaginationBuilder(
            activeColor: Colors.black,
            color: Colors.white,
          ),
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const _Slide();
        },
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide();

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Colors.black45,
          blurRadius: 3,
          offset: Offset(0, 3),
        )
      ],
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
              Image.network(
                'https://img.freepik.com/fotos-premium/servicio-tecnico-cepillo-limpiar-aire-acondicionado_35076-3608.jpg',
                fit: BoxFit.cover,
              ),

              // Gradiente oscuro para mejor visibilidad
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: 60,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.3),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
