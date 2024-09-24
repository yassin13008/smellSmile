<?php

namespace App\Tests\Controller;

use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\HttpFoundation\Response;

class RegisterControllerTest extends WebTestCase
{    public function testSuccessfulRegistration()
    {
        $client = static::createClient();

        // Simule une inscription réussie
        $crawler = $client->request('GET', '/inscription');

        $form = $crawler->selectButton('Valider')->form();
        $form['register[firstname]'] = 'John';
        $form['register[lastname]'] = 'Doe';
        $form['register[email]'] = 'ouki.doe@example.com'; // Assurez-vous que cet e-mail n'est pas déjà pris
        $form['register[password][first]'] = 'password123';
        $form['register[password][second]'] = 'password123';

        $client->submit($form);
        $this->assertResponseRedirects('/compte'); // Vérifie la redirection vers le compte

        // Suivre la redirection
        $client->followRedirect();
        $this->assertSelectorTextContains('h2', 'Mon compte'); // Vérifiez le contenu de la page d'accueil après l'inscription
    }

    public function testRegistrationWithInvalidData()
    {
        $client = static::createClient();

        // Simule une inscription avec des données invalides
        $crawler = $client->request('GET', '/inscription');

        $form = $crawler->selectButton('Valider')->form();
        $form['register[firstname]'] = 'John';
        $form['register[lastname]'] = 'Doe';
        $form['register[email]'] = 'invalid-email'; // E-mail invalide
        $form['register[password][first]'] = 'password123';
        $form['register[password][second]'] = 'different-password'; // Mot de passe différent

        $client->submit($form);
        $this->assertResponseStatusCodeSame(422); // Vérifie que le code de statut HTTP est 422

        // Vérifiez si le message d'erreur est affiché pour l'e-mail
        $this->assertSelectorExists('.form-error-message', 'Cet email est déja pris');
    }
}
