// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_men_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ServicePeopleAdapter extends TypeAdapter<ServicePeople> {
  @override
  final int typeId = 0;

  @override
  ServicePeople read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ServicePeople(
      id: fields[0] as int,
      avgRating: fields[1] as double,
      reviewCount: fields[2] as int,
      name: fields[3] as String,
      profilePicture: fields[4] as String,
      created: fields[5] as DateTime,
      service: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ServicePeople obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.avgRating)
      ..writeByte(2)
      ..write(obj.reviewCount)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.profilePicture)
      ..writeByte(5)
      ..write(obj.created)
      ..writeByte(6)
      ..write(obj.service);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServicePeopleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
