const name = document.getElementById('username')
const name = document.getElementById('firstname')
const name = document.getElementById('lastname')
const password = document.getElementById('pass')
const name = document.getElementById('email')
const form = document.getElementById('form')

form.addEventListener('submit', (e) => {
    let messages = []
    if (name.value === '' || name.value == null) {
        messages.push('Name is required')
    }

    if (password.value.length <= 6) {
        messages.push('Password must be longer than 6 characters')
    }

    if (password.value.length >= 20) {
        messages.push('Password must be less than 20 characters')
    }

    if (password.value === 'password') {
        messages.push('Password cannot be password')
    }


    if (messages.length > 0) {
        e.preventDefault()
        ErrorElement.innerText = messages.join(',')
    }
})