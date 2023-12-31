<%@page import="java.sql.*" %>
<%@page import="Project.ConnectionProvider" %>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name").toUpperCase();
    String father = request.getParameter("father").toUpperCase();
    String mother = request.getParameter("mother").toUpperCase();
    String mobilenumber = request.getParameter("mobilenumber");
    String email = request.getParameter("email");
    String address = request.getParameter("address").toUpperCase();
    try {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement("update donor set name=?,father=?,mother=?,mobilenumber=?,email=?,address=? where id=?");
        ps.setString(1, name);
        ps.setString(2, father);
        ps.setString(3, mother);
        ps.setString(4, mobilenumber);
        ps.setString(5, email);
        ps.setString(6, address);
        ps.setString(7, id);
        ps.executeUpdate();
        response.sendRedirect("editDeleteList.jsp?msg=valid");
    } catch (Exception e) {
        response.sendRedirect("editDeleteList.jsp?msg=invalid");
    }
%>