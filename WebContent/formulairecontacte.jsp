<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulaire de contact</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

       
       
       <nav role="navigation" class="onoff">
            <ul>
                <li><a href="photo.html">Home</a></li>
                <li><a href="formulaire.jsp">Banque du sang</a></li>
                <li>About Us
                    <ul>
                        <li><a href="dondu.html">Don du sang</a></li>
                        <li><a href="lebut.html">Le bute du site</a></li>
                    </ul>
                </li>
                <li><a href="formulairecontacte.jsp">Contact Us</a></li>
            </ul>
        </nav>
       
       
         <form action="formulairecontactSave.jsp">
         <h2>Formulaire de contact</h2>
            <input name="name" type="text" class="feedback-input" placeholder="Nom" /> 
            <input name="email" type="text" class="feedback-input" placeholder="Email" /> 
            <textarea name="text" class="feedback-input" placeholder="Comment"></textarea>
            <input type="submit" value="SUBMIT"/>
        </form>
        
         <footer>
        Lorem Temporibus sint quod, et quidem inventore maiores tempora ad facere necessitatibus, neque voluptatem. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae optio adipisci nisi sunt. Provident, blanditiis cum laborum temporibus sit eius exercitationem neque numquam porro pariatur illo deserunt, beatae atque doloribus! 
    </footer>

</body>
</html>