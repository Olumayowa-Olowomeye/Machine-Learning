??	
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
module_wrapper/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namemodule_wrapper/conv2d/kernel
?
0module_wrapper/conv2d/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper/conv2d/kernel*&
_output_shapes
: *
dtype0
?
module_wrapper/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namemodule_wrapper/conv2d/bias
?
.module_wrapper/conv2d/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper/conv2d/bias*
_output_shapes
: *
dtype0
?
 module_wrapper_2/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *1
shared_name" module_wrapper_2/conv2d_1/kernel
?
4module_wrapper_2/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_2/conv2d_1/kernel*&
_output_shapes
:  *
dtype0
?
module_wrapper_2/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name module_wrapper_2/conv2d_1/bias
?
2module_wrapper_2/conv2d_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_2/conv2d_1/bias*
_output_shapes
: *
dtype0
?
module_wrapper_5/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*.
shared_namemodule_wrapper_5/dense/kernel
?
1module_wrapper_5/dense/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_5/dense/kernel*
_output_shapes
:	?
*
dtype0
?
module_wrapper_5/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_namemodule_wrapper_5/dense/bias
?
/module_wrapper_5/dense/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_5/dense/bias*
_output_shapes
:
*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
#Adam/module_wrapper/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/module_wrapper/conv2d/kernel/m
?
7Adam/module_wrapper/conv2d/kernel/m/Read/ReadVariableOpReadVariableOp#Adam/module_wrapper/conv2d/kernel/m*&
_output_shapes
: *
dtype0
?
!Adam/module_wrapper/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/module_wrapper/conv2d/bias/m
?
5Adam/module_wrapper/conv2d/bias/m/Read/ReadVariableOpReadVariableOp!Adam/module_wrapper/conv2d/bias/m*
_output_shapes
: *
dtype0
?
'Adam/module_wrapper_2/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *8
shared_name)'Adam/module_wrapper_2/conv2d_1/kernel/m
?
;Adam/module_wrapper_2/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_2/conv2d_1/kernel/m*&
_output_shapes
:  *
dtype0
?
%Adam/module_wrapper_2/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/module_wrapper_2/conv2d_1/bias/m
?
9Adam/module_wrapper_2/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_2/conv2d_1/bias/m*
_output_shapes
: *
dtype0
?
$Adam/module_wrapper_5/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*5
shared_name&$Adam/module_wrapper_5/dense/kernel/m
?
8Adam/module_wrapper_5/dense/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_5/dense/kernel/m*
_output_shapes
:	?
*
dtype0
?
"Adam/module_wrapper_5/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adam/module_wrapper_5/dense/bias/m
?
6Adam/module_wrapper_5/dense/bias/m/Read/ReadVariableOpReadVariableOp"Adam/module_wrapper_5/dense/bias/m*
_output_shapes
:
*
dtype0
?
#Adam/module_wrapper/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/module_wrapper/conv2d/kernel/v
?
7Adam/module_wrapper/conv2d/kernel/v/Read/ReadVariableOpReadVariableOp#Adam/module_wrapper/conv2d/kernel/v*&
_output_shapes
: *
dtype0
?
!Adam/module_wrapper/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/module_wrapper/conv2d/bias/v
?
5Adam/module_wrapper/conv2d/bias/v/Read/ReadVariableOpReadVariableOp!Adam/module_wrapper/conv2d/bias/v*
_output_shapes
: *
dtype0
?
'Adam/module_wrapper_2/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *8
shared_name)'Adam/module_wrapper_2/conv2d_1/kernel/v
?
;Adam/module_wrapper_2/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_2/conv2d_1/kernel/v*&
_output_shapes
:  *
dtype0
?
%Adam/module_wrapper_2/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/module_wrapper_2/conv2d_1/bias/v
?
9Adam/module_wrapper_2/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_2/conv2d_1/bias/v*
_output_shapes
: *
dtype0
?
$Adam/module_wrapper_5/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*5
shared_name&$Adam/module_wrapper_5/dense/kernel/v
?
8Adam/module_wrapper_5/dense/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_5/dense/kernel/v*
_output_shapes
:	?
*
dtype0
?
"Adam/module_wrapper_5/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adam/module_wrapper_5/dense/bias/v
?
6Adam/module_wrapper_5/dense/bias/v/Read/ReadVariableOpReadVariableOp"Adam/module_wrapper_5/dense/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?:
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?:
value?:B?: B?9
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
regularization_losses
		variables

trainable_variables
	keras_api

signatures
_
_module
regularization_losses
	variables
trainable_variables
	keras_api
_
_module
regularization_losses
	variables
trainable_variables
	keras_api
_
_module
regularization_losses
	variables
trainable_variables
	keras_api
_
_module
regularization_losses
	variables
trainable_variables
 	keras_api
_
!_module
"regularization_losses
#	variables
$trainable_variables
%	keras_api
_
&_module
'regularization_losses
(	variables
)trainable_variables
*	keras_api
?
+iter

,beta_1

-beta_2
	.decay
/learning_rate0m?1m?2m?3m?4m?5m?0v?1v?2v?3v?4v?5v?
 
*
00
11
22
33
44
55
*
00
11
22
33
44
55
?
6layer_metrics
regularization_losses
		variables
7layer_regularization_losses
8metrics

trainable_variables

9layers
:non_trainable_variables
 
h

0kernel
1bias
;regularization_losses
<	variables
=trainable_variables
>	keras_api
 

00
11

00
11
?
?layer_metrics
regularization_losses
	variables
@layer_regularization_losses
Ametrics
trainable_variables

Blayers
Cnon_trainable_variables
R
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
 
 
 
?
Hlayer_metrics
regularization_losses
	variables
Ilayer_regularization_losses
Jmetrics
trainable_variables

Klayers
Lnon_trainable_variables
h

2kernel
3bias
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
 

20
31

20
31
?
Qlayer_metrics
regularization_losses
	variables
Rlayer_regularization_losses
Smetrics
trainable_variables

Tlayers
Unon_trainable_variables
R
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
 
 
 
?
Zlayer_metrics
regularization_losses
	variables
[layer_regularization_losses
\metrics
trainable_variables

]layers
^non_trainable_variables
R
_regularization_losses
`	variables
atrainable_variables
b	keras_api
 
 
 
?
clayer_metrics
"regularization_losses
#	variables
dlayer_regularization_losses
emetrics
$trainable_variables

flayers
gnon_trainable_variables
h

4kernel
5bias
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
 

40
51

40
51
?
llayer_metrics
'regularization_losses
(	variables
mlayer_regularization_losses
nmetrics
)trainable_variables

olayers
pnon_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmodule_wrapper/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEmodule_wrapper/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUE module_wrapper_2/conv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEmodule_wrapper_2/conv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmodule_wrapper_5/dense/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEmodule_wrapper_5/dense/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
 
 

q0
r1
*
0
1
2
3
4
5
 
 

00
11

00
11
?
slayer_metrics
;regularization_losses
<	variables
tlayer_regularization_losses
umetrics
=trainable_variables

vlayers
wnon_trainable_variables
 
 
 
 
 
 
 
 
?
xlayer_metrics
Dregularization_losses
E	variables
ylayer_regularization_losses
zmetrics
Ftrainable_variables

{layers
|non_trainable_variables
 
 
 
 
 
 

20
31

20
31
?
}layer_metrics
Mregularization_losses
N	variables
~layer_regularization_losses
metrics
Otrainable_variables
?layers
?non_trainable_variables
 
 
 
 
 
 
 
 
?
?layer_metrics
Vregularization_losses
W	variables
 ?layer_regularization_losses
?metrics
Xtrainable_variables
?layers
?non_trainable_variables
 
 
 
 
 
 
 
 
?
?layer_metrics
_regularization_losses
`	variables
 ?layer_regularization_losses
?metrics
atrainable_variables
?layers
?non_trainable_variables
 
 
 
 
 
 

40
51

40
51
?
?layer_metrics
hregularization_losses
i	variables
 ?layer_regularization_losses
?metrics
jtrainable_variables
?layers
?non_trainable_variables
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
{y
VARIABLE_VALUE#Adam/module_wrapper/conv2d/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/module_wrapper/conv2d/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE'Adam/module_wrapper_2/conv2d_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE%Adam/module_wrapper_2/conv2d_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/module_wrapper_5/dense/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/module_wrapper_5/dense/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE#Adam/module_wrapper/conv2d/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/module_wrapper/conv2d/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE'Adam/module_wrapper_2/conv2d_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE%Adam/module_wrapper_2/conv2d_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/module_wrapper_5/dense/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/module_wrapper_5/dense/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
$serving_default_module_wrapper_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall$serving_default_module_wrapper_inputmodule_wrapper/conv2d/kernelmodule_wrapper/conv2d/bias module_wrapper_2/conv2d_1/kernelmodule_wrapper_2/conv2d_1/biasmodule_wrapper_5/dense/kernelmodule_wrapper_5/dense/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_13046
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp0module_wrapper/conv2d/kernel/Read/ReadVariableOp.module_wrapper/conv2d/bias/Read/ReadVariableOp4module_wrapper_2/conv2d_1/kernel/Read/ReadVariableOp2module_wrapper_2/conv2d_1/bias/Read/ReadVariableOp1module_wrapper_5/dense/kernel/Read/ReadVariableOp/module_wrapper_5/dense/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp7Adam/module_wrapper/conv2d/kernel/m/Read/ReadVariableOp5Adam/module_wrapper/conv2d/bias/m/Read/ReadVariableOp;Adam/module_wrapper_2/conv2d_1/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_2/conv2d_1/bias/m/Read/ReadVariableOp8Adam/module_wrapper_5/dense/kernel/m/Read/ReadVariableOp6Adam/module_wrapper_5/dense/bias/m/Read/ReadVariableOp7Adam/module_wrapper/conv2d/kernel/v/Read/ReadVariableOp5Adam/module_wrapper/conv2d/bias/v/Read/ReadVariableOp;Adam/module_wrapper_2/conv2d_1/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_2/conv2d_1/bias/v/Read/ReadVariableOp8Adam/module_wrapper_5/dense/kernel/v/Read/ReadVariableOp6Adam/module_wrapper_5/dense/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_13449
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratemodule_wrapper/conv2d/kernelmodule_wrapper/conv2d/bias module_wrapper_2/conv2d_1/kernelmodule_wrapper_2/conv2d_1/biasmodule_wrapper_5/dense/kernelmodule_wrapper_5/dense/biastotalcounttotal_1count_1#Adam/module_wrapper/conv2d/kernel/m!Adam/module_wrapper/conv2d/bias/m'Adam/module_wrapper_2/conv2d_1/kernel/m%Adam/module_wrapper_2/conv2d_1/bias/m$Adam/module_wrapper_5/dense/kernel/m"Adam/module_wrapper_5/dense/bias/m#Adam/module_wrapper/conv2d/kernel/v!Adam/module_wrapper/conv2d/bias/v'Adam/module_wrapper_2/conv2d_1/kernel/v%Adam/module_wrapper_2/conv2d_1/bias/v$Adam/module_wrapper_5/dense/kernel/v"Adam/module_wrapper_5/dense/bias/v*'
Tin 
2*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_13540??
?	
?
*__inference_sequential_layer_call_fn_12977
module_wrapper_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_129452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
0__inference_module_wrapper_5_layer_call_fn_13314

args_0
unknown:	?

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_127432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
*__inference_sequential_layer_call_fn_13105

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_129452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
I
-__inference_max_pooling2d_layer_call_fn_13059

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_130532
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_module_wrapper_layer_call_fn_13181

args_0!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_128972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
*__inference_sequential_layer_call_fn_13088

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_127502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
L
0__inference_module_wrapper_3_layer_call_fn_13268

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_127222
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????		 :W S
/
_output_shapes
:?????????		 
 
_user_specified_nameargs_0
?	
?
*__inference_sequential_layer_call_fn_12765
module_wrapper_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_127502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_12945

inputs.
module_wrapper_12926: "
module_wrapper_12928: 0
module_wrapper_2_12932:  $
module_wrapper_2_12934: )
module_wrapper_5_12939:	?
$
module_wrapper_5_12941:

identity??&module_wrapper/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_5/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_12926module_wrapper_12928*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_128972(
&module_wrapper/StatefulPartitionedCall?
 module_wrapper_1/PartitionedCallPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_128712"
 module_wrapper_1/PartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_12932module_wrapper_2_12934*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_128512*
(module_wrapper_2/StatefulPartitionedCall?
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_128252"
 module_wrapper_3/PartitionedCall?
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_128092"
 module_wrapper_4/PartitionedCall?
(module_wrapper_5/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_4/PartitionedCall:output:0module_wrapper_5_12939module_wrapper_5_12941*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_127882*
(module_wrapper_5/StatefulPartitionedCall?
IdentityIdentity1module_wrapper_5/StatefulPartitionedCall:output:0'^module_wrapper/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_5/StatefulPartitionedCall(module_wrapper_5/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?0
?
E__inference_sequential_layer_call_and_return_conditional_losses_13163

inputsN
4module_wrapper_conv2d_conv2d_readvariableop_resource: C
5module_wrapper_conv2d_biasadd_readvariableop_resource: R
8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource:  G
9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource: H
5module_wrapper_5_dense_matmul_readvariableop_resource:	?
D
6module_wrapper_5_dense_biasadd_readvariableop_resource:

identity??,module_wrapper/conv2d/BiasAdd/ReadVariableOp?+module_wrapper/conv2d/Conv2D/ReadVariableOp?0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp?/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp?-module_wrapper_5/dense/BiasAdd/ReadVariableOp?,module_wrapper_5/dense/MatMul/ReadVariableOp?
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+module_wrapper/conv2d/Conv2D/ReadVariableOp?
module_wrapper/conv2d/Conv2DConv2Dinputs3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
module_wrapper/conv2d/Conv2D?
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,module_wrapper/conv2d/BiasAdd/ReadVariableOp?
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
module_wrapper/conv2d/BiasAdd?
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
module_wrapper/conv2d/Relu?
&module_wrapper_1/max_pooling2d/MaxPoolMaxPool(module_wrapper/conv2d/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2(
&module_wrapper_1/max_pooling2d/MaxPool?
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype021
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp?
 module_wrapper_2/conv2d_1/Conv2DConv2D/module_wrapper_1/max_pooling2d/MaxPool:output:07module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 *
paddingVALID*
strides
2"
 module_wrapper_2/conv2d_1/Conv2D?
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp?
!module_wrapper_2/conv2d_1/BiasAddBiasAdd)module_wrapper_2/conv2d_1/Conv2D:output:08module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 2#
!module_wrapper_2/conv2d_1/BiasAdd?
module_wrapper_2/conv2d_1/ReluRelu*module_wrapper_2/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		 2 
module_wrapper_2/conv2d_1/Relu?
(module_wrapper_3/max_pooling2d_1/MaxPoolMaxPool,module_wrapper_2/conv2d_1/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2*
(module_wrapper_3/max_pooling2d_1/MaxPool?
module_wrapper_4/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2 
module_wrapper_4/flatten/Const?
 module_wrapper_4/flatten/ReshapeReshape1module_wrapper_3/max_pooling2d_1/MaxPool:output:0'module_wrapper_4/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_4/flatten/Reshape?
,module_wrapper_5/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_5_dense_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02.
,module_wrapper_5/dense/MatMul/ReadVariableOp?
module_wrapper_5/dense/MatMulMatMul)module_wrapper_4/flatten/Reshape:output:04module_wrapper_5/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
module_wrapper_5/dense/MatMul?
-module_wrapper_5/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_5_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-module_wrapper_5/dense/BiasAdd/ReadVariableOp?
module_wrapper_5/dense/BiasAddBiasAdd'module_wrapper_5/dense/MatMul:product:05module_wrapper_5/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
module_wrapper_5/dense/BiasAdd?
module_wrapper_5/dense/SoftmaxSoftmax'module_wrapper_5/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2 
module_wrapper_5/dense/Softmax?
IdentityIdentity(module_wrapper_5/dense/Softmax:softmax:0-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp.^module_wrapper_5/dense/BiasAdd/ReadVariableOp-^module_wrapper_5/dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp2^
-module_wrapper_5/dense/BiasAdd/ReadVariableOp-module_wrapper_5/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_5/dense/MatMul/ReadVariableOp,module_wrapper_5/dense/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_13283

args_0
identity?
max_pooling2d_1/MaxPoolMaxPoolargs_0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool|
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????		 :W S
/
_output_shapes
:?????????		 
 
_user_specified_nameargs_0
?v
?
!__inference__traced_restore_13540
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: I
/assignvariableop_5_module_wrapper_conv2d_kernel: ;
-assignvariableop_6_module_wrapper_conv2d_bias: M
3assignvariableop_7_module_wrapper_2_conv2d_1_kernel:  ?
1assignvariableop_8_module_wrapper_2_conv2d_1_bias: C
0assignvariableop_9_module_wrapper_5_dense_kernel:	?
=
/assignvariableop_10_module_wrapper_5_dense_bias:
#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: Q
7assignvariableop_15_adam_module_wrapper_conv2d_kernel_m: C
5assignvariableop_16_adam_module_wrapper_conv2d_bias_m: U
;assignvariableop_17_adam_module_wrapper_2_conv2d_1_kernel_m:  G
9assignvariableop_18_adam_module_wrapper_2_conv2d_1_bias_m: K
8assignvariableop_19_adam_module_wrapper_5_dense_kernel_m:	?
D
6assignvariableop_20_adam_module_wrapper_5_dense_bias_m:
Q
7assignvariableop_21_adam_module_wrapper_conv2d_kernel_v: C
5assignvariableop_22_adam_module_wrapper_conv2d_bias_v: U
;assignvariableop_23_adam_module_wrapper_2_conv2d_1_kernel_v:  G
9assignvariableop_24_adam_module_wrapper_2_conv2d_1_bias_v: K
8assignvariableop_25_adam_module_wrapper_5_dense_kernel_v:	?
D
6assignvariableop_26_adam_module_wrapper_5_dense_bias_v:

identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp/assignvariableop_5_module_wrapper_conv2d_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp-assignvariableop_6_module_wrapper_conv2d_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp3assignvariableop_7_module_wrapper_2_conv2d_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp1assignvariableop_8_module_wrapper_2_conv2d_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp0assignvariableop_9_module_wrapper_5_dense_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp/assignvariableop_10_module_wrapper_5_dense_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp7assignvariableop_15_adam_module_wrapper_conv2d_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp5assignvariableop_16_adam_module_wrapper_conv2d_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_adam_module_wrapper_2_conv2d_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp9assignvariableop_18_adam_module_wrapper_2_conv2d_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp8assignvariableop_19_adam_module_wrapper_5_dense_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_module_wrapper_5_dense_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp7assignvariableop_21_adam_module_wrapper_conv2d_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp5assignvariableop_22_adam_module_wrapper_conv2d_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_adam_module_wrapper_2_conv2d_1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp9assignvariableop_24_adam_module_wrapper_2_conv2d_1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp8assignvariableop_25_adam_module_wrapper_5_dense_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_module_wrapper_5_dense_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
.__inference_module_wrapper_layer_call_fn_13172

args_0!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_126872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_12788

args_07
$dense_matmul_readvariableop_resource:	?
3
%dense_biasadd_readvariableop_resource:

identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense/Softmax?
IdentityIdentitydense/Softmax:softmax:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_1_layer_call_fn_13208

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_126982
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_12711

args_0A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: 
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 *
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		 2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????		 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?@
?
__inference__traced_save_13449
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop;
7savev2_module_wrapper_conv2d_kernel_read_readvariableop9
5savev2_module_wrapper_conv2d_bias_read_readvariableop?
;savev2_module_wrapper_2_conv2d_1_kernel_read_readvariableop=
9savev2_module_wrapper_2_conv2d_1_bias_read_readvariableop<
8savev2_module_wrapper_5_dense_kernel_read_readvariableop:
6savev2_module_wrapper_5_dense_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopB
>savev2_adam_module_wrapper_conv2d_kernel_m_read_readvariableop@
<savev2_adam_module_wrapper_conv2d_bias_m_read_readvariableopF
Bsavev2_adam_module_wrapper_2_conv2d_1_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_2_conv2d_1_bias_m_read_readvariableopC
?savev2_adam_module_wrapper_5_dense_kernel_m_read_readvariableopA
=savev2_adam_module_wrapper_5_dense_bias_m_read_readvariableopB
>savev2_adam_module_wrapper_conv2d_kernel_v_read_readvariableop@
<savev2_adam_module_wrapper_conv2d_bias_v_read_readvariableopF
Bsavev2_adam_module_wrapper_2_conv2d_1_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_2_conv2d_1_bias_v_read_readvariableopC
?savev2_adam_module_wrapper_5_dense_kernel_v_read_readvariableopA
=savev2_adam_module_wrapper_5_dense_bias_v_read_readvariableop
savev2_const

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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop7savev2_module_wrapper_conv2d_kernel_read_readvariableop5savev2_module_wrapper_conv2d_bias_read_readvariableop;savev2_module_wrapper_2_conv2d_1_kernel_read_readvariableop9savev2_module_wrapper_2_conv2d_1_bias_read_readvariableop8savev2_module_wrapper_5_dense_kernel_read_readvariableop6savev2_module_wrapper_5_dense_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop>savev2_adam_module_wrapper_conv2d_kernel_m_read_readvariableop<savev2_adam_module_wrapper_conv2d_bias_m_read_readvariableopBsavev2_adam_module_wrapper_2_conv2d_1_kernel_m_read_readvariableop@savev2_adam_module_wrapper_2_conv2d_1_bias_m_read_readvariableop?savev2_adam_module_wrapper_5_dense_kernel_m_read_readvariableop=savev2_adam_module_wrapper_5_dense_bias_m_read_readvariableop>savev2_adam_module_wrapper_conv2d_kernel_v_read_readvariableop<savev2_adam_module_wrapper_conv2d_bias_v_read_readvariableopBsavev2_adam_module_wrapper_2_conv2d_1_kernel_v_read_readvariableop@savev2_adam_module_wrapper_2_conv2d_1_bias_v_read_readvariableop?savev2_adam_module_wrapper_5_dense_kernel_v_read_readvariableop=savev2_adam_module_wrapper_5_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : : :  : :	?
:
: : : : : : :  : :	?
:
: : :  : :	?
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 	

_output_shapes
: :%
!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :%!

_output_shapes
:	?
: 

_output_shapes
:
:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :%!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: 
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_12999
module_wrapper_input.
module_wrapper_12980: "
module_wrapper_12982: 0
module_wrapper_2_12986:  $
module_wrapper_2_12988: )
module_wrapper_5_12993:	?
$
module_wrapper_5_12995:

identity??&module_wrapper/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_5/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputmodule_wrapper_12980module_wrapper_12982*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_126872(
&module_wrapper/StatefulPartitionedCall?
 module_wrapper_1/PartitionedCallPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_126982"
 module_wrapper_1/PartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_12986module_wrapper_2_12988*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_127112*
(module_wrapper_2/StatefulPartitionedCall?
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_127222"
 module_wrapper_3/PartitionedCall?
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_127302"
 module_wrapper_4/PartitionedCall?
(module_wrapper_5/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_4/PartitionedCall:output:0module_wrapper_5_12993module_wrapper_5_12995*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_127432*
(module_wrapper_5/StatefulPartitionedCall?
IdentityIdentity1module_wrapper_5/StatefulPartitionedCall:output:0'^module_wrapper/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_5/StatefulPartitionedCall(module_wrapper_5/StatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_13192

args_0?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_12809

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_13263

args_0A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: 
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 *
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		 2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????		 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_13345

args_07
$dense_matmul_readvariableop_resource:	?
3
%dense_biasadd_readvariableop_resource:

identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense/Softmax?
IdentityIdentitydense/Softmax:softmax:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_12851

args_0A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: 
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 *
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		 2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????		 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_12722

args_0
identity?
max_pooling2d_1/MaxPoolMaxPoolargs_0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool|
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????		 :W S
/
_output_shapes
:?????????		 
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_1_layer_call_fn_13213

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_128712
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_13021
module_wrapper_input.
module_wrapper_13002: "
module_wrapper_13004: 0
module_wrapper_2_13008:  $
module_wrapper_2_13010: )
module_wrapper_5_13015:	?
$
module_wrapper_5_13017:

identity??&module_wrapper/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_5/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputmodule_wrapper_13002module_wrapper_13004*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_128972(
&module_wrapper/StatefulPartitionedCall?
 module_wrapper_1/PartitionedCallPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_128712"
 module_wrapper_1/PartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_13008module_wrapper_2_13010*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_128512*
(module_wrapper_2/StatefulPartitionedCall?
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_128252"
 module_wrapper_3/PartitionedCall?
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_128092"
 module_wrapper_4/PartitionedCall?
(module_wrapper_5/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_4/PartitionedCall:output:0module_wrapper_5_13015module_wrapper_5_13017*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_127882*
(module_wrapper_5/StatefulPartitionedCall?
IdentityIdentity1module_wrapper_5/StatefulPartitionedCall:output:0'^module_wrapper/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_5/StatefulPartitionedCall(module_wrapper_5/StatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_12687

args_0?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_3_layer_call_fn_13273

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_128252
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????		 :W S
/
_output_shapes
:?????????		 
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_12730

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_12743

args_07
$dense_matmul_readvariableop_resource:	?
3
%dense_biasadd_readvariableop_resource:

identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense/Softmax?
IdentityIdentitydense/Softmax:softmax:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_13305

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_12750

inputs.
module_wrapper_12688: "
module_wrapper_12690: 0
module_wrapper_2_12712:  $
module_wrapper_2_12714: )
module_wrapper_5_12744:	?
$
module_wrapper_5_12746:

identity??&module_wrapper/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_5/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_12688module_wrapper_12690*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_126872(
&module_wrapper/StatefulPartitionedCall?
 module_wrapper_1/PartitionedCallPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_126982"
 module_wrapper_1/PartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_12712module_wrapper_2_12714*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_127112*
(module_wrapper_2/StatefulPartitionedCall?
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_127222"
 module_wrapper_3/PartitionedCall?
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_127302"
 module_wrapper_4/PartitionedCall?
(module_wrapper_5/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_4/PartitionedCall:output:0module_wrapper_5_12744module_wrapper_5_12746*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_127432*
(module_wrapper_5/StatefulPartitionedCall?
IdentityIdentity1module_wrapper_5/StatefulPartitionedCall:output:0'^module_wrapper/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_5/StatefulPartitionedCall(module_wrapper_5/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_13046
module_wrapper_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_126692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_13203

args_0?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?0
?
E__inference_sequential_layer_call_and_return_conditional_losses_13134

inputsN
4module_wrapper_conv2d_conv2d_readvariableop_resource: C
5module_wrapper_conv2d_biasadd_readvariableop_resource: R
8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource:  G
9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource: H
5module_wrapper_5_dense_matmul_readvariableop_resource:	?
D
6module_wrapper_5_dense_biasadd_readvariableop_resource:

identity??,module_wrapper/conv2d/BiasAdd/ReadVariableOp?+module_wrapper/conv2d/Conv2D/ReadVariableOp?0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp?/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp?-module_wrapper_5/dense/BiasAdd/ReadVariableOp?,module_wrapper_5/dense/MatMul/ReadVariableOp?
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+module_wrapper/conv2d/Conv2D/ReadVariableOp?
module_wrapper/conv2d/Conv2DConv2Dinputs3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
module_wrapper/conv2d/Conv2D?
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,module_wrapper/conv2d/BiasAdd/ReadVariableOp?
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
module_wrapper/conv2d/BiasAdd?
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
module_wrapper/conv2d/Relu?
&module_wrapper_1/max_pooling2d/MaxPoolMaxPool(module_wrapper/conv2d/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2(
&module_wrapper_1/max_pooling2d/MaxPool?
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype021
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp?
 module_wrapper_2/conv2d_1/Conv2DConv2D/module_wrapper_1/max_pooling2d/MaxPool:output:07module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 *
paddingVALID*
strides
2"
 module_wrapper_2/conv2d_1/Conv2D?
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp?
!module_wrapper_2/conv2d_1/BiasAddBiasAdd)module_wrapper_2/conv2d_1/Conv2D:output:08module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 2#
!module_wrapper_2/conv2d_1/BiasAdd?
module_wrapper_2/conv2d_1/ReluRelu*module_wrapper_2/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		 2 
module_wrapper_2/conv2d_1/Relu?
(module_wrapper_3/max_pooling2d_1/MaxPoolMaxPool,module_wrapper_2/conv2d_1/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2*
(module_wrapper_3/max_pooling2d_1/MaxPool?
module_wrapper_4/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2 
module_wrapper_4/flatten/Const?
 module_wrapper_4/flatten/ReshapeReshape1module_wrapper_3/max_pooling2d_1/MaxPool:output:0'module_wrapper_4/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_4/flatten/Reshape?
,module_wrapper_5/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_5_dense_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02.
,module_wrapper_5/dense/MatMul/ReadVariableOp?
module_wrapper_5/dense/MatMulMatMul)module_wrapper_4/flatten/Reshape:output:04module_wrapper_5/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
module_wrapper_5/dense/MatMul?
-module_wrapper_5/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_5_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-module_wrapper_5/dense/BiasAdd/ReadVariableOp?
module_wrapper_5/dense/BiasAddBiasAdd'module_wrapper_5/dense/MatMul:product:05module_wrapper_5/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
module_wrapper_5/dense/BiasAdd?
module_wrapper_5/dense/SoftmaxSoftmax'module_wrapper_5/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2 
module_wrapper_5/dense/Softmax?
IdentityIdentity(module_wrapper_5/dense/Softmax:softmax:0-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp.^module_wrapper_5/dense/BiasAdd/ReadVariableOp-^module_wrapper_5/dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp2^
-module_wrapper_5/dense/BiasAdd/ReadVariableOp-module_wrapper_5/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_5/dense/MatMul/ReadVariableOp,module_wrapper_5/dense/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_13053

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_13218

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_2_layer_call_fn_13232

args_0!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_127112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????		 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_4_layer_call_fn_13293

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_128092
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_13223

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_2_layer_call_fn_13241

args_0!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_128512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????		 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_4_layer_call_fn_13288

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_127302
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_13065

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_13252

args_0A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: 
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 *
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		 2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????		 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_12897

args_0?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?8
?
 __inference__wrapped_model_12669
module_wrapper_inputY
?sequential_module_wrapper_conv2d_conv2d_readvariableop_resource: N
@sequential_module_wrapper_conv2d_biasadd_readvariableop_resource: ]
Csequential_module_wrapper_2_conv2d_1_conv2d_readvariableop_resource:  R
Dsequential_module_wrapper_2_conv2d_1_biasadd_readvariableop_resource: S
@sequential_module_wrapper_5_dense_matmul_readvariableop_resource:	?
O
Asequential_module_wrapper_5_dense_biasadd_readvariableop_resource:

identity??7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp?6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp?;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp?:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp?8sequential/module_wrapper_5/dense/BiasAdd/ReadVariableOp?7sequential/module_wrapper_5/dense/MatMul/ReadVariableOp?
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp?sequential_module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype028
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp?
'sequential/module_wrapper/conv2d/Conv2DConv2Dmodule_wrapper_input>sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2)
'sequential/module_wrapper/conv2d/Conv2D?
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp@sequential_module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype029
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp?
(sequential/module_wrapper/conv2d/BiasAddBiasAdd0sequential/module_wrapper/conv2d/Conv2D:output:0?sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2*
(sequential/module_wrapper/conv2d/BiasAdd?
%sequential/module_wrapper/conv2d/ReluRelu1sequential/module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2'
%sequential/module_wrapper/conv2d/Relu?
1sequential/module_wrapper_1/max_pooling2d/MaxPoolMaxPool3sequential/module_wrapper/conv2d/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
23
1sequential/module_wrapper_1/max_pooling2d/MaxPool?
:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOpCsequential_module_wrapper_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02<
:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp?
+sequential/module_wrapper_2/conv2d_1/Conv2DConv2D:sequential/module_wrapper_1/max_pooling2d/MaxPool:output:0Bsequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 *
paddingVALID*
strides
2-
+sequential/module_wrapper_2/conv2d_1/Conv2D?
;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02=
;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_2/conv2d_1/BiasAddBiasAdd4sequential/module_wrapper_2/conv2d_1/Conv2D:output:0Csequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		 2.
,sequential/module_wrapper_2/conv2d_1/BiasAdd?
)sequential/module_wrapper_2/conv2d_1/ReluRelu5sequential/module_wrapper_2/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		 2+
)sequential/module_wrapper_2/conv2d_1/Relu?
3sequential/module_wrapper_3/max_pooling2d_1/MaxPoolMaxPool7sequential/module_wrapper_2/conv2d_1/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
25
3sequential/module_wrapper_3/max_pooling2d_1/MaxPool?
)sequential/module_wrapper_4/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2+
)sequential/module_wrapper_4/flatten/Const?
+sequential/module_wrapper_4/flatten/ReshapeReshape<sequential/module_wrapper_3/max_pooling2d_1/MaxPool:output:02sequential/module_wrapper_4/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2-
+sequential/module_wrapper_4/flatten/Reshape?
7sequential/module_wrapper_5/dense/MatMul/ReadVariableOpReadVariableOp@sequential_module_wrapper_5_dense_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype029
7sequential/module_wrapper_5/dense/MatMul/ReadVariableOp?
(sequential/module_wrapper_5/dense/MatMulMatMul4sequential/module_wrapper_4/flatten/Reshape:output:0?sequential/module_wrapper_5/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2*
(sequential/module_wrapper_5/dense/MatMul?
8sequential/module_wrapper_5/dense/BiasAdd/ReadVariableOpReadVariableOpAsequential_module_wrapper_5_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02:
8sequential/module_wrapper_5/dense/BiasAdd/ReadVariableOp?
)sequential/module_wrapper_5/dense/BiasAddBiasAdd2sequential/module_wrapper_5/dense/MatMul:product:0@sequential/module_wrapper_5/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2+
)sequential/module_wrapper_5/dense/BiasAdd?
)sequential/module_wrapper_5/dense/SoftmaxSoftmax2sequential/module_wrapper_5/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2+
)sequential/module_wrapper_5/dense/Softmax?
IdentityIdentity3sequential/module_wrapper_5/dense/Softmax:softmax:08^sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp7^sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp<^sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp;^sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp9^sequential/module_wrapper_5/dense/BiasAdd/ReadVariableOp8^sequential/module_wrapper_5/dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2r
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp2p
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp2z
;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp2t
8sequential/module_wrapper_5/dense/BiasAdd/ReadVariableOp8sequential/module_wrapper_5/dense/BiasAdd/ReadVariableOp2r
7sequential/module_wrapper_5/dense/MatMul/ReadVariableOp7sequential/module_wrapper_5/dense/MatMul/ReadVariableOp:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
g
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_12698

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
K
/__inference_max_pooling2d_1_layer_call_fn_13071

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_130652
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_13278

args_0
identity?
max_pooling2d_1/MaxPoolMaxPoolargs_0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool|
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????		 :W S
/
_output_shapes
:?????????		 
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_13334

args_07
$dense_matmul_readvariableop_resource:	?
3
%dense_biasadd_readvariableop_resource:

identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense/Softmax?
IdentityIdentitydense/Softmax:softmax:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_13299

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_12871

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_5_layer_call_fn_13323

args_0
unknown:	?

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_127882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_12825

args_0
identity?
max_pooling2d_1/MaxPoolMaxPoolargs_0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool|
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????		 :W S
/
_output_shapes
:?????????		 
 
_user_specified_nameargs_0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
]
module_wrapper_inputE
&serving_default_module_wrapper_input:0?????????D
module_wrapper_50
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
regularization_losses
		variables

trainable_variables
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?
_tf_keras_sequential?{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "module_wrapper_input"}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}]}, "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "float32", "module_wrapper_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 2}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
_module
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
regularization_losses
	variables
trainable_variables
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
!_module
"regularization_losses
#	variables
$trainable_variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
&_module
'regularization_losses
(	variables
)trainable_variables
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
+iter

,beta_1

-beta_2
	.decay
/learning_rate0m?1m?2m?3m?4m?5m?0v?1v?2v?3v?4v?5v?"
	optimizer
 "
trackable_list_wrapper
J
00
11
22
33
44
55"
trackable_list_wrapper
J
00
11
22
33
44
55"
trackable_list_wrapper
?
6layer_metrics
regularization_losses
		variables
7layer_regularization_losses
8metrics

trainable_variables

9layers
:non_trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?


0kernel
1bias
;regularization_losses
<	variables
=trainable_variables
>	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
?layer_metrics
regularization_losses
	variables
@layer_regularization_losses
Ametrics
trainable_variables

Blayers
Cnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Hlayer_metrics
regularization_losses
	variables
Ilayer_regularization_losses
Jmetrics
trainable_variables

Klayers
Lnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


2kernel
3bias
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 32]}}
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
?
Qlayer_metrics
regularization_losses
	variables
Rlayer_regularization_losses
Smetrics
trainable_variables

Tlayers
Unon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Zlayer_metrics
regularization_losses
	variables
[layer_regularization_losses
\metrics
trainable_variables

]layers
^non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
_regularization_losses
`	variables
atrainable_variables
b	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
clayer_metrics
"regularization_losses
#	variables
dlayer_regularization_losses
emetrics
$trainable_variables

flayers
gnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

4kernel
5bias
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
?
llayer_metrics
'regularization_losses
(	variables
mlayer_regularization_losses
nmetrics
)trainable_variables

olayers
pnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
6:4 2module_wrapper/conv2d/kernel
(:& 2module_wrapper/conv2d/bias
::8  2 module_wrapper_2/conv2d_1/kernel
,:* 2module_wrapper_2/conv2d_1/bias
0:.	?
2module_wrapper_5/dense/kernel
):'
2module_wrapper_5/dense/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
slayer_metrics
;regularization_losses
<	variables
tlayer_regularization_losses
umetrics
=trainable_variables

vlayers
wnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
xlayer_metrics
Dregularization_losses
E	variables
ylayer_regularization_losses
zmetrics
Ftrainable_variables

{layers
|non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
?
}layer_metrics
Mregularization_losses
N	variables
~layer_regularization_losses
metrics
Otrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
Vregularization_losses
W	variables
 ?layer_regularization_losses
?metrics
Xtrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
_regularization_losses
`	variables
 ?layer_regularization_losses
?metrics
atrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
?
?layer_metrics
hregularization_losses
i	variables
 ?layer_regularization_losses
?metrics
jtrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 3}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 2}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
;:9 2#Adam/module_wrapper/conv2d/kernel/m
-:+ 2!Adam/module_wrapper/conv2d/bias/m
?:=  2'Adam/module_wrapper_2/conv2d_1/kernel/m
1:/ 2%Adam/module_wrapper_2/conv2d_1/bias/m
5:3	?
2$Adam/module_wrapper_5/dense/kernel/m
.:,
2"Adam/module_wrapper_5/dense/bias/m
;:9 2#Adam/module_wrapper/conv2d/kernel/v
-:+ 2!Adam/module_wrapper/conv2d/bias/v
?:=  2'Adam/module_wrapper_2/conv2d_1/kernel/v
1:/ 2%Adam/module_wrapper_2/conv2d_1/bias/v
5:3	?
2$Adam/module_wrapper_5/dense/kernel/v
.:,
2"Adam/module_wrapper_5/dense/bias/v
?2?
*__inference_sequential_layer_call_fn_12765
*__inference_sequential_layer_call_fn_13088
*__inference_sequential_layer_call_fn_13105
*__inference_sequential_layer_call_fn_12977?
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
 __inference__wrapped_model_12669?
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
annotations? *;?8
6?3
module_wrapper_input?????????
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_13134
E__inference_sequential_layer_call_and_return_conditional_losses_13163
E__inference_sequential_layer_call_and_return_conditional_losses_12999
E__inference_sequential_layer_call_and_return_conditional_losses_13021?
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
?2?
.__inference_module_wrapper_layer_call_fn_13172
.__inference_module_wrapper_layer_call_fn_13181?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_13192
I__inference_module_wrapper_layer_call_and_return_conditional_losses_13203?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_1_layer_call_fn_13208
0__inference_module_wrapper_1_layer_call_fn_13213?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_13218
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_13223?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_2_layer_call_fn_13232
0__inference_module_wrapper_2_layer_call_fn_13241?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_13252
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_13263?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_3_layer_call_fn_13268
0__inference_module_wrapper_3_layer_call_fn_13273?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_13278
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_13283?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_4_layer_call_fn_13288
0__inference_module_wrapper_4_layer_call_fn_13293?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_13299
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_13305?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_5_layer_call_fn_13314
0__inference_module_wrapper_5_layer_call_fn_13323?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_13334
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_13345?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
#__inference_signature_wrapper_13046module_wrapper_input"?
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
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_max_pooling2d_layer_call_fn_13059?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_13053?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_max_pooling2d_1_layer_call_fn_13071?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_13065?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_12669?012345E?B
;?8
6?3
module_wrapper_input?????????
? "C?@
>
module_wrapper_5*?'
module_wrapper_5?????????
?
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_13065?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_1_layer_call_fn_13071?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_13053?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
-__inference_max_pooling2d_layer_call_fn_13059?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_13218xG?D
-?*
(?%
args_0????????? 
?

trainingp "-?*
#? 
0????????? 
? ?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_13223xG?D
-?*
(?%
args_0????????? 
?

trainingp"-?*
#? 
0????????? 
? ?
0__inference_module_wrapper_1_layer_call_fn_13208kG?D
-?*
(?%
args_0????????? 
?

trainingp " ?????????? ?
0__inference_module_wrapper_1_layer_call_fn_13213kG?D
-?*
(?%
args_0????????? 
?

trainingp" ?????????? ?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_13252|23G?D
-?*
(?%
args_0????????? 
?

trainingp "-?*
#? 
0?????????		 
? ?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_13263|23G?D
-?*
(?%
args_0????????? 
?

trainingp"-?*
#? 
0?????????		 
? ?
0__inference_module_wrapper_2_layer_call_fn_13232o23G?D
-?*
(?%
args_0????????? 
?

trainingp " ??????????		 ?
0__inference_module_wrapper_2_layer_call_fn_13241o23G?D
-?*
(?%
args_0????????? 
?

trainingp" ??????????		 ?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_13278xG?D
-?*
(?%
args_0?????????		 
?

trainingp "-?*
#? 
0????????? 
? ?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_13283xG?D
-?*
(?%
args_0?????????		 
?

trainingp"-?*
#? 
0????????? 
? ?
0__inference_module_wrapper_3_layer_call_fn_13268kG?D
-?*
(?%
args_0?????????		 
?

trainingp " ?????????? ?
0__inference_module_wrapper_3_layer_call_fn_13273kG?D
-?*
(?%
args_0?????????		 
?

trainingp" ?????????? ?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_13299qG?D
-?*
(?%
args_0????????? 
?

trainingp "&?#
?
0??????????
? ?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_13305qG?D
-?*
(?%
args_0????????? 
?

trainingp"&?#
?
0??????????
? ?
0__inference_module_wrapper_4_layer_call_fn_13288dG?D
-?*
(?%
args_0????????? 
?

trainingp "????????????
0__inference_module_wrapper_4_layer_call_fn_13293dG?D
-?*
(?%
args_0????????? 
?

trainingp"????????????
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_13334m45@?=
&?#
!?
args_0??????????
?

trainingp "%?"
?
0?????????

? ?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_13345m45@?=
&?#
!?
args_0??????????
?

trainingp"%?"
?
0?????????

? ?
0__inference_module_wrapper_5_layer_call_fn_13314`45@?=
&?#
!?
args_0??????????
?

trainingp "??????????
?
0__inference_module_wrapper_5_layer_call_fn_13323`45@?=
&?#
!?
args_0??????????
?

trainingp"??????????
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_13192|01G?D
-?*
(?%
args_0?????????
?

trainingp "-?*
#? 
0????????? 
? ?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_13203|01G?D
-?*
(?%
args_0?????????
?

trainingp"-?*
#? 
0????????? 
? ?
.__inference_module_wrapper_layer_call_fn_13172o01G?D
-?*
(?%
args_0?????????
?

trainingp " ?????????? ?
.__inference_module_wrapper_layer_call_fn_13181o01G?D
-?*
(?%
args_0?????????
?

trainingp" ?????????? ?
E__inference_sequential_layer_call_and_return_conditional_losses_12999~012345M?J
C?@
6?3
module_wrapper_input?????????
p 

 
? "%?"
?
0?????????

? ?
E__inference_sequential_layer_call_and_return_conditional_losses_13021~012345M?J
C?@
6?3
module_wrapper_input?????????
p

 
? "%?"
?
0?????????

? ?
E__inference_sequential_layer_call_and_return_conditional_losses_13134p012345??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
E__inference_sequential_layer_call_and_return_conditional_losses_13163p012345??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????

? ?
*__inference_sequential_layer_call_fn_12765q012345M?J
C?@
6?3
module_wrapper_input?????????
p 

 
? "??????????
?
*__inference_sequential_layer_call_fn_12977q012345M?J
C?@
6?3
module_wrapper_input?????????
p

 
? "??????????
?
*__inference_sequential_layer_call_fn_13088c012345??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
*__inference_sequential_layer_call_fn_13105c012345??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
#__inference_signature_wrapper_13046?012345]?Z
? 
S?P
N
module_wrapper_input6?3
module_wrapper_input?????????"C?@
>
module_wrapper_5*?'
module_wrapper_5?????????
