<?php 

namespace App\Tests\Controller;

use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\HttpFoundation\Response;

class SecurityControllerTest extends WebTestCase
{
    public function testUserProfilePage()
    {
        // Créez un client pour simuler une requête HTTP
        $client = static::createClient();

        // Récupérez le UserRepository depuis le conteneur de services
        $userRepository = static::$container->get(UserRepository::class);
        
        // Récupérez l'utilisateur de test
        $testUser = $userRepository->findOneByEmail('john.doe@example.com');

        // Vérifiez que l'utilisateur existe
        $this->assertNotNull($testUser, 'L\'utilisateur de test n\'existe pas.');

        // Simulez la connexion de l'utilisateur
        $client->loginUser($testUser);
        
        // Testez la page de profil (par exemple, /compte)
        $client->request('GET', '/compte');

        // Vérifiez que la réponse est correcte
        $this->assertResponseIsSuccessful(); // Vérifie que le code de statut est 200
        $this->assertSelectorTextContains('h2', 'Mon compte'); // Assurez-vous que le titre de la page est présent
        // Ajoutez d'autres assertions selon le contenu attendu de la page
    }

    public function testLoginWithInvalidPassword()
    {
        // Créez un client pour simuler une requête HTTP
        $client = static::createClient();

        // Récupérez le UserRepository depuis le conteneur de services
        $userRepository = static::$container->get(UserRepository::class);
        
        // Récupérez l'utilisateur de test
        $testUser = $userRepository->findOneByEmail('john.doe@example.com');

        // Vérifiez que l'utilisateur existe
        $this->assertNotNull($testUser, 'L\'utilisateur de test n\'existe pas.');

        // Accédez à la page de connexion pour obtenir le jeton CSRF
        $crawler = $client->request('GET', '/connexion');

        // Récupérez le jeton CSRF
        $csrfToken = $crawler->filter('input[name="_csrf_token"]')->attr('value');

        // Simulez une requête de connexion avec un mot de passe invalide
        $client->request('POST', '/connexion', [
            'email' => $testUser->getEmail(),
            'password' => 'invalid_password', // Mot de passe incorrect
            '_csrf_token' => $csrfToken, // Ajoutez le jeton CSRF ici
        ]);

        // Vérifiez que la réponse est une redirection vers la même page
        $this->assertResponseRedirects('/connexion'); // Assurez-vous que nous revenons à la page de connexion

        // Vérifiez que le message d'erreur est présent dans la réponse
        $crawler = $client->followRedirect();
        $this->assertSelectorTextContains('.alert-danger', 'Identifiants invalides'); // Changez selon votre implémentation du message d'erreur
    }
}