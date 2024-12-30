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
        viewportFraction: 0.8,
        scale: 0.9,
        pagination: const SwiperPagination(
            margin: EdgeInsets.only(top: 0),
            builder: DotSwiperPaginationBuilder(
                activeColor: Colors.black,
                color: Color.fromARGB(255, 134, 127, 120))),
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
            blurRadius: 10,
            offset: Offset(0, 10),
          )
        ]);

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: DecoratedBox(
          decoration: decoration,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://img.freepik.com/fotos-premium/servicio-tecnico-cepillo-limpiar-aire-acondicionado_35076-3608.jpg',
                fit: BoxFit.cover,
              ))),
    );
  }
}
