#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from cython.operator cimport dereference as deref
from thrift.lib.py3.thrift_server cimport TException

from collections.abc import Sequence, Set, Mapping
from enum import Enum
cimport module_types

class EmptyEnum(Enum):

cdef cEmptyEnum EmptyEnum_to_cpp(value):
class City(Enum):
    NYC = <int> (City__NYC)
    MPK = <int> (City__MPK)
    SEA = <int> (City__SEA)
    LON = <int> (City__LON)

cdef cCity City_to_cpp(value):
    if value == City.NYC:
        return City__NYC
    elif value == City.MPK:
        return City__MPK
    elif value == City.SEA:
        return City__SEA
    elif value == City.LON:
        return City__LON
class Company(Enum):
    FACEBOOK = <int> (Company__FACEBOOK)
    WHATSAPP = <int> (Company__WHATSAPP)
    OCULUS = <int> (Company__OCULUS)
    INSTAGRAM = <int> (Company__INSTAGRAM)

cdef cCompany Company_to_cpp(value):
    if value == Company.FACEBOOK:
        return Company__FACEBOOK
    elif value == Company.WHATSAPP:
        return Company__WHATSAPP
    elif value == Company.OCULUS:
        return Company__OCULUS
    elif value == Company.INSTAGRAM:
        return Company__INSTAGRAM


cdef class Internship:
    def __init__(
        self,
        int weeks,
        str title,
        object employer
    ):
        self.c_Internship = make_shared[cInternship]()
        deref(self.c_Internship).weeks = weeks
        if title is not None:
            deref(self.c_Internship).title = title.encode('UTF-8')
        
        
    @staticmethod
    cdef create(shared_ptr[cInternship] c_Internship):
        inst = <Internship>Internship.__new__(Internship)
        inst.c_Internship = c_Internship
        return inst

    @property
    def weeks(self):
        return self.c_Internship.get().weeks

    @property
    def title(self):
        return self.c_Internship.get().title.decode()

    @property
    def employer(self):
        cdef int value = <int> deref(self.c_Internship).employer
        return Company(value)
        


cdef class UnEnumStruct:
    def __init__(
        self,
        object city
    ):
        self.c_UnEnumStruct = make_shared[cUnEnumStruct]()
        
        
    @staticmethod
    cdef create(shared_ptr[cUnEnumStruct] c_UnEnumStruct):
        inst = <UnEnumStruct>UnEnumStruct.__new__(UnEnumStruct)
        inst.c_UnEnumStruct = c_UnEnumStruct
        return inst

    @property
    def city(self):
        cdef int value = <int> deref(self.c_UnEnumStruct).city
        return City(value)
        


cdef class Range:
    def __init__(
        self,
        int min,
        int max
    ):
        self.c_Range = make_shared[cRange]()
        deref(self.c_Range).min = min
        deref(self.c_Range).max = max
        
    @staticmethod
    cdef create(shared_ptr[cRange] c_Range):
        inst = <Range>Range.__new__(Range)
        inst.c_Range = c_Range
        return inst

    @property
    def min(self):
        return self.c_Range.get().min

    @property
    def max(self):
        return self.c_Range.get().max





myInt = 1337
name = cname().decode('UTF-8')
states = List__Map__string_i32.create(make_shared[vector[]](cstates()))
x = 1.000000
y = 1000000.0
z = 1000000000.000000
instagram = Internship.create(make_shared[cInternship](cinstagram()))
kRanges = List__Range.create(make_shared[vector[module_types.cRange]](ckRanges()))
internList = List__Internship.create(make_shared[vector[module_types.cInternship]](cinternList()))
apostrophe = capostrophe().decode('UTF-8')
tripleApostrophe = ctripleApostrophe().decode('UTF-8')
quotationMark = cquotationMark().decode('UTF-8')
backslash = cbackslash().decode('UTF-8')
escaped_a = cescaped_a().decode('UTF-8')
char2ascii = Map__string_i32.create(make_shared[cmap[string,int32_t]](cchar2ascii()))
escaped_strings = List__string.create(make_shared[vector[string]](cescaped_strings()))
false_c = Fale
true_c = True
zero_byte = 0
zero16 = 0
zero32 = 0
zero64 = 0
zero_dot_zero = 0.000000
empty_string = cempty_string().decode('UTF-8')
empty_int_list = List__i32.create(make_shared[vector[int32_t]](cempty_int_list()))
empty_string_list = List__string.create(make_shared[vector[string]](cempty_string_list()))
empty_int_set = Set__i32.create(make_shared[cset[int32_t]](cempty_int_set()))
empty_string_set = Set__string.create(make_shared[cset[string]](cempty_string_set()))
empty_int_int_map = Map__i32_i32.create(make_shared[cmap[int32_t,int32_t]](cempty_int_int_map()))
empty_int_string_map = Map__i32_string.create(make_shared[cmap[int32_t,string]](cempty_int_string_map()))
empty_string_int_map = Map__string_i32.create(make_shared[cmap[string,int32_t]](cempty_string_int_map()))
empty_string_string_map = Map__string_string.create(make_shared[cmap[string,string]](cempty_string_string_map()))
