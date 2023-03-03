<?php

namespace App\Services\Emails;

use App\Models\MailMaster;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\PHPMailer;
use Illuminate\Support\Facades\Crypt;

class LabResultService
{
    private const INVALID_MAIL = 'Invalid Email ID. Check Registration';
    private const MAIL_ERROR = 'An Error Occured while Sending the Bill';
    private const MAIL_SUCCESS = 'Report Sent to the Patient';
    private const SENDER_INVALID_MAIL = 'Invalid Email ID. Check Mail Master!!!';

    public function createFile(): string
    {
        $filePath = \storage_path('temp/File' . rand(10, 200) . '.pdf');
        $file = \fopen($filePath, 'w');
        \fclose($file);

        return $filePath;
    }

    private function getSmtpHost(string $email): string
    {
        if (str_contains($email, 'gmail')) {
            return 'smtp.gmail.com';
        }
        if (str_contains($email, 'yahoo')) {
            return 'smtp.mail.yahoo.com';
        }
        
        return 'smtpout.secureserver.net';
    }

    public function sendReport(?string $toEmailAddress, string $view): array
    {
        if (filter_var($toEmailAddress, FILTER_VALIDATE_EMAIL) === false) {
            return [
                'status' => false,
                'error' => self::INVALID_MAIL
            ];
        }

        $emailAccount = 'Info@credencehospital.co.in';

        // if ($emailAccount === null || $emailAccount->email === '') {
        //     return [
        //         'status' => false,
        //         'error' => self::SENDER_INVALID_MAIL
        //     ];
        // }
        $smtpHost = $this->getSmtpHost($emailAccount);

        $mail = new PHPMailer();
        $mail->SMTPDebug = SMTP::DEBUG_OFF;
        $mail->isSMTP();
        $mail->Host       = $smtpHost;
        $mail->SMTPAuth   = true;
        $mail->Username   = $emailAccount;
        $mail->Password   = 'careyoudeserve';
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port       = 587;
        $mail->Subject = 'Lab Result';
        $mail->AllowEmpty = true;
        $mail->setFrom($emailAccount, 'Credence');
        $mail->addAddress($toEmailAddress);
        $mail->SMTPOptions = array(
            'ssl' => array(
                'verify_peer' => false,
                'verify_peer_name' => false,
                'allow_self_signed' => true
            )
        );

        $mail->addStringAttachment($view, 'Bill.pdf', type: 'application/pdf');
        $mailSent = $mail->send();
        if ($mailSent === false) {
            return ['status' => false, 'error' => self::MAIL_ERROR];
        }
        return ['status' => true, 'message' => self::MAIL_SUCCESS];
    }
}
