 <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error Message Example</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        #errorMessage {
            display: none;
            text-align: center;
            padding: 20px;
            border: 2px solid #d9534f;
            color: #d9534f;
            background-color: #f2dede;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div id="errorMessage">
        An exception occurred on the server side, please try again.
        <h2>${Exmsg }</h2>
    </div>
    

    <!-- Your page content goes here -->

    <script>
        // Simulate a server-side exception
        // Replace this with your actual server-side logic
        function simulateServerError() {
            // For demonstration purposes, we're just displaying the error message
            document.getElementById('errorMessage').style.display = 'block';
        }

        // Call this function when you encounter a server-side exception
        simulateServerError();
    </script>
</body>
</html>
