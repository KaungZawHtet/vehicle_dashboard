# Vehicle Dashboard

![image info](diagram.png)

This is the mini project that demostrates communication betweeen flutter frontend and c++ backend by using GRPC and protobuf (the alternative solution of capnproto).

The targeted platform is for desktops and not for mobile OS. Mac is used on development time but it should work on ubuntu too.

the root directory is simply the flutter project.

grpc_server directory is c++ server project that can servers the request from flutter frontend. In default state, server process and client process needs to be in the same machine because of port and IP address configuration. For remote communication, port and IP address must be changed (Firewall and other permission configuration need to be changed too)

protos directories are the one storing proto files to define rpc methos and messages.

At flutter frontend side,
 1. dirft (SqLite Library for flutter) is used to store records in frontend side.
 2. for state management, low level solution (stateful wdigets) are used.
 3. reactive programming is used in the project. Streambuilders are notable so much in the codebase.
 4. For the communication betweeen widgets, provider is used currently.
 5. Vehicle Client (vehicle_client.dart) is used to communicate with GRPC server.
 6. Db Client (db_client.dart) is used to communicate with SqLite db in frontend side.
 7. CRUD codes for records can be found in flutter codebase.
 8. Reusable widgets, clients, generated code files (proto files), page and panels are seperated stored.


 At C++ backend side,
  1. There are somethings you need to build the server smoothly: VS Code, vcpkg, cmake and a compiler (clang was used in development).
  2. vcpkg should be configured in the vs code. If not `-DCMAKE_TOOLCHAIN_FILE=/home/aa/vcpkg/scripts/buildsystems/vcpkg.cmake` is required in cmake build process.
  3. The c++ project depends GPPC and proto buff by the use of that vcpkg.
  4. The server part serves some calulations and data response to the frontend side.

















