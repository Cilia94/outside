// <?php
// require_once WWW_ROOT . 'controller' . DS . 'Controller.php';
// require_once WWW_ROOT . 'dao' . DS . 'UserDAO.php';
// require_once WWW_ROOT . 'phpass' . DS . 'Phpass.php';

// class UsersController extends Controller {

// 	private $userDAO;
// 	private $hasher;

// 	function __construct() {
// 		$this->userDAO = new UserDAO();
// 		$this->hasher = new \Phpass\Hash;
// 	}
// 	public function auth(){

// 	}

// 	public function login(){
// 		$errors = array();

// 		if(!empty($_POST)) {
// 			if(empty($_POST['emaillogin'])) {
// 				$errors['emaillogin'] = 'Please enter your email';
// 			}
// 			if(empty($_POST['wachtwoordlogin'])) {
// 				$errors['wachtwoordlogin'] = 'Please enter your password';
// 			}
// 			if(empty($errors)) {
// 				$existing = $this->userDAO->selectByEmail($_POST['emaillogin']);
				
// 				if(!empty($existing)) {
// 					if ($this->hasher->checkPassword($_POST['wachtwoordlogin'], $existing['password'])) {
// 						$_SESSION['user'] = $existing;
// 						$this->redirect('index.php?page=toevoegen');
// 					} 


// 					else {
// 						$_SESSION['error'] = 'Unknown username / password';
// 					}
// 				} else {
// 					$_SESSION['error'] = 'Unknown username / password';
// 				}
// 			} else {
// 				$_SESSION['error'] = 'Unknown username / password';
// 			}
// 		}
// 		$this->redirect('index.php?page=auth');
		
// 		$this->set('errors', $errors);
// 	}

// 	public function logout(){
// 		unset($_SESSION['user']);
// 		$_SESSION['info'] = 'logged out';
// 		$this->redirect('index.php');
// 	}

// }