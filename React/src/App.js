import './App.css';

// https://progate.com/dashboard

/* Diff btw JS & JSX:
Js is written above return while JSX is written
inside return

to write JS inside return put it in {}


To change what is displayed when someone clicks a 
button, you need 2 tools, events and state.

Event:
<button eventName={() => {code}}> </button>

State:
A value that changes depending on a user's actions is 
called state in React

Updating Pages with State involves 3 steps:
def state
display state
update state

using class component
this.state = {
	name: 'Ken the Ninja'
}

*/ 

function App() {
	// JS


	return (
		<div className="App">
			{/* JSX */} Hello

			{console.log('Hello')}
		</div>
	);
}

export default App;
