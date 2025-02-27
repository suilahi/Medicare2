<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Inscription</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex flex-col items-center min-h-screen p-6 text-white bg-cover bg-center bg-no-repeat"
      style="background-image: url('https://images.pexels.com/photos/6129042/pexels-photo-6129042.jpeg?auto=compress&cs=tinysrgb&h=1080&w=1920');">

<div class="max-w-md mx-auto bg-white p-6 rounded-lg shadow-md mt-10">
  <h2 class="text-2xl font-semibold text-center mb-6">Inscription</h2>

  <form action="register" method="post">
    <div class="mb-4">
      <label for="nom" class="block text-sm font-medium text-gray-700">Nom Complet:</label>
      <input type="text" id="nom" name="name" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-black">
    </div>

    <div class="mb-4">
      <label for="email" class="block text-sm font-medium text-gray-700">Email:</label>
      <input type="email" id="email" name="email" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-black">
    </div>

    <div class="mb-4">
      <label for="motdepasse" class="block text-sm font-medium text-gray-700">Mot de passe:</label>
      <input type="password" id="motdepasse" name="motdepasse" minlength="8" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm  focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-black">
    </div>

    <div class="mb-4">
      <label for="telephone" class="block text-sm font-medium text-gray-700">Numero de telephone:</label>
      <input type="text" id="telephone" name="phone" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-black">
    </div>

    <div class="mb-4">
      <label for="role" class="block text-sm font-medium text-gray-700">Rôle:</label>
      <select name="role" id="role" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-black">
        <option value="patient">Patient</option>
        <option value="medecin">Medecin</option>
      </select>
    </div>

    <div class="mb-4">

      <label for="specialisation" class="block text-sm font-medium text-gray-700">Spécialisation (uniquement pour médecin):</label>
      <input type="text" id="specialisation" name="specialisation" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-black">
    </div>

    <div class="flex justify-center">
      <button type="submit" class="w-full bg-blue-500 text-white py-2 px-4 rounded-lg focus:outline-none hover:bg-blue-600">S'inscrire</button>
    </div>
  </form>
</div>

</body>
</html>
