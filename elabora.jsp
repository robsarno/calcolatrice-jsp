<html>
	<head>
		<title>JSP di prova</title>
		<meta charset="utf-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="container">
			<br>
			<div class="jumbotron">
			  <h1 class="display-3">Calcolatrice</h1>
			  <p class="lead">Una semplice calcolatrice utilizzando una JSP.</p>
			  <hr>
			  <p>Output del risultato calcolato.</p>
			</div>
			
			<%
			String opand=request.getParameter("opand"), text="<h2>Il tuo risultato e': ", error="<div class='alert alert-danger'><strong>Errore!</strong>";
			try {
				int n1=Integer.parseInt(request.getParameter("n1"));
				int n2=Integer.parseInt(request.getParameter("n2"));
				
				if(opand.compareTo("p")==0)
					out.print(text+(n1+n2)+"</h2>");
				else if(opand.compareTo("m")==0)
					out.print(text+(n1-n2)+"</h2>");
				else if(opand.compareTo("pr")==0)
					out.print(text+(n1*n2)+"</h2>");
				else if(opand.compareTo("d")==0)
					out.print(text+(n1/n2)+"</h2>");
				else
					out.print(error+" Operatore non valido.</div>");
			}
			 catch (Exception e) {
				out.println(error+" Errore nei parametri inseriti.</div>");
			}
			%>
			<br>
			<hr>
			<input class="btn btn-primary" type="button" onclick="location.href = './inizio.html';" value="Torna alla calcolatrice">
		</div>
	</body>
</html>