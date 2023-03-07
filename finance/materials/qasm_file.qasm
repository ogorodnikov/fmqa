OPENQASM 3.0;
qubit[28] q;
ry(0.0) q[0];
ry(0.0) q[1];
ry(0.0) q[2];
ry(0.0) q[3];
ry(0.0) q[4];
ry(0.0) q[5];
ry(0.0) q[6];
ry(0.0) q[7];
ry(0.0) q[8];
ry(0.0) q[9];
ry(0.0) q[10];
ry(0.0) q[11];
ry(0.0) q[12];
ry(0.0) q[13];
ry(0.0) q[14];
ry(0.0) q[15];
ry(0.0) q[16];
ry(0.0) q[17];
ry(0.0) q[18];
ry(0.0) q[19];
ry(0.0) q[20];
ry(0.0) q[21];
ry(0.0) q[22];
ry(0.0) q[23];
ry(0.0) q[24];
ry(0.0) q[25];
ry(0.0) q[26];
ry(0.0) q[27];
rx(0.8756000370805986) q[27];
cnot q[0], q[5];
cnot q[4], q[25];
rx(5.246021396377329) q[18];
cnot q[10], q[23];
cnot q[0], q[15];
ry(6.185181318152103) q[14];
ry(3.3030088295727937) q[7];
ry(1.0786927663891448) q[20];
cnot q[18], q[20];
ry(1.710957393023853) q[5];
cnot q[20], q[6];
rz(0.11555202867213518) q[4];
ry(5.744708827752758) q[4];
cnot q[23], q[1];
ry(0.7398518739198203) q[9];
rz(3.622359848298118) q[10];
ry(1.7219397359777118) q[5];
cnot q[21], q[23];
rz(3.482003082969365) q[9];
ry(4.092995012889653) q[0];
ry(5.2134215098057775) q[20];
cnot q[15], q[13];
rx(1.2969831018155464) q[9];
cnot q[9], q[21];
rx(0.06908882906722875) q[15];
ry(0.86007777961235) q[4];
ry(5.6549839066477405) q[8];
ry(5.490813295430825) q[13];
rz(3.753657225873058) q[12];
cnot q[15], q[8];
rz(3.773158714190345) q[27];
ry(4.178548662244605) q[22];
rz(1.101890241148156) q[19];
ry(5.745419703345202) q[23];
rz(2.631212809081757) q[19];
cnot q[16], q[10];
cnot q[22], q[26];
ry(2.4073303713116534) q[0];
rz(3.2604561014684714) q[9];
cnot q[25], q[6];
ry(0.2950958723785105) q[15];
#pragma braket result expectation z(q[0])
#pragma braket result expectation z(q[1])
#pragma braket result expectation z(q[2])
#pragma braket result expectation z(q[3])
#pragma braket result expectation z(q[4])
#pragma braket result expectation z(q[5])
#pragma braket result expectation z(q[6])
#pragma braket result expectation z(q[7])
#pragma braket result expectation z(q[8])
#pragma braket result expectation z(q[9])
#pragma braket result expectation z(q[10])
#pragma braket result expectation z(q[11])
#pragma braket result expectation z(q[12])
#pragma braket result expectation z(q[13])
#pragma braket result expectation z(q[14])
#pragma braket result expectation z(q[15])
#pragma braket result expectation z(q[16])
#pragma braket result expectation z(q[17])
#pragma braket result expectation z(q[18])
#pragma braket result expectation z(q[19])
#pragma braket result expectation z(q[20])
#pragma braket result expectation z(q[21])
#pragma braket result expectation z(q[22])
#pragma braket result expectation z(q[23])
#pragma braket result expectation z(q[24])
#pragma braket result expectation z(q[25])
#pragma braket result expectation z(q[26])
#pragma braket result expectation z(q[27])