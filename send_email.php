<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitize input data
    $name = htmlspecialchars(strip_tags(trim($_POST["name"])));
    $email = filter_var(trim($_POST["email"]), FILTER_SANITIZE_EMAIL);
    $message = htmlspecialchars(strip_tags(trim($_POST["message"])));

    // Validate input data
    if (!empty($name) && !empty($email) && !empty($message) && filter_var($email, FILTER_VALIDATE_EMAIL)) {
        // Recipient email address
        $to = "calosroberto@gmail.com";

        // Subject of the email
        $subject = "Novo contato de $name";

        // Email body
        $email_content = "Nome: $name\n";
        $email_content .= "Email: $email\n\n";
        $email_content .= "Mensagem:\n$message\n";

        // Email headers
        $headers = "From: $name <$email>";

        // Send the email
        if (mail($to, $subject, $email_content, $headers)) {
            // Redirect to a thank you page (or you can display a success message)
            header("Location: thank_you.html");
            exit;
        } else {
            // Display an error message
            echo "Ops! Algo deu errado e não conseguimos enviar sua mensagem.";
        }
    } else {
        // Display an error message
        echo "Por favor, preencha todos os campos e forneça um endereço de e-mail válido.";
    }
} else {
    // Redirect to the form if the request method is not POST
    header("Location: index.html");
    exit;
}
?>
