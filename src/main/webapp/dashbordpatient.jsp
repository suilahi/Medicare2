<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.doctor.Model.user"%>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
  HttpSession sessionObj = request.getSession(false);
  user users = (sessionObj != null) ? (user) sessionObj.getAttribute("user") : null;

  if (users == null) {
    response.sendRedirect("index.jsp");
    return;
  }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>dashbord</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex flex-col items-center min-h-screen p-6 text-white bg-cover bg-center bg-no-repeat"
      style="background-image: url('https://images.pexels.com/photos/6129042/pexels-photo-6129042.jpeg?auto=compress&cs=tinysrgb&h=1080&w=1920');">

<h2 class="text-3xl font-bold mb-6">Bienvenue sur DoctorRV</h2>

<div class="bg-white bg-opacity-20 p-6 rounded-lg shadow-lg w-full max-w-md">
  <h3 class="text-xl font-semibold mb-4">Prendre un rendez-vous</h3>
    <div>
      <label for="username" class="block font-medium">Nom d'utilisateur :</label>
      <input type="text" id="username" name="username" required
             class="w-full p-2 rounded-md border-none focus:ring-2 focus:ring-blue-300 text-gray-900">
    </div>

    <div>
      <label for="email" class="block font-medium">Email :</label>
      <input type="email" id="email" name="email" required
             class="w-full p-2 rounded-md border-none focus:ring-2 focus:ring-blue-300 text-gray-900">
    </div>

    <div>
      <label for="telephone" class="block font-medium">Téléphone :</label>
      <input type="text" id="telephone" name="telephone" required
             class="w-full p-2 rounded-md border-none focus:ring-2 focus:ring-blue-300 text-gray-900">
    </div>

    <div>
      <label for="motif" class="block font-medium">Motif :</label>
      <textarea id="motif" name="motif" required
                class="w-full p-2 rounded-md border-none focus:ring-2 focus:ring-blue-300 text-gray-900"></textarea>
    </div>

    <div>
      <label for="date" class="block font-medium">Date :</label>
      <input type="date" id="date" name="date" required
             class="w-full p-2 rounded-md border-none focus:ring-2 focus:ring-blue-300 text-gray-900">
    </div>

    <div>
      <label for="heure" class="block font-medium">Heure :</label>
      <input type="time" id="heure" name="heure" required
             class="w-full p-2 rounded-md border-none focus:ring-2 focus:ring-blue-300 text-gray-900">
    </div>

    <button type="submit" class="w-full bg-red-500 hover:bg-red-600 text-white font-bold py-2 rounded-md transition duration-300">Réserver</button>
  </form>
</div>
<a href="logout" class="fixed top-6 right-6 bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md">
  Se deconnecter</a>

</body>
</html>
