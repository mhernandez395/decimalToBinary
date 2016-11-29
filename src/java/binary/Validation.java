/*
 * 
 */
package binary;

import static java.lang.Integer.parseInt;

/**
 *
 * @author marvin hernandez
 * @date 28/11/16
 */
public class Validation {
    
    /**
     * @name isInteger
     * @param value String :
     * @return boolean : 
     * @description: return when the param is number or false when the param is not number
     */
    public static boolean isInteger(String value)
    {
        int result;
        boolean flag=true;
        
        try{
        result=parseInt(value);
        }
        catch (NumberFormatException e)
        {
            flag=false;
        }
        return flag;
    }
    
    /**
     * @name decimalToBinary
     * @autor Marvin hernandez
     * @param value : number decimal
     * @return int : number binary
     * @description : converte number decimal to binary
     */
    public static int decimalToBinary(int value)
    {
        int digito,exp,result=0;
        double binary;
        
        exp=0;
        binary=0;
        
        try{
            while(value!=0){
                    digito = value % 2;            
                    binary = binary + digito * Math.pow(10, exp);   
                    exp++;
                    value = value/2;
            }
        }
        catch (NumberFormatException e)
        {
            binary=0;
        }
        
        result = (int) binary; // converte the doble to integer
        
        return result;
    }
    
    
    
}
