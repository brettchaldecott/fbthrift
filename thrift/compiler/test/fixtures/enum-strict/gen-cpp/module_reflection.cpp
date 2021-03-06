/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#include "thrift/compiler/test/fixtures/enum-strict/gen-cpp/module_reflection.h"
#include <thrift/lib/cpp/Reflection.h>

 namespace module_reflection_ {

// Reflection initializer for enum module.MyEnum
static void reflectionInitializer_2204953966458700648(::apache::thrift::reflection::Schema& schema) {
  const uint64_t id = 2204953966458700648U;
  if (schema.dataTypes.count(id)) return;
  ::apache::thrift::reflection::DataType& dt = schema.dataTypes[id];
  dt.name = "enum module.MyEnum";
  schema.names[dt.name] = id;
  dt.__isset.enumValues = true;
  static const std::pair<const char*, int32_t> enumValues[] = {
    {"kMyBar", 2},
    {"kMyFoo", 1},
  };
  dt.enumValues.insert(enumValues, enumValues + 2);
}

static void  reflectionInitializer_2204953966458700648(::apache::thrift::reflection::Schema&);  // enum module.MyEnum
// Reflection initializer for struct module.MyStruct
void reflectionInitializer_7958971832214294220(::apache::thrift::reflection::Schema& schema) {
  const uint64_t id = 7958971832214294220U;
  if (schema.dataTypes.count(id)) return;
  ::apache::thrift::reflection::DataType& dt = schema.dataTypes[id];
  dt.name = "struct module.MyStruct";
  schema.names[dt.name] = id;
  dt.__isset.fields = true;
  {
    ::apache::thrift::reflection::StructField& f = dt.fields[1];
    f.isRequired = true;
    f.type = 2204953966458700648U;
    f.name = "baz";
    f.order = 0;
  }
  reflectionInitializer_2204953966458700648(schema);  // enum module.MyEnum
}

}

