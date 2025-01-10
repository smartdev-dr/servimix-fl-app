import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SwiperCard extends StatelessWidget {
  const SwiperCard({super.key});

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
                onTap: () {
                  context.push('/servicescreen');
                },
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
