cmake_minimum_required(VERSION 3.0.0)
project(grpc_server VERSION 0.1.0)
set(CMAKE_CXX_STANDARD 20)
# Find Dependencies
find_package(Protobuf REQUIRED)
find_package(gRPC REQUIRED)

# Protobuf stuff
set(PROTO_PATH ${CMAKE_CURRENT_SOURCE_DIR}/protos)
set(PROTOS ${PROTO_PATH}/ping.proto)

set(PROTO_GENERATED_DIR "${CMAKE_CURRENT_SOURCE_DIR}/protos_generated")
file(MAKE_DIRECTORY ${PROTO_GENERATED_DIR})

# cmake modules
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})
include(protobuf) # includes protobuf helper function (protobuf_generate_cpp)
include(grpc) # includes grpc helper function (grpc_generate_cpp)

# generate protobuf related files with protoc
protobuf_generate_cpp(PROTO_SRCS PROTO_HDRS ${PROTO_GENERATED_DIR} ${PROTOS})
grpc_generate_cpp(GRPC_SRCS GRPC_HDRS ${PROTO_GENERATED_DIR} ${PROTOS})

set(PROTO_GENERATED_FILES
    ${PROTO_SRCS}
    ${PROTO_HDRS}
    ${GRPC_SRCS}
    ${GRPC_HDRS})


# Building server
add_executable(grpc_server
    server.cpp
    ${PROTO_GENERATED_FILES})

target_link_libraries(grpc_server
    gRPC::grpc++_reflection
    protobuf::libprotobuf)

target_include_directories(grpc_server PUBLIC ${PROTO_GENERATED_DIR})

# target_link_libraries(grpc_server PRIVATE hw_grpc_proto gRPC::gpr gRPC::grpc gRPC::grpc++ gRPC::grpc++_alts)
# Building client
add_executable(grpc_client
    client.cpp
    ${PROTO_GENERATED_FILES})

target_link_libraries(grpc_client
    gRPC::grpc++_reflection
    protobuf::libprotobuf)

target_include_directories(grpc_client PUBLIC ${PROTO_GENERATED_DIR})