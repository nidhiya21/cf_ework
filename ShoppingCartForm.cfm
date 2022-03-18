<html> 
<head> 
    <title>Shopping Cart</title> 
</head> 
<cfscript> 
CartItems=4; 
Cart = ArrayNew(1); 
for ( i=1; i LE cartItems; i=i+1) 
{  
    Cart[i]=StructNew(); 
    Cart[i].ID=i; 
    Cart[i].Name="Product " & i; 
    Cart[i].SKU=i*100+(2*i*10)+(3*i); 
    Cart[i].Qty=3*i-2; 
} 
</cfscript> 
 
<body> 
Your shopping cart has the following items.<br> 
You can change your order quantities.<br> 
If you don't want any item, clear the item's check box.<br> 
When you are ready to order, click submit.<br> 
<br> 
<cfform name="ShoppingCart" action="ShoppingCartAction.cfm" method="post"> 
<table> 
    <tr> 
    <td>Order?</td> 
    <td>Product</td> 
    </tr> 
    <cfloop index="i" from="1" to="#cartItems#"> 
        <tr> 
        <cfset productName= "product_" & Cart[i].ID> 
        <cfset skuName= "sku_" & Cart[i].ID> 
        <cfset qtyname= "qty_" & Cart[i].ID> 
        <td><cfinput type="checkbox" name="itemID" value="#Cart[i].ID#" checked> 
             </td> 
        <td><cfinput type="text" name="#productName#" value="#Cart[i].Name#" 
             passThrough = "readonly = 'True'"></td> 
     
        </tr> 
    </cfloop> 
</table> 
<input type="submit" name="submit" value="submit"> 
</cfform> 
 
</body> 
</html>