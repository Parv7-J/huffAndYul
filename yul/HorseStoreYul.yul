object "HorseStoreYul" {
    code {
        datacopy(0,dataoffset("runtime"),datasize("runtime"))
        return(0,datasize("runtime"))
    }
    object "runtime" {
        code{
            switch selector()
            case 0x67d41eca {
                storeNumebr(decodeAsUint(0))
            }
            case 0xfe7e1be3 {
                returnUint(readNumber())
            }
            default {
                revert(0,0)
            }
            function selector() -> s {
                s := div(calldataload(0),0x100000000000000000000000000000000000000000000000000000000)
            }
            function storeNumebr(newNumber){
                sstore(0,newNumber)
            }
            function decodeAsUint(offset) -> v{
                let positionInCalldata := add(4,mul(offset,0x20))
                if lt(calldatasize(),add(positionInCalldata,0x20)) {
                    revert(0,0)
                }
                v := calldataload(positionInCalldata)
            }
            function readNumber() -> storedNumber {
                storedNumber := sload(0)
            }
            function returnUint(v){
                mstore(0,v)
                return(0,0x20)
            }
        }
    }
}