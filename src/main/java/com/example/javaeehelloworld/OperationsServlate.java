package com.example.javaeehelloworld;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/dispatcher")
public class OperationsServlate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the selected method (operation) from the form
        String method = request.getParameter("method");

        // Retrieve the values of num1 and num2 from the form
        String num1String = request.getParameter("num1");
        String num2String = request.getParameter("num2");

        // Check if num1 and num2 are not empty
        if (!num1String.isEmpty() && !num2String.isEmpty()) {
            int num1 = Integer.parseInt(num1String);
            int num2 = Integer.parseInt(num2String);

            if ("+".equals(method)) {
                // Perform addition
                int result = num1 + num2;
                request.setAttribute("result", result);
                RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
                dispatcher.forward(request, response);
            } else if ("*".equals(method)) {
                // Perform multiplication
                int result = num1 * num2;
                request.setAttribute("result", result);
                RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
                dispatcher.forward(request, response);
            } else {
                // Handle unsupported operation
                response.getWriter().write("Unsupported operation");
            }
        } else {
            // Handle case when num1 or num2 is empty
            response.getWriter().write("Please enter valid numbers");
        }
    }
}
