contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length < 0x04) { revert(memory[0x00:0x00]); }
    
        var var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (0x8da5cb5b > var0) {
            if (0x23b872dd > var0) {
                if (var0 == 0x06fdde03) {
                    // Dispatch table entry for name()
                    var var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0102;
                    var var2 = name();
                    var temp0 = memory[0x40:0x60];
                    var var3 = temp0;
                    var var4 = var3;
                    var temp1 = var4 + 0x20;
                    memory[var4:var4 + 0x20] = temp1 - var4;
                    var temp2 = var2;
                    memory[temp1:temp1 + 0x20] = memory[temp2:temp2 + 0x20];
                    var var5 = temp1 + 0x20;
                    var var7 = memory[temp2:temp2 + 0x20];
                    var var6 = temp2 + 0x20;
                    var var8 = var7;
                    var var9 = var5;
                    var var10 = var6;
                    var var11 = 0x00;
                
                    if (var11 >= var8) {
                    label_0142:
                        var temp3 = var7;
                        var5 = temp3 + var5;
                        var6 = temp3 & 0x1f;
                    
                        if (!var6) {
                            var temp4 = memory[0x40:0x60];
                            return memory[temp4:temp4 + var5 - temp4];
                        } else {
                            var temp5 = var6;
                            var temp6 = var5 - temp5;
                            memory[temp6:temp6 + 0x20] = ~(0x0100 ** (0x20 - temp5) - 0x01) & memory[temp6:temp6 + 0x20];
                            var temp7 = memory[0x40:0x60];
                            return memory[temp7:temp7 + (temp6 + 0x20) - temp7];
                        }
                    } else {
                    label_0130:
                        var temp8 = var11;
                        memory[var9 + temp8:var9 + temp8 + 0x20] = memory[var10 + temp8:var10 + temp8 + 0x20];
                        var11 = temp8 + 0x20;
                    
                        if (var11 >= var8) { goto label_0142; }
                        else { goto label_0130; }
                    }
                } else if (var0 == 0x095ea7b3) {
                    // Dispatch table entry for approve(address,uint256)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x01d6;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x40) { revert(memory[0x00:0x00]); }
                
                    var1 = approve(var2, var3);
                    var temp9 = memory[0x40:0x60];
                    memory[temp9:temp9 + 0x20] = !!var1;
                    var temp10 = memory[0x40:0x60];
                    return memory[temp10:temp10 + (temp9 + 0x20) - temp10];
                } else if (var0 == 0x18160ddd) {
                    // Dispatch table entry for totalSupply()
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0205;
                    var1 = totalSupply();
                    var temp11 = memory[0x40:0x60];
                    memory[temp11:temp11 + 0x20] = var1;
                    var temp12 = memory[0x40:0x60];
                    return memory[temp12:temp12 + (temp11 + 0x20) - temp12];
                } else { revert(memory[0x00:0x00]); }
            } else if (var0 == 0x23b872dd) {
                // Dispatch table entry for transferFrom(address,address,uint256)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0294;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x60) { revert(memory[0x00:0x00]); }
            
                var1 = transferFrom(var2, var3);
                var temp13 = memory[0x40:0x60];
                memory[temp13:temp13 + 0x20] = !!var1;
                var temp14 = memory[0x40:0x60];
                return memory[temp14:temp14 + (temp13 + 0x20) - temp14];
            } else if (var0 == 0x313ce567) {
                // Dispatch table entry for decimals()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02c3;
                var2 = decimals();
                var temp15 = memory[0x40:0x60];
                memory[temp15:temp15 + 0x20] = var2 & 0xff;
                var temp16 = memory[0x40:0x60];
                return memory[temp16:temp16 + (temp15 + 0x20) - temp16];
            } else if (var0 == 0x70a08231) {
                // Dispatch table entry for balanceOf(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x032e;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                var1 = balanceOf(var2, var3);
                var temp17 = memory[0x40:0x60];
                memory[temp17:temp17 + 0x20] = var1;
                var temp18 = memory[0x40:0x60];
                return memory[temp18:temp18 + (temp17 + 0x20) - temp18];
            } else if (var0 == 0x79ba5097) {
                // Dispatch table entry for acceptOwnership()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0359;
                acceptOwnership();
                stop();
            } else { revert(memory[0x00:0x00]); }
        } else if (0xd4ee1d90 > var0) {
            if (var0 == 0x8da5cb5b) {
                // Dispatch table entry for owner()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0370;
                var2 = owner();
                var temp19 = memory[0x40:0x60];
                memory[temp19:temp19 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                var temp20 = memory[0x40:0x60];
                return memory[temp20:temp20 + (temp19 + 0x20) - temp20];
            } else if (var0 == 0x95d89b41) {
                // Dispatch table entry for symbol()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x03c7;
                var2 = symbol();
                var temp21 = memory[0x40:0x60];
                var3 = temp21;
                var4 = var3;
                var temp22 = var4 + 0x20;
                memory[var4:var4 + 0x20] = temp22 - var4;
                var temp23 = var2;
                memory[temp22:temp22 + 0x20] = memory[temp23:temp23 + 0x20];
                var5 = temp22 + 0x20;
                var6 = temp23 + 0x20;
                var7 = memory[temp23:temp23 + 0x20];
                var8 = var7;
                var9 = var5;
                var10 = var6;
                var11 = 0x00;
            
                if (var11 >= var8) {
                label_0407:
                    var temp24 = var7;
                    var5 = temp24 + var5;
                    var6 = temp24 & 0x1f;
                
                    if (!var6) {
                        var temp25 = memory[0x40:0x60];
                        return memory[temp25:temp25 + var5 - temp25];
                    } else {
                        var temp26 = var6;
                        var temp27 = var5 - temp26;
                        memory[temp27:temp27 + 0x20] = ~(0x0100 ** (0x20 - temp26) - 0x01) & memory[temp27:temp27 + 0x20];
                        var temp28 = memory[0x40:0x60];
                        return memory[temp28:temp28 + (temp27 + 0x20) - temp28];
                    }
                } else {
                label_03F5:
                    var temp29 = var11;
                    memory[var9 + temp29:var9 + temp29 + 0x20] = memory[var10 + temp29:var10 + temp29 + 0x20];
                    var11 = temp29 + 0x20;
                
                    if (var11 >= var8) { goto label_0407; }
                    else { goto label_03F5; }
                }
            } else if (var0 == 0xa9059cbb) {
                // Dispatch table entry for transfer(address,uint256)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x049b;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x40) { revert(memory[0x00:0x00]); }
            
                var1 = transfer(var2, var3);
                var temp30 = memory[0x40:0x60];
                memory[temp30:temp30 + 0x20] = !!var1;
                var temp31 = memory[0x40:0x60];
                return memory[temp31:temp31 + (temp30 + 0x20) - temp31];
            } else if (var0 == 0xcae9ca51) {
                // Dispatch table entry for approveAndCall(address,uint256,bytes)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x05a5;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x60) { revert(memory[0x00:0x00]); }
            
                var1 = approveAndCall(var2, var3);
                var temp32 = memory[0x40:0x60];
                memory[temp32:temp32 + 0x20] = !!var1;
                var temp33 = memory[0x40:0x60];
                return memory[temp33:temp33 + (temp32 + 0x20) - temp33];
            } else { revert(memory[0x00:0x00]); }
        } else if (var0 == 0xd4ee1d90) {
            // Dispatch table entry for newOwner()
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x05d4;
            var2 = newOwner();
            var temp34 = memory[0x40:0x60];
            memory[temp34:temp34 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp35 = memory[0x40:0x60];
            return memory[temp35:temp35 + (temp34 + 0x20) - temp35];
        } else if (var0 == 0xdc39d06d) {
            // Dispatch table entry for transferAnyERC20Token(address,uint256)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x066f;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x40) { revert(memory[0x00:0x00]); }
        
            var1 = transferAnyERC20Token(var2, var3);
            var temp36 = memory[0x40:0x60];
            memory[temp36:temp36 + 0x20] = !!var1;
            var temp37 = memory[0x40:0x60];
            return memory[temp37:temp37 + (temp36 + 0x20) - temp37];
        } else if (var0 == 0xdd62ed3e) {
            // Dispatch table entry for allowance(address,address)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x06f8;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x40) { revert(memory[0x00:0x00]); }
        
            var1 = allowance(var2, var3);
            var temp38 = memory[0x40:0x60];
            memory[temp38:temp38 + 0x20] = var1;
            var temp39 = memory[0x40:0x60];
            return memory[temp39:temp39 + (temp38 + 0x20) - temp39];
        } else if (var0 == 0xf2fde38b) {
            // Dispatch table entry for transferOwnership(address)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x075d;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x20) { revert(memory[0x00:0x00]); }
        
            transferOwnership(var2, var3);
            stop();
        } else { revert(memory[0x00:0x00]); }
    }
    
    function approve(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
        var temp1 = arg1;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x07;
        var temp2 = keccak256(memory[0x00:0x40]);
        var temp3 = arg0;
        memory[0x00:0x20] = temp3 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = temp2;
        storage[keccak256(memory[0x00:0x40])] = temp1;
        var temp4 = memory[0x40:0x60];
        memory[temp4:temp4 + 0x20] = temp1;
        var temp5 = memory[0x40:0x60];
        log(memory[temp5:temp5 + (temp4 + 0x20) - temp5], [0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925, msg.sender, stack[-2] & 0xffffffffffffffffffffffffffffffffffffffff]);
        return 0x01;
    }
    
    function transferFrom(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        var temp1 = temp0 + 0x20;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        arg1 = msg.data[temp1:temp1 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        var var0 = msg.data[temp1 + 0x20:temp1 + 0x20 + 0x20];
        var var1 = 0x00;
        var var2 = 0x099e;
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x06;
        var var3 = storage[keccak256(memory[0x00:0x40])];
        var var4 = var0;
        var2 = func_150F(var3, var4);
        var temp2 = arg0;
        memory[0x00:0x20] = temp2 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x06;
        storage[keccak256(memory[0x00:0x40])] = var2;
        var2 = 0x0a70;
        memory[0x00:0x20] = temp2 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x07;
        var temp3 = keccak256(memory[0x00:0x40]);
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = temp3;
        var3 = storage[keccak256(memory[0x00:0x40])];
        var4 = var0;
        var2 = func_150F(var3, var4);
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x07;
        var temp4 = keccak256(memory[0x00:0x40]);
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = temp4;
        storage[keccak256(memory[0x00:0x40])] = var2;
        var2 = 0x0b42;
        memory[0x00:0x20] = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x06;
        var3 = storage[keccak256(memory[0x00:0x40])];
        var4 = var0;
        var2 = func_1529(var3, var4);
        var temp5 = arg1;
        memory[0x00:0x20] = temp5 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x06;
        storage[keccak256(memory[0x00:0x40])] = var2;
        var temp6 = memory[0x40:0x60];
        memory[temp6:temp6 + 0x20] = var0;
        var temp7 = memory[0x40:0x60];
        log(memory[temp7:temp7 + (temp6 + 0x20) - temp7], [0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef, stack[-5] & 0xffffffffffffffffffffffffffffffffffffffff, stack[-4] & 0xffffffffffffffffffffffffffffffffffffffff]);
        return 0x01;
    }
    
    function balanceOf(var arg0, var arg1) returns (var r0) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x06;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function transfer(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
        var var0 = 0x00;
        var var1 = 0x0f05;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x06;
        var var2 = storage[keccak256(memory[0x00:0x40])];
        var var3 = arg1;
        var1 = func_150F(var2, var3);
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x06;
        storage[keccak256(memory[0x00:0x40])] = var1;
        var1 = 0x0f9a;
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x06;
        var2 = storage[keccak256(memory[0x00:0x40])];
        var3 = arg1;
        var1 = func_1529(var2, var3);
        var temp1 = arg0;
        memory[0x00:0x20] = temp1 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x06;
        storage[keccak256(memory[0x00:0x40])] = var1;
        var temp2 = memory[0x40:0x60];
        memory[temp2:temp2 + 0x20] = arg1;
        var temp3 = memory[0x40:0x60];
        log(memory[temp3:temp3 + (temp2 + 0x20) - temp3], [0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef, msg.sender, stack[-4] & 0xffffffffffffffffffffffffffffffffffffffff]);
        return 0x01;
    }
    
    function approveAndCall(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        var temp1 = temp0 + arg1;
        var temp2 = temp0 + 0x20;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp3 = temp2 + 0x20;
        arg1 = msg.data[temp2:temp2 + 0x20];
        var var0 = temp1;
        var var1 = temp0;
        var var2 = temp3 + 0x20;
        var var3 = msg.data[temp3:temp3 + 0x20];
    
        if (var3 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp4 = var1 + var3;
        var3 = temp4;
    
        if (var3 + 0x20 > var0) { revert(memory[0x00:0x00]); }
    
        var temp5 = var3;
        var temp6 = msg.data[temp5:temp5 + 0x20];
        var3 = temp6;
        var var4 = var2;
        var2 = temp5 + 0x20;
    
        if ((var3 > 0x0100000000) | (var2 + var3 > var0)) { revert(memory[0x00:0x00]); }
    
        var temp7 = var3;
        var temp8 = memory[0x40:0x60];
        memory[0x40:0x60] = temp8 + (temp7 + 0x1f) / 0x20 * 0x20 + 0x20;
        memory[temp8:temp8 + 0x20] = temp7;
        var temp9 = temp8 + 0x20;
        memory[temp9:temp9 + temp7] = msg.data[var2:var2 + temp7];
        memory[temp9 + temp7:temp9 + temp7 + 0x20] = 0x00;
        var0 = temp8;
        var1 = 0x00;
        var temp10 = arg1;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x07;
        var temp11 = keccak256(memory[0x00:0x40]);
        var temp12 = arg0;
        memory[0x00:0x20] = temp12 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = temp11;
        storage[keccak256(memory[0x00:0x40])] = temp10;
        var temp13 = memory[0x40:0x60];
        memory[temp13:temp13 + 0x20] = temp10;
        var temp14 = memory[0x40:0x60];
        log(memory[temp14:temp14 + (temp13 + 0x20) - temp14], [0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925, msg.sender, stack[-3] & 0xffffffffffffffffffffffffffffffffffffffff]);
        var2 = temp12 & 0xffffffffffffffffffffffffffffffffffffffff;
        var3 = 0x8f4ffcb1;
        var4 = msg.sender;
        var var5 = temp10;
        var var6 = address(this);
        var temp15 = var0;
        var var7 = temp15;
        var temp16 = memory[0x40:0x60];
        memory[temp16:temp16 + 0x20] = (var3 & 0xffffffff) << 0xe0;
        var temp17 = temp16 + 0x04;
        var var8 = temp17;
        memory[var8:var8 + 0x20] = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp18 = var8 + 0x20;
        memory[temp18:temp18 + 0x20] = var5;
        var temp19 = temp18 + 0x20;
        memory[temp19:temp19 + 0x20] = var6 & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp20 = temp19 + 0x20;
        var var9 = temp20;
        var temp21 = var9 + 0x20;
        memory[var9:var9 + 0x20] = temp21 - var8;
        memory[temp21:temp21 + 0x20] = memory[var7:var7 + 0x20];
        var var10 = temp21 + 0x20;
        var var12 = memory[var7:var7 + 0x20];
        var var11 = var7 + 0x20;
        var var13 = var12;
        var var14 = var10;
        var var15 = var11;
        var var16 = 0x00;
    
        if (var16 >= var13) {
        label_120D:
            var temp22 = var12;
            var10 = temp22 + var10;
            var11 = temp22 & 0x1f;
        
            if (!var11) {
                var4 = var10;
                var5 = 0x00;
                var6 = memory[0x40:0x60];
                var7 = var4 - var6;
                var8 = var6;
                var9 = 0x00;
                var10 = var2;
                var11 = !address(var10).code.length;
            
                if (var11) { revert(memory[0x00:0x00]); }
            
            label_125C:
                var temp23;
                temp23, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
                var5 = !temp23;
            
                if (!var5) { return 0x01; }
            
                var temp24 = returndata.length;
                memory[0x00:0x00 + temp24] = returndata[0x00:0x00 + temp24];
                revert(memory[0x00:0x00 + returndata.length]);
            } else {
                var temp25 = var11;
                var temp26 = var10 - temp25;
                memory[temp26:temp26 + 0x20] = ~(0x0100 ** (0x20 - temp25) - 0x01) & memory[temp26:temp26 + 0x20];
                var4 = temp26 + 0x20;
                var5 = 0x00;
                var6 = memory[0x40:0x60];
                var7 = var4 - var6;
                var8 = var6;
                var9 = 0x00;
                var10 = var2;
                var11 = !address(var10).code.length;
            
                if (!var11) { goto label_125C; }
                else { revert(memory[0x00:0x00]); }
            }
        } else {
        label_11FB:
            var temp27 = var16;
            memory[var14 + temp27:var14 + temp27 + 0x20] = memory[var15 + temp27:var15 + temp27 + 0x20];
            var16 = temp27 + 0x20;
        
            if (var16 >= var13) { goto label_120D; }
            else { goto label_11FB; }
        }
    }
    
    function transferAnyERC20Token(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
        var var0 = 0x00;
    
        if (msg.sender != storage[var0] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var var1 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var2 = 0xa9059cbb;
        var temp1 = memory[0x40:0x60];
        memory[temp1:temp1 + 0x20] = (var2 & 0xffffffff) << 0xe0;
        var temp2 = temp1 + 0x04;
        memory[temp2:temp2 + 0x20] = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp3 = temp2 + 0x20;
        memory[temp3:temp3 + 0x20] = arg1;
        var var3 = temp3 + 0x20;
        var var4 = 0x20;
        var var5 = memory[0x40:0x60];
        var var6 = var3 - var5;
        var var7 = var5;
        var var8 = 0x00;
        var var9 = var1;
        var var10 = !address(var9).code.length;
    
        if (var10) { revert(memory[0x00:0x00]); }
    
        var temp4;
        temp4, memory[var5:var5 + var4] = address(var9).call.gas(msg.gas).value(var8)(memory[var7:var7 + var6]);
        var4 = !temp4;
    
        if (!var4) {
            var1 = memory[0x40:0x60];
            var2 = returndata.length;
        
            if (var2 >= 0x20) { return memory[var1:var1 + 0x20]; }
            else { revert(memory[0x00:0x00]); }
        } else {
            var temp5 = returndata.length;
            memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function allowance(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x07;
        var temp1 = keccak256(memory[0x00:0x40]);
        memory[0x00:0x20] = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = temp1;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function transferOwnership(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
    
        if (msg.sender != storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        storage[0x01] = (arg0 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[0x01] & ~0xffffffffffffffffffffffffffffffffffffffff);
    }
    
    function name() returns (var r0) {
        var temp0 = storage[0x03];
        var temp1 = (!(temp0 & 0x01) * 0x0100 - 0x01 & temp0) / 0x02;
        var temp2 = memory[0x40:0x60];
        memory[0x40:0x60] = temp2 + (temp1 + 0x1f) / 0x20 * 0x20 + 0x20;
        r0 = temp2;
        var var1 = 0x03;
        var var2 = temp1;
        memory[r0:r0 + 0x20] = var2;
        var var3 = r0 + 0x20;
        var var4 = var1;
        var temp3 = storage[var4];
        var var5 = (!(temp3 & 0x01) * 0x0100 - 0x01 & temp3) / 0x02;
    
        if (!var5) {
        label_07F5:
            return r0;
        } else if (0x1f < var5) {
            var temp4 = var3;
            var temp5 = temp4 + var5;
            var3 = temp5;
            memory[0x00:0x20] = var4;
            var temp6 = keccak256(memory[0x00:0x20]);
            memory[temp4:temp4 + 0x20] = storage[temp6];
            var4 = temp6 + 0x01;
            var5 = temp4 + 0x20;
        
            if (var3 <= var5) { goto label_07EC; }
        
        label_07D8:
            var temp7 = var4;
            var temp8 = var5;
            memory[temp8:temp8 + 0x20] = storage[temp7];
            var4 = temp7 + 0x01;
            var5 = temp8 + 0x20;
        
            if (var3 > var5) { goto label_07D8; }
        
        label_07EC:
            var temp9 = var3;
            var temp10 = temp9 + (var5 - temp9 & 0x1f);
            var5 = temp9;
            var3 = temp10;
            goto label_07F5;
        } else {
            var temp11 = var3;
            memory[temp11:temp11 + 0x20] = storage[var4] / 0x0100 * 0x0100;
            var3 = temp11 + 0x20;
            var5 = var5;
            goto label_07F5;
        }
    }
    
    function totalSupply() returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0945;
        memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & 0x00;
        memory[0x20:0x40] = 0x06;
        var var2 = storage[0x05];
        var var3 = storage[keccak256(memory[0x00:0x40])];
        return func_150F(var2, var3);
    }
    
    function decimals() returns (var r0) { return storage[0x04] & 0xff; }
    
    function acceptOwnership() {
        if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var temp0 = memory[0x40:0x60];
        log(memory[temp0:temp0 + memory[0x40:0x60] - temp0], [0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0, storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff, storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff]);
        storage[0x00] = (storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[0x00] & ~0xffffffffffffffffffffffffffffffffffffffff);
        storage[0x01] = (storage[0x01] & ~0xffffffffffffffffffffffffffffffffffffffff) | 0x00;
    }
    
    function owner() returns (var r0) { return storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff; }
    
    function symbol() returns (var r0) {
        var temp0 = storage[0x02];
        var temp1 = (!(temp0 & 0x01) * 0x0100 - 0x01 & temp0) / 0x02;
        var temp2 = memory[0x40:0x60];
        memory[0x40:0x60] = temp2 + (temp1 + 0x1f) / 0x20 * 0x20 + 0x20;
        r0 = temp2;
        var var1 = 0x02;
        var var2 = temp1;
        memory[r0:r0 + 0x20] = var2;
        var var3 = r0 + 0x20;
        var var4 = var1;
        var temp3 = storage[var4];
        var var5 = (!(temp3 & 0x01) * 0x0100 - 0x01 & temp3) / 0x02;
    
        if (!var5) {
        label_0EA9:
            return r0;
        } else if (0x1f < var5) {
            var temp4 = var3;
            var temp5 = temp4 + var5;
            var3 = temp5;
            memory[0x00:0x20] = var4;
            var temp6 = keccak256(memory[0x00:0x20]);
            memory[temp4:temp4 + 0x20] = storage[temp6];
            var4 = temp6 + 0x01;
            var5 = temp4 + 0x20;
        
            if (var3 <= var5) { goto label_0EA0; }
        
        label_0E8C:
            var temp7 = var4;
            var temp8 = var5;
            memory[temp8:temp8 + 0x20] = storage[temp7];
            var4 = temp7 + 0x01;
            var5 = temp8 + 0x20;
        
            if (var3 > var5) { goto label_0E8C; }
        
        label_0EA0:
            var temp9 = var3;
            var temp10 = temp9 + (var5 - temp9 & 0x1f);
            var5 = temp9;
            var3 = temp10;
            goto label_0EA9;
        } else {
            var temp11 = var3;
            memory[temp11:temp11 + 0x20] = storage[var4] / 0x0100 * 0x0100;
            var3 = temp11 + 0x20;
            var5 = var5;
            goto label_0EA9;
        }
    }
    
    function newOwner() returns (var r0) { return storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff; }
    
    function func_150F(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 <= arg0) { return arg0 - arg1; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_1529(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + arg1;
    
        if (var0 >= temp0) { return var0; }
        else { revert(memory[0x00:0x00]); }
    }
}

Disassembly
label_0000:
	// Inputs[1] { @0007  msg.data.length }
	0000    60  PUSH1 0x80
	0002    60  PUSH1 0x40
	0004    52  MSTORE
	0005    60  PUSH1 0x04
	0007    36  CALLDATASIZE
	0008    10  LT
	0009    61  PUSH2 0x00e8
	000C    57  *JUMPI
	// Stack delta = +0
	// Outputs[1] { @0004  memory[0x40:0x60] = 0x80 }
	// Block ends with conditional jump to 0x00e8, if msg.data.length < 0x04

label_000D:
	// Incoming jump from 0x000C, if not msg.data.length < 0x04
	// Inputs[1] { @000F  msg.data[0x00:0x20] }
	000D    60  PUSH1 0x00
	000F    35  CALLDATALOAD
	0010    60  PUSH1 0xe0
	0012    1C  SHR
	0013    80  DUP1
	0014    63  PUSH4 0x8da5cb5b
	0019    11  GT
	001A    61  PUSH2 0x008a
	001D    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @0012  stack[0] = msg.data[0x00:0x20] >> 0xe0 }
	// Block ends with conditional jump to 0x008a, if 0x8da5cb5b > msg.data[0x00:0x20] >> 0xe0

label_001E:
	// Incoming jump from 0x001D, if not 0x8da5cb5b > msg.data[0x00:0x20] >> 0xe0
	// Inputs[1] { @001E  stack[-1] }
	001E    80  DUP1
	001F    63  PUSH4 0xd4ee1d90
	0024    11  GT
	0025    61  PUSH2 0x0059
	0028    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x0059, if 0xd4ee1d90 > stack[-1]

label_0029:
	// Incoming jump from 0x0028, if not 0xd4ee1d90 > stack[-1]
	// Inputs[1] { @0029  stack[-1] }
	0029    80  DUP1
	002A    63  PUSH4 0xd4ee1d90
	002F    14  EQ
	0030    61  PUSH2 0x05bf
	0033    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x05bf, if 0xd4ee1d90 == stack[-1]

label_0034:
	// Incoming jump from 0x0033, if not 0xd4ee1d90 == stack[-1]
	// Inputs[1] { @0034  stack[-1] }
	0034    80  DUP1
	0035    63  PUSH4 0xdc39d06d
	003A    14  EQ
	003B    61  PUSH2 0x0616
	003E    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x0616, if 0xdc39d06d == stack[-1]

label_003F:
	// Incoming jump from 0x003E, if not 0xdc39d06d == stack[-1]
	// Inputs[1] { @003F  stack[-1] }
	003F    80  DUP1
	0040    63  PUSH4 0xdd62ed3e
	0045    14  EQ
	0046    61  PUSH2 0x0689
	0049    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x0689, if 0xdd62ed3e == stack[-1]

label_004A:
	// Incoming jump from 0x0049, if not 0xdd62ed3e == stack[-1]
	// Inputs[1] { @004A  stack[-1] }
	004A    80  DUP1
	004B    63  PUSH4 0xf2fde38b
	0050    14  EQ
	0051    61  PUSH2 0x070e
	0054    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x070e, if 0xf2fde38b == stack[-1]

label_0055:
	// Incoming jump from 0x0054, if not 0xf2fde38b == stack[-1]
	0055    61  PUSH2 0x00e8
	0058    56  *JUMP
	// Stack delta = +0
	// Block ends with unconditional jump to 0x00e8

label_0059:
	// Incoming jump from 0x0028, if 0xd4ee1d90 > stack[-1]
	// Inputs[1] { @005A  stack[-1] }
	0059    5B  JUMPDEST
	005A    80  DUP1
	005B    63  PUSH4 0x8da5cb5b
	0060    14  EQ
	0061    61  PUSH2 0x035b
	0064    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x035b, if 0x8da5cb5b == stack[-1]

label_0065:
	// Incoming jump from 0x0064, if not 0x8da5cb5b == stack[-1]
	// Inputs[1] { @0065  stack[-1] }
	0065    80  DUP1
	0066    63  PUSH4 0x95d89b41
	006B    14  EQ
	006C    61  PUSH2 0x03b2
	006F    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x03b2, if 0x95d89b41 == stack[-1]

label_0070:
	// Incoming jump from 0x006F, if not 0x95d89b41 == stack[-1]
	// Inputs[1] { @0070  stack[-1] }
	0070    80  DUP1
	0071    63  PUSH4 0xa9059cbb
	0076    14  EQ
	0077    61  PUSH2 0x0442
	007A    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x0442, if 0xa9059cbb == stack[-1]

label_007B:
	// Incoming jump from 0x007A, if not 0xa9059cbb == stack[-1]
	// Inputs[1] { @007B  stack[-1] }
	007B    80  DUP1
	007C    63  PUSH4 0xcae9ca51
	0081    14  EQ
	0082    61  PUSH2 0x04b5
	0085    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x04b5, if 0xcae9ca51 == stack[-1]

label_0086:
	// Incoming jump from 0x0085, if not 0xcae9ca51 == stack[-1]
	0086    61  PUSH2 0x00e8
	0089    56  *JUMP
	// Stack delta = +0
	// Block ends with unconditional jump to 0x00e8

label_008A:
	// Incoming jump from 0x001D, if 0x8da5cb5b > msg.data[0x00:0x20] >> 0xe0
	// Inputs[1] { @008B  stack[-1] }
	008A    5B  JUMPDEST
	008B    80  DUP1
	008C    63  PUSH4 0x23b872dd
	0091    11  GT
	0092    61  PUSH2 0x00c6
	0095    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x00c6, if 0x23b872dd > stack[-1]

label_0096:
	// Incoming jump from 0x0095, if not 0x23b872dd > stack[-1]
	// Inputs[1] { @0096  stack[-1] }
	0096    80  DUP1
	0097    63  PUSH4 0x23b872dd
	009C    14  EQ
	009D    61  PUSH2 0x021b
	00A0    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x021b, if 0x23b872dd == stack[-1]

label_00A1:
	// Incoming jump from 0x00A0, if not 0x23b872dd == stack[-1]
	// Inputs[1] { @00A1  stack[-1] }
	00A1    80  DUP1
	00A2    63  PUSH4 0x313ce567
	00A7    14  EQ
	00A8    61  PUSH2 0x02ae
	00AB    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x02ae, if 0x313ce567 == stack[-1]

label_00AC:
	// Incoming jump from 0x00AB, if not 0x313ce567 == stack[-1]
	// Inputs[1] { @00AC  stack[-1] }
	00AC    80  DUP1
	00AD    63  PUSH4 0x70a08231
	00B2    14  EQ
	00B3    61  PUSH2 0x02df
	00B6    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x02df, if 0x70a08231 == stack[-1]

label_00B7:
	// Incoming jump from 0x00B6, if not 0x70a08231 == stack[-1]
	// Inputs[1] { @00B7  stack[-1] }
	00B7    80  DUP1
	00B8    63  PUSH4 0x79ba5097
	00BD    14  EQ
	00BE    61  PUSH2 0x0344
	00C1    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x0344, if 0x79ba5097 == stack[-1]

label_00C2:
	// Incoming jump from 0x00C1, if not 0x79ba5097 == stack[-1]
	00C2    61  PUSH2 0x00e8
	00C5    56  *JUMP
	// Stack delta = +0
	// Block ends with unconditional jump to 0x00e8

label_00C6:
	// Incoming jump from 0x0095, if 0x23b872dd > stack[-1]
	// Inputs[1] { @00C7  stack[-1] }
	00C6    5B  JUMPDEST
	00C7    80  DUP1
	00C8    63  PUSH4 0x06fdde03
	00CD    14  EQ
	00CE    61  PUSH2 0x00ed
	00D1    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x00ed, if 0x06fdde03 == stack[-1]

label_00D2:
	// Incoming jump from 0x00D1, if not 0x06fdde03 == stack[-1]
	// Inputs[1] { @00D2  stack[-1] }
	00D2    80  DUP1
	00D3    63  PUSH4 0x095ea7b3
	00D8    14  EQ
	00D9    61  PUSH2 0x017d
	00DC    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x017d, if 0x095ea7b3 == stack[-1]

label_00DD:
	// Incoming jump from 0x00DC, if not 0x095ea7b3 == stack[-1]
	// Inputs[1] { @00DD  stack[-1] }
	00DD    80  DUP1
	00DE    63  PUSH4 0x18160ddd
	00E3    14  EQ
	00E4    61  PUSH2 0x01f0
	00E7    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x01f0, if 0x18160ddd == stack[-1]

label_00E8:
	// Incoming jump from 0x0089
	// Incoming jump from 0x000C, if msg.data.length < 0x04
	// Incoming jump from 0x00C5
	// Incoming jump from 0x00E7, if not 0x18160ddd == stack[-1]
	// Incoming jump from 0x0058
	// Inputs[1] { @00EC  memory[0x00:0x00] }
	00E8    5B  JUMPDEST
	00E9    60  PUSH1 0x00
	00EB    80  DUP1
	00EC    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @00EC  revert(memory[0x00:0x00]); }
	// Block terminates

label_00ED:
	// Incoming jump from 0x00D1, if 0x06fdde03 == stack[-1]
	// Inputs[1] { @00EE  msg.value }
	00ED    5B  JUMPDEST
	00EE    34  CALLVALUE
	00EF    80  DUP1
	00F0    15  ISZERO
	00F1    61  PUSH2 0x00f9
	00F4    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @00EE  stack[0] = msg.value }
	// Block ends with conditional jump to 0x00f9, if !msg.value

label_00F5:
	// Incoming jump from 0x00F4, if not !msg.value
	// Inputs[1] { @00F8  memory[0x00:0x00] }
	00F5    60  PUSH1 0x00
	00F7    80  DUP1
	00F8    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @00F8  revert(memory[0x00:0x00]); }
	// Block terminates

label_00F9:
	// Incoming jump from 0x00F4, if !msg.value
	00F9    5B  JUMPDEST
	00FA    50  POP
	00FB    61  PUSH2 0x0102
	00FE    61  PUSH2 0x075f
	0101    56  *JUMP
	// Stack delta = +0
	// Outputs[1] { @00FB  stack[-1] = 0x0102 }
	// Block ends with call to 0x075f, returns to 0x0102

label_0102:
	// Incoming return from call to 0x075F at 0x0101
	// Inputs[4]
	// {
	//     @0105  memory[0x40:0x60]
	//     @0110  stack[-1]
	//     @0113  memory[stack[-1]:stack[-1] + 0x20]
	//     @011C  memory[stack[-1]:stack[-1] + 0x20]
	// }
	0102    5B  JUMPDEST
	0103    60  PUSH1 0x40
	0105    51  MLOAD
	0106    80  DUP1
	0107    80  DUP1
	0108    60  PUSH1 0x20
	010A    01  ADD
	010B    82  DUP3
	010C    81  DUP2
	010D    03  SUB
	010E    82  DUP3
	010F    52  MSTORE
	0110    83  DUP4
	0111    81  DUP2
	0112    81  DUP2
	0113    51  MLOAD
	0114    81  DUP2
	0115    52  MSTORE
	0116    60  PUSH1 0x20
	0118    01  ADD
	0119    91  SWAP2
	011A    50  POP
	011B    80  DUP1
	011C    51  MLOAD
	011D    90  SWAP1
	011E    60  PUSH1 0x20
	0120    01  ADD
	0121    90  SWAP1
	0122    80  DUP1
	0123    83  DUP4
	0124    83  DUP4
	0125    60  PUSH1 0x00
	0127    5B  JUMPDEST
	0128    83  DUP4
	0129    81  DUP2
	012A    10  LT
	012B    15  ISZERO
	012C    61  PUSH2 0x0142
	012F    57  *JUMPI
	// Stack delta = +9
	// Outputs[11]
	// {
	//     @0105  stack[0] = memory[0x40:0x60]
	//     @0106  stack[1] = memory[0x40:0x60]
	//     @010F  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]
	//     @0115  memory[0x20 + memory[0x40:0x60]:0x20 + memory[0x40:0x60] + 0x20] = memory[stack[-1]:stack[-1] + 0x20]
	//     @0119  stack[2] = 0x20 + 0x20 + memory[0x40:0x60]
	//     @0121  stack[4] = memory[stack[-1]:stack[-1] + 0x20]
	//     @0121  stack[3] = 0x20 + stack[-1]
	//     @0122  stack[5] = memory[stack[-1]:stack[-1] + 0x20]
	//     @0123  stack[6] = 0x20 + 0x20 + memory[0x40:0x60]
	//     @0124  stack[7] = 0x20 + stack[-1]
	//     @0125  stack[8] = 0x00
	// }
	// Block ends with conditional jump to 0x0142, if !(0x00 < memory[stack[-1]:stack[-1] + 0x20])

label_0130:
	// Incoming jump from 0x012F, if not !(stack[-1] < stack[-4])
	// Incoming jump from 0x012F, if not !(0x00 < memory[stack[-1]:stack[-1] + 0x20])
	// Inputs[4]
	// {
	//     @0130  stack[-1]
	//     @0131  stack[-2]
	//     @0133  memory[stack[-2] + stack[-1]:stack[-2] + stack[-1] + 0x20]
	//     @0135  stack[-3]
	// }
	0130    80  DUP1
	0131    82  DUP3
	0132    01  ADD
	0133    51  MLOAD
	0134    81  DUP2
	0135    84  DUP5
	0136    01  ADD
	0137    52  MSTORE
	0138    60  PUSH1 0x20
	013A    81  DUP2
	013B    01  ADD
	013C    90  SWAP1
	013D    50  POP
	013E    61  PUSH2 0x0127
	0141    56  *JUMP
	// Stack delta = +0
	// Outputs[2]
	// {
	//     @0137  memory[stack[-3] + stack[-1]:stack[-3] + stack[-1] + 0x20] = memory[stack[-2] + stack[-1]:stack[-2] + stack[-1] + 0x20]
	//     @013C  stack[-1] = stack[-1] + 0x20
	// }
	// Block ends with unconditional jump to 0x0127

label_0142:
	// Incoming jump from 0x012F, if !(stack[-1] < stack[-4])
	// Incoming jump from 0x012F, if !(0x00 < memory[stack[-1]:stack[-1] + 0x20])
	// Inputs[3]
	// {
	//     @0147  stack[-5]
	//     @0147  stack[-6]
	//     @0149  stack[-7]
	// }
	0142    5B  JUMPDEST
	0143    50  POP
	0144    50  POP
	0145    50  POP
	0146    50  POP
	0147    90  SWAP1
	0148    50  POP
	0149    90  SWAP1
	014A    81  DUP2
	014B    01  ADD
	014C    90  SWAP1
	014D    60  PUSH1 0x1f
	014F    16  AND
	0150    80  DUP1
	0151    15  ISZERO
	0152    61  PUSH2 0x016f
	0155    57  *JUMPI
	// Stack delta = -5
	// Outputs[2]
	// {
	//     @014C  stack[-7] = stack[-5] + stack[-7]
	//     @014F  stack[-6] = 0x1f & stack[-5]
	// }
	// Block ends with conditional jump to 0x016f, if !(0x1f & stack[-5])

label_0156:
	// Incoming jump from 0x0155, if not !(0x1f & stack[-5])
	// Inputs[6]
	// {
	//     @0156  stack[-1]
	//     @0157  stack[-2]
	//     @015A  memory[stack[-2] - stack[-1]:stack[-2] - stack[-1] + 0x20]
	//     @0171  stack[-5]
	//     @0177  memory[0x40:0x60]
	//     @017C  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + (stack[-2] - stack[-1])) - memory[0x40:0x60]]
	// }
	0156    80  DUP1
	0157    82  DUP3
	0158    03  SUB
	0159    80  DUP1
	015A    51  MLOAD
	015B    60  PUSH1 0x01
	015D    83  DUP4
	015E    60  PUSH1 0x20
	0160    03  SUB
	0161    61  PUSH2 0x0100
	0164    0A  EXP
	0165    03  SUB
	0166    19  NOT
	0167    16  AND
	0168    81  DUP2
	0169    52  MSTORE
	016A    60  PUSH1 0x20
	016C    01  ADD
	016D    91  SWAP2
	016E    50  POP
	016F    5B  JUMPDEST
	0170    50  POP
	0171    92  SWAP3
	0172    50  POP
	0173    50  POP
	0174    50  POP
	0175    60  PUSH1 0x40
	0177    51  MLOAD
	0178    80  DUP1
	0179    91  SWAP2
	017A    03  SUB
	017B    90  SWAP1
	017C    F3  *RETURN
	// Stack delta = -5
	// Outputs[2]
	// {
	//     @0169  memory[stack[-2] - stack[-1]:stack[-2] - stack[-1] + 0x20] = ~(0x0100 ** (0x20 - stack[-1]) - 0x01) & memory[stack[-2] - stack[-1]:stack[-2] - stack[-1] + 0x20]
	//     @017C  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + (stack[-2] - stack[-1])) - memory[0x40:0x60]];
	// }
	// Block terminates

label_017D:
	// Incoming jump from 0x00DC, if 0x095ea7b3 == stack[-1]
	// Inputs[1] { @017E  msg.value }
	017D    5B  JUMPDEST
	017E    34  CALLVALUE
	017F    80  DUP1
	0180    15  ISZERO
	0181    61  PUSH2 0x0189
	0184    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @017E  stack[0] = msg.value }
	// Block ends with conditional jump to 0x0189, if !msg.value

label_0185:
	// Incoming jump from 0x0184, if not !msg.value
	// Inputs[1] { @0188  memory[0x00:0x00] }
	0185    60  PUSH1 0x00
	0187    80  DUP1
	0188    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0188  revert(memory[0x00:0x00]); }
	// Block terminates

label_0189:
	// Incoming jump from 0x0184, if !msg.value
	// Inputs[1] { @0191  msg.data.length }
	0189    5B  JUMPDEST
	018A    50  POP
	018B    61  PUSH2 0x01d6
	018E    60  PUSH1 0x04
	0190    80  DUP1
	0191    36  CALLDATASIZE
	0192    03  SUB
	0193    60  PUSH1 0x40
	0195    81  DUP2
	0196    10  LT
	0197    15  ISZERO
	0198    61  PUSH2 0x01a0
	019B    57  *JUMPI
	// Stack delta = +2
	// Outputs[3]
	// {
	//     @018B  stack[-1] = 0x01d6
	//     @018E  stack[0] = 0x04
	//     @0192  stack[1] = msg.data.length - 0x04
	// }
	// Block ends with conditional call to 0x01a0, returns to 0x01D6, if !(msg.data.length - 0x04 < 0x40)

label_019C:
	// Incoming jump from 0x019B, if not !(msg.data.length - 0x04 < 0x40)
	// Inputs[1] { @019F  memory[0x00:0x00] }
	019C    60  PUSH1 0x00
	019E    80  DUP1
	019F    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @019F  revert(memory[0x00:0x00]); }
	// Block terminates

label_01A0:
	// Incoming call from 0x019B, returns to 0x01D6, if !(msg.data.length - 0x04 < 0x40)
	// Inputs[4]
	// {
	//     @01A1  stack[-2]
	//     @01A2  stack[-1]
	//     @01A6  msg.data[stack[-2]:stack[-2] + 0x20]
	//     @01C6  msg.data[0x20 + stack[-2]:0x20 + stack[-2] + 0x20]
	// }
	01A0    5B  JUMPDEST
	01A1    81  DUP2
	01A2    01  ADD
	01A3    90  SWAP1
	01A4    80  DUP1
	01A5    80  DUP1
	01A6    35  CALLDATALOAD
	01A7    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	01BC    16  AND
	01BD    90  SWAP1
	01BE    60  PUSH1 0x20
	01C0    01  ADD
	01C1    90  SWAP1
	01C2    92  SWAP3
	01C3    91  SWAP2
	01C4    90  SWAP1
	01C5    80  DUP1
	01C6    35  CALLDATALOAD
	01C7    90  SWAP1
	01C8    60  PUSH1 0x20
	01CA    01  ADD
	01CB    90  SWAP1
	01CC    92  SWAP3
	01CD    91  SWAP2
	01CE    90  SWAP1
	01CF    50  POP
	01D0    50  POP
	01D1    50  POP
	01D2    61  PUSH2 0x07fd
	01D5    56  *JUMP
	// Stack delta = +0
	// Outputs[2]
	// {
	//     @01C2  stack[-2] = 0xffffffffffffffffffffffffffffffffffffffff & msg.data[stack[-2]:stack[-2] + 0x20]
	//     @01CC  stack[-1] = msg.data[0x20 + stack[-2]:0x20 + stack[-2] + 0x20]
	// }
	// Block ends with unconditional jump to 0x07fd

label_01D6:
	// Incoming return from call to 0x01A0 at 0x019B
	// Inputs[4]
	// {
	//     @01D9  memory[0x40:0x60]
	//     @01DB  stack[-1]
	//     @01EA  memory[0x40:0x60]
	//     @01EF  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	// }
	01D6    5B  JUMPDEST
	01D7    60  PUSH1 0x40
	01D9    51  MLOAD
	01DA    80  DUP1
	01DB    82  DUP3
	01DC    15  ISZERO
	01DD    15  ISZERO
	01DE    15  ISZERO
	01DF    15  ISZERO
	01E0    81  DUP2
	01E1    52  MSTORE
	01E2    60  PUSH1 0x20
	01E4    01  ADD
	01E5    91  SWAP2
	01E6    50  POP
	01E7    50  POP
	01E8    60  PUSH1 0x40
	01EA    51  MLOAD
	01EB    80  DUP1
	01EC    91  SWAP2
	01ED    03  SUB
	01EE    90  SWAP1
	01EF    F3  *RETURN
	// Stack delta = -1
	// Outputs[2]
	// {
	//     @01E1  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = !!!!stack[-1]
	//     @01EF  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]];
	// }
	// Block terminates

label_01F0:
	// Incoming jump from 0x00E7, if 0x18160ddd == stack[-1]
	// Inputs[1] { @01F1  msg.value }
	01F0    5B  JUMPDEST
	01F1    34  CALLVALUE
	01F2    80  DUP1
	01F3    15  ISZERO
	01F4    61  PUSH2 0x01fc
	01F7    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @01F1  stack[0] = msg.value }
	// Block ends with conditional jump to 0x01fc, if !msg.value

label_01F8:
	// Incoming jump from 0x01F7, if not !msg.value
	// Inputs[1] { @01FB  memory[0x00:0x00] }
	01F8    60  PUSH1 0x00
	01FA    80  DUP1
	01FB    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @01FB  revert(memory[0x00:0x00]); }
	// Block terminates

label_01FC:
	// Incoming jump from 0x01F7, if !msg.value
	01FC    5B  JUMPDEST
	01FD    50  POP
	01FE    61  PUSH2 0x0205
	0201    61  PUSH2 0x08ef
	0204    56  *JUMP
	// Stack delta = +0
	// Outputs[1] { @01FE  stack[-1] = 0x0205 }
	// Block ends with call to 0x08ef, returns to 0x0205

label_0205:
	// Incoming return from call to 0x08EF at 0x0204
	// Inputs[4]
	// {
	//     @0208  memory[0x40:0x60]
	//     @020A  stack[-1]
	//     @0215  memory[0x40:0x60]
	//     @021A  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	// }
	0205    5B  JUMPDEST
	0206    60  PUSH1 0x40
	0208    51  MLOAD
	0209    80  DUP1
	020A    82  DUP3
	020B    81  DUP2
	020C    52  MSTORE
	020D    60  PUSH1 0x20
	020F    01  ADD
	0210    91  SWAP2
	0211    50  POP
	0212    50  POP
	0213    60  PUSH1 0x40
	0215    51  MLOAD
	0216    80  DUP1
	0217    91  SWAP2
	0218    03  SUB
	0219    90  SWAP1
	021A    F3  *RETURN
	// Stack delta = -1
	// Outputs[2]
	// {
	//     @020C  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = stack[-1]
	//     @021A  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]];
	// }
	// Block terminates

label_021B:
	// Incoming jump from 0x00A0, if 0x23b872dd == stack[-1]
	// Inputs[1] { @021C  msg.value }
	021B    5B  JUMPDEST
	021C    34  CALLVALUE
	021D    80  DUP1
	021E    15  ISZERO
	021F    61  PUSH2 0x0227
	0222    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @021C  stack[0] = msg.value }
	// Block ends with conditional jump to 0x0227, if !msg.value

label_0223:
	// Incoming jump from 0x0222, if not !msg.value
	// Inputs[1] { @0226  memory[0x00:0x00] }
	0223    60  PUSH1 0x00
	0225    80  DUP1
	0226    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0226  revert(memory[0x00:0x00]); }
	// Block terminates

label_0227:
	// Incoming jump from 0x0222, if !msg.value
	// Inputs[1] { @022F  msg.data.length }
	0227    5B  JUMPDEST
	0228    50  POP
	0229    61  PUSH2 0x0294
	022C    60  PUSH1 0x04
	022E    80  DUP1
	022F    36  CALLDATASIZE
	0230    03  SUB
	0231    60  PUSH1 0x60
	0233    81  DUP2
	0234    10  LT
	0235    15  ISZERO
	0236    61  PUSH2 0x023e
	0239    57  *JUMPI
	// Stack delta = +2
	// Outputs[3]
	// {
	//     @0229  stack[-1] = 0x0294
	//     @022C  stack[0] = 0x04
	//     @0230  stack[1] = msg.data.length - 0x04
	// }
	// Block ends with conditional call to 0x023e, returns to 0x0294, if !(msg.data.length - 0x04 < 0x60)

label_023A:
	// Incoming jump from 0x0239, if not !(msg.data.length - 0x04 < 0x60)
	// Inputs[1] { @023D  memory[0x00:0x00] }
	023A    60  PUSH1 0x00
	023C    80  DUP1
	023D    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @023D  revert(memory[0x00:0x00]); }
	// Block terminates

label_023E:
	// Incoming call from 0x0239, returns to 0x0294, if !(msg.data.length - 0x04 < 0x60)
	// Inputs[5]
	// {
	//     @023F  stack[-2]
	//     @0240  stack[-1]
	//     @0244  msg.data[stack[-2]:stack[-2] + 0x20]
	//     @0264  msg.data[0x20 + stack[-2]:0x20 + stack[-2] + 0x20]
	//     @0284  msg.data[0x20 + 0x20 + stack[-2]:0x20 + 0x20 + stack[-2] + 0x20]
	// }
	023E    5B  JUMPDEST
	023F    81  DUP2
	0240    01  ADD
	0241    90  SWAP1
	0242    80  DUP1
	0243    80  DUP1
	0244    35  CALLDATALOAD
	0245    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	025A    16  AND
	025B    90  SWAP1
	025C    60  PUSH1 0x20
	025E    01  ADD
	025F    90  SWAP1
	0260    92  SWAP3
	0261    91  SWAP2
	0262    90  SWAP1
	0263    80  DUP1
	0264    35  CALLDATALOAD
	0265    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	027A    16  AND
	027B    90  SWAP1
	027C    60  PUSH1 0x20
	027E    01  ADD
	027F    90  SWAP1
	0280    92  SWAP3
	0281    91  SWAP2
	0282    90  SWAP1
	0283    80  DUP1
	0284    35  CALLDATALOAD
	0285    90  SWAP1
	0286    60  PUSH1 0x20
	0288    01  ADD
	0289    90  SWAP1
	028A    92  SWAP3
	028B    91  SWAP2
	028C    90  SWAP1
	028D    50  POP
	028E    50  POP
	028F    50  POP
	0290    61  PUSH2 0x094a
	0293    56  *JUMP
	// Stack delta = +1
	// Outputs[3]
	// {
	//     @0260  stack[-2] = 0xffffffffffffffffffffffffffffffffffffffff & msg.data[stack[-2]:stack[-2] + 0x20]
	//     @0280  stack[-1] = 0xffffffffffffffffffffffffffffffffffffffff & msg.data[0x20 + stack[-2]:0x20 + stack[-2] + 0x20]
	//     @028A  stack[0] = msg.data[0x20 + 0x20 + stack[-2]:0x20 + 0x20 + stack[-2] + 0x20]
	// }
	// Block ends with unconditional jump to 0x094a

label_0294:
	// Incoming return from call to 0x023E at 0x0239
	// Inputs[4]
	// {
	//     @0297  memory[0x40:0x60]
	//     @0299  stack[-1]
	//     @02A8  memory[0x40:0x60]
	//     @02AD  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	// }
	0294    5B  JUMPDEST
	0295    60  PUSH1 0x40
	0297    51  MLOAD
	0298    80  DUP1
	0299    82  DUP3
	029A    15  ISZERO
	029B    15  ISZERO
	029C    15  ISZERO
	029D    15  ISZERO
	029E    81  DUP2
	029F    52  MSTORE
	02A0    60  PUSH1 0x20
	02A2    01  ADD
	02A3    91  SWAP2
	02A4    50  POP
	02A5    50  POP
	02A6    60  PUSH1 0x40
	02A8    51  MLOAD
	02A9    80  DUP1
	02AA    91  SWAP2
	02AB    03  SUB
	02AC    90  SWAP1
	02AD    F3  *RETURN
	// Stack delta = -1
	// Outputs[2]
	// {
	//     @029F  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = !!!!stack[-1]
	//     @02AD  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]];
	// }
	// Block terminates

label_02AE:
	// Incoming jump from 0x00AB, if 0x313ce567 == stack[-1]
	// Inputs[1] { @02AF  msg.value }
	02AE    5B  JUMPDEST
	02AF    34  CALLVALUE
	02B0    80  DUP1
	02B1    15  ISZERO
	02B2    61  PUSH2 0x02ba
	02B5    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @02AF  stack[0] = msg.value }
	// Block ends with conditional jump to 0x02ba, if !msg.value

label_02B6:
	// Incoming jump from 0x02B5, if not !msg.value
	// Inputs[1] { @02B9  memory[0x00:0x00] }
	02B6    60  PUSH1 0x00
	02B8    80  DUP1
	02B9    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @02B9  revert(memory[0x00:0x00]); }
	// Block terminates

label_02BA:
	// Incoming jump from 0x02B5, if !msg.value
	02BA    5B  JUMPDEST
	02BB    50  POP
	02BC    61  PUSH2 0x02c3
	02BF    61  PUSH2 0x0bf5
	02C2    56  *JUMP
	// Stack delta = +0
	// Outputs[1] { @02BC  stack[-1] = 0x02c3 }
	// Block ends with call to 0x0bf5, returns to 0x02C3

label_02C3:
	// Incoming return from call to 0x0BF5 at 0x02C2
	// Inputs[4]
	// {
	//     @02C6  memory[0x40:0x60]
	//     @02C8  stack[-1]
	//     @02D9  memory[0x40:0x60]
	//     @02DE  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	// }
	02C3    5B  JUMPDEST
	02C4    60  PUSH1 0x40
	02C6    51  MLOAD
	02C7    80  DUP1
	02C8    82  DUP3
	02C9    60  PUSH1 0xff
	02CB    16  AND
	02CC    60  PUSH1 0xff
	02CE    16  AND
	02CF    81  DUP2
	02D0    52  MSTORE
	02D1    60  PUSH1 0x20
	02D3    01  ADD
	02D4    91  SWAP2
	02D5    50  POP
	02D6    50  POP
	02D7    60  PUSH1 0x40
	02D9    51  MLOAD
	02DA    80  DUP1
	02DB    91  SWAP2
	02DC    03  SUB
	02DD    90  SWAP1
	02DE    F3  *RETURN
	// Stack delta = -1
	// Outputs[2]
	// {
	//     @02D0  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = 0xff & 0xff & stack[-1]
	//     @02DE  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]];
	// }
	// Block terminates

label_02DF:
	// Incoming jump from 0x00B6, if 0x70a08231 == stack[-1]
	// Inputs[1] { @02E0  msg.value }
	02DF    5B  JUMPDEST
	02E0    34  CALLVALUE
	02E1    80  DUP1
	02E2    15  ISZERO
	02E3    61  PUSH2 0x02eb
	02E6    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @02E0  stack[0] = msg.value }
	// Block ends with conditional jump to 0x02eb, if !msg.value

label_02E7:
	// Incoming jump from 0x02E6, if not !msg.value
	// Inputs[1] { @02EA  memory[0x00:0x00] }
	02E7    60  PUSH1 0x00
	02E9    80  DUP1
	02EA    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @02EA  revert(memory[0x00:0x00]); }
	// Block terminates

label_02EB:
	// Incoming jump from 0x02E6, if !msg.value
	// Inputs[1] { @02F3  msg.data.length }
	02EB    5B  JUMPDEST
	02EC    50  POP
	02ED    61  PUSH2 0x032e
	02F0    60  PUSH1 0x04
	02F2    80  DUP1
	02F3    36  CALLDATASIZE
	02F4    03  SUB
	02F5    60  PUSH1 0x20
	02F7    81  DUP2
	02F8    10  LT
	02F9    15  ISZERO
	02FA    61  PUSH2 0x0302
	02FD    57  *JUMPI
	// Stack delta = +2
	// Outputs[3]
	// {
	//     @02ED  stack[-1] = 0x032e
	//     @02F0  stack[0] = 0x04
	//     @02F4  stack[1] = msg.data.length - 0x04
	// }
	// Block ends with conditional call to 0x0302, returns to 0x032E, if !(msg.data.length - 0x04 < 0x20)

label_02FE:
	// Incoming jump from 0x02FD, if not !(msg.data.length - 0x04 < 0x20)
	// Inputs[1] { @0301  memory[0x00:0x00] }
	02FE    60  PUSH1 0x00
	0300    80  DUP1
	0301    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0301  revert(memory[0x00:0x00]); }
	// Block terminates

label_0302:
	// Incoming call from 0x02FD, returns to 0x032E, if !(msg.data.length - 0x04 < 0x20)
	// Inputs[3]
	// {
	//     @0303  stack[-2]
	//     @0304  stack[-1]
	//     @0308  msg.data[stack[-2]:stack[-2] + 0x20]
	// }
	0302    5B  JUMPDEST
	0303    81  DUP2
	0304    01  ADD
	0305    90  SWAP1
	0306    80  DUP1
	0307    80  DUP1
	0308    35  CALLDATALOAD
	0309    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	031E    16  AND
	031F    90  SWAP1
	0320    60  PUSH1 0x20
	0322    01  ADD
	0323    90  SWAP1
	0324    92  SWAP3
	0325    91  SWAP2
	0326    90  SWAP1
	0327    50  POP
	0328    50  POP
	0329    50  POP
	032A    61  PUSH2 0x0c08
	032D    56  *JUMP
	// Stack delta = -1
	// Outputs[1] { @0324  stack[-2] = 0xffffffffffffffffffffffffffffffffffffffff & msg.data[stack[-2]:stack[-2] + 0x20] }
	// Block ends with unconditional jump to 0x0c08

label_032E:
	// Incoming return from call to 0x0302 at 0x02FD
	// Inputs[4]
	// {
	//     @0331  memory[0x40:0x60]
	//     @0333  stack[-1]
	//     @033E  memory[0x40:0x60]
	//     @0343  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	// }
	032E    5B  JUMPDEST
	032F    60  PUSH1 0x40
	0331    51  MLOAD
	0332    80  DUP1
	0333    82  DUP3
	0334    81  DUP2
	0335    52  MSTORE
	0336    60  PUSH1 0x20
	0338    01  ADD
	0339    91  SWAP2
	033A    50  POP
	033B    50  POP
	033C    60  PUSH1 0x40
	033E    51  MLOAD
	033F    80  DUP1
	0340    91  SWAP2
	0341    03  SUB
	0342    90  SWAP1
	0343    F3  *RETURN
	// Stack delta = -1
	// Outputs[2]
	// {
	//     @0335  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = stack[-1]
	//     @0343  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]];
	// }
	// Block terminates

label_0344:
	// Incoming jump from 0x00C1, if 0x79ba5097 == stack[-1]
	// Inputs[1] { @0345  msg.value }
	0344    5B  JUMPDEST
	0345    34  CALLVALUE
	0346    80  DUP1
	0347    15  ISZERO
	0348    61  PUSH2 0x0350
	034B    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @0345  stack[0] = msg.value }
	// Block ends with conditional jump to 0x0350, if !msg.value

label_034C:
	// Incoming jump from 0x034B, if not !msg.value
	// Inputs[1] { @034F  memory[0x00:0x00] }
	034C    60  PUSH1 0x00
	034E    80  DUP1
	034F    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @034F  revert(memory[0x00:0x00]); }
	// Block terminates

label_0350:
	// Incoming jump from 0x034B, if !msg.value
	0350    5B  JUMPDEST
	0351    50  POP
	0352    61  PUSH2 0x0359
	0355    61  PUSH2 0x0c51
	0358    56  *JUMP
	// Stack delta = +0
	// Outputs[1] { @0352  stack[-1] = 0x0359 }
	// Block ends with call to 0x0c51, returns to 0x0359

label_0359:
	// Incoming return from call to 0x0C51 at 0x0358
	0359    5B  JUMPDEST
	035A    00  *STOP
	// Stack delta = +0
	// Outputs[1] { @035A  stop(); }
	// Block terminates

label_035B:
	// Incoming jump from 0x0064, if 0x8da5cb5b == stack[-1]
	// Inputs[1] { @035C  msg.value }
	035B    5B  JUMPDEST
	035C    34  CALLVALUE
	035D    80  DUP1
	035E    15  ISZERO
	035F    61  PUSH2 0x0367
	0362    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @035C  stack[0] = msg.value }
	// Block ends with conditional jump to 0x0367, if !msg.value

label_0363:
	// Incoming jump from 0x0362, if not !msg.value
	// Inputs[1] { @0366  memory[0x00:0x00] }
	0363    60  PUSH1 0x00
	0365    80  DUP1
	0366    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0366  revert(memory[0x00:0x00]); }
	// Block terminates

label_0367:
	// Incoming jump from 0x0362, if !msg.value
	0367    5B  JUMPDEST
	0368    50  POP
	0369    61  PUSH2 0x0370
	036C    61  PUSH2 0x0dee
	036F    56  *JUMP
	// Stack delta = +0
	// Outputs[1] { @0369  stack[-1] = 0x0370 }
	// Block ends with call to 0x0dee, returns to 0x0370

label_0370:
	// Incoming return from call to 0x0DEE at 0x036F
	// Inputs[4]
	// {
	//     @0373  memory[0x40:0x60]
	//     @0375  stack[-1]
	//     @03AC  memory[0x40:0x60]
	//     @03B1  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	// }
	0370    5B  JUMPDEST
	0371    60  PUSH1 0x40
	0373    51  MLOAD
	0374    80  DUP1
	0375    82  DUP3
	0376    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	038B    16  AND
	038C    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	03A1    16  AND
	03A2    81  DUP2
	03A3    52  MSTORE
	03A4    60  PUSH1 0x20
	03A6    01  ADD
	03A7    91  SWAP2
	03A8    50  POP
	03A9    50  POP
	03AA    60  PUSH1 0x40
	03AC    51  MLOAD
	03AD    80  DUP1
	03AE    91  SWAP2
	03AF    03  SUB
	03B0    90  SWAP1
	03B1    F3  *RETURN
	// Stack delta = -1
	// Outputs[2]
	// {
	//     @03A3  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-1]
	//     @03B1  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]];
	// }
	// Block terminates

label_03B2:
	// Incoming jump from 0x006F, if 0x95d89b41 == stack[-1]
	// Inputs[1] { @03B3  msg.value }
	03B2    5B  JUMPDEST
	03B3    34  CALLVALUE
	03B4    80  DUP1
	03B5    15  ISZERO
	03B6    61  PUSH2 0x03be
	03B9    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @03B3  stack[0] = msg.value }
	// Block ends with conditional jump to 0x03be, if !msg.value

label_03BA:
	// Incoming jump from 0x03B9, if not !msg.value
	// Inputs[1] { @03BD  memory[0x00:0x00] }
	03BA    60  PUSH1 0x00
	03BC    80  DUP1
	03BD    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @03BD  revert(memory[0x00:0x00]); }
	// Block terminates

label_03BE:
	// Incoming jump from 0x03B9, if !msg.value
	03BE    5B  JUMPDEST
	03BF    50  POP
	03C0    61  PUSH2 0x03c7
	03C3    61  PUSH2 0x0e13
	03C6    56  *JUMP
	// Stack delta = +0
	// Outputs[1] { @03C0  stack[-1] = 0x03c7 }
	// Block ends with call to 0x0e13, returns to 0x03C7

label_03C7:
	// Incoming return from call to 0x0E13 at 0x03C6
	// Inputs[4]
	// {
	//     @03CA  memory[0x40:0x60]
	//     @03D5  stack[-1]
	//     @03D8  memory[stack[-1]:stack[-1] + 0x20]
	//     @03E1  memory[stack[-1]:stack[-1] + 0x20]
	// }
	03C7    5B  JUMPDEST
	03C8    60  PUSH1 0x40
	03CA    51  MLOAD
	03CB    80  DUP1
	03CC    80  DUP1
	03CD    60  PUSH1 0x20
	03CF    01  ADD
	03D0    82  DUP3
	03D1    81  DUP2
	03D2    03  SUB
	03D3    82  DUP3
	03D4    52  MSTORE
	03D5    83  DUP4
	03D6    81  DUP2
	03D7    81  DUP2
	03D8    51  MLOAD
	03D9    81  DUP2
	03DA    52  MSTORE
	03DB    60  PUSH1 0x20
	03DD    01  ADD
	03DE    91  SWAP2
	03DF    50  POP
	03E0    80  DUP1
	03E1    51  MLOAD
	03E2    90  SWAP1
	03E3    60  PUSH1 0x20
	03E5    01  ADD
	03E6    90  SWAP1
	03E7    80  DUP1
	03E8    83  DUP4
	03E9    83  DUP4
	03EA    60  PUSH1 0x00
	03EC    5B  JUMPDEST
	03ED    83  DUP4
	03EE    81  DUP2
	03EF    10  LT
	03F0    15  ISZERO
	03F1    61  PUSH2 0x0407
	03F4    57  *JUMPI
	// Stack delta = +9
	// Outputs[11]
	// {
	//     @03CA  stack[0] = memory[0x40:0x60]
	//     @03CB  stack[1] = memory[0x40:0x60]
	//     @03D4  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]
	//     @03DA  memory[0x20 + memory[0x40:0x60]:0x20 + memory[0x40:0x60] + 0x20] = memory[stack[-1]:stack[-1] + 0x20]
	//     @03DE  stack[2] = 0x20 + 0x20 + memory[0x40:0x60]
	//     @03E6  stack[4] = memory[stack[-1]:stack[-1] + 0x20]
	//     @03E6  stack[3] = 0x20 + stack[-1]
	//     @03E7  stack[5] = memory[stack[-1]:stack[-1] + 0x20]
	//     @03E8  stack[6] = 0x20 + 0x20 + memory[0x40:0x60]
	//     @03E9  stack[7] = 0x20 + stack[-1]
	//     @03EA  stack[8] = 0x00
	// }
	// Block ends with conditional jump to 0x0407, if !(0x00 < memory[stack[-1]:stack[-1] + 0x20])

label_03F5:
	// Incoming jump from 0x03F4, if not !(0x00 < memory[stack[-1]:stack[-1] + 0x20])
	// Incoming jump from 0x03F4, if not !(stack[-1] < stack[-4])
	// Inputs[4]
	// {
	//     @03F5  stack[-1]
	//     @03F6  stack[-2]
	//     @03F8  memory[stack[-2] + stack[-1]:stack[-2] + stack[-1] + 0x20]
	//     @03FA  stack[-3]
	// }
	03F5    80  DUP1
	03F6    82  DUP3
	03F7    01  ADD
	03F8    51  MLOAD
	03F9    81  DUP2
	03FA    84  DUP5
	03FB    01  ADD
	03FC    52  MSTORE
	03FD    60  PUSH1 0x20
	03FF    81  DUP2
	0400    01  ADD
	0401    90  SWAP1
	0402    50  POP
	0403    61  PUSH2 0x03ec
	0406    56  *JUMP
	// Stack delta = +0
	// Outputs[2]
	// {
	//     @03FC  memory[stack[-3] + stack[-1]:stack[-3] + stack[-1] + 0x20] = memory[stack[-2] + stack[-1]:stack[-2] + stack[-1] + 0x20]
	//     @0401  stack[-1] = stack[-1] + 0x20
	// }
	// Block ends with unconditional jump to 0x03ec

label_0407:
	// Incoming jump from 0x03F4, if !(0x00 < memory[stack[-1]:stack[-1] + 0x20])
	// Incoming jump from 0x03F4, if !(stack[-1] < stack[-4])
	// Inputs[3]
	// {
	//     @040C  stack[-6]
	//     @040C  stack[-5]
	//     @040E  stack[-7]
	// }
	0407    5B  JUMPDEST
	0408    50  POP
	0409    50  POP
	040A    50  POP
	040B    50  POP
	040C    90  SWAP1
	040D    50  POP
	040E    90  SWAP1
	040F    81  DUP2
	0410    01  ADD
	0411    90  SWAP1
	0412    60  PUSH1 0x1f
	0414    16  AND
	0415    80  DUP1
	0416    15  ISZERO
	0417    61  PUSH2 0x0434
	041A    57  *JUMPI
	// Stack delta = -5
	// Outputs[2]
	// {
	//     @0411  stack[-7] = stack[-5] + stack[-7]
	//     @0414  stack[-6] = 0x1f & stack[-5]
	// }
	// Block ends with conditional jump to 0x0434, if !(0x1f & stack[-5])

label_041B:
	// Incoming jump from 0x041A, if not !(0x1f & stack[-5])
	// Inputs[6]
	// {
	//     @041B  stack[-1]
	//     @041C  stack[-2]
	//     @041F  memory[stack[-2] - stack[-1]:stack[-2] - stack[-1] + 0x20]
	//     @0436  stack[-5]
	//     @043C  memory[0x40:0x60]
	//     @0441  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + (stack[-2] - stack[-1])) - memory[0x40:0x60]]
	// }
	041B    80  DUP1
	041C    82  DUP3
	041D    03  SUB
	041E    80  DUP1
	041F    51  MLOAD
	0420    60  PUSH1 0x01
	0422    83  DUP4
	0423    60  PUSH1 0x20
	0425    03  SUB
	0426    61  PUSH2 0x0100
	0429    0A  EXP
	042A    03  SUB
	042B    19  NOT
	042C    16  AND
	042D    81  DUP2
	042E    52  MSTORE
	042F    60  PUSH1 0x20
	0431    01  ADD
	0432    91  SWAP2
	0433    50  POP
	0434    5B  JUMPDEST
	0435    50  POP
	0436    92  SWAP3
	0437    50  POP
	0438    50  POP
	0439    50  POP
	043A    60  PUSH1 0x40
	043C    51  MLOAD
	043D    80  DUP1
	043E    91  SWAP2
	043F    03  SUB
	0440    90  SWAP1
	0441    F3  *RETURN
	// Stack delta = -5
	// Outputs[2]
	// {
	//     @042E  memory[stack[-2] - stack[-1]:stack[-2] - stack[-1] + 0x20] = ~(0x0100 ** (0x20 - stack[-1]) - 0x01) & memory[stack[-2] - stack[-1]:stack[-2] - stack[-1] + 0x20]
	//     @0441  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + (stack[-2] - stack[-1])) - memory[0x40:0x60]];
	// }
	// Block terminates

label_0442:
	// Incoming jump from 0x007A, if 0xa9059cbb == stack[-1]
	// Inputs[1] { @0443  msg.value }
	0442    5B  JUMPDEST
	0443    34  CALLVALUE
	0444    80  DUP1
	0445    15  ISZERO
	0446    61  PUSH2 0x044e
	0449    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @0443  stack[0] = msg.value }
	// Block ends with conditional jump to 0x044e, if !msg.value

label_044A:
	// Incoming jump from 0x0449, if not !msg.value
	// Inputs[1] { @044D  memory[0x00:0x00] }
	044A    60  PUSH1 0x00
	044C    80  DUP1
	044D    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @044D  revert(memory[0x00:0x00]); }
	// Block terminates

label_044E:
	// Incoming jump from 0x0449, if !msg.value
	// Inputs[1] { @0456  msg.data.length }
	044E    5B  JUMPDEST
	044F    50  POP
	0450    61  PUSH2 0x049b
	0453    60  PUSH1 0x04
	0455    80  DUP1
	0456    36  CALLDATASIZE
	0457    03  SUB
	0458    60  PUSH1 0x40
	045A    81  DUP2
	045B    10  LT
	045C    15  ISZERO
	045D    61  PUSH2 0x0465
	0460    57  *JUMPI
	// Stack delta = +2
	// Outputs[3]
	// {
	//     @0450  stack[-1] = 0x049b
	//     @0453  stack[0] = 0x04
	//     @0457  stack[1] = msg.data.length - 0x04
	// }
	// Block ends with conditional call to 0x0465, returns to 0x049B, if !(msg.data.length - 0x04 < 0x40)

label_0461:
	// Incoming jump from 0x0460, if not !(msg.data.length - 0x04 < 0x40)
	// Inputs[1] { @0464  memory[0x00:0x00] }
	0461    60  PUSH1 0x00
	0463    80  DUP1
	0464    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0464  revert(memory[0x00:0x00]); }
	// Block terminates

label_0465:
	// Incoming call from 0x0460, returns to 0x049B, if !(msg.data.length - 0x04 < 0x40)
	// Inputs[4]
	// {
	//     @0466  stack[-2]
	//     @0467  stack[-1]
	//     @046B  msg.data[stack[-2]:stack[-2] + 0x20]
	//     @048B  msg.data[0x20 + stack[-2]:0x20 + stack[-2] + 0x20]
	// }
	0465    5B  JUMPDEST
	0466    81  DUP2
	0467    01  ADD
	0468    90  SWAP1
	0469    80  DUP1
	046A    80  DUP1
	046B    35  CALLDATALOAD
	046C    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0481    16  AND
	0482    90  SWAP1
	0483    60  PUSH1 0x20
	0485    01  ADD
	0486    90  SWAP1
	0487    92  SWAP3
	0488    91  SWAP2
	0489    90  SWAP1
	048A    80  DUP1
	048B    35  CALLDATALOAD
	048C    90  SWAP1
	048D    60  PUSH1 0x20
	048F    01  ADD
	0490    90  SWAP1
	0491    92  SWAP3
	0492    91  SWAP2
	0493    90  SWAP1
	0494    50  POP
	0495    50  POP
	0496    50  POP
	0497    61  PUSH2 0x0eb1
	049A    56  *JUMP
	// Stack delta = +0
	// Outputs[2]
	// {
	//     @0487  stack[-2] = 0xffffffffffffffffffffffffffffffffffffffff & msg.data[stack[-2]:stack[-2] + 0x20]
	//     @0491  stack[-1] = msg.data[0x20 + stack[-2]:0x20 + stack[-2] + 0x20]
	// }
	// Block ends with unconditional jump to 0x0eb1

label_049B:
	// Incoming return from call to 0x0465 at 0x0460
	// Inputs[4]
	// {
	//     @049E  memory[0x40:0x60]
	//     @04A0  stack[-1]
	//     @04AF  memory[0x40:0x60]
	//     @04B4  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	// }
	049B    5B  JUMPDEST
	049C    60  PUSH1 0x40
	049E    51  MLOAD
	049F    80  DUP1
	04A0    82  DUP3
	04A1    15  ISZERO
	04A2    15  ISZERO
	04A3    15  ISZERO
	04A4    15  ISZERO
	04A5    81  DUP2
	04A6    52  MSTORE
	04A7    60  PUSH1 0x20
	04A9    01  ADD
	04AA    91  SWAP2
	04AB    50  POP
	04AC    50  POP
	04AD    60  PUSH1 0x40
	04AF    51  MLOAD
	04B0    80  DUP1
	04B1    91  SWAP2
	04B2    03  SUB
	04B3    90  SWAP1
	04B4    F3  *RETURN
	// Stack delta = -1
	// Outputs[2]
	// {
	//     @04A6  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = !!!!stack[-1]
	//     @04B4  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]];
	// }
	// Block terminates

label_04B5:
	// Incoming jump from 0x0085, if 0xcae9ca51 == stack[-1]
	// Inputs[1] { @04B6  msg.value }
	04B5    5B  JUMPDEST
	04B6    34  CALLVALUE
	04B7    80  DUP1
	04B8    15  ISZERO
	04B9    61  PUSH2 0x04c1
	04BC    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @04B6  stack[0] = msg.value }
	// Block ends with conditional jump to 0x04c1, if !msg.value

label_04BD:
	// Incoming jump from 0x04BC, if not !msg.value
	// Inputs[1] { @04C0  memory[0x00:0x00] }
	04BD    60  PUSH1 0x00
	04BF    80  DUP1
	04C0    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @04C0  revert(memory[0x00:0x00]); }
	// Block terminates

label_04C1:
	// Incoming jump from 0x04BC, if !msg.value
	// Inputs[1] { @04C9  msg.data.length }
	04C1    5B  JUMPDEST
	04C2    50  POP
	04C3    61  PUSH2 0x05a5
	04C6    60  PUSH1 0x04
	04C8    80  DUP1
	04C9    36  CALLDATASIZE
	04CA    03  SUB
	04CB    60  PUSH1 0x60
	04CD    81  DUP2
	04CE    10  LT
	04CF    15  ISZERO
	04D0    61  PUSH2 0x04d8
	04D3    57  *JUMPI
	// Stack delta = +2
	// Outputs[3]
	// {
	//     @04C3  stack[-1] = 0x05a5
	//     @04C6  stack[0] = 0x04
	//     @04CA  stack[1] = msg.data.length - 0x04
	// }
	// Block ends with conditional call to 0x04d8, returns to 0x05A5, if !(msg.data.length - 0x04 < 0x60)

label_04D4:
	// Incoming jump from 0x04D3, if not !(msg.data.length - 0x04 < 0x60)
	// Inputs[1] { @04D7  memory[0x00:0x00] }
	04D4    60  PUSH1 0x00
	04D6    80  DUP1
	04D7    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @04D7  revert(memory[0x00:0x00]); }
	// Block terminates

label_04D8:
	// Incoming call from 0x04D3, returns to 0x05A5, if !(msg.data.length - 0x04 < 0x60)
	// Inputs[5]
	// {
	//     @04D9  stack[-2]
	//     @04DA  stack[-1]
	//     @04DE  msg.data[stack[-2]:stack[-2] + 0x20]
	//     @04FE  msg.data[0x20 + stack[-2]:0x20 + stack[-2] + 0x20]
	//     @0508  msg.data[0x20 + 0x20 + stack[-2]:0x20 + 0x20 + stack[-2] + 0x20]
	// }
	04D8    5B  JUMPDEST
	04D9    81  DUP2
	04DA    01  ADD
	04DB    90  SWAP1
	04DC    80  DUP1
	04DD    80  DUP1
	04DE    35  CALLDATALOAD
	04DF    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	04F4    16  AND
	04F5    90  SWAP1
	04F6    60  PUSH1 0x20
	04F8    01  ADD
	04F9    90  SWAP1
	04FA    92  SWAP3
	04FB    91  SWAP2
	04FC    90  SWAP1
	04FD    80  DUP1
	04FE    35  CALLDATALOAD
	04FF    90  SWAP1
	0500    60  PUSH1 0x20
	0502    01  ADD
	0503    90  SWAP1
	0504    92  SWAP3
	0505    91  SWAP2
	0506    90  SWAP1
	0507    80  DUP1
	0508    35  CALLDATALOAD
	0509    90  SWAP1
	050A    60  PUSH1 0x20
	050C    01  ADD
	050D    90  SWAP1
	050E    64  PUSH5 0x0100000000
	0514    81  DUP2
	0515    11  GT
	0516    15  ISZERO
	0517    61  PUSH2 0x051f
	051A    57  *JUMPI
	// Stack delta = +4
	// Outputs[6]
	// {
	//     @04FA  stack[-2] = 0xffffffffffffffffffffffffffffffffffffffff & msg.data[stack[-2]:stack[-2] + 0x20]
	//     @0504  stack[-1] = msg.data[0x20 + stack[-2]:0x20 + stack[-2] + 0x20]
	//     @0505  stack[0] = stack[-2] + stack[-1]
	//     @0506  stack[1] = stack[-2]
	//     @050D  stack[3] = msg.data[0x20 + 0x20 + stack[-2]:0x20 + 0x20 + stack[-2] + 0x20]
	//     @050D  stack[2] = 0x20 + 0x20 + 0x20 + stack[-2]
	// }
	// Block ends with conditional jump to 0x051f, if !(msg.data[0x20 + 0x20 + stack[-2]:0x20 + 0x20 + stack[-2] + 0x20] > 0x0100000000)

label_051B:
	// Incoming jump from 0x051A, if not !(msg.data[0x20 + 0x20 + stack[-2]:0x20 + 0x20 + stack[-2] + 0x20] > 0x0100000000)
	// Inputs[1] { @051E  memory[0x00:0x00] }
	051B    60  PUSH1 0x00
	051D    80  DUP1
	051E    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @051E  revert(memory[0x00:0x00]); }
	// Block terminates

label_051F:
	// Incoming jump from 0x051A, if !(msg.data[0x20 + 0x20 + stack[-2]:0x20 + 0x20 + stack[-2] + 0x20] > 0x0100000000)
	// Inputs[3]
	// {
	//     @0520  stack[-3]
	//     @0521  stack[-1]
	//     @0522  stack[-4]
	// }
	051F    5B  JUMPDEST
	0520    82  DUP3
	0521    01  ADD
	0522    83  DUP4
	0523    60  PUSH1 0x20
	0525    82  DUP3
	0526    01  ADD
	0527    11  GT
	0528    15  ISZERO
	0529    61  PUSH2 0x0531
	052C    57  *JUMPI
	// Stack delta = +0
	// Outputs[1] { @0521  stack[-1] = stack[-3] + stack[-1] }
	// Block ends with conditional jump to 0x0531, if !(stack[-3] + stack[-1] + 0x20 > stack[-4])

label_052D:
	// Incoming jump from 0x052C, if not !(stack[-3] + stack[-1] + 0x20 > stack[-4])
	// Inputs[1] { @0530  memory[0x00:0x00] }
	052D    60  PUSH1 0x00
	052F    80  DUP1
	0530    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0530  revert(memory[0x00:0x00]); }
	// Block terminates

label_0531:
	// Incoming jump from 0x052C, if !(stack[-3] + stack[-1] + 0x20 > stack[-4])
	// Inputs[4]
	// {
	//     @0532  stack[-1]
	//     @0533  msg.data[stack[-1]:stack[-1] + 0x20]
	//     @0538  stack[-2]
	//     @0539  stack[-4]
	// }
	0531    5B  JUMPDEST
	0532    80  DUP1
	0533    35  CALLDATALOAD
	0534    90  SWAP1
	0535    60  PUSH1 0x20
	0537    01  ADD
	0538    91  SWAP2
	0539    84  DUP5
	053A    60  PUSH1 0x01
	053C    83  DUP4
	053D    02  MUL
	053E    84  DUP5
	053F    01  ADD
	0540    11  GT
	0541    64  PUSH5 0x0100000000
	0547    83  DUP4
	0548    11  GT
	0549    17  OR
	054A    15  ISZERO
	054B    61  PUSH2 0x0553
	054E    57  *JUMPI
	// Stack delta = +1
	// Outputs[3]
	// {
	//     @0534  stack[-1] = msg.data[stack[-1]:stack[-1] + 0x20]
	//     @0538  stack[0] = stack[-2]
	//     @0538  stack[-2] = 0x20 + stack[-1]
	// }
	// Block ends with conditional jump to 0x0553, if !((msg.data[stack[-1]:stack[-1] + 0x20] > 0x0100000000) | (0x20 + stack[-1] + msg.data[stack[-1]:stack[-1] + 0x20] * 0x01 > stack[-4]))

label_054F:
	// Incoming jump from 0x054E, if not !((msg.data[stack[-1]:stack[-1] + 0x20] > 0x0100000000) | (0x20 + stack[-1] + msg.data[stack[-1]:stack[-1] + 0x20] * 0x01 > stack[-4]))
	// Inputs[1] { @0552  memory[0x00:0x00] }
	054F    60  PUSH1 0x00
	0551    80  DUP1
	0552    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0552  revert(memory[0x00:0x00]); }
	// Block terminates

label_0553:
	// Incoming jump from 0x054E, if !((msg.data[stack[-1]:stack[-1] + 0x20] > 0x0100000000) | (0x20 + stack[-1] + msg.data[stack[-1]:stack[-1] + 0x20] * 0x01 > stack[-4]))
	// Inputs[7]
	// {
	//     @0554  stack[-3]
	//     @0554  stack[-1]
	//     @0555  stack[-2]
	//     @0566  memory[0x40:0x60]
	//     @057D  msg.data[stack[-3]:stack[-3] + stack[-2]]
	//     @0599  stack[-4]
	//     @059A  stack[-5]
	// }
	0553    5B  JUMPDEST
	0554    91  SWAP2
	0555    90  SWAP1
	0556    80  DUP1
	0557    80  DUP1
	0558    60  PUSH1 0x1f
	055A    01  ADD
	055B    60  PUSH1 0x20
	055D    80  DUP1
	055E    91  SWAP2
	055F    04  DIV
	0560    02  MUL
	0561    60  PUSH1 0x20
	0563    01  ADD
	0564    60  PUSH1 0x40
	0566    51  MLOAD
	0567    90  SWAP1
	0568    81  DUP2
	0569    01  ADD
	056A    60  PUSH1 0x40
	056C    52  MSTORE
	056D    80  DUP1
	056E    93  SWAP4
	056F    92  SWAP3
	0570    91  SWAP2
	0571    90  SWAP1
	0572    81  DUP2
	0573    81  DUP2
	0574    52  MSTORE
	0575    60  PUSH1 0x20
	0577    01  ADD
	0578    83  DUP4
	0579    83  DUP4
	057A    80  DUP1
	057B    82  DUP3
	057C    84  DUP5
	057D    37  CALLDATACOPY
	057E    60  PUSH1 0x00
	0580    81  DUP2
	0581    84  DUP5
	0582    01  ADD
	0583    52  MSTORE
	0584    60  PUSH1 0x1f
	0586    19  NOT
	0587    60  PUSH1 0x1f
	0589    82  DUP3
	058A    01  ADD
	058B    16  AND
	058C    90  SWAP1
	058D    50  POP
	058E    80  DUP1
	058F    83  DUP4
	0590    01  ADD
	0591    92  SWAP3
	0592    50  POP
	0593    50  POP
	0594    50  POP
	0595    50  POP
	0596    50  POP
	0597    50  POP
	0598    50  POP
	0599    91  SWAP2
	059A    92  SWAP3
	059B    91  SWAP2
	059C    92  SWAP3
	059D    90  SWAP1
	059E    50  POP
	059F    50  POP
	05A0    50  POP
	05A1    61  PUSH2 0x104c
	05A4    56  *JUMP
	// Stack delta = -4
	// Outputs[5]
	// {
	//     @056C  memory[0x40:0x60] = memory[0x40:0x60] + 0x20 + (0x1f + stack[-2]) / 0x20 * 0x20
	//     @0574  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = stack[-2]
	//     @057D  memory[0x20 + memory[0x40:0x60]:0x20 + memory[0x40:0x60] + stack[-2]] = msg.data[stack[-3]:stack[-3] + stack[-2]]
	//     @0583  memory[0x20 + memory[0x40:0x60] + stack[-2]:0x20 + memory[0x40:0x60] + stack[-2] + 0x20] = 0x00
	//     @059C  stack[-5] = memory[0x40:0x60]
	// }
	// Block ends with unconditional jump to 0x104c

label_05A5:
	// Incoming return from call to 0x04D8 at 0x04D3
	// Inputs[4]
	// {
	//     @05A8  memory[0x40:0x60]
	//     @05AA  stack[-1]
	//     @05B9  memory[0x40:0x60]
	//     @05BE  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	// }
	05A5    5B  JUMPDEST
	05A6    60  PUSH1 0x40
	05A8    51  MLOAD
	05A9    80  DUP1
	05AA    82  DUP3
	05AB    15  ISZERO
	05AC    15  ISZERO
	05AD    15  ISZERO
	05AE    15  ISZERO
	05AF    81  DUP2
	05B0    52  MSTORE
	05B1    60  PUSH1 0x20
	05B3    01  ADD
	05B4    91  SWAP2
	05B5    50  POP
	05B6    50  POP
	05B7    60  PUSH1 0x40
	05B9    51  MLOAD
	05BA    80  DUP1
	05BB    91  SWAP2
	05BC    03  SUB
	05BD    90  SWAP1
	05BE    F3  *RETURN
	// Stack delta = -1
	// Outputs[2]
	// {
	//     @05B0  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = !!!!stack[-1]
	//     @05BE  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]];
	// }
	// Block terminates

label_05BF:
	// Incoming jump from 0x0033, if 0xd4ee1d90 == stack[-1]
	// Inputs[1] { @05C0  msg.value }
	05BF    5B  JUMPDEST
	05C0    34  CALLVALUE
	05C1    80  DUP1
	05C2    15  ISZERO
	05C3    61  PUSH2 0x05cb
	05C6    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @05C0  stack[0] = msg.value }
	// Block ends with conditional jump to 0x05cb, if !msg.value

label_05C7:
	// Incoming jump from 0x05C6, if not !msg.value
	// Inputs[1] { @05CA  memory[0x00:0x00] }
	05C7    60  PUSH1 0x00
	05C9    80  DUP1
	05CA    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @05CA  revert(memory[0x00:0x00]); }
	// Block terminates

label_05CB:
	// Incoming jump from 0x05C6, if !msg.value
	05CB    5B  JUMPDEST
	05CC    50  POP
	05CD    61  PUSH2 0x05d4
	05D0    61  PUSH2 0x127f
	05D3    56  *JUMP
	// Stack delta = +0
	// Outputs[1] { @05CD  stack[-1] = 0x05d4 }
	// Block ends with call to 0x127f, returns to 0x05D4

label_05D4:
	// Incoming return from call to 0x127F at 0x05D3
	// Inputs[4]
	// {
	//     @05D7  memory[0x40:0x60]
	//     @05D9  stack[-1]
	//     @0610  memory[0x40:0x60]
	//     @0615  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	// }
	05D4    5B  JUMPDEST
	05D5    60  PUSH1 0x40
	05D7    51  MLOAD
	05D8    80  DUP1
	05D9    82  DUP3
	05DA    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	05EF    16  AND
	05F0    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0605    16  AND
	0606    81  DUP2
	0607    52  MSTORE
	0608    60  PUSH1 0x20
	060A    01  ADD
	060B    91  SWAP2
	060C    50  POP
	060D    50  POP
	060E    60  PUSH1 0x40
	0610    51  MLOAD
	0611    80  DUP1
	0612    91  SWAP2
	0613    03  SUB
	0614    90  SWAP1
	0615    F3  *RETURN
	// Stack delta = -1
	// Outputs[2]
	// {
	//     @0607  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-1]
	//     @0615  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]];
	// }
	// Block terminates

label_0616:
	// Incoming jump from 0x003E, if 0xdc39d06d == stack[-1]
	// Inputs[1] { @0617  msg.value }
	0616    5B  JUMPDEST
	0617    34  CALLVALUE
	0618    80  DUP1
	0619    15  ISZERO
	061A    61  PUSH2 0x0622
	061D    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @0617  stack[0] = msg.value }
	// Block ends with conditional jump to 0x0622, if !msg.value

label_061E:
	// Incoming jump from 0x061D, if not !msg.value
	// Inputs[1] { @0621  memory[0x00:0x00] }
	061E    60  PUSH1 0x00
	0620    80  DUP1
	0621    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0621  revert(memory[0x00:0x00]); }
	// Block terminates

label_0622:
	// Incoming jump from 0x061D, if !msg.value
	// Inputs[1] { @062A  msg.data.length }
	0622    5B  JUMPDEST
	0623    50  POP
	0624    61  PUSH2 0x066f
	0627    60  PUSH1 0x04
	0629    80  DUP1
	062A    36  CALLDATASIZE
	062B    03  SUB
	062C    60  PUSH1 0x40
	062E    81  DUP2
	062F    10  LT
	0630    15  ISZERO
	0631    61  PUSH2 0x0639
	0634    57  *JUMPI
	// Stack delta = +2
	// Outputs[3]
	// {
	//     @0624  stack[-1] = 0x066f
	//     @0627  stack[0] = 0x04
	//     @062B  stack[1] = msg.data.length - 0x04
	// }
	// Block ends with conditional call to 0x0639, returns to 0x066F, if !(msg.data.length - 0x04 < 0x40)

label_0635:
	// Incoming jump from 0x0634, if not !(msg.data.length - 0x04 < 0x40)
	// Inputs[1] { @0638  memory[0x00:0x00] }
	0635    60  PUSH1 0x00
	0637    80  DUP1
	0638    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0638  revert(memory[0x00:0x00]); }
	// Block terminates

label_0639:
	// Incoming call from 0x0634, returns to 0x066F, if !(msg.data.length - 0x04 < 0x40)
	// Inputs[4]
	// {
	//     @063A  stack[-2]
	//     @063B  stack[-1]
	//     @063F  msg.data[stack[-2]:stack[-2] + 0x20]
	//     @065F  msg.data[0x20 + stack[-2]:0x20 + stack[-2] + 0x20]
	// }
	0639    5B  JUMPDEST
	063A    81  DUP2
	063B    01  ADD
	063C    90  SWAP1
	063D    80  DUP1
	063E    80  DUP1
	063F    35  CALLDATALOAD
	0640    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0655    16  AND
	0656    90  SWAP1
	0657    60  PUSH1 0x20
	0659    01  ADD
	065A    90  SWAP1
	065B    92  SWAP3
	065C    91  SWAP2
	065D    90  SWAP1
	065E    80  DUP1
	065F    35  CALLDATALOAD
	0660    90  SWAP1
	0661    60  PUSH1 0x20
	0663    01  ADD
	0664    90  SWAP1
	0665    92  SWAP3
	0666    91  SWAP2
	0667    90  SWAP1
	0668    50  POP
	0669    50  POP
	066A    50  POP
	066B    61  PUSH2 0x12a5
	066E    56  *JUMP
	// Stack delta = +0
	// Outputs[2]
	// {
	//     @065B  stack[-2] = 0xffffffffffffffffffffffffffffffffffffffff & msg.data[stack[-2]:stack[-2] + 0x20]
	//     @0665  stack[-1] = msg.data[0x20 + stack[-2]:0x20 + stack[-2] + 0x20]
	// }
	// Block ends with unconditional jump to 0x12a5

label_066F:
	// Incoming return from call to 0x0639 at 0x0634
	// Inputs[4]
	// {
	//     @0672  memory[0x40:0x60]
	//     @0674  stack[-1]
	//     @0683  memory[0x40:0x60]
	//     @0688  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	// }
	066F    5B  JUMPDEST
	0670    60  PUSH1 0x40
	0672    51  MLOAD
	0673    80  DUP1
	0674    82  DUP3
	0675    15  ISZERO
	0676    15  ISZERO
	0677    15  ISZERO
	0678    15  ISZERO
	0679    81  DUP2
	067A    52  MSTORE
	067B    60  PUSH1 0x20
	067D    01  ADD
	067E    91  SWAP2
	067F    50  POP
	0680    50  POP
	0681    60  PUSH1 0x40
	0683    51  MLOAD
	0684    80  DUP1
	0685    91  SWAP2
	0686    03  SUB
	0687    90  SWAP1
	0688    F3  *RETURN
	// Stack delta = -1
	// Outputs[2]
	// {
	//     @067A  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = !!!!stack[-1]
	//     @0688  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]];
	// }
	// Block terminates

label_0689:
	// Incoming jump from 0x0049, if 0xdd62ed3e == stack[-1]
	// Inputs[1] { @068A  msg.value }
	0689    5B  JUMPDEST
	068A    34  CALLVALUE
	068B    80  DUP1
	068C    15  ISZERO
	068D    61  PUSH2 0x0695
	0690    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @068A  stack[0] = msg.value }
	// Block ends with conditional jump to 0x0695, if !msg.value

label_0691:
	// Incoming jump from 0x0690, if not !msg.value
	// Inputs[1] { @0694  memory[0x00:0x00] }
	0691    60  PUSH1 0x00
	0693    80  DUP1
	0694    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0694  revert(memory[0x00:0x00]); }
	// Block terminates

label_0695:
	// Incoming jump from 0x0690, if !msg.value
	// Inputs[1] { @069D  msg.data.length }
	0695    5B  JUMPDEST
	0696    50  POP
	0697    61  PUSH2 0x06f8
	069A    60  PUSH1 0x04
	069C    80  DUP1
	069D    36  CALLDATASIZE
	069E    03  SUB
	069F    60  PUSH1 0x40
	06A1    81  DUP2
	06A2    10  LT
	06A3    15  ISZERO
	06A4    61  PUSH2 0x06ac
	06A7    57  *JUMPI
	// Stack delta = +2
	// Outputs[3]
	// {
	//     @0697  stack[-1] = 0x06f8
	//     @069A  stack[0] = 0x04
	//     @069E  stack[1] = msg.data.length - 0x04
	// }
	// Block ends with conditional call to 0x06ac, returns to 0x06F8, if !(msg.data.length - 0x04 < 0x40)

label_06A8:
	// Incoming jump from 0x06A7, if not !(msg.data.length - 0x04 < 0x40)
	// Inputs[1] { @06AB  memory[0x00:0x00] }
	06A8    60  PUSH1 0x00
	06AA    80  DUP1
	06AB    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @06AB  revert(memory[0x00:0x00]); }
	// Block terminates

label_06AC:
	// Incoming call from 0x06A7, returns to 0x06F8, if !(msg.data.length - 0x04 < 0x40)
	// Inputs[4]
	// {
	//     @06AD  stack[-2]
	//     @06AE  stack[-1]
	//     @06B2  msg.data[stack[-2]:stack[-2] + 0x20]
	//     @06D2  msg.data[0x20 + stack[-2]:0x20 + stack[-2] + 0x20]
	// }
	06AC    5B  JUMPDEST
	06AD    81  DUP2
	06AE    01  ADD
	06AF    90  SWAP1
	06B0    80  DUP1
	06B1    80  DUP1
	06B2    35  CALLDATALOAD
	06B3    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	06C8    16  AND
	06C9    90  SWAP1
	06CA    60  PUSH1 0x20
	06CC    01  ADD
	06CD    90  SWAP1
	06CE    92  SWAP3
	06CF    91  SWAP2
	06D0    90  SWAP1
	06D1    80  DUP1
	06D2    35  CALLDATALOAD
	06D3    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	06E8    16  AND
	06E9    90  SWAP1
	06EA    60  PUSH1 0x20
	06EC    01  ADD
	06ED    90  SWAP1
	06EE    92  SWAP3
	06EF    91  SWAP2
	06F0    90  SWAP1
	06F1    50  POP
	06F2    50  POP
	06F3    50  POP
	06F4    61  PUSH2 0x13eb
	06F7    56  *JUMP
	// Stack delta = +0
	// Outputs[2]
	// {
	//     @06CE  stack[-2] = 0xffffffffffffffffffffffffffffffffffffffff & msg.data[stack[-2]:stack[-2] + 0x20]
	//     @06EE  stack[-1] = 0xffffffffffffffffffffffffffffffffffffffff & msg.data[0x20 + stack[-2]:0x20 + stack[-2] + 0x20]
	// }
	// Block ends with unconditional jump to 0x13eb

label_06F8:
	// Incoming return from call to 0x06AC at 0x06A7
	// Inputs[4]
	// {
	//     @06FB  memory[0x40:0x60]
	//     @06FD  stack[-1]
	//     @0708  memory[0x40:0x60]
	//     @070D  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	// }
	06F8    5B  JUMPDEST
	06F9    60  PUSH1 0x40
	06FB    51  MLOAD
	06FC    80  DUP1
	06FD    82  DUP3
	06FE    81  DUP2
	06FF    52  MSTORE
	0700    60  PUSH1 0x20
	0702    01  ADD
	0703    91  SWAP2
	0704    50  POP
	0705    50  POP
	0706    60  PUSH1 0x40
	0708    51  MLOAD
	0709    80  DUP1
	070A    91  SWAP2
	070B    03  SUB
	070C    90  SWAP1
	070D    F3  *RETURN
	// Stack delta = -1
	// Outputs[2]
	// {
	//     @06FF  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = stack[-1]
	//     @070D  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]];
	// }
	// Block terminates

label_070E:
	// Incoming jump from 0x0054, if 0xf2fde38b == stack[-1]
	// Inputs[1] { @070F  msg.value }
	070E    5B  JUMPDEST
	070F    34  CALLVALUE
	0710    80  DUP1
	0711    15  ISZERO
	0712    61  PUSH2 0x071a
	0715    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @070F  stack[0] = msg.value }
	// Block ends with conditional jump to 0x071a, if !msg.value

label_0716:
	// Incoming jump from 0x0715, if not !msg.value
	// Inputs[1] { @0719  memory[0x00:0x00] }
	0716    60  PUSH1 0x00
	0718    80  DUP1
	0719    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0719  revert(memory[0x00:0x00]); }
	// Block terminates

label_071A:
	// Incoming jump from 0x0715, if !msg.value
	// Inputs[1] { @0722  msg.data.length }
	071A    5B  JUMPDEST
	071B    50  POP
	071C    61  PUSH2 0x075d
	071F    60  PUSH1 0x04
	0721    80  DUP1
	0722    36  CALLDATASIZE
	0723    03  SUB
	0724    60  PUSH1 0x20
	0726    81  DUP2
	0727    10  LT
	0728    15  ISZERO
	0729    61  PUSH2 0x0731
	072C    57  *JUMPI
	// Stack delta = +2
	// Outputs[3]
	// {
	//     @071C  stack[-1] = 0x075d
	//     @071F  stack[0] = 0x04
	//     @0723  stack[1] = msg.data.length - 0x04
	// }
	// Block ends with conditional call to 0x0731, returns to 0x075D, if !(msg.data.length - 0x04 < 0x20)

label_072D:
	// Incoming jump from 0x072C, if not !(msg.data.length - 0x04 < 0x20)
	// Inputs[1] { @0730  memory[0x00:0x00] }
	072D    60  PUSH1 0x00
	072F    80  DUP1
	0730    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0730  revert(memory[0x00:0x00]); }
	// Block terminates

label_0731:
	// Incoming call from 0x072C, returns to 0x075D, if !(msg.data.length - 0x04 < 0x20)
	// Inputs[3]
	// {
	//     @0732  stack[-2]
	//     @0733  stack[-1]
	//     @0737  msg.data[stack[-2]:stack[-2] + 0x20]
	// }
	0731    5B  JUMPDEST
	0732    81  DUP2
	0733    01  ADD
	0734    90  SWAP1
	0735    80  DUP1
	0736    80  DUP1
	0737    35  CALLDATALOAD
	0738    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	074D    16  AND
	074E    90  SWAP1
	074F    60  PUSH1 0x20
	0751    01  ADD
	0752    90  SWAP1
	0753    92  SWAP3
	0754    91  SWAP2
	0755    90  SWAP1
	0756    50  POP
	0757    50  POP
	0758    50  POP
	0759    61  PUSH2 0x1472
	075C    56  *JUMP
	// Stack delta = -1
	// Outputs[1] { @0753  stack[-2] = 0xffffffffffffffffffffffffffffffffffffffff & msg.data[stack[-2]:stack[-2] + 0x20] }
	// Block ends with unconditional jump to 0x1472

label_075D:
	// Incoming return from call to 0x0731 at 0x072C
	075D    5B  JUMPDEST
	075E    00  *STOP
	// Stack delta = +0
	// Outputs[1] { @075E  stop(); }
	// Block terminates

label_075F:
	// Incoming call from 0x0101, returns to 0x0102
	// Inputs[3]
	// {
	//     @0763  storage[0x03]
	//     @0784  memory[0x40:0x60]
	//     @0797  storage[0x03]
	// }
	075F    5B  JUMPDEST
	0760    60  PUSH1 0x03
	0762    80  DUP1
	0763    54  SLOAD
	0764    60  PUSH1 0x01
	0766    81  DUP2
	0767    60  PUSH1 0x01
	0769    16  AND
	076A    15  ISZERO
	076B    61  PUSH2 0x0100
	076E    02  MUL
	076F    03  SUB
	0770    16  AND
	0771    60  PUSH1 0x02
	0773    90  SWAP1
	0774    04  DIV
	0775    80  DUP1
	0776    60  PUSH1 0x1f
	0778    01  ADD
	0779    60  PUSH1 0x20
	077B    80  DUP1
	077C    91  SWAP2
	077D    04  DIV
	077E    02  MUL
	077F    60  PUSH1 0x20
	0781    01  ADD
	0782    60  PUSH1 0x40
	0784    51  MLOAD
	0785    90  SWAP1
	0786    81  DUP2
	0787    01  ADD
	0788    60  PUSH1 0x40
	078A    52  MSTORE
	078B    80  DUP1
	078C    92  SWAP3
	078D    91  SWAP2
	078E    90  SWAP1
	078F    81  DUP2
	0790    81  DUP2
	0791    52  MSTORE
	0792    60  PUSH1 0x20
	0794    01  ADD
	0795    82  DUP3
	0796    80  DUP1
	0797    54  SLOAD
	0798    60  PUSH1 0x01
	079A    81  DUP2
	079B    60  PUSH1 0x01
	079D    16  AND
	079E    15  ISZERO
	079F    61  PUSH2 0x0100
	07A2    02  MUL
	07A3    03  SUB
	07A4    16  AND
	07A5    60  PUSH1 0x02
	07A7    90  SWAP1
	07A8    04  DIV
	07A9    80  DUP1
	07AA    15  ISZERO
	07AB    61  PUSH2 0x07f5
	07AE    57  *JUMPI
	// Stack delta = +6
	// Outputs[8]
	// {
	//     @078A  memory[0x40:0x60] = memory[0x40:0x60] + 0x20 + (0x1f + (0x0100 * !(0x01 & storage[0x03]) - 0x01 & storage[0x03]) / 0x02) / 0x20 * 0x20
	//     @078C  stack[0] = memory[0x40:0x60]
	//     @078D  stack[1] = 0x03
	//     @078E  stack[2] = (0x0100 * !(0x01 & storage[0x03]) - 0x01 & storage[0x03]) / 0x02
	//     @0791  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = (0x0100 * !(0x01 & storage[0x03]) - 0x01 & storage[0x03]) / 0x02
	//     @0794  stack[3] = 0x20 + memory[0x40:0x60]
	//     @0795  stack[4] = 0x03
	//     @07A8  stack[5] = (0x0100 * !(0x01 & storage[0x03]) - 0x01 & storage[0x03]) / 0x02
	// }
	// Block ends with conditional jump to 0x07f5, if !((0x0100 * !(0x01 & storage[0x03]) - 0x01 & storage[0x03]) / 0x02)

label_07AF:
	// Incoming jump from 0x07AE, if not !((0x0100 * !(0x01 & storage[0x03]) - 0x01 & storage[0x03]) / 0x02)
	// Inputs[1] { @07AF  stack[-1] }
	07AF    80  DUP1
	07B0    60  PUSH1 0x1f
	07B2    10  LT
	07B3    61  PUSH2 0x07ca
	07B6    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x07ca, if 0x1f < stack[-1]

label_07B7:
	// Incoming jump from 0x07B6, if not 0x1f < stack[-1]
	// Inputs[4]
	// {
	//     @07BB  stack[-2]
	//     @07BC  storage[stack[-2]]
	//     @07BF  stack[-3]
	//     @07C1  stack[-1]
	// }
	07B7    61  PUSH2 0x0100
	07BA    80  DUP1
	07BB    83  DUP4
	07BC    54  SLOAD
	07BD    04  DIV
	07BE    02  MUL
	07BF    83  DUP4
	07C0    52  MSTORE
	07C1    91  SWAP2
	07C2    60  PUSH1 0x20
	07C4    01  ADD
	07C5    91  SWAP2
	07C6    61  PUSH2 0x07f5
	07C9    56  *JUMP
	// Stack delta = +0
	// Outputs[3]
	// {
	//     @07C0  memory[stack[-3]:stack[-3] + 0x20] = storage[stack[-2]] / 0x0100 * 0x0100
	//     @07C5  stack[-1] = stack[-1]
	//     @07C5  stack[-3] = 0x20 + stack[-3]
	// }
	// Block ends with unconditional jump to 0x07f5

label_07CA:
	// Incoming jump from 0x07B6, if 0x1f < stack[-1]
	// Inputs[5]
	// {
	//     @07CB  stack[-3]
	//     @07CC  stack[-1]
	//     @07CE  stack[-2]
	//     @07D6  memory[0x00:0x20]
	//     @07DA  storage[keccak256(memory[0x00:0x20])]
	// }
	07CA    5B  JUMPDEST
	07CB    82  DUP3
	07CC    01  ADD
	07CD    91  SWAP2
	07CE    90  SWAP1
	07CF    60  PUSH1 0x00
	07D1    52  MSTORE
	07D2    60  PUSH1 0x20
	07D4    60  PUSH1 0x00
	07D6    20  SHA3
	07D7    90  SWAP1
	07D8    5B  JUMPDEST
	07D9    81  DUP2
	07DA    54  SLOAD
	07DB    81  DUP2
	07DC    52  MSTORE
	07DD    90  SWAP1
	07DE    60  PUSH1 0x01
	07E0    01  ADD
	07E1    90  SWAP1
	07E2    60  PUSH1 0x20
	07E4    01  ADD
	07E5    80  DUP1
	07E6    83  DUP4
	07E7    11  GT
	07E8    61  PUSH2 0x07d8
	07EB    57  *JUMPI
	// Stack delta = +0
	// Outputs[5]
	// {
	//     @07CD  stack[-3] = stack[-3] + stack[-1]
	//     @07D1  memory[0x00:0x20] = stack[-2]
	//     @07DC  memory[stack[-3]:stack[-3] + 0x20] = storage[keccak256(memory[0x00:0x20])]
	//     @07E1  stack[-2] = 0x01 + keccak256(memory[0x00:0x20])
	//     @07E4  stack[-1] = 0x20 + stack[-3]
	// }
	// Block ends with conditional jump to 0x07d8, if stack[-3] + stack[-1] > 0x20 + stack[-3]

label_07EC:
	// Incoming jump from 0x07EB, if not stack[-3] + stack[-1] > 0x20 + stack[-3]
	// Incoming jump from 0x07EB, if not stack[-3] > 0x20 + stack[-1]
	// Inputs[2]
	// {
	//     @07EC  stack[-3]
	//     @07ED  stack[-1]
	// }
	07EC    82  DUP3
	07ED    90  SWAP1
	07EE    03  SUB
	07EF    60  PUSH1 0x1f
	07F1    16  AND
	07F2    82  DUP3
	07F3    01  ADD
	07F4    91  SWAP2
	// Stack delta = +0
	// Outputs[2]
	// {
	//     @07F4  stack[-3] = stack[-3] + (0x1f & stack[-1] - stack[-3])
	//     @07F4  stack[-1] = stack[-3]
	// }
	// Block continues

label_07F5:
	// Incoming jump from 0x07AE, if !((0x0100 * !(0x01 & storage[0x03]) - 0x01 & storage[0x03]) / 0x02)
	// Incoming jump from 0x07C9
	// Incoming jump from 0x07F4
	// Inputs[1] { @07FB  stack[-7] }
	07F5    5B  JUMPDEST
	07F6    50  POP
	07F7    50  POP
	07F8    50  POP
	07F9    50  POP
	07FA    50  POP
	07FB    81  DUP2
	07FC    56  *JUMP
	// Stack delta = -5
	// Block ends with unconditional jump to stack[-7]

label_07FD:
	// Incoming jump from 0x01D5
	// Inputs[10]
	// {
	//     @0800  stack[-1]
	//     @0805  msg.sender
	//     @083F  memory[0x00:0x40]
	//     @0842  stack[-2]
	//     @087C  memory[0x00:0x40]
	//     @0898  msg.sender
	//     @08D3  memory[0x40:0x60]
	//     @08E0  memory[0x40:0x60]
	//     @08E5  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	//     @08EA  stack[-3]
	// }
	07FD    5B  JUMPDEST
	07FE    60  PUSH1 0x00
	0800    81  DUP2
	0801    60  PUSH1 0x07
	0803    60  PUSH1 0x00
	0805    33  CALLER
	0806    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	081B    16  AND
	081C    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0831    16  AND
	0832    81  DUP2
	0833    52  MSTORE
	0834    60  PUSH1 0x20
	0836    01  ADD
	0837    90  SWAP1
	0838    81  DUP2
	0839    52  MSTORE
	083A    60  PUSH1 0x20
	083C    01  ADD
	083D    60  PUSH1 0x00
	083F    20  SHA3
	0840    60  PUSH1 0x00
	0842    85  DUP6
	0843    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0858    16  AND
	0859    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	086E    16  AND
	086F    81  DUP2
	0870    52  MSTORE
	0871    60  PUSH1 0x20
	0873    01  ADD
	0874    90  SWAP1
	0875    81  DUP2
	0876    52  MSTORE
	0877    60  PUSH1 0x20
	0879    01  ADD
	087A    60  PUSH1 0x00
	087C    20  SHA3
	087D    81  DUP2
	087E    90  SWAP1
	087F    55  SSTORE
	0880    50  POP
	0881    82  DUP3
	0882    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0897    16  AND
	0898    33  CALLER
	0899    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	08AE    16  AND
	08AF    7F  PUSH32 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
	08D0    84  DUP5
	08D1    60  PUSH1 0x40
	08D3    51  MLOAD
	08D4    80  DUP1
	08D5    82  DUP3
	08D6    81  DUP2
	08D7    52  MSTORE
	08D8    60  PUSH1 0x20
	08DA    01  ADD
	08DB    91  SWAP2
	08DC    50  POP
	08DD    50  POP
	08DE    60  PUSH1 0x40
	08E0    51  MLOAD
	08E1    80  DUP1
	08E2    91  SWAP2
	08E3    03  SUB
	08E4    90  SWAP1
	08E5    A3  LOG3
	08E6    60  PUSH1 0x01
	08E8    90  SWAP1
	08E9    50  POP
	08EA    92  SWAP3
	08EB    91  SWAP2
	08EC    50  POP
	08ED    50  POP
	08EE    56  *JUMP
	// Stack delta = -2
	// Outputs[8]
	// {
	//     @0833  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & msg.sender
	//     @0839  memory[0x20:0x40] = 0x07
	//     @0870  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-2]
	//     @0876  memory[0x20:0x40] = keccak256(memory[0x00:0x40])
	//     @087F  storage[keccak256(memory[0x00:0x40])] = stack[-1]
	//     @08D7  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = stack[-1]
	//     @08E5  log(memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]], [0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925, msg.sender, stack[-2] & 0xffffffffffffffffffffffffffffffffffffffff]);
	//     @08EA  stack[-3] = 0x01
	// }
	// Block ends with unconditional jump to stack[-3]

label_08EF:
	// Incoming call from 0x0204, returns to 0x0205
	// Inputs[3]
	// {
	//     @0933  memory[0x00:0x40]
	//     @0934  storage[keccak256(memory[0x00:0x40])]
	//     @0937  storage[0x05]
	// }
	08EF    5B  JUMPDEST
	08F0    60  PUSH1 0x00
	08F2    61  PUSH2 0x0945
	08F5    60  PUSH1 0x06
	08F7    60  PUSH1 0x00
	08F9    80  DUP1
	08FA    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	090F    16  AND
	0910    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0925    16  AND
	0926    81  DUP2
	0927    52  MSTORE
	0928    60  PUSH1 0x20
	092A    01  ADD
	092B    90  SWAP1
	092C    81  DUP2
	092D    52  MSTORE
	092E    60  PUSH1 0x20
	0930    01  ADD
	0931    60  PUSH1 0x00
	0933    20  SHA3
	0934    54  SLOAD
	0935    60  PUSH1 0x05
	0937    54  SLOAD
	0938    61  PUSH2 0x150f
	093B    90  SWAP1
	093C    91  SWAP2
	093D    90  SWAP1
	093E    63  PUSH4 0xffffffff
	0943    16  AND
	0944    56  *JUMP
	// Stack delta = +4
	// Outputs[6]
	// {
	//     @08F0  stack[0] = 0x00
	//     @08F2  stack[1] = 0x0945
	//     @0927  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & 0x00
	//     @092D  memory[0x20:0x40] = 0x06
	//     @093C  stack[2] = storage[0x05]
	//     @093D  stack[3] = storage[keccak256(memory[0x00:0x40])]
	// }
	// Block ends with call to 0xffffffff & 0x150f, returns to 0x0945

label_0945:
	// Incoming return from call to 0x150F at 0x0944
	// Inputs[3]
	// {
	//     @0946  stack[-2]
	//     @0946  stack[-1]
	//     @0948  stack[-3]
	// }
	0945    5B  JUMPDEST
	0946    90  SWAP1
	0947    50  POP
	0948    90  SWAP1
	0949    56  *JUMP
	// Stack delta = -2
	// Outputs[1] { @0948  stack[-3] = stack[-1] }
	// Block ends with unconditional jump to stack[-3]

label_094A:
	// Incoming jump from 0x0293
	// Inputs[4]
	// {
	//     @0950  stack[-1]
	//     @0955  stack[-3]
	//     @098F  memory[0x00:0x40]
	//     @0990  storage[keccak256(memory[0x00:0x40])]
	// }
	094A    5B  JUMPDEST
	094B    60  PUSH1 0x00
	094D    61  PUSH2 0x099e
	0950    82  DUP3
	0951    60  PUSH1 0x06
	0953    60  PUSH1 0x00
	0955    87  DUP8
	0956    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	096B    16  AND
	096C    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0981    16  AND
	0982    81  DUP2
	0983    52  MSTORE
	0984    60  PUSH1 0x20
	0986    01  ADD
	0987    90  SWAP1
	0988    81  DUP2
	0989    52  MSTORE
	098A    60  PUSH1 0x20
	098C    01  ADD
	098D    60  PUSH1 0x00
	098F    20  SHA3
	0990    54  SLOAD
	0991    61  PUSH2 0x150f
	0994    90  SWAP1
	0995    91  SWAP2
	0996    90  SWAP1
	0997    63  PUSH4 0xffffffff
	099C    16  AND
	099D    56  *JUMP
	// Stack delta = +4
	// Outputs[6]
	// {
	//     @094B  stack[0] = 0x00
	//     @094D  stack[1] = 0x099e
	//     @0983  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-3]
	//     @0989  memory[0x20:0x40] = 0x06
	//     @0995  stack[2] = storage[keccak256(memory[0x00:0x40])]
	//     @0996  stack[3] = stack[-1]
	// }
	// Block ends with call to 0xffffffff & 0x150f, returns to 0x099E

label_099E:
	// Incoming return from call to 0x150F at 0x099D
	// Inputs[8]
	// {
	//     @09A3  stack[-5]
	//     @09DD  memory[0x00:0x40]
	//     @09DE  stack[-1]
	//     @09E5  stack[-3]
	//     @0A24  memory[0x00:0x40]
	//     @0A27  msg.sender
	//     @0A61  memory[0x00:0x40]
	//     @0A62  storage[keccak256(memory[0x00:0x40])]
	// }
	099E    5B  JUMPDEST
	099F    60  PUSH1 0x06
	09A1    60  PUSH1 0x00
	09A3    86  DUP7
	09A4    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	09B9    16  AND
	09BA    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	09CF    16  AND
	09D0    81  DUP2
	09D1    52  MSTORE
	09D2    60  PUSH1 0x20
	09D4    01  ADD
	09D5    90  SWAP1
	09D6    81  DUP2
	09D7    52  MSTORE
	09D8    60  PUSH1 0x20
	09DA    01  ADD
	09DB    60  PUSH1 0x00
	09DD    20  SHA3
	09DE    81  DUP2
	09DF    90  SWAP1
	09E0    55  SSTORE
	09E1    50  POP
	09E2    61  PUSH2 0x0a70
	09E5    82  DUP3
	09E6    60  PUSH1 0x07
	09E8    60  PUSH1 0x00
	09EA    87  DUP8
	09EB    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0A00    16  AND
	0A01    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0A16    16  AND
	0A17    81  DUP2
	0A18    52  MSTORE
	0A19    60  PUSH1 0x20
	0A1B    01  ADD
	0A1C    90  SWAP1
	0A1D    81  DUP2
	0A1E    52  MSTORE
	0A1F    60  PUSH1 0x20
	0A21    01  ADD
	0A22    60  PUSH1 0x00
	0A24    20  SHA3
	0A25    60  PUSH1 0x00
	0A27    33  CALLER
	0A28    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0A3D    16  AND
	0A3E    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0A53    16  AND
	0A54    81  DUP2
	0A55    52  MSTORE
	0A56    60  PUSH1 0x20
	0A58    01  ADD
	0A59    90  SWAP1
	0A5A    81  DUP2
	0A5B    52  MSTORE
	0A5C    60  PUSH1 0x20
	0A5E    01  ADD
	0A5F    60  PUSH1 0x00
	0A61    20  SHA3
	0A62    54  SLOAD
	0A63    61  PUSH2 0x150f
	0A66    90  SWAP1
	0A67    91  SWAP2
	0A68    90  SWAP1
	0A69    63  PUSH4 0xffffffff
	0A6E    16  AND
	0A6F    56  *JUMP
	// Stack delta = +2
	// Outputs[10]
	// {
	//     @09D1  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-5]
	//     @09D7  memory[0x20:0x40] = 0x06
	//     @09E0  storage[keccak256(memory[0x00:0x40])] = stack[-1]
	//     @09E2  stack[-1] = 0x0a70
	//     @0A18  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-5]
	//     @0A1E  memory[0x20:0x40] = 0x07
	//     @0A55  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & msg.sender
	//     @0A5B  memory[0x20:0x40] = keccak256(memory[0x00:0x40])
	//     @0A67  stack[0] = storage[keccak256(memory[0x00:0x40])]
	//     @0A68  stack[1] = stack[-3]
	// }
	// Block ends with call to 0xffffffff & 0x150f, returns to 0x0A70

label_0A70:
	// Incoming return from call to 0x150F at 0x0A6F
	// Inputs[9]
	// {
	//     @0A75  stack[-5]
	//     @0AAF  memory[0x00:0x40]
	//     @0AB2  msg.sender
	//     @0AEC  memory[0x00:0x40]
	//     @0AED  stack[-1]
	//     @0AF4  stack[-3]
	//     @0AF9  stack[-4]
	//     @0B33  memory[0x00:0x40]
	//     @0B34  storage[keccak256(memory[0x00:0x40])]
	// }
	0A70    5B  JUMPDEST
	0A71    60  PUSH1 0x07
	0A73    60  PUSH1 0x00
	0A75    86  DUP7
	0A76    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0A8B    16  AND
	0A8C    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0AA1    16  AND
	0AA2    81  DUP2
	0AA3    52  MSTORE
	0AA4    60  PUSH1 0x20
	0AA6    01  ADD
	0AA7    90  SWAP1
	0AA8    81  DUP2
	0AA9    52  MSTORE
	0AAA    60  PUSH1 0x20
	0AAC    01  ADD
	0AAD    60  PUSH1 0x00
	0AAF    20  SHA3
	0AB0    60  PUSH1 0x00
	0AB2    33  CALLER
	0AB3    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0AC8    16  AND
	0AC9    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0ADE    16  AND
	0ADF    81  DUP2
	0AE0    52  MSTORE
	0AE1    60  PUSH1 0x20
	0AE3    01  ADD
	0AE4    90  SWAP1
	0AE5    81  DUP2
	0AE6    52  MSTORE
	0AE7    60  PUSH1 0x20
	0AE9    01  ADD
	0AEA    60  PUSH1 0x00
	0AEC    20  SHA3
	0AED    81  DUP2
	0AEE    90  SWAP1
	0AEF    55  SSTORE
	0AF0    50  POP
	0AF1    61  PUSH2 0x0b42
	0AF4    82  DUP3
	0AF5    60  PUSH1 0x06
	0AF7    60  PUSH1 0x00
	0AF9    86  DUP7
	0AFA    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0B0F    16  AND
	0B10    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0B25    16  AND
	0B26    81  DUP2
	0B27    52  MSTORE
	0B28    60  PUSH1 0x20
	0B2A    01  ADD
	0B2B    90  SWAP1
	0B2C    81  DUP2
	0B2D    52  MSTORE
	0B2E    60  PUSH1 0x20
	0B30    01  ADD
	0B31    60  PUSH1 0x00
	0B33    20  SHA3
	0B34    54  SLOAD
	0B35    61  PUSH2 0x1529
	0B38    90  SWAP1
	0B39    91  SWAP2
	0B3A    90  SWAP1
	0B3B    63  PUSH4 0xffffffff
	0B40    16  AND
	0B41    56  *JUMP
	// Stack delta = +2
	// Outputs[10]
	// {
	//     @0AA3  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-5]
	//     @0AA9  memory[0x20:0x40] = 0x07
	//     @0AE0  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & msg.sender
	//     @0AE6  memory[0x20:0x40] = keccak256(memory[0x00:0x40])
	//     @0AEF  storage[keccak256(memory[0x00:0x40])] = stack[-1]
	//     @0AF1  stack[-1] = 0x0b42
	//     @0B27  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-4]
	//     @0B2D  memory[0x20:0x40] = 0x06
	//     @0B39  stack[0] = storage[keccak256(memory[0x00:0x40])]
	//     @0B3A  stack[1] = stack[-3]
	// }
	// Block ends with call to 0xffffffff & 0x1529, returns to 0x0B42

label_0B42:
	// Incoming return from call to 0x1529 at 0x0B41
	// Inputs[10]
	// {
	//     @0B47  stack[-4]
	//     @0B81  memory[0x00:0x40]
	//     @0B82  stack[-1]
	//     @0B9D  stack[-5]
	//     @0BD5  stack[-3]
	//     @0BD8  memory[0x40:0x60]
	//     @0BE5  memory[0x40:0x60]
	//     @0BEA  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	//     @0BED  stack[-2]
	//     @0BEF  stack[-6]
	// }
	0B42    5B  JUMPDEST
	0B43    60  PUSH1 0x06
	0B45    60  PUSH1 0x00
	0B47    85  DUP6
	0B48    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0B5D    16  AND
	0B5E    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0B73    16  AND
	0B74    81  DUP2
	0B75    52  MSTORE
	0B76    60  PUSH1 0x20
	0B78    01  ADD
	0B79    90  SWAP1
	0B7A    81  DUP2
	0B7B    52  MSTORE
	0B7C    60  PUSH1 0x20
	0B7E    01  ADD
	0B7F    60  PUSH1 0x00
	0B81    20  SHA3
	0B82    81  DUP2
	0B83    90  SWAP1
	0B84    55  SSTORE
	0B85    50  POP
	0B86    82  DUP3
	0B87    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0B9C    16  AND
	0B9D    84  DUP5
	0B9E    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0BB3    16  AND
	0BB4    7F  PUSH32 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
	0BD5    84  DUP5
	0BD6    60  PUSH1 0x40
	0BD8    51  MLOAD
	0BD9    80  DUP1
	0BDA    82  DUP3
	0BDB    81  DUP2
	0BDC    52  MSTORE
	0BDD    60  PUSH1 0x20
	0BDF    01  ADD
	0BE0    91  SWAP2
	0BE1    50  POP
	0BE2    50  POP
	0BE3    60  PUSH1 0x40
	0BE5    51  MLOAD
	0BE6    80  DUP1
	0BE7    91  SWAP2
	0BE8    03  SUB
	0BE9    90  SWAP1
	0BEA    A3  LOG3
	0BEB    60  PUSH1 0x01
	0BED    90  SWAP1
	0BEE    50  POP
	0BEF    93  SWAP4
	0BF0    92  SWAP3
	0BF1    50  POP
	0BF2    50  POP
	0BF3    50  POP
	0BF4    56  *JUMP
	// Stack delta = -5
	// Outputs[6]
	// {
	//     @0B75  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-4]
	//     @0B7B  memory[0x20:0x40] = 0x06
	//     @0B84  storage[keccak256(memory[0x00:0x40])] = stack[-1]
	//     @0BDC  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = stack[-3]
	//     @0BEA  log(memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]], [0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef, stack[-5] & 0xffffffffffffffffffffffffffffffffffffffff, stack[-4] & 0xffffffffffffffffffffffffffffffffffffffff]);
	//     @0BEF  stack[-6] = 0x01
	// }
	// Block ends with unconditional jump to stack[-6]

label_0BF5:
	// Incoming call from 0x02C2, returns to 0x02C3
	// Inputs[2]
	// {
	//     @0BFB  storage[0x04]
	//     @0C06  stack[-1]
	// }
	0BF5    5B  JUMPDEST
	0BF6    60  PUSH1 0x04
	0BF8    60  PUSH1 0x00
	0BFA    90  SWAP1
	0BFB    54  SLOAD
	0BFC    90  SWAP1
	0BFD    61  PUSH2 0x0100
	0C00    0A  EXP
	0C01    90  SWAP1
	0C02    04  DIV
	0C03    60  PUSH1 0xff
	0C05    16  AND
	0C06    81  DUP2
	0C07    56  *JUMP
	// Stack delta = +1
	// Outputs[1] { @0C05  stack[0] = 0xff & storage[0x04] / 0x0100 ** 0x00 }
	// Block ends with unconditional jump to stack[-1]

label_0C08:
	// Incoming jump from 0x032D
	// Inputs[4]
	// {
	//     @0C0F  stack[-1]
	//     @0C49  memory[0x00:0x40]
	//     @0C4A  storage[keccak256(memory[0x00:0x40])]
	//     @0C4D  stack[-2]
	// }
	0C08    5B  JUMPDEST
	0C09    60  PUSH1 0x00
	0C0B    60  PUSH1 0x06
	0C0D    60  PUSH1 0x00
	0C0F    83  DUP4
	0C10    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0C25    16  AND
	0C26    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0C3B    16  AND
	0C3C    81  DUP2
	0C3D    52  MSTORE
	0C3E    60  PUSH1 0x20
	0C40    01  ADD
	0C41    90  SWAP1
	0C42    81  DUP2
	0C43    52  MSTORE
	0C44    60  PUSH1 0x20
	0C46    01  ADD
	0C47    60  PUSH1 0x00
	0C49    20  SHA3
	0C4A    54  SLOAD
	0C4B    90  SWAP1
	0C4C    50  POP
	0C4D    91  SWAP2
	0C4E    90  SWAP1
	0C4F    50  POP
	0C50    56  *JUMP
	// Stack delta = -1
	// Outputs[3]
	// {
	//     @0C3D  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-1]
	//     @0C43  memory[0x20:0x40] = 0x06
	//     @0C4D  stack[-2] = storage[keccak256(memory[0x00:0x40])]
	// }
	// Block ends with unconditional jump to stack[-2]

label_0C51:
	// Incoming call from 0x0358, returns to 0x0359
	// Inputs[2]
	// {
	//     @0C57  storage[0x01]
	//     @0C8B  msg.sender
	// }
	0C51    5B  JUMPDEST
	0C52    60  PUSH1 0x01
	0C54    60  PUSH1 0x00
	0C56    90  SWAP1
	0C57    54  SLOAD
	0C58    90  SWAP1
	0C59    61  PUSH2 0x0100
	0C5C    0A  EXP
	0C5D    90  SWAP1
	0C5E    04  DIV
	0C5F    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0C74    16  AND
	0C75    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0C8A    16  AND
	0C8B    33  CALLER
	0C8C    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0CA1    16  AND
	0CA2    14  EQ
	0CA3    61  PUSH2 0x0cab
	0CA6    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x0cab, if 0xffffffffffffffffffffffffffffffffffffffff & msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & storage[0x01] / 0x0100 ** 0x00

label_0CA7:
	// Incoming jump from 0x0CA6, if not 0xffffffffffffffffffffffffffffffffffffffff & msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & storage[0x01] / 0x0100 ** 0x00
	// Inputs[1] { @0CAA  memory[0x00:0x00] }
	0CA7    60  PUSH1 0x00
	0CA9    80  DUP1
	0CAA    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0CAA  revert(memory[0x00:0x00]); }
	// Block terminates

label_0CAB:
	// Incoming jump from 0x0CA6, if 0xffffffffffffffffffffffffffffffffffffffff & msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & storage[0x01] / 0x0100 ** 0x00
	// Inputs[9]
	// {
	//     @0CB1  storage[0x01]
	//     @0CE9  storage[0x00]
	//     @0D40  memory[0x40:0x60]
	//     @0D43  memory[0x40:0x60]
	//     @0D48  memory[memory[0x40:0x60]:memory[0x40:0x60] + memory[0x40:0x60] - memory[0x40:0x60]]
	//     @0D4E  storage[0x01]
	//     @0D74  storage[0x00]
	//     @0DB6  storage[0x01]
	//     @0DED  stack[-1]
	// }
	0CAB    5B  JUMPDEST
	0CAC    60  PUSH1 0x01
	0CAE    60  PUSH1 0x00
	0CB0    90  SWAP1
	0CB1    54  SLOAD
	0CB2    90  SWAP1
	0CB3    61  PUSH2 0x0100
	0CB6    0A  EXP
	0CB7    90  SWAP1
	0CB8    04  DIV
	0CB9    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0CCE    16  AND
	0CCF    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0CE4    16  AND
	0CE5    60  PUSH1 0x00
	0CE7    80  DUP1
	0CE8    90  SWAP1
	0CE9    54  SLOAD
	0CEA    90  SWAP1
	0CEB    61  PUSH2 0x0100
	0CEE    0A  EXP
	0CEF    90  SWAP1
	0CF0    04  DIV
	0CF1    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0D06    16  AND
	0D07    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0D1C    16  AND
	0D1D    7F  PUSH32 0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0
	0D3E    60  PUSH1 0x40
	0D40    51  MLOAD
	0D41    60  PUSH1 0x40
	0D43    51  MLOAD
	0D44    80  DUP1
	0D45    91  SWAP2
	0D46    03  SUB
	0D47    90  SWAP1
	0D48    A3  LOG3
	0D49    60  PUSH1 0x01
	0D4B    60  PUSH1 0x00
	0D4D    90  SWAP1
	0D4E    54  SLOAD
	0D4F    90  SWAP1
	0D50    61  PUSH2 0x0100
	0D53    0A  EXP
	0D54    90  SWAP1
	0D55    04  DIV
	0D56    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0D6B    16  AND
	0D6C    60  PUSH1 0x00
	0D6E    80  DUP1
	0D6F    61  PUSH2 0x0100
	0D72    0A  EXP
	0D73    81  DUP2
	0D74    54  SLOAD
	0D75    81  DUP2
	0D76    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0D8B    02  MUL
	0D8C    19  NOT
	0D8D    16  AND
	0D8E    90  SWAP1
	0D8F    83  DUP4
	0D90    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0DA5    16  AND
	0DA6    02  MUL
	0DA7    17  OR
	0DA8    90  SWAP1
	0DA9    55  SSTORE
	0DAA    50  POP
	0DAB    60  PUSH1 0x00
	0DAD    60  PUSH1 0x01
	0DAF    60  PUSH1 0x00
	0DB1    61  PUSH2 0x0100
	0DB4    0A  EXP
	0DB5    81  DUP2
	0DB6    54  SLOAD
	0DB7    81  DUP2
	0DB8    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0DCD    02  MUL
	0DCE    19  NOT
	0DCF    16  AND
	0DD0    90  SWAP1
	0DD1    83  DUP4
	0DD2    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0DE7    16  AND
	0DE8    02  MUL
	0DE9    17  OR
	0DEA    90  SWAP1
	0DEB    55  SSTORE
	0DEC    50  POP
	0DED    56  *JUMP
	// Stack delta = -1
	// Outputs[3]
	// {
	//     @0D48  log(memory[memory[0x40:0x60]:memory[0x40:0x60] + memory[0x40:0x60] - memory[0x40:0x60]], [0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0, storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff, storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff]);
	//     @0DA9  storage[0x00] = (0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & storage[0x01] / 0x0100 ** 0x00) * 0x0100 ** 0x00 | (~(0xffffffffffffffffffffffffffffffffffffffff * 0x0100 ** 0x00) & storage[0x00])
	//     @0DEB  storage[0x01] = (0xffffffffffffffffffffffffffffffffffffffff & 0x00) * 0x0100 ** 0x00 | (~(0xffffffffffffffffffffffffffffffffffffffff * 0x0100 ** 0x00) & storage[0x01])
	// }
	// Block ends with unconditional jump to stack[-1]

label_0DEE:
	// Incoming call from 0x036F, returns to 0x0370
	// Inputs[2]
	// {
	//     @0DF3  storage[0x00]
	//     @0E11  stack[-1]
	// }
	0DEE    5B  JUMPDEST
	0DEF    60  PUSH1 0x00
	0DF1    80  DUP1
	0DF2    90  SWAP1
	0DF3    54  SLOAD
	0DF4    90  SWAP1
	0DF5    61  PUSH2 0x0100
	0DF8    0A  EXP
	0DF9    90  SWAP1
	0DFA    04  DIV
	0DFB    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0E10    16  AND
	0E11    81  DUP2
	0E12    56  *JUMP
	// Stack delta = +1
	// Outputs[1] { @0E10  stack[0] = 0xffffffffffffffffffffffffffffffffffffffff & storage[0x00] / 0x0100 ** 0x00 }
	// Block ends with unconditional jump to stack[-1]

label_0E13:
	// Incoming call from 0x03C6, returns to 0x03C7
	// Inputs[3]
	// {
	//     @0E17  storage[0x02]
	//     @0E38  memory[0x40:0x60]
	//     @0E4B  storage[0x02]
	// }
	0E13    5B  JUMPDEST
	0E14    60  PUSH1 0x02
	0E16    80  DUP1
	0E17    54  SLOAD
	0E18    60  PUSH1 0x01
	0E1A    81  DUP2
	0E1B    60  PUSH1 0x01
	0E1D    16  AND
	0E1E    15  ISZERO
	0E1F    61  PUSH2 0x0100
	0E22    02  MUL
	0E23    03  SUB
	0E24    16  AND
	0E25    60  PUSH1 0x02
	0E27    90  SWAP1
	0E28    04  DIV
	0E29    80  DUP1
	0E2A    60  PUSH1 0x1f
	0E2C    01  ADD
	0E2D    60  PUSH1 0x20
	0E2F    80  DUP1
	0E30    91  SWAP2
	0E31    04  DIV
	0E32    02  MUL
	0E33    60  PUSH1 0x20
	0E35    01  ADD
	0E36    60  PUSH1 0x40
	0E38    51  MLOAD
	0E39    90  SWAP1
	0E3A    81  DUP2
	0E3B    01  ADD
	0E3C    60  PUSH1 0x40
	0E3E    52  MSTORE
	0E3F    80  DUP1
	0E40    92  SWAP3
	0E41    91  SWAP2
	0E42    90  SWAP1
	0E43    81  DUP2
	0E44    81  DUP2
	0E45    52  MSTORE
	0E46    60  PUSH1 0x20
	0E48    01  ADD
	0E49    82  DUP3
	0E4A    80  DUP1
	0E4B    54  SLOAD
	0E4C    60  PUSH1 0x01
	0E4E    81  DUP2
	0E4F    60  PUSH1 0x01
	0E51    16  AND
	0E52    15  ISZERO
	0E53    61  PUSH2 0x0100
	0E56    02  MUL
	0E57    03  SUB
	0E58    16  AND
	0E59    60  PUSH1 0x02
	0E5B    90  SWAP1
	0E5C    04  DIV
	0E5D    80  DUP1
	0E5E    15  ISZERO
	0E5F    61  PUSH2 0x0ea9
	0E62    57  *JUMPI
	// Stack delta = +6
	// Outputs[8]
	// {
	//     @0E3E  memory[0x40:0x60] = memory[0x40:0x60] + 0x20 + (0x1f + (0x0100 * !(0x01 & storage[0x02]) - 0x01 & storage[0x02]) / 0x02) / 0x20 * 0x20
	//     @0E40  stack[0] = memory[0x40:0x60]
	//     @0E41  stack[1] = 0x02
	//     @0E42  stack[2] = (0x0100 * !(0x01 & storage[0x02]) - 0x01 & storage[0x02]) / 0x02
	//     @0E45  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = (0x0100 * !(0x01 & storage[0x02]) - 0x01 & storage[0x02]) / 0x02
	//     @0E48  stack[3] = 0x20 + memory[0x40:0x60]
	//     @0E49  stack[4] = 0x02
	//     @0E5C  stack[5] = (0x0100 * !(0x01 & storage[0x02]) - 0x01 & storage[0x02]) / 0x02
	// }
	// Block ends with conditional jump to 0x0ea9, if !((0x0100 * !(0x01 & storage[0x02]) - 0x01 & storage[0x02]) / 0x02)

label_0E63:
	// Incoming jump from 0x0E62, if not !((0x0100 * !(0x01 & storage[0x02]) - 0x01 & storage[0x02]) / 0x02)
	// Inputs[1] { @0E63  stack[-1] }
	0E63    80  DUP1
	0E64    60  PUSH1 0x1f
	0E66    10  LT
	0E67    61  PUSH2 0x0e7e
	0E6A    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x0e7e, if 0x1f < stack[-1]

label_0E6B:
	// Incoming jump from 0x0E6A, if not 0x1f < stack[-1]
	// Inputs[4]
	// {
	//     @0E6F  stack[-2]
	//     @0E70  storage[stack[-2]]
	//     @0E73  stack[-3]
	//     @0E75  stack[-1]
	// }
	0E6B    61  PUSH2 0x0100
	0E6E    80  DUP1
	0E6F    83  DUP4
	0E70    54  SLOAD
	0E71    04  DIV
	0E72    02  MUL
	0E73    83  DUP4
	0E74    52  MSTORE
	0E75    91  SWAP2
	0E76    60  PUSH1 0x20
	0E78    01  ADD
	0E79    91  SWAP2
	0E7A    61  PUSH2 0x0ea9
	0E7D    56  *JUMP
	// Stack delta = +0
	// Outputs[3]
	// {
	//     @0E74  memory[stack[-3]:stack[-3] + 0x20] = storage[stack[-2]] / 0x0100 * 0x0100
	//     @0E79  stack[-1] = stack[-1]
	//     @0E79  stack[-3] = 0x20 + stack[-3]
	// }
	// Block ends with unconditional jump to 0x0ea9

label_0E7E:
	// Incoming jump from 0x0E6A, if 0x1f < stack[-1]
	// Inputs[5]
	// {
	//     @0E7F  stack[-3]
	//     @0E80  stack[-1]
	//     @0E82  stack[-2]
	//     @0E8A  memory[0x00:0x20]
	//     @0E8E  storage[keccak256(memory[0x00:0x20])]
	// }
	0E7E    5B  JUMPDEST
	0E7F    82  DUP3
	0E80    01  ADD
	0E81    91  SWAP2
	0E82    90  SWAP1
	0E83    60  PUSH1 0x00
	0E85    52  MSTORE
	0E86    60  PUSH1 0x20
	0E88    60  PUSH1 0x00
	0E8A    20  SHA3
	0E8B    90  SWAP1
	0E8C    5B  JUMPDEST
	0E8D    81  DUP2
	0E8E    54  SLOAD
	0E8F    81  DUP2
	0E90    52  MSTORE
	0E91    90  SWAP1
	0E92    60  PUSH1 0x01
	0E94    01  ADD
	0E95    90  SWAP1
	0E96    60  PUSH1 0x20
	0E98    01  ADD
	0E99    80  DUP1
	0E9A    83  DUP4
	0E9B    11  GT
	0E9C    61  PUSH2 0x0e8c
	0E9F    57  *JUMPI
	// Stack delta = +0
	// Outputs[5]
	// {
	//     @0E81  stack[-3] = stack[-3] + stack[-1]
	//     @0E85  memory[0x00:0x20] = stack[-2]
	//     @0E90  memory[stack[-3]:stack[-3] + 0x20] = storage[keccak256(memory[0x00:0x20])]
	//     @0E95  stack[-2] = 0x01 + keccak256(memory[0x00:0x20])
	//     @0E98  stack[-1] = 0x20 + stack[-3]
	// }
	// Block ends with conditional jump to 0x0e8c, if stack[-3] + stack[-1] > 0x20 + stack[-3]

label_0EA0:
	// Incoming jump from 0x0E9F, if not stack[-3] + stack[-1] > 0x20 + stack[-3]
	// Incoming jump from 0x0E9F, if not stack[-3] > 0x20 + stack[-1]
	// Inputs[2]
	// {
	//     @0EA0  stack[-3]
	//     @0EA1  stack[-1]
	// }
	0EA0    82  DUP3
	0EA1    90  SWAP1
	0EA2    03  SUB
	0EA3    60  PUSH1 0x1f
	0EA5    16  AND
	0EA6    82  DUP3
	0EA7    01  ADD
	0EA8    91  SWAP2
	// Stack delta = +0
	// Outputs[2]
	// {
	//     @0EA8  stack[-3] = stack[-3] + (0x1f & stack[-1] - stack[-3])
	//     @0EA8  stack[-1] = stack[-3]
	// }
	// Block continues

label_0EA9:
	// Incoming jump from 0x0EA8
	// Incoming jump from 0x0E62, if !((0x0100 * !(0x01 & storage[0x02]) - 0x01 & storage[0x02]) / 0x02)
	// Incoming jump from 0x0E7D
	// Inputs[1] { @0EAF  stack[-7] }
	0EA9    5B  JUMPDEST
	0EAA    50  POP
	0EAB    50  POP
	0EAC    50  POP
	0EAD    50  POP
	0EAE    50  POP
	0EAF    81  DUP2
	0EB0    56  *JUMP
	// Stack delta = -5
	// Block ends with unconditional jump to stack[-7]

label_0EB1:
	// Incoming jump from 0x049A
	// Inputs[4]
	// {
	//     @0EB7  stack[-1]
	//     @0EBC  msg.sender
	//     @0EF6  memory[0x00:0x40]
	//     @0EF7  storage[keccak256(memory[0x00:0x40])]
	// }
	0EB1    5B  JUMPDEST
	0EB2    60  PUSH1 0x00
	0EB4    61  PUSH2 0x0f05
	0EB7    82  DUP3
	0EB8    60  PUSH1 0x06
	0EBA    60  PUSH1 0x00
	0EBC    33  CALLER
	0EBD    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0ED2    16  AND
	0ED3    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0EE8    16  AND
	0EE9    81  DUP2
	0EEA    52  MSTORE
	0EEB    60  PUSH1 0x20
	0EED    01  ADD
	0EEE    90  SWAP1
	0EEF    81  DUP2
	0EF0    52  MSTORE
	0EF1    60  PUSH1 0x20
	0EF3    01  ADD
	0EF4    60  PUSH1 0x00
	0EF6    20  SHA3
	0EF7    54  SLOAD
	0EF8    61  PUSH2 0x150f
	0EFB    90  SWAP1
	0EFC    91  SWAP2
	0EFD    90  SWAP1
	0EFE    63  PUSH4 0xffffffff
	0F03    16  AND
	0F04    56  *JUMP
	// Stack delta = +4
	// Outputs[6]
	// {
	//     @0EB2  stack[0] = 0x00
	//     @0EB4  stack[1] = 0x0f05
	//     @0EEA  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & msg.sender
	//     @0EF0  memory[0x20:0x40] = 0x06
	//     @0EFC  stack[2] = storage[keccak256(memory[0x00:0x40])]
	//     @0EFD  stack[3] = stack[-1]
	// }
	// Block ends with call to 0xffffffff & 0x150f, returns to 0x0F05

label_0F05:
	// Incoming return from call to 0x150F at 0x0F04
	// Inputs[7]
	// {
	//     @0F0A  msg.sender
	//     @0F44  memory[0x00:0x40]
	//     @0F45  stack[-1]
	//     @0F4C  stack[-3]
	//     @0F51  stack[-4]
	//     @0F8B  memory[0x00:0x40]
	//     @0F8C  storage[keccak256(memory[0x00:0x40])]
	// }
	0F05    5B  JUMPDEST
	0F06    60  PUSH1 0x06
	0F08    60  PUSH1 0x00
	0F0A    33  CALLER
	0F0B    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0F20    16  AND
	0F21    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0F36    16  AND
	0F37    81  DUP2
	0F38    52  MSTORE
	0F39    60  PUSH1 0x20
	0F3B    01  ADD
	0F3C    90  SWAP1
	0F3D    81  DUP2
	0F3E    52  MSTORE
	0F3F    60  PUSH1 0x20
	0F41    01  ADD
	0F42    60  PUSH1 0x00
	0F44    20  SHA3
	0F45    81  DUP2
	0F46    90  SWAP1
	0F47    55  SSTORE
	0F48    50  POP
	0F49    61  PUSH2 0x0f9a
	0F4C    82  DUP3
	0F4D    60  PUSH1 0x06
	0F4F    60  PUSH1 0x00
	0F51    86  DUP7
	0F52    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0F67    16  AND
	0F68    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0F7D    16  AND
	0F7E    81  DUP2
	0F7F    52  MSTORE
	0F80    60  PUSH1 0x20
	0F82    01  ADD
	0F83    90  SWAP1
	0F84    81  DUP2
	0F85    52  MSTORE
	0F86    60  PUSH1 0x20
	0F88    01  ADD
	0F89    60  PUSH1 0x00
	0F8B    20  SHA3
	0F8C    54  SLOAD
	0F8D    61  PUSH2 0x1529
	0F90    90  SWAP1
	0F91    91  SWAP2
	0F92    90  SWAP1
	0F93    63  PUSH4 0xffffffff
	0F98    16  AND
	0F99    56  *JUMP
	// Stack delta = +2
	// Outputs[8]
	// {
	//     @0F38  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & msg.sender
	//     @0F3E  memory[0x20:0x40] = 0x06
	//     @0F47  storage[keccak256(memory[0x00:0x40])] = stack[-1]
	//     @0F49  stack[-1] = 0x0f9a
	//     @0F7F  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-4]
	//     @0F85  memory[0x20:0x40] = 0x06
	//     @0F91  stack[0] = storage[keccak256(memory[0x00:0x40])]
	//     @0F92  stack[1] = stack[-3]
	// }
	// Block ends with call to 0xffffffff & 0x1529, returns to 0x0F9A

label_0F9A:
	// Incoming return from call to 0x1529 at 0x0F99
	// Inputs[10]
	// {
	//     @0F9F  stack[-4]
	//     @0FD9  memory[0x00:0x40]
	//     @0FDA  stack[-1]
	//     @0FF5  msg.sender
	//     @102D  stack[-3]
	//     @1030  memory[0x40:0x60]
	//     @103D  memory[0x40:0x60]
	//     @1042  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	//     @1045  stack[-2]
	//     @1047  stack[-5]
	// }
	0F9A    5B  JUMPDEST
	0F9B    60  PUSH1 0x06
	0F9D    60  PUSH1 0x00
	0F9F    85  DUP6
	0FA0    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0FB5    16  AND
	0FB6    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0FCB    16  AND
	0FCC    81  DUP2
	0FCD    52  MSTORE
	0FCE    60  PUSH1 0x20
	0FD0    01  ADD
	0FD1    90  SWAP1
	0FD2    81  DUP2
	0FD3    52  MSTORE
	0FD4    60  PUSH1 0x20
	0FD6    01  ADD
	0FD7    60  PUSH1 0x00
	0FD9    20  SHA3
	0FDA    81  DUP2
	0FDB    90  SWAP1
	0FDC    55  SSTORE
	0FDD    50  POP
	0FDE    82  DUP3
	0FDF    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	0FF4    16  AND
	0FF5    33  CALLER
	0FF6    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	100B    16  AND
	100C    7F  PUSH32 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
	102D    84  DUP5
	102E    60  PUSH1 0x40
	1030    51  MLOAD
	1031    80  DUP1
	1032    82  DUP3
	1033    81  DUP2
	1034    52  MSTORE
	1035    60  PUSH1 0x20
	1037    01  ADD
	1038    91  SWAP2
	1039    50  POP
	103A    50  POP
	103B    60  PUSH1 0x40
	103D    51  MLOAD
	103E    80  DUP1
	103F    91  SWAP2
	1040    03  SUB
	1041    90  SWAP1
	1042    A3  LOG3
	1043    60  PUSH1 0x01
	1045    90  SWAP1
	1046    50  POP
	1047    92  SWAP3
	1048    91  SWAP2
	1049    50  POP
	104A    50  POP
	104B    56  *JUMP
	// Stack delta = -4
	// Outputs[6]
	// {
	//     @0FCD  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-4]
	//     @0FD3  memory[0x20:0x40] = 0x06
	//     @0FDC  storage[keccak256(memory[0x00:0x40])] = stack[-1]
	//     @1034  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = stack[-3]
	//     @1042  log(memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]], [0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef, msg.sender, stack[-4] & 0xffffffffffffffffffffffffffffffffffffffff]);
	//     @1047  stack[-5] = 0x01
	// }
	// Block ends with unconditional jump to stack[-5]

label_104C:
	// Incoming jump from 0x05A4
	// Inputs[15]
	// {
	//     @104F  stack[-2]
	//     @1054  msg.sender
	//     @108E  memory[0x00:0x40]
	//     @1091  stack[-3]
	//     @10CB  memory[0x00:0x40]
	//     @10E7  msg.sender
	//     @1122  memory[0x40:0x60]
	//     @112F  memory[0x40:0x60]
	//     @1134  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	//     @1151  msg.sender
	//     @1153  address(this)
	//     @1154  stack[-1]
	//     @1157  memory[0x40:0x60]
	//     @11DE  memory[stack[-1]:stack[-1] + 0x20]
	//     @11E7  memory[stack[-1]:stack[-1] + 0x20]
	// }
	104C    5B  JUMPDEST
	104D    60  PUSH1 0x00
	104F    82  DUP3
	1050    60  PUSH1 0x07
	1052    60  PUSH1 0x00
	1054    33  CALLER
	1055    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	106A    16  AND
	106B    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	1080    16  AND
	1081    81  DUP2
	1082    52  MSTORE
	1083    60  PUSH1 0x20
	1085    01  ADD
	1086    90  SWAP1
	1087    81  DUP2
	1088    52  MSTORE
	1089    60  PUSH1 0x20
	108B    01  ADD
	108C    60  PUSH1 0x00
	108E    20  SHA3
	108F    60  PUSH1 0x00
	1091    86  DUP7
	1092    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	10A7    16  AND
	10A8    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	10BD    16  AND
	10BE    81  DUP2
	10BF    52  MSTORE
	10C0    60  PUSH1 0x20
	10C2    01  ADD
	10C3    90  SWAP1
	10C4    81  DUP2
	10C5    52  MSTORE
	10C6    60  PUSH1 0x20
	10C8    01  ADD
	10C9    60  PUSH1 0x00
	10CB    20  SHA3
	10CC    81  DUP2
	10CD    90  SWAP1
	10CE    55  SSTORE
	10CF    50  POP
	10D0    83  DUP4
	10D1    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	10E6    16  AND
	10E7    33  CALLER
	10E8    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	10FD    16  AND
	10FE    7F  PUSH32 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
	111F    85  DUP6
	1120    60  PUSH1 0x40
	1122    51  MLOAD
	1123    80  DUP1
	1124    82  DUP3
	1125    81  DUP2
	1126    52  MSTORE
	1127    60  PUSH1 0x20
	1129    01  ADD
	112A    91  SWAP2
	112B    50  POP
	112C    50  POP
	112D    60  PUSH1 0x40
	112F    51  MLOAD
	1130    80  DUP1
	1131    91  SWAP2
	1132    03  SUB
	1133    90  SWAP1
	1134    A3  LOG3
	1135    83  DUP4
	1136    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	114B    16  AND
	114C    63  PUSH4 0x8f4ffcb1
	1151    33  CALLER
	1152    85  DUP6
	1153    30  ADDRESS
	1154    86  DUP7
	1155    60  PUSH1 0x40
	1157    51  MLOAD
	1158    85  DUP6
	1159    63  PUSH4 0xffffffff
	115E    16  AND
	115F    60  PUSH1 0xe0
	1161    1B  SHL
	1162    81  DUP2
	1163    52  MSTORE
	1164    60  PUSH1 0x04
	1166    01  ADD
	1167    80  DUP1
	1168    85  DUP6
	1169    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	117E    16  AND
	117F    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	1194    16  AND
	1195    81  DUP2
	1196    52  MSTORE
	1197    60  PUSH1 0x20
	1199    01  ADD
	119A    84  DUP5
	119B    81  DUP2
	119C    52  MSTORE
	119D    60  PUSH1 0x20
	119F    01  ADD
	11A0    83  DUP4
	11A1    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	11B6    16  AND
	11B7    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	11CC    16  AND
	11CD    81  DUP2
	11CE    52  MSTORE
	11CF    60  PUSH1 0x20
	11D1    01  ADD
	11D2    80  DUP1
	11D3    60  PUSH1 0x20
	11D5    01  ADD
	11D6    82  DUP3
	11D7    81  DUP2
	11D8    03  SUB
	11D9    82  DUP3
	11DA    52  MSTORE
	11DB    83  DUP4
	11DC    81  DUP2
	11DD    81  DUP2
	11DE    51  MLOAD
	11DF    81  DUP2
	11E0    52  MSTORE
	11E1    60  PUSH1 0x20
	11E3    01  ADD
	11E4    91  SWAP2
	11E5    50  POP
	11E6    80  DUP1
	11E7    51  MLOAD
	11E8    90  SWAP1
	11E9    60  PUSH1 0x20
	11EB    01  ADD
	11EC    90  SWAP1
	11ED    80  DUP1
	11EE    83  DUP4
	11EF    83  DUP4
	11F0    60  PUSH1 0x00
	11F2    5B  JUMPDEST
	11F3    83  DUP4
	11F4    81  DUP2
	11F5    10  LT
	11F6    15  ISZERO
	11F7    61  PUSH2 0x120d
	11FA    57  *JUMPI
	// Stack delta = +16
	// Outputs[29]
	// {
	//     @104D  stack[0] = 0x00
	//     @1082  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & msg.sender
	//     @1088  memory[0x20:0x40] = 0x07
	//     @10BF  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-3]
	//     @10C5  memory[0x20:0x40] = keccak256(memory[0x00:0x40])
	//     @10CE  storage[keccak256(memory[0x00:0x40])] = stack[-2]
	//     @1126  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = stack[-2]
	//     @1134  log(memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]], [0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925, msg.sender, stack[-3] & 0xffffffffffffffffffffffffffffffffffffffff]);
	//     @114B  stack[1] = 0xffffffffffffffffffffffffffffffffffffffff & stack[-3]
	//     @114C  stack[2] = 0x8f4ffcb1
	//     @1151  stack[3] = msg.sender
	//     @1152  stack[4] = stack[-2]
	//     @1153  stack[5] = address(this)
	//     @1154  stack[6] = stack[-1]
	//     @1163  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = (0xffffffff & 0x8f4ffcb1) << 0xe0
	//     @1166  stack[7] = 0x04 + memory[0x40:0x60]
	//     @1196  memory[0x04 + memory[0x40:0x60]:0x04 + memory[0x40:0x60] + 0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & msg.sender
	//     @119C  memory[0x20 + 0x04 + memory[0x40:0x60]:0x20 + 0x04 + memory[0x40:0x60] + 0x20] = stack[-2]
	//     @11CE  memory[0x20 + 0x20 + 0x04 + memory[0x40:0x60]:0x20 + 0x20 + 0x04 + memory[0x40:0x60] + 0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & address(this)
	//     @11D1  stack[8] = 0x20 + 0x20 + 0x20 + 0x04 + memory[0x40:0x60]
	//     @11DA  memory[0x20 + 0x20 + 0x20 + 0x04 + memory[0x40:0x60]:0x20 + 0x20 + 0x20 + 0x04 + memory[0x40:0x60] + 0x20] = (0x20 + 0x20 + 0x20 + 0x20 + 0x04 + memory[0x40:0x60]) - (0x04 + memory[0x40:0x60])
	//     @11E0  memory[0x20 + 0x20 + 0x20 + 0x20 + 0x04 + memory[0x40:0x60]:0x20 + 0x20 + 0x20 + 0x20 + 0x04 + memory[0x40:0x60] + 0x20] = memory[stack[-1]:stack[-1] + 0x20]
	//     @11E4  stack[9] = 0x20 + 0x20 + 0x20 + 0x20 + 0x20 + 0x04 + memory[0x40:0x60]
	//     @11EC  stack[11] = memory[stack[-1]:stack[-1] + 0x20]
	//     @11EC  stack[10] = 0x20 + stack[-1]
	//     @11ED  stack[12] = memory[stack[-1]:stack[-1] + 0x20]
	//     @11EE  stack[13] = 0x20 + 0x20 + 0x20 + 0x20 + 0x20 + 0x04 + memory[0x40:0x60]
	//     @11EF  stack[14] = 0x20 + stack[-1]
	//     @11F0  stack[15] = 0x00
	// }
	// Block ends with conditional jump to 0x120d, if !(0x00 < memory[stack[-1]:stack[-1] + 0x20])

label_11FB:
	// Incoming jump from 0x11FA, if not !(0x00 < memory[stack[-1]:stack[-1] + 0x20])
	// Incoming jump from 0x11FA, if not !(stack[-1] < stack[-4])
	// Inputs[4]
	// {
	//     @11FB  stack[-1]
	//     @11FC  stack[-2]
	//     @11FE  memory[stack[-2] + stack[-1]:stack[-2] + stack[-1] + 0x20]
	//     @1200  stack[-3]
	// }
	11FB    80  DUP1
	11FC    82  DUP3
	11FD    01  ADD
	11FE    51  MLOAD
	11FF    81  DUP2
	1200    84  DUP5
	1201    01  ADD
	1202    52  MSTORE
	1203    60  PUSH1 0x20
	1205    81  DUP2
	1206    01  ADD
	1207    90  SWAP1
	1208    50  POP
	1209    61  PUSH2 0x11f2
	120C    56  *JUMP
	// Stack delta = +0
	// Outputs[2]
	// {
	//     @1202  memory[stack[-3] + stack[-1]:stack[-3] + stack[-1] + 0x20] = memory[stack[-2] + stack[-1]:stack[-2] + stack[-1] + 0x20]
	//     @1207  stack[-1] = stack[-1] + 0x20
	// }
	// Block ends with unconditional jump to 0x11f2

label_120D:
	// Incoming jump from 0x11FA, if !(0x00 < memory[stack[-1]:stack[-1] + 0x20])
	// Incoming jump from 0x11FA, if !(stack[-1] < stack[-4])
	// Inputs[3]
	// {
	//     @1212  stack[-5]
	//     @1212  stack[-6]
	//     @1214  stack[-7]
	// }
	120D    5B  JUMPDEST
	120E    50  POP
	120F    50  POP
	1210    50  POP
	1211    50  POP
	1212    90  SWAP1
	1213    50  POP
	1214    90  SWAP1
	1215    81  DUP2
	1216    01  ADD
	1217    90  SWAP1
	1218    60  PUSH1 0x1f
	121A    16  AND
	121B    80  DUP1
	121C    15  ISZERO
	121D    61  PUSH2 0x123a
	1220    57  *JUMPI
	// Stack delta = -5
	// Outputs[2]
	// {
	//     @1217  stack[-7] = stack[-5] + stack[-7]
	//     @121A  stack[-6] = 0x1f & stack[-5]
	// }
	// Block ends with conditional jump to 0x123a, if !(0x1f & stack[-5])

label_1221:
	// Incoming jump from 0x1220, if not !(0x1f & stack[-5])
	// Inputs[7]
	// {
	//     @1221  stack[-1]
	//     @1222  stack[-2]
	//     @1225  memory[stack[-2] - stack[-1]:stack[-2] - stack[-1] + 0x20]
	//     @123C  stack[-8]
	//     @1247  memory[0x40:0x60]
	//     @124E  stack[-10]
	//     @1250  address(stack[-10]).code.length
	// }
	1221    80  DUP1
	1222    82  DUP3
	1223    03  SUB
	1224    80  DUP1
	1225    51  MLOAD
	1226    60  PUSH1 0x01
	1228    83  DUP4
	1229    60  PUSH1 0x20
	122B    03  SUB
	122C    61  PUSH2 0x0100
	122F    0A  EXP
	1230    03  SUB
	1231    19  NOT
	1232    16  AND
	1233    81  DUP2
	1234    52  MSTORE
	1235    60  PUSH1 0x20
	1237    01  ADD
	1238    91  SWAP2
	1239    50  POP
	123A    5B  JUMPDEST
	123B    50  POP
	123C    95  SWAP6
	123D    50  POP
	123E    50  POP
	123F    50  POP
	1240    50  POP
	1241    50  POP
	1242    50  POP
	1243    60  PUSH1 0x00
	1245    60  PUSH1 0x40
	1247    51  MLOAD
	1248    80  DUP1
	1249    83  DUP4
	124A    03  SUB
	124B    81  DUP2
	124C    60  PUSH1 0x00
	124E    87  DUP8
	124F    80  DUP1
	1250    3B  EXTCODESIZE
	1251    15  ISZERO
	1252    80  DUP1
	1253    15  ISZERO
	1254    61  PUSH2 0x125c
	1257    57  *JUMPI
	// Stack delta = +0
	// Outputs[9]
	// {
	//     @1234  memory[stack[-2] - stack[-1]:stack[-2] - stack[-1] + 0x20] = ~(0x0100 ** (0x20 - stack[-1]) - 0x01) & memory[stack[-2] - stack[-1]:stack[-2] - stack[-1] + 0x20]
	//     @123C  stack[-8] = 0x20 + (stack[-2] - stack[-1])
	//     @1243  stack[-7] = 0x00
	//     @1247  stack[-6] = memory[0x40:0x60]
	//     @124A  stack[-5] = (0x20 + (stack[-2] - stack[-1])) - memory[0x40:0x60]
	//     @124B  stack[-4] = memory[0x40:0x60]
	//     @124C  stack[-3] = 0x00
	//     @124E  stack[-2] = stack[-10]
	//     @1251  stack[-1] = !address(stack[-10]).code.length
	// }
	// Block ends with conditional jump to 0x125c, if !!address(stack[-10]).code.length

label_1258:
	// Incoming jump from 0x1257, if not !!address(stack[-10]).code.length
	// Incoming jump from 0x1257, if not !!address(stack[-10]).code.length
	// Inputs[1] { @125B  memory[0x00:0x00] }
	1258    60  PUSH1 0x00
	125A    80  DUP1
	125B    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @125B  revert(memory[0x00:0x00]); }
	// Block terminates

label_125C:
	// Incoming jump from 0x1257, if !!address(stack[-10]).code.length
	// Incoming jump from 0x1257, if !!address(stack[-10]).code.length
	// Inputs[9]
	// {
	//     @125E  msg.gas
	//     @125F  stack[-4]
	//     @125F  stack[-3]
	//     @125F  address(stack[-2]).call.gas(msg.gas).value(stack[-3])(memory[stack[-4]:stack[-4] + stack[-5]])
	//     @125F  memory[stack[-4]:stack[-4] + stack[-5]]
	//     @125F  stack[-5]
	//     @125F  stack[-6]
	//     @125F  stack[-7]
	//     @125F  stack[-2]
	// }
	125C    5B  JUMPDEST
	125D    50  POP
	125E    5A  GAS
	125F    F1  CALL
	1260    15  ISZERO
	1261    80  DUP1
	1262    15  ISZERO
	1263    61  PUSH2 0x1270
	1266    57  *JUMPI
	// Stack delta = -6
	// Outputs[2]
	// {
	//     @125F  memory[stack[-6]:stack[-6] + stack[-7]] = address(stack[-2]).call.gas(msg.gas).value(stack[-3])(memory[stack[-4]:stack[-4] + stack[-5]])
	//     @1260  stack[-7] = !address(stack[-2]).call.gas(msg.gas).value(stack[-3])(memory[stack[-4]:stack[-4] + stack[-5]])
	// }
	// Block ends with conditional jump to 0x1270, if !!address(stack[-2]).call.gas(msg.gas).value(stack[-3])(memory[stack[-4]:stack[-4] + stack[-5]])

label_1267:
	// Incoming jump from 0x1266, if not !!address(stack[-2]).call.gas(msg.gas).value(stack[-3])(memory[stack[-4]:stack[-4] + stack[-5]])
	// Inputs[4]
	// {
	//     @1267  returndata.length
	//     @126B  returndata[0x00:0x00 + returndata.length]
	//     @126C  returndata.length
	//     @126F  memory[0x00:0x00 + returndata.length]
	// }
	1267    3D  RETURNDATASIZE
	1268    60  PUSH1 0x00
	126A    80  DUP1
	126B    3E  RETURNDATACOPY
	126C    3D  RETURNDATASIZE
	126D    60  PUSH1 0x00
	126F    FD  *REVERT
	// Stack delta = +0
	// Outputs[2]
	// {
	//     @126B  memory[0x00:0x00 + returndata.length] = returndata[0x00:0x00 + returndata.length]
	//     @126F  revert(memory[0x00:0x00 + returndata.length]);
	// }
	// Block terminates

label_1270:
	// Incoming jump from 0x1266, if !!address(stack[-2]).call.gas(msg.gas).value(stack[-3])(memory[stack[-4]:stack[-4] + stack[-5]])
	// Inputs[3]
	// {
	//     @1277  stack[-5]
	//     @1279  stack[-9]
	//     @127A  stack[-8]
	// }
	1270    5B  JUMPDEST
	1271    50  POP
	1272    50  POP
	1273    50  POP
	1274    50  POP
	1275    60  PUSH1 0x01
	1277    90  SWAP1
	1278    50  POP
	1279    93  SWAP4
	127A    92  SWAP3
	127B    50  POP
	127C    50  POP
	127D    50  POP
	127E    56  *JUMP
	// Stack delta = -8
	// Outputs[1] { @1279  stack[-9] = 0x01 }
	// Block ends with unconditional jump to stack[-9]

label_127F:
	// Incoming call from 0x05D3, returns to 0x05D4
	// Inputs[2]
	// {
	//     @1285  storage[0x01]
	//     @12A3  stack[-1]
	// }
	127F    5B  JUMPDEST
	1280    60  PUSH1 0x01
	1282    60  PUSH1 0x00
	1284    90  SWAP1
	1285    54  SLOAD
	1286    90  SWAP1
	1287    61  PUSH2 0x0100
	128A    0A  EXP
	128B    90  SWAP1
	128C    04  DIV
	128D    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	12A2    16  AND
	12A3    81  DUP2
	12A4    56  *JUMP
	// Stack delta = +1
	// Outputs[1] { @12A2  stack[0] = 0xffffffffffffffffffffffffffffffffffffffff & storage[0x01] / 0x0100 ** 0x00 }
	// Block ends with unconditional jump to stack[-1]

label_12A5:
	// Incoming jump from 0x066E
	// Inputs[2]
	// {
	//     @12AC  storage[0x00]
	//     @12E0  msg.sender
	// }
	12A5    5B  JUMPDEST
	12A6    60  PUSH1 0x00
	12A8    80  DUP1
	12A9    60  PUSH1 0x00
	12AB    90  SWAP1
	12AC    54  SLOAD
	12AD    90  SWAP1
	12AE    61  PUSH2 0x0100
	12B1    0A  EXP
	12B2    90  SWAP1
	12B3    04  DIV
	12B4    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	12C9    16  AND
	12CA    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	12DF    16  AND
	12E0    33  CALLER
	12E1    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	12F6    16  AND
	12F7    14  EQ
	12F8    61  PUSH2 0x1300
	12FB    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @12A6  stack[0] = 0x00 }
	// Block ends with conditional jump to 0x1300, if 0xffffffffffffffffffffffffffffffffffffffff & msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & storage[0x00] / 0x0100 ** 0x00

label_12FC:
	// Incoming jump from 0x12FB, if not 0xffffffffffffffffffffffffffffffffffffffff & msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & storage[0x00] / 0x0100 ** 0x00
	// Inputs[1] { @12FF  memory[0x00:0x00] }
	12FC    60  PUSH1 0x00
	12FE    80  DUP1
	12FF    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @12FF  revert(memory[0x00:0x00]); }
	// Block terminates

label_1300:
	// Incoming jump from 0x12FB, if 0xffffffffffffffffffffffffffffffffffffffff & msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & storage[0x00] / 0x0100 ** 0x00
	// Inputs[6]
	// {
	//     @1301  stack[-3]
	//     @1321  storage[0x00]
	//     @133F  stack[-2]
	//     @1342  memory[0x40:0x60]
	//     @1393  memory[0x40:0x60]
	//     @139C  address(0xffffffffffffffffffffffffffffffffffffffff & stack[-3]).code.length
	// }
	1300    5B  JUMPDEST
	1301    82  DUP3
	1302    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	1317    16  AND
	1318    63  PUSH4 0xa9059cbb
	131D    60  PUSH1 0x00
	131F    80  DUP1
	1320    90  SWAP1
	1321    54  SLOAD
	1322    90  SWAP1
	1323    61  PUSH2 0x0100
	1326    0A  EXP
	1327    90  SWAP1
	1328    04  DIV
	1329    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	133E    16  AND
	133F    84  DUP5
	1340    60  PUSH1 0x40
	1342    51  MLOAD
	1343    83  DUP4
	1344    63  PUSH4 0xffffffff
	1349    16  AND
	134A    60  PUSH1 0xe0
	134C    1B  SHL
	134D    81  DUP2
	134E    52  MSTORE
	134F    60  PUSH1 0x04
	1351    01  ADD
	1352    80  DUP1
	1353    83  DUP4
	1354    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	1369    16  AND
	136A    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	137F    16  AND
	1380    81  DUP2
	1381    52  MSTORE
	1382    60  PUSH1 0x20
	1384    01  ADD
	1385    82  DUP3
	1386    81  DUP2
	1387    52  MSTORE
	1388    60  PUSH1 0x20
	138A    01  ADD
	138B    92  SWAP3
	138C    50  POP
	138D    50  POP
	138E    50  POP
	138F    60  PUSH1 0x20
	1391    60  PUSH1 0x40
	1393    51  MLOAD
	1394    80  DUP1
	1395    83  DUP4
	1396    03  SUB
	1397    81  DUP2
	1398    60  PUSH1 0x00
	139A    87  DUP8
	139B    80  DUP1
	139C    3B  EXTCODESIZE
	139D    15  ISZERO
	139E    80  DUP1
	139F    15  ISZERO
	13A0    61  PUSH2 0x13a8
	13A3    57  *JUMPI
	// Stack delta = +10
	// Outputs[13]
	// {
	//     @1317  stack[0] = 0xffffffffffffffffffffffffffffffffffffffff & stack[-3]
	//     @1318  stack[1] = 0xa9059cbb
	//     @134E  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = (0xffffffff & 0xa9059cbb) << 0xe0
	//     @1381  memory[0x04 + memory[0x40:0x60]:0x04 + memory[0x40:0x60] + 0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & storage[0x00] / 0x0100 ** 0x00
	//     @1387  memory[0x20 + 0x04 + memory[0x40:0x60]:0x20 + 0x04 + memory[0x40:0x60] + 0x20] = stack[-2]
	//     @138B  stack[2] = 0x20 + 0x20 + 0x04 + memory[0x40:0x60]
	//     @138F  stack[3] = 0x20
	//     @1393  stack[4] = memory[0x40:0x60]
	//     @1396  stack[5] = (0x20 + 0x20 + 0x04 + memory[0x40:0x60]) - memory[0x40:0x60]
	//     @1397  stack[6] = memory[0x40:0x60]
	//     @1398  stack[7] = 0x00
	//     @139A  stack[8] = 0xffffffffffffffffffffffffffffffffffffffff & stack[-3]
	//     @139D  stack[9] = !address(0xffffffffffffffffffffffffffffffffffffffff & stack[-3]).code.length
	// }
	// Block ends with conditional jump to 0x13a8, if !!address(0xffffffffffffffffffffffffffffffffffffffff & stack[-3]).code.length

label_13A4:
	// Incoming jump from 0x13A3, if not !!address(0xffffffffffffffffffffffffffffffffffffffff & stack[-3]).code.length
	// Inputs[1] { @13A7  memory[0x00:0x00] }
	13A4    60  PUSH1 0x00
	13A6    80  DUP1
	13A7    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @13A7  revert(memory[0x00:0x00]); }
	// Block terminates

label_13A8:
	// Incoming jump from 0x13A3, if !!address(0xffffffffffffffffffffffffffffffffffffffff & stack[-3]).code.length
	// Inputs[9]
	// {
	//     @13AA  msg.gas
	//     @13AB  stack[-3]
	//     @13AB  stack[-6]
	//     @13AB  address(stack[-2]).call.gas(msg.gas).value(stack[-3])(memory[stack[-4]:stack[-4] + stack[-5]])
	//     @13AB  stack[-5]
	//     @13AB  stack[-4]
	//     @13AB  stack[-2]
	//     @13AB  stack[-7]
	//     @13AB  memory[stack[-4]:stack[-4] + stack[-5]]
	// }
	13A8    5B  JUMPDEST
	13A9    50  POP
	13AA    5A  GAS
	13AB    F1  CALL
	13AC    15  ISZERO
	13AD    80  DUP1
	13AE    15  ISZERO
	13AF    61  PUSH2 0x13bc
	13B2    57  *JUMPI
	// Stack delta = -6
	// Outputs[2]
	// {
	//     @13AB  memory[stack[-6]:stack[-6] + stack[-7]] = address(stack[-2]).call.gas(msg.gas).value(stack[-3])(memory[stack[-4]:stack[-4] + stack[-5]])
	//     @13AC  stack[-7] = !address(stack[-2]).call.gas(msg.gas).value(stack[-3])(memory[stack[-4]:stack[-4] + stack[-5]])
	// }
	// Block ends with conditional jump to 0x13bc, if !!address(stack[-2]).call.gas(msg.gas).value(stack[-3])(memory[stack[-4]:stack[-4] + stack[-5]])

label_13B3:
	// Incoming jump from 0x13B2, if not !!address(stack[-2]).call.gas(msg.gas).value(stack[-3])(memory[stack[-4]:stack[-4] + stack[-5]])
	// Inputs[4]
	// {
	//     @13B3  returndata.length
	//     @13B7  returndata[0x00:0x00 + returndata.length]
	//     @13B8  returndata.length
	//     @13BB  memory[0x00:0x00 + returndata.length]
	// }
	13B3    3D  RETURNDATASIZE
	13B4    60  PUSH1 0x00
	13B6    80  DUP1
	13B7    3E  RETURNDATACOPY
	13B8    3D  RETURNDATASIZE
	13B9    60  PUSH1 0x00
	13BB    FD  *REVERT
	// Stack delta = +0
	// Outputs[2]
	// {
	//     @13B7  memory[0x00:0x00 + returndata.length] = returndata[0x00:0x00 + returndata.length]
	//     @13BB  revert(memory[0x00:0x00 + returndata.length]);
	// }
	// Block terminates

label_13BC:
	// Incoming jump from 0x13B2, if !!address(stack[-2]).call.gas(msg.gas).value(stack[-3])(memory[stack[-4]:stack[-4] + stack[-5]])
	// Inputs[2]
	// {
	//     @13C3  memory[0x40:0x60]
	//     @13C4  returndata.length
	// }
	13BC    5B  JUMPDEST
	13BD    50  POP
	13BE    50  POP
	13BF    50  POP
	13C0    50  POP
	13C1    60  PUSH1 0x40
	13C3    51  MLOAD
	13C4    3D  RETURNDATASIZE
	13C5    60  PUSH1 0x20
	13C7    81  DUP2
	13C8    10  LT
	13C9    15  ISZERO
	13CA    61  PUSH2 0x13d2
	13CD    57  *JUMPI
	// Stack delta = -2
	// Outputs[2]
	// {
	//     @13C3  stack[-4] = memory[0x40:0x60]
	//     @13C4  stack[-3] = returndata.length
	// }
	// Block ends with conditional jump to 0x13d2, if !(returndata.length < 0x20)

label_13CE:
	// Incoming jump from 0x13CD, if not !(returndata.length < 0x20)
	// Inputs[1] { @13D1  memory[0x00:0x00] }
	13CE    60  PUSH1 0x00
	13D0    80  DUP1
	13D1    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @13D1  revert(memory[0x00:0x00]); }
	// Block terminates

label_13D2:
	// Incoming jump from 0x13CD, if !(returndata.length < 0x20)
	// Inputs[6]
	// {
	//     @13D3  stack[-2]
	//     @13D4  stack[-1]
	//     @13D8  memory[stack[-2]:stack[-2] + 0x20]
	//     @13E4  stack[-3]
	//     @13E6  stack[-6]
	//     @13E7  stack[-5]
	// }
	13D2    5B  JUMPDEST
	13D3    81  DUP2
	13D4    01  ADD
	13D5    90  SWAP1
	13D6    80  DUP1
	13D7    80  DUP1
	13D8    51  MLOAD
	13D9    90  SWAP1
	13DA    60  PUSH1 0x20
	13DC    01  ADD
	13DD    90  SWAP1
	13DE    92  SWAP3
	13DF    91  SWAP2
	13E0    90  SWAP1
	13E1    50  POP
	13E2    50  POP
	13E3    50  POP
	13E4    90  SWAP1
	13E5    50  POP
	13E6    92  SWAP3
	13E7    91  SWAP2
	13E8    50  POP
	13E9    50  POP
	13EA    56  *JUMP
	// Stack delta = -5
	// Outputs[1] { @13E6  stack[-6] = memory[stack[-2]:stack[-2] + 0x20] }
	// Block ends with unconditional jump to stack[-6]

label_13EB:
	// Incoming jump from 0x06F7
	// Inputs[6]
	// {
	//     @13F2  stack[-2]
	//     @142C  memory[0x00:0x40]
	//     @142F  stack[-1]
	//     @1469  memory[0x00:0x40]
	//     @146A  storage[keccak256(memory[0x00:0x40])]
	//     @146D  stack[-3]
	// }
	13EB    5B  JUMPDEST
	13EC    60  PUSH1 0x00
	13EE    60  PUSH1 0x07
	13F0    60  PUSH1 0x00
	13F2    84  DUP5
	13F3    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	1408    16  AND
	1409    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	141E    16  AND
	141F    81  DUP2
	1420    52  MSTORE
	1421    60  PUSH1 0x20
	1423    01  ADD
	1424    90  SWAP1
	1425    81  DUP2
	1426    52  MSTORE
	1427    60  PUSH1 0x20
	1429    01  ADD
	142A    60  PUSH1 0x00
	142C    20  SHA3
	142D    60  PUSH1 0x00
	142F    83  DUP4
	1430    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	1445    16  AND
	1446    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	145B    16  AND
	145C    81  DUP2
	145D    52  MSTORE
	145E    60  PUSH1 0x20
	1460    01  ADD
	1461    90  SWAP1
	1462    81  DUP2
	1463    52  MSTORE
	1464    60  PUSH1 0x20
	1466    01  ADD
	1467    60  PUSH1 0x00
	1469    20  SHA3
	146A    54  SLOAD
	146B    90  SWAP1
	146C    50  POP
	146D    92  SWAP3
	146E    91  SWAP2
	146F    50  POP
	1470    50  POP
	1471    56  *JUMP
	// Stack delta = -2
	// Outputs[5]
	// {
	//     @1420  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-2]
	//     @1426  memory[0x20:0x40] = 0x07
	//     @145D  memory[0x00:0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & stack[-1]
	//     @1463  memory[0x20:0x40] = keccak256(memory[0x00:0x40])
	//     @146D  stack[-3] = storage[keccak256(memory[0x00:0x40])]
	// }
	// Block ends with unconditional jump to stack[-3]

label_1472:
	// Incoming jump from 0x075C
	// Inputs[2]
	// {
	//     @1477  storage[0x00]
	//     @14AB  msg.sender
	// }
	1472    5B  JUMPDEST
	1473    60  PUSH1 0x00
	1475    80  DUP1
	1476    90  SWAP1
	1477    54  SLOAD
	1478    90  SWAP1
	1479    61  PUSH2 0x0100
	147C    0A  EXP
	147D    90  SWAP1
	147E    04  DIV
	147F    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	1494    16  AND
	1495    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	14AA    16  AND
	14AB    33  CALLER
	14AC    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	14C1    16  AND
	14C2    14  EQ
	14C3    61  PUSH2 0x14cb
	14C6    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x14cb, if 0xffffffffffffffffffffffffffffffffffffffff & msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & storage[0x00] / 0x0100 ** 0x00

label_14C7:
	// Incoming jump from 0x14C6, if not 0xffffffffffffffffffffffffffffffffffffffff & msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & storage[0x00] / 0x0100 ** 0x00
	// Inputs[1] { @14CA  memory[0x00:0x00] }
	14C7    60  PUSH1 0x00
	14C9    80  DUP1
	14CA    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @14CA  revert(memory[0x00:0x00]); }
	// Block terminates

label_14CB:
	// Incoming jump from 0x14C6, if 0xffffffffffffffffffffffffffffffffffffffff & msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0xffffffffffffffffffffffffffffffffffffffff & storage[0x00] / 0x0100 ** 0x00
	// Inputs[3]
	// {
	//     @14CC  stack[-1]
	//     @14D6  storage[0x01]
	//     @150E  stack[-2]
	// }
	14CB    5B  JUMPDEST
	14CC    80  DUP1
	14CD    60  PUSH1 0x01
	14CF    60  PUSH1 0x00
	14D1    61  PUSH2 0x0100
	14D4    0A  EXP
	14D5    81  DUP2
	14D6    54  SLOAD
	14D7    81  DUP2
	14D8    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	14ED    02  MUL
	14EE    19  NOT
	14EF    16  AND
	14F0    90  SWAP1
	14F1    83  DUP4
	14F2    73  PUSH20 0xffffffffffffffffffffffffffffffffffffffff
	1507    16  AND
	1508    02  MUL
	1509    17  OR
	150A    90  SWAP1
	150B    55  SSTORE
	150C    50  POP
	150D    50  POP
	150E    56  *JUMP
	// Stack delta = -2
	// Outputs[1] { @150B  storage[0x01] = (0xffffffffffffffffffffffffffffffffffffffff & stack[-1]) * 0x0100 ** 0x00 | (~(0xffffffffffffffffffffffffffffffffffffffff * 0x0100 ** 0x00) & storage[0x01]) }
	// Block ends with unconditional jump to stack[-2]

label_150F:
	// Incoming call from 0x0A6F, returns to 0x0A70
	// Incoming call from 0x0944, returns to 0x0945
	// Incoming call from 0x099D, returns to 0x099E
	// Incoming call from 0x0F04, returns to 0x0F05
	// Inputs[2]
	// {
	//     @1512  stack[-2]
	//     @1513  stack[-1]
	// }
	150F    5B  JUMPDEST
	1510    60  PUSH1 0x00
	1512    82  DUP3
	1513    82  DUP3
	1514    11  GT
	1515    15  ISZERO
	1516    61  PUSH2 0x151e
	1519    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @1510  stack[0] = 0x00 }
	// Block ends with conditional jump to 0x151e, if !(stack[-1] > stack[-2])

label_151A:
	// Incoming jump from 0x1519, if not !(stack[-1] > stack[-2])
	// Inputs[1] { @151D  memory[0x00:0x00] }
	151A    60  PUSH1 0x00
	151C    80  DUP1
	151D    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @151D  revert(memory[0x00:0x00]); }
	// Block terminates

label_151E:
	// Incoming jump from 0x1519, if !(stack[-1] > stack[-2])
	// Inputs[4]
	// {
	//     @151F  stack[-2]
	//     @1520  stack[-3]
	//     @1522  stack[-1]
	//     @1524  stack[-4]
	// }
	151E    5B  JUMPDEST
	151F    81  DUP2
	1520    83  DUP4
	1521    03  SUB
	1522    90  SWAP1
	1523    50  POP
	1524    92  SWAP3
	1525    91  SWAP2
	1526    50  POP
	1527    50  POP
	1528    56  *JUMP
	// Stack delta = -3
	// Outputs[1] { @1524  stack[-4] = stack[-3] - stack[-2] }
	// Block ends with unconditional jump to stack[-4]

label_1529:
	// Incoming call from 0x0B41, returns to 0x0B42
	// Incoming call from 0x0F99, returns to 0x0F9A
	// Inputs[2]
	// {
	//     @152C  stack[-1]
	//     @152D  stack[-2]
	// }
	1529    5B  JUMPDEST
	152A    60  PUSH1 0x00
	152C    81  DUP2
	152D    83  DUP4
	152E    01  ADD
	152F    90  SWAP1
	1530    50  POP
	1531    82  DUP3
	1532    81  DUP2
	1533    10  LT
	1534    15  ISZERO
	1535    61  PUSH2 0x153d
	1538    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @152F  stack[0] = stack[-2] + stack[-1] }
	// Block ends with conditional jump to 0x153d, if !(stack[-2] + stack[-1] < stack[-2])

label_1539:
	// Incoming jump from 0x1538, if not !(stack[-2] + stack[-1] < stack[-2])
	// Inputs[1] { @153C  memory[0x00:0x00] }
	1539    60  PUSH1 0x00
	153B    80  DUP1
	153C    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @153C  revert(memory[0x00:0x00]); }
	// Block terminates

label_153D:
	// Incoming jump from 0x1538, if !(stack[-2] + stack[-1] < stack[-2])
	// Inputs[3]
	// {
	//     @153E  stack[-1]
	//     @153E  stack[-4]
	//     @153F  stack[-3]
	// }
	153D    5B  JUMPDEST
	153E    92  SWAP3
	153F    91  SWAP2
	1540    50  POP
	1541    50  POP
	1542    56  *JUMP
	// Stack delta = -3
	// Outputs[1] { @153E  stack[-4] = stack[-1] }
	// Block ends with unconditional jump to stack[-4]

	1543    FE    *ASSERT
	1544    A2    LOG2
	1545    65    PUSH6 0x627a7a723158
	154C    20    SHA3
	154D    35    CALLDATALOAD
	154E    A6    A6
	154F    03    SUB
	1550    81    DUP2
	1551    64    PUSH5 0x4075184d56
	1557    84    DUP5
	1558    36    CALLDATASIZE
	1559    44    DIFFICULTY
	155A    7B    PUSH28 0xf54e62e780bc1b95d952bb221c8443ba762264736f6c634300051100
	1577    32    ORIGIN
