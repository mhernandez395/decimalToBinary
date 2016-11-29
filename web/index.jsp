<%-- 
    Document   : index
    Created on : 29-nov-2016, 1:13:23
    Author     : marvin hernandez
--%>

<%@page import="binary.Validation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>convert decimal to binary</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <form>
            <fieldset>
                <legend>Convert decimal to binary</legend>
            <div class="form-group col-md-2">
              <label>Number:</label>
              <input type="number" class="form-control" name="number" step="1" required>
            </div>
            
            </fieldset>
            <div class="form-group col-md-2">
                <button type="submit" class="btn btn-success" name="ok" value="convert">Convert</button>
            </div>
         </form>
        <%
            //convert
            if(request.getParameter("ok") != null)
            {
            
                try{

                    if(Validation.isInteger(request.getParameter("number")))
                    {
                        int number=Integer.parseInt(request.getParameter("number"));
                        out.println("<div class='alert alert-danger col-sm-3'>Binary: "+Validation.decimalToBinary(number)+"</div>");

                    }
                    else
                    {
                        out.println("<div class='alert alert-danger col-sm-3'>IS NOT NUMBER</div>");
                    }
                
                }
                catch (NumberFormatException e)
                {
                    out.println("<div class='alert alert-danger col-sm-3'>IS NOT NUMBER</div>");
                }
                catch (Exception e)
                {
                    out.println("<div class='alert alert-danger col-sm-3'>Error</div>");
                }
            
            }
        %>
    </body>
</html>
