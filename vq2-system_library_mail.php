<?php
/**
 * @package		OpenCart
 * @author		Daniel Kerr
 * @copyright	Copyright (c) 2005 - 2017, OpenCart, Ltd. (https://www.opencart.com/)
 * @license		https://opensource.org/licenses/GPL-3.0
 * @link		https://www.opencart.com
*/

/**
* Mail class
*/
include_once(\VQMod::modCheck(DIR_SYSTEM . 'library/phpmailer/class.phpmailer.php'));
class Mail {
	protected $to;
	protected $from;
	protected $sender;
	protected $reply_to;
    protected $readreceipt;
	protected $subject;
	protected $text;
	protected $html;
	protected $attachments = array();
	public $parameter;

	/**
	 * Constructor
	 *
	 * @param	string	$adaptor
	 *
 	*/
	public function __construct($adaptor = 'mail') {
		$class = 'Mail\\' . $adaptor;
		
		if (class_exists($class)) {
			$this->adaptor = new $class();
		} else {
			trigger_error('Error: Could not load mail adaptor ' . $adaptor . '!');
			exit();
		}	
	}
	
	/**
     * 
     *
     * @param	mixed	$to
     */
	public function setTo($to) {
		$this->to = $to;
	}
	
	/**
     * 
     *
     * @param	string	$from
     */
	public function setFrom($from) {
		$this->from = $from;
	}
	
	/**
     * 
     *
     * @param	string	$sender
     */
	public function setSender($sender) {
		$this->sender = $sender;
	}
	
	/**
     * 
     *
     * @param	string	$reply_to
     */
	public function setReplyTo($reply_to) {
		$this->reply_to = $reply_to;
	}
	
	/**
     * 
     *
     * @param	string	$subject
     */
    public function setReadReceipt($readreceipt) {
        $this->readreceipt = $readreceipt;
    }
            
	public function setSubject($subject) {
		$this->subject = $subject;
	}
	
	/**
     * 
     *
     * @param	string	$text
     */
	public function setText($text) {
		$this->text = $text;
	}
	
	/**
     * 
     *
     * @param	string	$html
     */
	public function setHtml($html) {
		$this->html = $html;
	}
	
	/**
     * 
     *
     * @param	string	$filename
     */
	public function addAttachment($filename) {
		$this->attachments[] = $filename;
	}
	
	/**
     * 
     *
     */
/*
	public function send() {
		if (!$this->to) {
			throw new \Exception('Error: E-Mail to required!');
		}

		if (!$this->from) {
			throw new \Exception('Error: E-Mail from required!');
		}

		if (!$this->sender) {
			throw new \Exception('Error: E-Mail sender required!');
		}

		if (!$this->subject) {
			throw new \Exception('Error: E-Mail subject required!');
		}

		if ((!$this->text) && (!$this->html)) {
			throw new \Exception('Error: E-Mail message required!');
		}
		
		foreach (get_object_vars($this) as $key => $value) {
			$this->adaptor->$key = $value;
		}
		
		$this->adaptor->send();
*/
    public function send() {
        if (!$this->to) {
            trigger_error('Error: E-Mail to required!');
            exit();            
        }

        if (!$this->from) {
            trigger_error('Error: E-Mail from required!');
            exit();                    
        }

        if (!$this->sender) {
            trigger_error('Error: E-Mail sender required!');
            exit();                    
        }

        if (!$this->subject) {
            trigger_error('Error: E-Mail subject required!');
            exit();                    
        }

        if ((!$this->text) && (!$this->html)) {
            trigger_error('Error: E-Mail message required!');
            exit();                    
        }
        
        $mail  = new PHPMailer();
        $mail->CharSet = "UTF-8";
        
        if (is_array($this->to)) {
            foreach ($this->to as $toTmp){
                $mail->AddAddress($toTmp);
            }
        } else {
            $mail->AddAddress($this->to);
        }

        if(!empty($this->readreceipt)) {
            $mail->ConfirmReadingTo = $this->readreceipt;
        }

        $mail->Subject = $this->subject;
        
        $mail->AddReplyTo($this->from, $this->sender);
        $mail->SetFrom($this->from, $this->sender);
        $mail->AddReplyTo($this->from, $this->sender);
        
        if (!$this->html) {
            $mail->Body = $this->text;
        } else {
            $mail->MsgHTML($this->html);
            if ($this->text) {
                $mail->AltBody = $this->text;
            } else {
                $mail->AltBody = 'This is a HTML email and your email client software does not support HTML email!';
            }
        }

        foreach ($this->attachments as $attachment) {
            if (file_exists($attachment['file'])) {
                $mail->AddAttachment($attachment['file']);
            }
        }

        if ($this->protocol == 'smtp') {
            $mail->IsSMTP();
            $mail->Host = $this->smtp_hostname;
            $mail->Port = $this->smtp_port;
            if($this->smtp_port == '587'){
                $mail->SMTPAuth = true;
                $mail->SMTPSecure = "tls";
            } elseif ($this->smtp_port == '465') {
                $mail->SMTPAuth = true;
                $mail->SMTPSecure = "ssl";
            }
            if (!empty($this->smtp_username)  && !empty($this->smtp_password)) {
                $mail->SMTPAuth = true;
                $mail->Host = $this->smtp_hostname;
                $mail->Username = $this->smtp_username;
                $mail->Password = $this->smtp_password;
            }
        }
        $mail->Send();
            
	}
}