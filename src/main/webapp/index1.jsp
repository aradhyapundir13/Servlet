<!-- 1st program ArrayList

<%@ page import="java.util.ArrayList, java.util.Arrays" %>
<html>
<body>
<h2>Hello World!</h2>
<%
    ArrayList<String> Products = new ArrayList<>(Arrays.asList("laptop", "mobile", "bag", "tshirt", "jeans"));
    for(int i = 0; i < Products.size(); i++){
        out.print(Products.get(i) + "     ");
    }
%>
</body>
</html>

-->

<!-- 2nd Program Day and Time

<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<html>
<body>
<h2>Current Date and Time</h2>
<%
    Date now = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
    String formattedDate = formatter.format(now);
%>
<p>The current date and time is: <%= formattedDate %></p>
</body>
</html>

-->

<!-- 3rd Program Conditional

<html>
<body>
<h2>Conditional Rendering</h2>
<%! boolean isLoggedIn=true;%>
<% if(isLoggedIn){
        out.println("Welcome to this page");
    }
    else{
        out.println("please log in");
    }
%>
</body>
</html>

-->

<%@ page import="java.util.ArrayList, java.util.Arrays" %>

<html>
<body>
<h2>Employees Details Print</h2>
<%! public class Employee {
        private String name;
        private String department;

        public Employee(String name, String department) {
            this.name = name;
            this.department = department;
        }

        public String getName() {
            return name;
        }

        public String getDepartment() {
            return department;
        }
    }
%>
<%
       ArrayList<Employee> employeeList = new ArrayList<>();
              employeeList.add(new Employee("John Doe", "HR"));
              employeeList.add(new Employee("Jane Smith", "Finance"));
              employeeList.add(new Employee("Mike Johnson", "IT"));
              request.setAttribute("employeeList", employeeList);
%>
<table border="1">
        <tr>
            <th>Name</th>
            <th>Department</th>
        </tr>
        <c:forEach var="employee" items="${employeeList}">
            <tr>
                <td>${employee.name}</td>
                <td>${employee.department}</td>
            </tr>
        </c:forEach>
</table>
</body>
</html>