??

??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
?
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
;
Sub
x"T
y"T
z"T"
Ttype:
2	"serve*2.4.12v2.4.0-49-g85c8b2a817f8??	
?
string_lookup_30_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_1113653*
value_dtype0	
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_1114799

NoOpNoOp^PartitionedCall
?
Kstring_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2LookupTableExportV2string_lookup_30_index_table*
Tkeys0*
Tvalues0	*/
_class%
#!loc:@string_lookup_30_index_table*
_output_shapes

::
?
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
trainable_variables
	variables
regularization_losses
	keras_api

signatures
=
state_variables
_index_lookup_layer
		keras_api
 
 
 
?

layer_regularization_losses
metrics
trainable_variables
layer_metrics
non_trainable_variables
	variables

layers
regularization_losses
 
 
0
state_variables

_table
	keras_api
 
 
 
 
 

0
 
LJ
tableAlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table
 
{
serving_default_input_29Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_29string_lookup_30_index_tableConst*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1114549
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameKstring_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2Mstring_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2:1Const_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_1114829
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamestring_lookup_30_index_table*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_1114842??	
?
?
(text_vectorization_28_cond_false_1114340*
&text_vectorization_28_cond_placeholderf
btext_vectorization_28_cond_strided_slice_text_vectorization_28_raggedtotensor_raggedtensortotensor	'
#text_vectorization_28_cond_identity	?
.text_vectorization_28/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.text_vectorization_28/cond/strided_slice/stack?
0text_vectorization_28/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   22
0text_vectorization_28/cond/strided_slice/stack_1?
0text_vectorization_28/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0text_vectorization_28/cond/strided_slice/stack_2?
(text_vectorization_28/cond/strided_sliceStridedSlicebtext_vectorization_28_cond_strided_slice_text_vectorization_28_raggedtotensor_raggedtensortotensor7text_vectorization_28/cond/strided_slice/stack:output:09text_vectorization_28/cond/strided_slice/stack_1:output:09text_vectorization_28/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2*
(text_vectorization_28/cond/strided_slice?
#text_vectorization_28/cond/IdentityIdentity1text_vectorization_28/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2%
#text_vectorization_28/cond/Identity"S
#text_vectorization_28_cond_identity,text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
__inference_save_fn_1114786
checkpoint_key\
Xstring_lookup_30_index_table_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	??Kstring_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2?
Kstring_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Xstring_lookup_30_index_table_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::2M
Kstring_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2T
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keys2
add/yR
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: 2
addZ
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-values2	
add_1/yX
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: 2
add_1?
IdentityIdentityadd:z:0L^string_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

IdentityO
ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
Const?

Identity_1IdentityConst:output:0L^string_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_1?

Identity_2IdentityRstring_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2:keys:0L^string_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
:2

Identity_2?

Identity_3Identity	add_1:z:0L^string_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_3S
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 2	
Const_1?

Identity_4IdentityConst_1:output:0L^string_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_4?

Identity_5IdentityTstring_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2:values:0L^string_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2*
T0	*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*
_input_shapes
: :2?
Kstring_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2Kstring_lookup_30_index_table_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
??
?
"__inference__wrapped_model_1114202
input_29n
jsequential_92_text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handleo
ksequential_92_text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value	
identity	??]sequential_92/text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
/sequential_92/text_vectorization_28/StringLowerStringLowerinput_29*'
_output_shapes
:?????????21
/sequential_92/text_vectorization_28/StringLower?
6sequential_92/text_vectorization_28/StaticRegexReplaceStaticRegexReplace8sequential_92/text_vectorization_28/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 28
6sequential_92/text_vectorization_28/StaticRegexReplace?
+sequential_92/text_vectorization_28/SqueezeSqueeze?sequential_92/text_vectorization_28/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2-
+sequential_92/text_vectorization_28/Squeeze?
5sequential_92/text_vectorization_28/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 27
5sequential_92/text_vectorization_28/StringSplit/Const?
=sequential_92/text_vectorization_28/StringSplit/StringSplitV2StringSplitV24sequential_92/text_vectorization_28/Squeeze:output:0>sequential_92/text_vectorization_28/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2?
=sequential_92/text_vectorization_28/StringSplit/StringSplitV2?
Csequential_92/text_vectorization_28/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2E
Csequential_92/text_vectorization_28/StringSplit/strided_slice/stack?
Esequential_92/text_vectorization_28/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2G
Esequential_92/text_vectorization_28/StringSplit/strided_slice/stack_1?
Esequential_92/text_vectorization_28/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2G
Esequential_92/text_vectorization_28/StringSplit/strided_slice/stack_2?
=sequential_92/text_vectorization_28/StringSplit/strided_sliceStridedSliceGsequential_92/text_vectorization_28/StringSplit/StringSplitV2:indices:0Lsequential_92/text_vectorization_28/StringSplit/strided_slice/stack:output:0Nsequential_92/text_vectorization_28/StringSplit/strided_slice/stack_1:output:0Nsequential_92/text_vectorization_28/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2?
=sequential_92/text_vectorization_28/StringSplit/strided_slice?
Esequential_92/text_vectorization_28/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_92/text_vectorization_28/StringSplit/strided_slice_1/stack?
Gsequential_92/text_vectorization_28/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_92/text_vectorization_28/StringSplit/strided_slice_1/stack_1?
Gsequential_92/text_vectorization_28/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_92/text_vectorization_28/StringSplit/strided_slice_1/stack_2?
?sequential_92/text_vectorization_28/StringSplit/strided_slice_1StridedSliceEsequential_92/text_vectorization_28/StringSplit/StringSplitV2:shape:0Nsequential_92/text_vectorization_28/StringSplit/strided_slice_1/stack:output:0Psequential_92/text_vectorization_28/StringSplit/strided_slice_1/stack_1:output:0Psequential_92/text_vectorization_28/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2A
?sequential_92/text_vectorization_28/StringSplit/strided_slice_1?
fsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastFsequential_92/text_vectorization_28/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2h
fsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
hsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastHsequential_92/text_vectorization_28/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2j
hsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
psequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapejsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2r
psequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
psequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2r
psequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
osequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdysequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0ysequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2q
osequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
tsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2v
tsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
rsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterxsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0}sequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2t
rsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
osequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastvsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2q
osequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
rsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2t
rsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
nsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxjsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0{sequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2p
nsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
psequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2r
psequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
nsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2wsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0ysequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2p
nsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
nsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulssequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0rsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2p
nsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
rsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumlsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0rsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2t
rsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
rsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumlsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0vsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2t
rsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
rsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2t
rsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
ssequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0vsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0{sequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2u
ssequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
msequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2o
msequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
hsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumzsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0vsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2j
hsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
qsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2s
qsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
msequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2o
msequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
hsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2zsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0nsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0vsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2j
hsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
]sequential_92/text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2LookupTableFindV2jsequential_92_text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handleFsequential_92/text_vectorization_28/StringSplit/StringSplitV2:values:0ksequential_92_text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2_
]sequential_92/text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
Fsequential_92/text_vectorization_28/string_lookup_30/assert_equal/NoOpNoOp*
_output_shapes
 2H
Fsequential_92/text_vectorization_28/string_lookup_30/assert_equal/NoOp?
=sequential_92/text_vectorization_28/string_lookup_30/IdentityIdentityfsequential_92/text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2?
=sequential_92/text_vectorization_28/string_lookup_30/Identity?
?sequential_92/text_vectorization_28/string_lookup_30/Identity_1Identityqsequential_92/text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????2A
?sequential_92/text_vectorization_28/string_lookup_30/Identity_1?
@sequential_92/text_vectorization_28/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 2B
@sequential_92/text_vectorization_28/RaggedToTensor/default_value?
8sequential_92/text_vectorization_28/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2:
8sequential_92/text_vectorization_28/RaggedToTensor/Const?
Gsequential_92/text_vectorization_28/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorAsequential_92/text_vectorization_28/RaggedToTensor/Const:output:0Fsequential_92/text_vectorization_28/string_lookup_30/Identity:output:0Isequential_92/text_vectorization_28/RaggedToTensor/default_value:output:0Hsequential_92/text_vectorization_28/string_lookup_30/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2I
Gsequential_92/text_vectorization_28/RaggedToTensor/RaggedTensorToTensor?
)sequential_92/text_vectorization_28/ShapeShapePsequential_92/text_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2+
)sequential_92/text_vectorization_28/Shape?
7sequential_92/text_vectorization_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7sequential_92/text_vectorization_28/strided_slice/stack?
9sequential_92/text_vectorization_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_92/text_vectorization_28/strided_slice/stack_1?
9sequential_92/text_vectorization_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_92/text_vectorization_28/strided_slice/stack_2?
1sequential_92/text_vectorization_28/strided_sliceStridedSlice2sequential_92/text_vectorization_28/Shape:output:0@sequential_92/text_vectorization_28/strided_slice/stack:output:0Bsequential_92/text_vectorization_28/strided_slice/stack_1:output:0Bsequential_92/text_vectorization_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_92/text_vectorization_28/strided_slice?
)sequential_92/text_vectorization_28/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2+
)sequential_92/text_vectorization_28/sub/x?
'sequential_92/text_vectorization_28/subSub2sequential_92/text_vectorization_28/sub/x:output:0:sequential_92/text_vectorization_28/strided_slice:output:0*
T0*
_output_shapes
: 2)
'sequential_92/text_vectorization_28/sub?
*sequential_92/text_vectorization_28/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2,
*sequential_92/text_vectorization_28/Less/y?
(sequential_92/text_vectorization_28/LessLess:sequential_92/text_vectorization_28/strided_slice:output:03sequential_92/text_vectorization_28/Less/y:output:0*
T0*
_output_shapes
: 2*
(sequential_92/text_vectorization_28/Less?
(sequential_92/text_vectorization_28/condStatelessIf,sequential_92/text_vectorization_28/Less:z:0+sequential_92/text_vectorization_28/sub:z:0Psequential_92/text_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *I
else_branch:R8
6sequential_92_text_vectorization_28_cond_false_1114181*/
output_shapes
:??????????????????*H
then_branch9R7
5sequential_92_text_vectorization_28_cond_true_11141802*
(sequential_92/text_vectorization_28/cond?
1sequential_92/text_vectorization_28/cond/IdentityIdentity1sequential_92/text_vectorization_28/cond:output:0*
T0	*'
_output_shapes
:?????????d23
1sequential_92/text_vectorization_28/cond/Identity?
IdentityIdentity:sequential_92/text_vectorization_28/cond/Identity:output:0^^sequential_92/text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2*
T0	*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: 2?
]sequential_92/text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2]sequential_92/text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_29:

_output_shapes
: 
?
N
__inference__creator_1114757
identity??string_lookup_30_index_table?
string_lookup_30_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_1113653*
value_dtype0	2
string_lookup_30_index_table?
IdentityIdentity+string_lookup_30_index_table:table_handle:0^string_lookup_30_index_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 2<
string_lookup_30_index_tablestring_lookup_30_index_table
?
?
(text_vectorization_28_cond_false_1114634*
&text_vectorization_28_cond_placeholderf
btext_vectorization_28_cond_strided_slice_text_vectorization_28_raggedtotensor_raggedtensortotensor	'
#text_vectorization_28_cond_identity	?
.text_vectorization_28/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.text_vectorization_28/cond/strided_slice/stack?
0text_vectorization_28/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   22
0text_vectorization_28/cond/strided_slice/stack_1?
0text_vectorization_28/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0text_vectorization_28/cond/strided_slice/stack_2?
(text_vectorization_28/cond/strided_sliceStridedSlicebtext_vectorization_28_cond_strided_slice_text_vectorization_28_raggedtotensor_raggedtensortotensor7text_vectorization_28/cond/strided_slice/stack:output:09text_vectorization_28/cond/strided_slice/stack_1:output:09text_vectorization_28/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2*
(text_vectorization_28/cond/strided_slice?
#text_vectorization_28/cond/IdentityIdentity1text_vectorization_28/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2%
#text_vectorization_28/cond/Identity"S
#text_vectorization_28_cond_identity,text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
|
%__inference_signature_wrapper_1114549
input_29
unknown
	unknown_0	
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_29unknown	unknown_0*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_11142022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_29:

_output_shapes
: 
?
?
 __inference__traced_save_1114829
file_prefixV
Rsavev2_string_lookup_30_index_table_lookup_table_export_values_lookuptableexportv2X
Tsavev2_string_lookup_30_index_table_lookup_table_export_values_lookuptableexportv2_1	
savev2_const_1

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?BFlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-valuesB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Rsavev2_string_lookup_30_index_table_lookup_table_export_values_lookuptableexportv2Tsavev2_string_lookup_30_index_table_lookup_table_export_values_lookuptableexportv2_1savev2_const_1"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
::

_output_shapes
::

_output_shapes
: 
?
?
/__inference_sequential_92_layer_call_fn_1114752

inputs
unknown
	unknown_0	
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_92_layer_call_and_return_conditional_losses_11145312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
(text_vectorization_28_cond_false_1114713*
&text_vectorization_28_cond_placeholderf
btext_vectorization_28_cond_strided_slice_text_vectorization_28_raggedtotensor_raggedtensortotensor	'
#text_vectorization_28_cond_identity	?
.text_vectorization_28/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.text_vectorization_28/cond/strided_slice/stack?
0text_vectorization_28/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   22
0text_vectorization_28/cond/strided_slice/stack_1?
0text_vectorization_28/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0text_vectorization_28/cond/strided_slice/stack_2?
(text_vectorization_28/cond/strided_sliceStridedSlicebtext_vectorization_28_cond_strided_slice_text_vectorization_28_raggedtotensor_raggedtensortotensor7text_vectorization_28/cond/strided_slice/stack:output:09text_vectorization_28/cond/strided_slice/stack_1:output:09text_vectorization_28/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2*
(text_vectorization_28/cond/strided_slice?
#text_vectorization_28/cond/IdentityIdentity1text_vectorization_28/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2%
#text_vectorization_28/cond/Identity"S
#text_vectorization_28_cond_identity,text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
'text_vectorization_28_cond_true_1114712G
Ctext_vectorization_28_cond_pad_paddings_1_text_vectorization_28_sub\
Xtext_vectorization_28_cond_pad_text_vectorization_28_raggedtotensor_raggedtensortotensor	'
#text_vectorization_28_cond_identity	?
+text_vectorization_28/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2-
+text_vectorization_28/cond/Pad/paddings/1/0?
)text_vectorization_28/cond/Pad/paddings/1Pack4text_vectorization_28/cond/Pad/paddings/1/0:output:0Ctext_vectorization_28_cond_pad_paddings_1_text_vectorization_28_sub*
N*
T0*
_output_shapes
:2+
)text_vectorization_28/cond/Pad/paddings/1?
+text_vectorization_28/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+text_vectorization_28/cond/Pad/paddings/0_1?
'text_vectorization_28/cond/Pad/paddingsPack4text_vectorization_28/cond/Pad/paddings/0_1:output:02text_vectorization_28/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2)
'text_vectorization_28/cond/Pad/paddings?
text_vectorization_28/cond/PadPadXtext_vectorization_28_cond_pad_text_vectorization_28_raggedtotensor_raggedtensortotensor0text_vectorization_28/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2 
text_vectorization_28/cond/Pad?
#text_vectorization_28/cond/IdentityIdentity'text_vectorization_28/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2%
#text_vectorization_28/cond/Identity"S
#text_vectorization_28_cond_identity,text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
/__inference_sequential_92_layer_call_fn_1114538
input_29
unknown
	unknown_0	
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_29unknown	unknown_0*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_92_layer_call_and_return_conditional_losses_11145312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_29:

_output_shapes
: 
?
,
__inference_<lambda>_1114799
identityS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
??
?
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114443

inputs`
\text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handlea
]text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value	
identity	??Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
!text_vectorization_28/StringLowerStringLowerinputs*'
_output_shapes
:?????????2#
!text_vectorization_28/StringLower?
(text_vectorization_28/StaticRegexReplaceStaticRegexReplace*text_vectorization_28/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2*
(text_vectorization_28/StaticRegexReplace?
text_vectorization_28/SqueezeSqueeze1text_vectorization_28/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_28/Squeeze?
'text_vectorization_28/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2)
'text_vectorization_28/StringSplit/Const?
/text_vectorization_28/StringSplit/StringSplitV2StringSplitV2&text_vectorization_28/Squeeze:output:00text_vectorization_28/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:21
/text_vectorization_28/StringSplit/StringSplitV2?
5text_vectorization_28/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5text_vectorization_28/StringSplit/strided_slice/stack?
7text_vectorization_28/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7text_vectorization_28/StringSplit/strided_slice/stack_1?
7text_vectorization_28/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7text_vectorization_28/StringSplit/strided_slice/stack_2?
/text_vectorization_28/StringSplit/strided_sliceStridedSlice9text_vectorization_28/StringSplit/StringSplitV2:indices:0>text_vectorization_28/StringSplit/strided_slice/stack:output:0@text_vectorization_28/StringSplit/strided_slice/stack_1:output:0@text_vectorization_28/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask21
/text_vectorization_28/StringSplit/strided_slice?
7text_vectorization_28/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7text_vectorization_28/StringSplit/strided_slice_1/stack?
9text_vectorization_28/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9text_vectorization_28/StringSplit/strided_slice_1/stack_1?
9text_vectorization_28/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9text_vectorization_28/StringSplit/strided_slice_1/stack_2?
1text_vectorization_28/StringSplit/strided_slice_1StridedSlice7text_vectorization_28/StringSplit/StringSplitV2:shape:0@text_vectorization_28/StringSplit/strided_slice_1/stack:output:0Btext_vectorization_28/StringSplit/strided_slice_1/stack_1:output:0Btext_vectorization_28/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask23
1text_vectorization_28/StringSplit/strided_slice_1?
Xtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast8text_vectorization_28/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Z
Xtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast:text_vectorization_28/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0ktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2c
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ftext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2h
ftext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterjtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0otext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasthtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2c
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0mtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2itext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0ktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuletext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum^text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum^text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
etext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0mtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2g
etext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumltext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
ctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2e
ctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ltext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2LookupTableFindV2\text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handle8text_vectorization_28/StringSplit/StringSplitV2:values:0]text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2Q
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
8text_vectorization_28/string_lookup_30/assert_equal/NoOpNoOp*
_output_shapes
 2:
8text_vectorization_28/string_lookup_30/assert_equal/NoOp?
/text_vectorization_28/string_lookup_30/IdentityIdentityXtext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_28/string_lookup_30/Identity?
1text_vectorization_28/string_lookup_30/Identity_1Identityctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????23
1text_vectorization_28/string_lookup_30/Identity_1?
2text_vectorization_28/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 24
2text_vectorization_28/RaggedToTensor/default_value?
*text_vectorization_28/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2,
*text_vectorization_28/RaggedToTensor/Const?
9text_vectorization_28/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor3text_vectorization_28/RaggedToTensor/Const:output:08text_vectorization_28/string_lookup_30/Identity:output:0;text_vectorization_28/RaggedToTensor/default_value:output:0:text_vectorization_28/string_lookup_30/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2;
9text_vectorization_28/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_28/ShapeShapeBtext_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_28/Shape?
)text_vectorization_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)text_vectorization_28/strided_slice/stack?
+text_vectorization_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+text_vectorization_28/strided_slice/stack_1?
+text_vectorization_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+text_vectorization_28/strided_slice/stack_2?
#text_vectorization_28/strided_sliceStridedSlice$text_vectorization_28/Shape:output:02text_vectorization_28/strided_slice/stack:output:04text_vectorization_28/strided_slice/stack_1:output:04text_vectorization_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#text_vectorization_28/strided_slice|
text_vectorization_28/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_28/sub/x?
text_vectorization_28/subSub$text_vectorization_28/sub/x:output:0,text_vectorization_28/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_28/sub~
text_vectorization_28/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_28/Less/y?
text_vectorization_28/LessLess,text_vectorization_28/strided_slice:output:0%text_vectorization_28/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_28/Less?
text_vectorization_28/condStatelessIftext_vectorization_28/Less:z:0text_vectorization_28/sub:z:0Btext_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *;
else_branch,R*
(text_vectorization_28_cond_false_1114422*/
output_shapes
:??????????????????*:
then_branch+R)
'text_vectorization_28_cond_true_11144212
text_vectorization_28/cond?
#text_vectorization_28/cond/IdentityIdentity#text_vectorization_28/cond:output:0*
T0	*'
_output_shapes
:?????????d2%
#text_vectorization_28/cond/Identity?
IdentityIdentity,text_vectorization_28/cond/Identity:output:0P^text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2*
T0	*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: 2?
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
(text_vectorization_28_cond_false_1114422*
&text_vectorization_28_cond_placeholderf
btext_vectorization_28_cond_strided_slice_text_vectorization_28_raggedtotensor_raggedtensortotensor	'
#text_vectorization_28_cond_identity	?
.text_vectorization_28/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.text_vectorization_28/cond/strided_slice/stack?
0text_vectorization_28/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   22
0text_vectorization_28/cond/strided_slice/stack_1?
0text_vectorization_28/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0text_vectorization_28/cond/strided_slice/stack_2?
(text_vectorization_28/cond/strided_sliceStridedSlicebtext_vectorization_28_cond_strided_slice_text_vectorization_28_raggedtotensor_raggedtensortotensor7text_vectorization_28/cond/strided_slice/stack:output:09text_vectorization_28/cond/strided_slice/stack_1:output:09text_vectorization_28/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2*
(text_vectorization_28/cond/strided_slice?
#text_vectorization_28/cond/IdentityIdentity1text_vectorization_28/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2%
#text_vectorization_28/cond/Identity"S
#text_vectorization_28_cond_identity,text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
'text_vectorization_28_cond_true_1114339G
Ctext_vectorization_28_cond_pad_paddings_1_text_vectorization_28_sub\
Xtext_vectorization_28_cond_pad_text_vectorization_28_raggedtotensor_raggedtensortotensor	'
#text_vectorization_28_cond_identity	?
+text_vectorization_28/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2-
+text_vectorization_28/cond/Pad/paddings/1/0?
)text_vectorization_28/cond/Pad/paddings/1Pack4text_vectorization_28/cond/Pad/paddings/1/0:output:0Ctext_vectorization_28_cond_pad_paddings_1_text_vectorization_28_sub*
N*
T0*
_output_shapes
:2+
)text_vectorization_28/cond/Pad/paddings/1?
+text_vectorization_28/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+text_vectorization_28/cond/Pad/paddings/0_1?
'text_vectorization_28/cond/Pad/paddingsPack4text_vectorization_28/cond/Pad/paddings/0_1:output:02text_vectorization_28/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2)
'text_vectorization_28/cond/Pad/paddings?
text_vectorization_28/cond/PadPadXtext_vectorization_28_cond_pad_text_vectorization_28_raggedtotensor_raggedtensortotensor0text_vectorization_28/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2 
text_vectorization_28/cond/Pad?
#text_vectorization_28/cond/IdentityIdentity'text_vectorization_28/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2%
#text_vectorization_28/cond/Identity"S
#text_vectorization_28_cond_identity,text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
5sequential_92_text_vectorization_28_cond_true_1114180c
_sequential_92_text_vectorization_28_cond_pad_paddings_1_sequential_92_text_vectorization_28_subx
tsequential_92_text_vectorization_28_cond_pad_sequential_92_text_vectorization_28_raggedtotensor_raggedtensortotensor	5
1sequential_92_text_vectorization_28_cond_identity	?
9sequential_92/text_vectorization_28/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2;
9sequential_92/text_vectorization_28/cond/Pad/paddings/1/0?
7sequential_92/text_vectorization_28/cond/Pad/paddings/1PackBsequential_92/text_vectorization_28/cond/Pad/paddings/1/0:output:0_sequential_92_text_vectorization_28_cond_pad_paddings_1_sequential_92_text_vectorization_28_sub*
N*
T0*
_output_shapes
:29
7sequential_92/text_vectorization_28/cond/Pad/paddings/1?
9sequential_92/text_vectorization_28/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_92/text_vectorization_28/cond/Pad/paddings/0_1?
5sequential_92/text_vectorization_28/cond/Pad/paddingsPackBsequential_92/text_vectorization_28/cond/Pad/paddings/0_1:output:0@sequential_92/text_vectorization_28/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:27
5sequential_92/text_vectorization_28/cond/Pad/paddings?
,sequential_92/text_vectorization_28/cond/PadPadtsequential_92_text_vectorization_28_cond_pad_sequential_92_text_vectorization_28_raggedtotensor_raggedtensortotensor>sequential_92/text_vectorization_28/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2.
,sequential_92/text_vectorization_28/cond/Pad?
1sequential_92/text_vectorization_28/cond/IdentityIdentity5sequential_92/text_vectorization_28/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????23
1sequential_92/text_vectorization_28/cond/Identity"o
1sequential_92_text_vectorization_28_cond_identity:sequential_92/text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
'text_vectorization_28_cond_true_1114633G
Ctext_vectorization_28_cond_pad_paddings_1_text_vectorization_28_sub\
Xtext_vectorization_28_cond_pad_text_vectorization_28_raggedtotensor_raggedtensortotensor	'
#text_vectorization_28_cond_identity	?
+text_vectorization_28/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2-
+text_vectorization_28/cond/Pad/paddings/1/0?
)text_vectorization_28/cond/Pad/paddings/1Pack4text_vectorization_28/cond/Pad/paddings/1/0:output:0Ctext_vectorization_28_cond_pad_paddings_1_text_vectorization_28_sub*
N*
T0*
_output_shapes
:2+
)text_vectorization_28/cond/Pad/paddings/1?
+text_vectorization_28/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+text_vectorization_28/cond/Pad/paddings/0_1?
'text_vectorization_28/cond/Pad/paddingsPack4text_vectorization_28/cond/Pad/paddings/0_1:output:02text_vectorization_28/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2)
'text_vectorization_28/cond/Pad/paddings?
text_vectorization_28/cond/PadPadXtext_vectorization_28_cond_pad_text_vectorization_28_raggedtotensor_raggedtensortotensor0text_vectorization_28/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2 
text_vectorization_28/cond/Pad?
#text_vectorization_28/cond/IdentityIdentity'text_vectorization_28/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2%
#text_vectorization_28/cond/Identity"S
#text_vectorization_28_cond_identity,text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
/__inference_sequential_92_layer_call_fn_1114743

inputs
unknown
	unknown_0	
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_92_layer_call_and_return_conditional_losses_11144432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
??
?
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114361
input_29`
\text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handlea
]text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value	
identity	??Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
!text_vectorization_28/StringLowerStringLowerinput_29*'
_output_shapes
:?????????2#
!text_vectorization_28/StringLower?
(text_vectorization_28/StaticRegexReplaceStaticRegexReplace*text_vectorization_28/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2*
(text_vectorization_28/StaticRegexReplace?
text_vectorization_28/SqueezeSqueeze1text_vectorization_28/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_28/Squeeze?
'text_vectorization_28/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2)
'text_vectorization_28/StringSplit/Const?
/text_vectorization_28/StringSplit/StringSplitV2StringSplitV2&text_vectorization_28/Squeeze:output:00text_vectorization_28/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:21
/text_vectorization_28/StringSplit/StringSplitV2?
5text_vectorization_28/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5text_vectorization_28/StringSplit/strided_slice/stack?
7text_vectorization_28/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7text_vectorization_28/StringSplit/strided_slice/stack_1?
7text_vectorization_28/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7text_vectorization_28/StringSplit/strided_slice/stack_2?
/text_vectorization_28/StringSplit/strided_sliceStridedSlice9text_vectorization_28/StringSplit/StringSplitV2:indices:0>text_vectorization_28/StringSplit/strided_slice/stack:output:0@text_vectorization_28/StringSplit/strided_slice/stack_1:output:0@text_vectorization_28/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask21
/text_vectorization_28/StringSplit/strided_slice?
7text_vectorization_28/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7text_vectorization_28/StringSplit/strided_slice_1/stack?
9text_vectorization_28/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9text_vectorization_28/StringSplit/strided_slice_1/stack_1?
9text_vectorization_28/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9text_vectorization_28/StringSplit/strided_slice_1/stack_2?
1text_vectorization_28/StringSplit/strided_slice_1StridedSlice7text_vectorization_28/StringSplit/StringSplitV2:shape:0@text_vectorization_28/StringSplit/strided_slice_1/stack:output:0Btext_vectorization_28/StringSplit/strided_slice_1/stack_1:output:0Btext_vectorization_28/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask23
1text_vectorization_28/StringSplit/strided_slice_1?
Xtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast8text_vectorization_28/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Z
Xtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast:text_vectorization_28/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0ktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2c
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ftext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2h
ftext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterjtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0otext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasthtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2c
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0mtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2itext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0ktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuletext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum^text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum^text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
etext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0mtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2g
etext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumltext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
ctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2e
ctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ltext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2LookupTableFindV2\text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handle8text_vectorization_28/StringSplit/StringSplitV2:values:0]text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2Q
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
8text_vectorization_28/string_lookup_30/assert_equal/NoOpNoOp*
_output_shapes
 2:
8text_vectorization_28/string_lookup_30/assert_equal/NoOp?
/text_vectorization_28/string_lookup_30/IdentityIdentityXtext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_28/string_lookup_30/Identity?
1text_vectorization_28/string_lookup_30/Identity_1Identityctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????23
1text_vectorization_28/string_lookup_30/Identity_1?
2text_vectorization_28/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 24
2text_vectorization_28/RaggedToTensor/default_value?
*text_vectorization_28/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2,
*text_vectorization_28/RaggedToTensor/Const?
9text_vectorization_28/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor3text_vectorization_28/RaggedToTensor/Const:output:08text_vectorization_28/string_lookup_30/Identity:output:0;text_vectorization_28/RaggedToTensor/default_value:output:0:text_vectorization_28/string_lookup_30/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2;
9text_vectorization_28/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_28/ShapeShapeBtext_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_28/Shape?
)text_vectorization_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)text_vectorization_28/strided_slice/stack?
+text_vectorization_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+text_vectorization_28/strided_slice/stack_1?
+text_vectorization_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+text_vectorization_28/strided_slice/stack_2?
#text_vectorization_28/strided_sliceStridedSlice$text_vectorization_28/Shape:output:02text_vectorization_28/strided_slice/stack:output:04text_vectorization_28/strided_slice/stack_1:output:04text_vectorization_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#text_vectorization_28/strided_slice|
text_vectorization_28/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_28/sub/x?
text_vectorization_28/subSub$text_vectorization_28/sub/x:output:0,text_vectorization_28/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_28/sub~
text_vectorization_28/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_28/Less/y?
text_vectorization_28/LessLess,text_vectorization_28/strided_slice:output:0%text_vectorization_28/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_28/Less?
text_vectorization_28/condStatelessIftext_vectorization_28/Less:z:0text_vectorization_28/sub:z:0Btext_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *;
else_branch,R*
(text_vectorization_28_cond_false_1114340*/
output_shapes
:??????????????????*:
then_branch+R)
'text_vectorization_28_cond_true_11143392
text_vectorization_28/cond?
#text_vectorization_28/cond/IdentityIdentity#text_vectorization_28/cond:output:0*
T0	*'
_output_shapes
:?????????d2%
#text_vectorization_28/cond/Identity?
IdentityIdentity,text_vectorization_28/cond/Identity:output:0P^text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2*
T0	*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: 2?
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_29:

_output_shapes
: 
?	
?
__inference_restore_fn_1114794
restored_tensors_0
restored_tensors_1	O
Kstring_lookup_30_index_table_table_restore_lookuptableimportv2_table_handle
identity??>string_lookup_30_index_table_table_restore/LookupTableImportV2?
>string_lookup_30_index_table_table_restore/LookupTableImportV2LookupTableImportV2Kstring_lookup_30_index_table_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 2@
>string_lookup_30_index_table_table_restore/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Const?
IdentityIdentityConst:output:0?^string_lookup_30_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:::2?
>string_lookup_30_index_table_table_restore/LookupTableImportV2>string_lookup_30_index_table_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
'text_vectorization_28_cond_true_1114260G
Ctext_vectorization_28_cond_pad_paddings_1_text_vectorization_28_sub\
Xtext_vectorization_28_cond_pad_text_vectorization_28_raggedtotensor_raggedtensortotensor	'
#text_vectorization_28_cond_identity	?
+text_vectorization_28/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2-
+text_vectorization_28/cond/Pad/paddings/1/0?
)text_vectorization_28/cond/Pad/paddings/1Pack4text_vectorization_28/cond/Pad/paddings/1/0:output:0Ctext_vectorization_28_cond_pad_paddings_1_text_vectorization_28_sub*
N*
T0*
_output_shapes
:2+
)text_vectorization_28/cond/Pad/paddings/1?
+text_vectorization_28/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+text_vectorization_28/cond/Pad/paddings/0_1?
'text_vectorization_28/cond/Pad/paddingsPack4text_vectorization_28/cond/Pad/paddings/0_1:output:02text_vectorization_28/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2)
'text_vectorization_28/cond/Pad/paddings?
text_vectorization_28/cond/PadPadXtext_vectorization_28_cond_pad_text_vectorization_28_raggedtotensor_raggedtensortotensor0text_vectorization_28/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2 
text_vectorization_28/cond/Pad?
#text_vectorization_28/cond/IdentityIdentity'text_vectorization_28/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2%
#text_vectorization_28/cond/Identity"S
#text_vectorization_28_cond_identity,text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
(text_vectorization_28_cond_false_1114261*
&text_vectorization_28_cond_placeholderf
btext_vectorization_28_cond_strided_slice_text_vectorization_28_raggedtotensor_raggedtensortotensor	'
#text_vectorization_28_cond_identity	?
.text_vectorization_28/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.text_vectorization_28/cond/strided_slice/stack?
0text_vectorization_28/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   22
0text_vectorization_28/cond/strided_slice/stack_1?
0text_vectorization_28/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0text_vectorization_28/cond/strided_slice/stack_2?
(text_vectorization_28/cond/strided_sliceStridedSlicebtext_vectorization_28_cond_strided_slice_text_vectorization_28_raggedtotensor_raggedtensortotensor7text_vectorization_28/cond/strided_slice/stack:output:09text_vectorization_28/cond/strided_slice/stack_1:output:09text_vectorization_28/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2*
(text_vectorization_28/cond/strided_slice?
#text_vectorization_28/cond/IdentityIdentity1text_vectorization_28/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2%
#text_vectorization_28/cond/Identity"S
#text_vectorization_28_cond_identity,text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
??
?
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114655

inputs`
\text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handlea
]text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value	
identity	??Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
!text_vectorization_28/StringLowerStringLowerinputs*'
_output_shapes
:?????????2#
!text_vectorization_28/StringLower?
(text_vectorization_28/StaticRegexReplaceStaticRegexReplace*text_vectorization_28/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2*
(text_vectorization_28/StaticRegexReplace?
text_vectorization_28/SqueezeSqueeze1text_vectorization_28/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_28/Squeeze?
'text_vectorization_28/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2)
'text_vectorization_28/StringSplit/Const?
/text_vectorization_28/StringSplit/StringSplitV2StringSplitV2&text_vectorization_28/Squeeze:output:00text_vectorization_28/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:21
/text_vectorization_28/StringSplit/StringSplitV2?
5text_vectorization_28/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5text_vectorization_28/StringSplit/strided_slice/stack?
7text_vectorization_28/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7text_vectorization_28/StringSplit/strided_slice/stack_1?
7text_vectorization_28/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7text_vectorization_28/StringSplit/strided_slice/stack_2?
/text_vectorization_28/StringSplit/strided_sliceStridedSlice9text_vectorization_28/StringSplit/StringSplitV2:indices:0>text_vectorization_28/StringSplit/strided_slice/stack:output:0@text_vectorization_28/StringSplit/strided_slice/stack_1:output:0@text_vectorization_28/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask21
/text_vectorization_28/StringSplit/strided_slice?
7text_vectorization_28/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7text_vectorization_28/StringSplit/strided_slice_1/stack?
9text_vectorization_28/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9text_vectorization_28/StringSplit/strided_slice_1/stack_1?
9text_vectorization_28/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9text_vectorization_28/StringSplit/strided_slice_1/stack_2?
1text_vectorization_28/StringSplit/strided_slice_1StridedSlice7text_vectorization_28/StringSplit/StringSplitV2:shape:0@text_vectorization_28/StringSplit/strided_slice_1/stack:output:0Btext_vectorization_28/StringSplit/strided_slice_1/stack_1:output:0Btext_vectorization_28/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask23
1text_vectorization_28/StringSplit/strided_slice_1?
Xtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast8text_vectorization_28/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Z
Xtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast:text_vectorization_28/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0ktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2c
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ftext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2h
ftext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterjtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0otext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasthtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2c
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0mtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2itext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0ktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuletext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum^text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum^text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
etext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0mtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2g
etext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumltext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
ctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2e
ctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ltext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2LookupTableFindV2\text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handle8text_vectorization_28/StringSplit/StringSplitV2:values:0]text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2Q
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
8text_vectorization_28/string_lookup_30/assert_equal/NoOpNoOp*
_output_shapes
 2:
8text_vectorization_28/string_lookup_30/assert_equal/NoOp?
/text_vectorization_28/string_lookup_30/IdentityIdentityXtext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_28/string_lookup_30/Identity?
1text_vectorization_28/string_lookup_30/Identity_1Identityctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????23
1text_vectorization_28/string_lookup_30/Identity_1?
2text_vectorization_28/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 24
2text_vectorization_28/RaggedToTensor/default_value?
*text_vectorization_28/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2,
*text_vectorization_28/RaggedToTensor/Const?
9text_vectorization_28/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor3text_vectorization_28/RaggedToTensor/Const:output:08text_vectorization_28/string_lookup_30/Identity:output:0;text_vectorization_28/RaggedToTensor/default_value:output:0:text_vectorization_28/string_lookup_30/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2;
9text_vectorization_28/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_28/ShapeShapeBtext_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_28/Shape?
)text_vectorization_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)text_vectorization_28/strided_slice/stack?
+text_vectorization_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+text_vectorization_28/strided_slice/stack_1?
+text_vectorization_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+text_vectorization_28/strided_slice/stack_2?
#text_vectorization_28/strided_sliceStridedSlice$text_vectorization_28/Shape:output:02text_vectorization_28/strided_slice/stack:output:04text_vectorization_28/strided_slice/stack_1:output:04text_vectorization_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#text_vectorization_28/strided_slice|
text_vectorization_28/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_28/sub/x?
text_vectorization_28/subSub$text_vectorization_28/sub/x:output:0,text_vectorization_28/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_28/sub~
text_vectorization_28/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_28/Less/y?
text_vectorization_28/LessLess,text_vectorization_28/strided_slice:output:0%text_vectorization_28/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_28/Less?
text_vectorization_28/condStatelessIftext_vectorization_28/Less:z:0text_vectorization_28/sub:z:0Btext_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *;
else_branch,R*
(text_vectorization_28_cond_false_1114634*/
output_shapes
:??????????????????*:
then_branch+R)
'text_vectorization_28_cond_true_11146332
text_vectorization_28/cond?
#text_vectorization_28/cond/IdentityIdentity#text_vectorization_28/cond:output:0*
T0	*'
_output_shapes
:?????????d2%
#text_vectorization_28/cond/Identity?
IdentityIdentity,text_vectorization_28/cond/Identity:output:0P^text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2*
T0	*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: 2?
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
6sequential_92_text_vectorization_28_cond_false_11141818
4sequential_92_text_vectorization_28_cond_placeholder?
~sequential_92_text_vectorization_28_cond_strided_slice_sequential_92_text_vectorization_28_raggedtotensor_raggedtensortotensor	5
1sequential_92_text_vectorization_28_cond_identity	?
<sequential_92/text_vectorization_28/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_92/text_vectorization_28/cond/strided_slice/stack?
>sequential_92/text_vectorization_28/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2@
>sequential_92/text_vectorization_28/cond/strided_slice/stack_1?
>sequential_92/text_vectorization_28/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_92/text_vectorization_28/cond/strided_slice/stack_2?
6sequential_92/text_vectorization_28/cond/strided_sliceStridedSlice~sequential_92_text_vectorization_28_cond_strided_slice_sequential_92_text_vectorization_28_raggedtotensor_raggedtensortotensorEsequential_92/text_vectorization_28/cond/strided_slice/stack:output:0Gsequential_92/text_vectorization_28/cond/strided_slice/stack_1:output:0Gsequential_92/text_vectorization_28/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask28
6sequential_92/text_vectorization_28/cond/strided_slice?
1sequential_92/text_vectorization_28/cond/IdentityIdentity?sequential_92/text_vectorization_28/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????23
1sequential_92/text_vectorization_28/cond/Identity"o
1sequential_92_text_vectorization_28_cond_identity:sequential_92/text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
'text_vectorization_28_cond_true_1114421G
Ctext_vectorization_28_cond_pad_paddings_1_text_vectorization_28_sub\
Xtext_vectorization_28_cond_pad_text_vectorization_28_raggedtotensor_raggedtensortotensor	'
#text_vectorization_28_cond_identity	?
+text_vectorization_28/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2-
+text_vectorization_28/cond/Pad/paddings/1/0?
)text_vectorization_28/cond/Pad/paddings/1Pack4text_vectorization_28/cond/Pad/paddings/1/0:output:0Ctext_vectorization_28_cond_pad_paddings_1_text_vectorization_28_sub*
N*
T0*
_output_shapes
:2+
)text_vectorization_28/cond/Pad/paddings/1?
+text_vectorization_28/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+text_vectorization_28/cond/Pad/paddings/0_1?
'text_vectorization_28/cond/Pad/paddingsPack4text_vectorization_28/cond/Pad/paddings/0_1:output:02text_vectorization_28/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2)
'text_vectorization_28/cond/Pad/paddings?
text_vectorization_28/cond/PadPadXtext_vectorization_28_cond_pad_text_vectorization_28_raggedtotensor_raggedtensortotensor0text_vectorization_28/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2 
text_vectorization_28/cond/Pad?
#text_vectorization_28/cond/IdentityIdentity'text_vectorization_28/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2%
#text_vectorization_28/cond/Identity"S
#text_vectorization_28_cond_identity,text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
/__inference_sequential_92_layer_call_fn_1114450
input_29
unknown
	unknown_0	
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_29unknown	unknown_0*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_92_layer_call_and_return_conditional_losses_11144432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_29:

_output_shapes
: 
?
?
#__inference__traced_restore_1114842
file_prefix_
[string_lookup_30_index_table_table_restore_lookuptableimportv2_string_lookup_30_index_table

identity_1??>string_lookup_30_index_table_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?BFlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-valuesB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapes
:::*
dtypes
2	2
	RestoreV2?
>string_lookup_30_index_table_table_restore/LookupTableImportV2LookupTableImportV2[string_lookup_30_index_table_table_restore_lookuptableimportv2_string_lookup_30_index_tableRestoreV2:tensors:0RestoreV2:tensors:1*	
Tin0*

Tout0	*/
_class%
#!loc:@string_lookup_30_index_table*
_output_shapes
 2@
>string_lookup_30_index_table_table_restore/LookupTableImportV29
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
IdentityIdentityfile_prefix^NoOp?^string_lookup_30_index_table_table_restore/LookupTableImportV2"/device:CPU:0*
T0*
_output_shapes
: 2

Identity?

Identity_1IdentityIdentity:output:0?^string_lookup_30_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: :2?
>string_lookup_30_index_table_table_restore/LookupTableImportV2>string_lookup_30_index_table_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:51
/
_class%
#!loc:@string_lookup_30_index_table
??
?
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114734

inputs`
\text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handlea
]text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value	
identity	??Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
!text_vectorization_28/StringLowerStringLowerinputs*'
_output_shapes
:?????????2#
!text_vectorization_28/StringLower?
(text_vectorization_28/StaticRegexReplaceStaticRegexReplace*text_vectorization_28/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2*
(text_vectorization_28/StaticRegexReplace?
text_vectorization_28/SqueezeSqueeze1text_vectorization_28/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_28/Squeeze?
'text_vectorization_28/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2)
'text_vectorization_28/StringSplit/Const?
/text_vectorization_28/StringSplit/StringSplitV2StringSplitV2&text_vectorization_28/Squeeze:output:00text_vectorization_28/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:21
/text_vectorization_28/StringSplit/StringSplitV2?
5text_vectorization_28/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5text_vectorization_28/StringSplit/strided_slice/stack?
7text_vectorization_28/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7text_vectorization_28/StringSplit/strided_slice/stack_1?
7text_vectorization_28/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7text_vectorization_28/StringSplit/strided_slice/stack_2?
/text_vectorization_28/StringSplit/strided_sliceStridedSlice9text_vectorization_28/StringSplit/StringSplitV2:indices:0>text_vectorization_28/StringSplit/strided_slice/stack:output:0@text_vectorization_28/StringSplit/strided_slice/stack_1:output:0@text_vectorization_28/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask21
/text_vectorization_28/StringSplit/strided_slice?
7text_vectorization_28/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7text_vectorization_28/StringSplit/strided_slice_1/stack?
9text_vectorization_28/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9text_vectorization_28/StringSplit/strided_slice_1/stack_1?
9text_vectorization_28/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9text_vectorization_28/StringSplit/strided_slice_1/stack_2?
1text_vectorization_28/StringSplit/strided_slice_1StridedSlice7text_vectorization_28/StringSplit/StringSplitV2:shape:0@text_vectorization_28/StringSplit/strided_slice_1/stack:output:0Btext_vectorization_28/StringSplit/strided_slice_1/stack_1:output:0Btext_vectorization_28/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask23
1text_vectorization_28/StringSplit/strided_slice_1?
Xtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast8text_vectorization_28/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Z
Xtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast:text_vectorization_28/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0ktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2c
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ftext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2h
ftext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterjtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0otext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasthtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2c
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0mtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2itext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0ktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuletext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum^text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum^text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
etext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0mtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2g
etext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumltext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
ctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2e
ctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ltext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2LookupTableFindV2\text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handle8text_vectorization_28/StringSplit/StringSplitV2:values:0]text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2Q
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
8text_vectorization_28/string_lookup_30/assert_equal/NoOpNoOp*
_output_shapes
 2:
8text_vectorization_28/string_lookup_30/assert_equal/NoOp?
/text_vectorization_28/string_lookup_30/IdentityIdentityXtext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_28/string_lookup_30/Identity?
1text_vectorization_28/string_lookup_30/Identity_1Identityctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????23
1text_vectorization_28/string_lookup_30/Identity_1?
2text_vectorization_28/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 24
2text_vectorization_28/RaggedToTensor/default_value?
*text_vectorization_28/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2,
*text_vectorization_28/RaggedToTensor/Const?
9text_vectorization_28/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor3text_vectorization_28/RaggedToTensor/Const:output:08text_vectorization_28/string_lookup_30/Identity:output:0;text_vectorization_28/RaggedToTensor/default_value:output:0:text_vectorization_28/string_lookup_30/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2;
9text_vectorization_28/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_28/ShapeShapeBtext_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_28/Shape?
)text_vectorization_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)text_vectorization_28/strided_slice/stack?
+text_vectorization_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+text_vectorization_28/strided_slice/stack_1?
+text_vectorization_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+text_vectorization_28/strided_slice/stack_2?
#text_vectorization_28/strided_sliceStridedSlice$text_vectorization_28/Shape:output:02text_vectorization_28/strided_slice/stack:output:04text_vectorization_28/strided_slice/stack_1:output:04text_vectorization_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#text_vectorization_28/strided_slice|
text_vectorization_28/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_28/sub/x?
text_vectorization_28/subSub$text_vectorization_28/sub/x:output:0,text_vectorization_28/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_28/sub~
text_vectorization_28/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_28/Less/y?
text_vectorization_28/LessLess,text_vectorization_28/strided_slice:output:0%text_vectorization_28/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_28/Less?
text_vectorization_28/condStatelessIftext_vectorization_28/Less:z:0text_vectorization_28/sub:z:0Btext_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *;
else_branch,R*
(text_vectorization_28_cond_false_1114713*/
output_shapes
:??????????????????*:
then_branch+R)
'text_vectorization_28_cond_true_11147122
text_vectorization_28/cond?
#text_vectorization_28/cond/IdentityIdentity#text_vectorization_28/cond:output:0*
T0	*'
_output_shapes
:?????????d2%
#text_vectorization_28/cond/Identity?
IdentityIdentity,text_vectorization_28/cond/Identity:output:0P^text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2*
T0	*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: 2?
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
(text_vectorization_28_cond_false_1114510*
&text_vectorization_28_cond_placeholderf
btext_vectorization_28_cond_strided_slice_text_vectorization_28_raggedtotensor_raggedtensortotensor	'
#text_vectorization_28_cond_identity	?
.text_vectorization_28/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.text_vectorization_28/cond/strided_slice/stack?
0text_vectorization_28/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   22
0text_vectorization_28/cond/strided_slice/stack_1?
0text_vectorization_28/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0text_vectorization_28/cond/strided_slice/stack_2?
(text_vectorization_28/cond/strided_sliceStridedSlicebtext_vectorization_28_cond_strided_slice_text_vectorization_28_raggedtotensor_raggedtensortotensor7text_vectorization_28/cond/strided_slice/stack:output:09text_vectorization_28/cond/strided_slice/stack_1:output:09text_vectorization_28/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2*
(text_vectorization_28/cond/strided_slice?
#text_vectorization_28/cond/IdentityIdentity1text_vectorization_28/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2%
#text_vectorization_28/cond/Identity"S
#text_vectorization_28_cond_identity,text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
0
 __inference__initializer_1114762
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
'text_vectorization_28_cond_true_1114509G
Ctext_vectorization_28_cond_pad_paddings_1_text_vectorization_28_sub\
Xtext_vectorization_28_cond_pad_text_vectorization_28_raggedtotensor_raggedtensortotensor	'
#text_vectorization_28_cond_identity	?
+text_vectorization_28/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2-
+text_vectorization_28/cond/Pad/paddings/1/0?
)text_vectorization_28/cond/Pad/paddings/1Pack4text_vectorization_28/cond/Pad/paddings/1/0:output:0Ctext_vectorization_28_cond_pad_paddings_1_text_vectorization_28_sub*
N*
T0*
_output_shapes
:2+
)text_vectorization_28/cond/Pad/paddings/1?
+text_vectorization_28/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+text_vectorization_28/cond/Pad/paddings/0_1?
'text_vectorization_28/cond/Pad/paddingsPack4text_vectorization_28/cond/Pad/paddings/0_1:output:02text_vectorization_28/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2)
'text_vectorization_28/cond/Pad/paddings?
text_vectorization_28/cond/PadPadXtext_vectorization_28_cond_pad_text_vectorization_28_raggedtotensor_raggedtensortotensor0text_vectorization_28/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2 
text_vectorization_28/cond/Pad?
#text_vectorization_28/cond/IdentityIdentity'text_vectorization_28/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2%
#text_vectorization_28/cond/Identity"S
#text_vectorization_28_cond_identity,text_vectorization_28/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
.
__inference__destroyer_1114767
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
??
?
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114531

inputs`
\text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handlea
]text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value	
identity	??Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
!text_vectorization_28/StringLowerStringLowerinputs*'
_output_shapes
:?????????2#
!text_vectorization_28/StringLower?
(text_vectorization_28/StaticRegexReplaceStaticRegexReplace*text_vectorization_28/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2*
(text_vectorization_28/StaticRegexReplace?
text_vectorization_28/SqueezeSqueeze1text_vectorization_28/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_28/Squeeze?
'text_vectorization_28/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2)
'text_vectorization_28/StringSplit/Const?
/text_vectorization_28/StringSplit/StringSplitV2StringSplitV2&text_vectorization_28/Squeeze:output:00text_vectorization_28/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:21
/text_vectorization_28/StringSplit/StringSplitV2?
5text_vectorization_28/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5text_vectorization_28/StringSplit/strided_slice/stack?
7text_vectorization_28/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7text_vectorization_28/StringSplit/strided_slice/stack_1?
7text_vectorization_28/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7text_vectorization_28/StringSplit/strided_slice/stack_2?
/text_vectorization_28/StringSplit/strided_sliceStridedSlice9text_vectorization_28/StringSplit/StringSplitV2:indices:0>text_vectorization_28/StringSplit/strided_slice/stack:output:0@text_vectorization_28/StringSplit/strided_slice/stack_1:output:0@text_vectorization_28/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask21
/text_vectorization_28/StringSplit/strided_slice?
7text_vectorization_28/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7text_vectorization_28/StringSplit/strided_slice_1/stack?
9text_vectorization_28/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9text_vectorization_28/StringSplit/strided_slice_1/stack_1?
9text_vectorization_28/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9text_vectorization_28/StringSplit/strided_slice_1/stack_2?
1text_vectorization_28/StringSplit/strided_slice_1StridedSlice7text_vectorization_28/StringSplit/StringSplitV2:shape:0@text_vectorization_28/StringSplit/strided_slice_1/stack:output:0Btext_vectorization_28/StringSplit/strided_slice_1/stack_1:output:0Btext_vectorization_28/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask23
1text_vectorization_28/StringSplit/strided_slice_1?
Xtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast8text_vectorization_28/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Z
Xtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast:text_vectorization_28/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0ktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2c
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ftext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2h
ftext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterjtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0otext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasthtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2c
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0mtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2itext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0ktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuletext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum^text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum^text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
etext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0mtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2g
etext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumltext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
ctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2e
ctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ltext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2LookupTableFindV2\text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handle8text_vectorization_28/StringSplit/StringSplitV2:values:0]text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2Q
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
8text_vectorization_28/string_lookup_30/assert_equal/NoOpNoOp*
_output_shapes
 2:
8text_vectorization_28/string_lookup_30/assert_equal/NoOp?
/text_vectorization_28/string_lookup_30/IdentityIdentityXtext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_28/string_lookup_30/Identity?
1text_vectorization_28/string_lookup_30/Identity_1Identityctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????23
1text_vectorization_28/string_lookup_30/Identity_1?
2text_vectorization_28/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 24
2text_vectorization_28/RaggedToTensor/default_value?
*text_vectorization_28/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2,
*text_vectorization_28/RaggedToTensor/Const?
9text_vectorization_28/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor3text_vectorization_28/RaggedToTensor/Const:output:08text_vectorization_28/string_lookup_30/Identity:output:0;text_vectorization_28/RaggedToTensor/default_value:output:0:text_vectorization_28/string_lookup_30/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2;
9text_vectorization_28/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_28/ShapeShapeBtext_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_28/Shape?
)text_vectorization_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)text_vectorization_28/strided_slice/stack?
+text_vectorization_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+text_vectorization_28/strided_slice/stack_1?
+text_vectorization_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+text_vectorization_28/strided_slice/stack_2?
#text_vectorization_28/strided_sliceStridedSlice$text_vectorization_28/Shape:output:02text_vectorization_28/strided_slice/stack:output:04text_vectorization_28/strided_slice/stack_1:output:04text_vectorization_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#text_vectorization_28/strided_slice|
text_vectorization_28/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_28/sub/x?
text_vectorization_28/subSub$text_vectorization_28/sub/x:output:0,text_vectorization_28/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_28/sub~
text_vectorization_28/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_28/Less/y?
text_vectorization_28/LessLess,text_vectorization_28/strided_slice:output:0%text_vectorization_28/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_28/Less?
text_vectorization_28/condStatelessIftext_vectorization_28/Less:z:0text_vectorization_28/sub:z:0Btext_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *;
else_branch,R*
(text_vectorization_28_cond_false_1114510*/
output_shapes
:??????????????????*:
then_branch+R)
'text_vectorization_28_cond_true_11145092
text_vectorization_28/cond?
#text_vectorization_28/cond/IdentityIdentity#text_vectorization_28/cond:output:0*
T0	*'
_output_shapes
:?????????d2%
#text_vectorization_28/cond/Identity?
IdentityIdentity,text_vectorization_28/cond/Identity:output:0P^text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2*
T0	*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: 2?
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
??
?
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114282
input_29`
\text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handlea
]text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value	
identity	??Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
!text_vectorization_28/StringLowerStringLowerinput_29*'
_output_shapes
:?????????2#
!text_vectorization_28/StringLower?
(text_vectorization_28/StaticRegexReplaceStaticRegexReplace*text_vectorization_28/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2*
(text_vectorization_28/StaticRegexReplace?
text_vectorization_28/SqueezeSqueeze1text_vectorization_28/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_28/Squeeze?
'text_vectorization_28/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2)
'text_vectorization_28/StringSplit/Const?
/text_vectorization_28/StringSplit/StringSplitV2StringSplitV2&text_vectorization_28/Squeeze:output:00text_vectorization_28/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:21
/text_vectorization_28/StringSplit/StringSplitV2?
5text_vectorization_28/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5text_vectorization_28/StringSplit/strided_slice/stack?
7text_vectorization_28/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7text_vectorization_28/StringSplit/strided_slice/stack_1?
7text_vectorization_28/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7text_vectorization_28/StringSplit/strided_slice/stack_2?
/text_vectorization_28/StringSplit/strided_sliceStridedSlice9text_vectorization_28/StringSplit/StringSplitV2:indices:0>text_vectorization_28/StringSplit/strided_slice/stack:output:0@text_vectorization_28/StringSplit/strided_slice/stack_1:output:0@text_vectorization_28/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask21
/text_vectorization_28/StringSplit/strided_slice?
7text_vectorization_28/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7text_vectorization_28/StringSplit/strided_slice_1/stack?
9text_vectorization_28/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9text_vectorization_28/StringSplit/strided_slice_1/stack_1?
9text_vectorization_28/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9text_vectorization_28/StringSplit/strided_slice_1/stack_2?
1text_vectorization_28/StringSplit/strided_slice_1StridedSlice7text_vectorization_28/StringSplit/StringSplitV2:shape:0@text_vectorization_28/StringSplit/strided_slice_1/stack:output:0Btext_vectorization_28/StringSplit/strided_slice_1/stack_1:output:0Btext_vectorization_28/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask23
1text_vectorization_28/StringSplit/strided_slice_1?
Xtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast8text_vectorization_28/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Z
Xtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast:text_vectorization_28/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0ktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2c
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ftext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2h
ftext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterjtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0otext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasthtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2c
atext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0mtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2d
btext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2itext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0ktext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuletext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2b
`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum^text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum^text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2f
dtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
etext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount\text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0mtext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2g
etext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumltext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
ctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2e
ctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2a
_text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ltext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0`text_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0htext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2\
Ztext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2LookupTableFindV2\text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_table_handle8text_vectorization_28/StringSplit/StringSplitV2:values:0]text_vectorization_28_string_lookup_30_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2Q
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2?
8text_vectorization_28/string_lookup_30/assert_equal/NoOpNoOp*
_output_shapes
 2:
8text_vectorization_28/string_lookup_30/assert_equal/NoOp?
/text_vectorization_28/string_lookup_30/IdentityIdentityXtext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_28/string_lookup_30/Identity?
1text_vectorization_28/string_lookup_30/Identity_1Identityctext_vectorization_28/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????23
1text_vectorization_28/string_lookup_30/Identity_1?
2text_vectorization_28/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 24
2text_vectorization_28/RaggedToTensor/default_value?
*text_vectorization_28/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2,
*text_vectorization_28/RaggedToTensor/Const?
9text_vectorization_28/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor3text_vectorization_28/RaggedToTensor/Const:output:08text_vectorization_28/string_lookup_30/Identity:output:0;text_vectorization_28/RaggedToTensor/default_value:output:0:text_vectorization_28/string_lookup_30/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2;
9text_vectorization_28/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_28/ShapeShapeBtext_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_28/Shape?
)text_vectorization_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)text_vectorization_28/strided_slice/stack?
+text_vectorization_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+text_vectorization_28/strided_slice/stack_1?
+text_vectorization_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+text_vectorization_28/strided_slice/stack_2?
#text_vectorization_28/strided_sliceStridedSlice$text_vectorization_28/Shape:output:02text_vectorization_28/strided_slice/stack:output:04text_vectorization_28/strided_slice/stack_1:output:04text_vectorization_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#text_vectorization_28/strided_slice|
text_vectorization_28/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_28/sub/x?
text_vectorization_28/subSub$text_vectorization_28/sub/x:output:0,text_vectorization_28/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_28/sub~
text_vectorization_28/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_28/Less/y?
text_vectorization_28/LessLess,text_vectorization_28/strided_slice:output:0%text_vectorization_28/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_28/Less?
text_vectorization_28/condStatelessIftext_vectorization_28/Less:z:0text_vectorization_28/sub:z:0Btext_vectorization_28/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *;
else_branch,R*
(text_vectorization_28_cond_false_1114261*/
output_shapes
:??????????????????*:
then_branch+R)
'text_vectorization_28_cond_true_11142602
text_vectorization_28/cond?
#text_vectorization_28/cond/IdentityIdentity#text_vectorization_28/cond:output:0*
T0	*'
_output_shapes
:?????????d2%
#text_vectorization_28/cond/Identity?
IdentityIdentity,text_vectorization_28/cond/Identity:output:0P^text_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2*
T0	*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: 2?
Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2Otext_vectorization_28/string_lookup_30/None_lookup_table_find/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_29:

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_291
serving_default_input_29:0?????????I
text_vectorization_280
StatefulPartitionedCall:0	?????????dtensorflow/serving/predict:?B
?
layer_with_weights-0
layer-0
trainable_variables
	variables
regularization_losses
	keras_api

signatures
__call__
*&call_and_return_all_conditional_losses
_default_save_signature"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "sequential_92", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_92", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_29"}}, {"class_name": "TextVectorization", "config": {"name": "text_vectorization_28", "trainable": true, "dtype": "string", "max_tokens": 1000, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 100, "pad_to_max_tokens": true}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_92", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_29"}}, {"class_name": "TextVectorization", "config": {"name": "text_vectorization_28", "trainable": true, "dtype": "string", "max_tokens": 1000, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 100, "pad_to_max_tokens": true}}]}}}
?
state_variables
_index_lookup_layer
		keras_api"?
_tf_keras_layer?{"class_name": "TextVectorization", "name": "text_vectorization_28", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "text_vectorization_28", "trainable": true, "dtype": "string", "max_tokens": 1000, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 100, "pad_to_max_tokens": true}, "build_input_shape": {"class_name": "TensorShape", "items": [4846, 1]}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

layer_regularization_losses
metrics
trainable_variables
layer_metrics
non_trainable_variables
	variables

layers
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
 "
trackable_dict_wrapper
?
state_variables

_table
	keras_api"?
_tf_keras_layer?{"class_name": "StringLookup", "name": "string_lookup_30", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "string_lookup_30", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "string", "invert": false, "max_tokens": 1000, "num_oov_indices": 1, "oov_token": "[UNK]", "mask_token": "", "encoding": "utf-8"}}
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
O
_create_resource
_initialize
_destroy_resourceR Z
table
"
_generic_user_object
?2?
/__inference_sequential_92_layer_call_fn_1114752
/__inference_sequential_92_layer_call_fn_1114538
/__inference_sequential_92_layer_call_fn_1114743
/__inference_sequential_92_layer_call_fn_1114450?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114655
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114361
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114734
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114282?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_1114202?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *'?$
"?
input_29?????????
?B?
__inference_save_fn_1114786checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_1114794restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
?B?
%__inference_signature_wrapper_1114549input_29"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__creator_1114757?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_1114762?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_1114767?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
	J
Const8
__inference__creator_1114757?

? 
? "? :
__inference__destroyer_1114767?

? 
? "? <
 __inference__initializer_1114762?

? 
? "? ?
"__inference__wrapped_model_1114202?1?.
'?$
"?
input_29?????????
? "M?J
H
text_vectorization_28/?,
text_vectorization_28?????????d	{
__inference_restore_fn_1114794YK?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_1114786?&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114282f9?6
/?,
"?
input_29?????????
p

 
? "%?"
?
0?????????d	
? ?
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114361f9?6
/?,
"?
input_29?????????
p 

 
? "%?"
?
0?????????d	
? ?
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114655d7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????d	
? ?
J__inference_sequential_92_layer_call_and_return_conditional_losses_1114734d7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????d	
? ?
/__inference_sequential_92_layer_call_fn_1114450Y9?6
/?,
"?
input_29?????????
p

 
? "??????????d	?
/__inference_sequential_92_layer_call_fn_1114538Y9?6
/?,
"?
input_29?????????
p 

 
? "??????????d	?
/__inference_sequential_92_layer_call_fn_1114743W7?4
-?*
 ?
inputs?????????
p

 
? "??????????d	?
/__inference_sequential_92_layer_call_fn_1114752W7?4
-?*
 ?
inputs?????????
p 

 
? "??????????d	?
%__inference_signature_wrapper_1114549?=?:
? 
3?0
.
input_29"?
input_29?????????"M?J
H
text_vectorization_28/?,
text_vectorization_28?????????d	