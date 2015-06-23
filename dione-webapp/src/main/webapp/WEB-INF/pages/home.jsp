<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>D3 Hello World</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/d3.v3.min.js"></script>
  </head>
  <body>
    <script type="text/javascript">

		d3.csv("resources/data.csv",function(data){
		
			var canvas=d3.select("body").append("svg")
				.attr("width",500)
				.attr("height",500)
				
			canvas.selectAll("rect")
				.data(data)
				.enter()
					.append("rect")
					.attr("width",function (d){return d.age * 10;})
					.attr("height",48)
					.attr("y",function (d,i){return i* 50;})
					.attr("fill","blue");
			canvas.selectAll("text")
				.data(data)
				.enter()
					.append("text")
					.attr("fill","white")
					.attr("y",function (d,i){return i* 50 + 24;})
					.text(function (d){return d.name;})
					
		})

    </script>
  </body>
</html>