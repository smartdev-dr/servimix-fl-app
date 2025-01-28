import 'package:dio/dio.dart';

class ApiBaseService {
  late Dio dio;

  ApiBaseService() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://servimix-backend-production.up.railway.app/api',
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    // Agrega interceptores si es necesario (como manejo de errores o logs)
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Aquí puedes agregar un token o hacer log de la petición
        print('Request: ${options.method} ${options.uri}');
        return handler.next(options); // Permite que la petición continúe
      },
      onResponse: (response, handler) {
        print('Response: ${response.data}');
        return handler.next(response); // Procesa la respuesta
      },
    ));
  }

  // Método para realizar una solicitud GET
  Future<Response> getRequest(String path) async {
    try {
      return await dio.get(path);
    } catch (e) {
      throw Exception('Error en GET: $e');
    }
  }

  // Método para realizar una solicitud POST
  Future<Response> postRequest(String path, Map<String, dynamic> body) async {
    try {
      return await dio.post(path, data: body);
    } catch (e) {
      throw Exception('Error en POST: $e');
    }
  }
}
