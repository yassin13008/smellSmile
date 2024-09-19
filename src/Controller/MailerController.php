<?php

namespace App\Controller;

use App\Service\Mail;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MailerController extends AbstractController
{
    #[Route('/mailer', name: 'mailer')]
    public function index(): Response
    {
        $mail = new Mail();
        $mail->send('yas.hammami@gmail.com', 'Yassin', 'test', 'contenu');
        return $this->redirectToRoute('home');
    }
}
