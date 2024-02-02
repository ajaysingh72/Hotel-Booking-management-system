const form = document.querySelector('form');
const submitBtn = document.querySelector('#submit-btn');
		
form.addEventListener('submit', (e) => {
	e.preventDefault();
	const username = document.querySelector('#name').value;
	const email = document.querySelector('#email').value;
	const password = document.querySelector('#pass').value;
	const confirmPassword = document.querySelector('#cpass').value;
	console.log('email:', email);
	console.log('Email:', email);
	console.log('Password:', pass);
	console.log('Confirm Password:', cpass);
	
	// Add code to check that passwords match and submit the form data to the server here
	if (password === confirmPassword) {
		form.submit();
	} else {
		alert('Passwords do not match');
	}
});
