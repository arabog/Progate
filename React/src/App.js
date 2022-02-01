import './App.css';

// https://progate.com/dashboard

// #Progate @progateEN @dev_careers #dev_careers

/* 
React I:
Diff btw JS & JSX:
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


/*
React II:
The JSX written in App.js is eventually converted to HTML 
and displayed in the browser. In order to display code in 
React in the browser, the files index.js and index.html 
are needed in addition to App.js.
App.js -> Index.js -> Index.html

ReactDOM.render( <App />, document.getElementById('root'));

By writing ReactDOM.render(<App />, ... within index.js, 
the JSX in App.js will get converted to HTML.

Also, by writing ..., document.getElementById('id-name'));, 
the converted HTML in index.js gets inserted into the element 
with id="id-name" in index.html. Below, we use "root" for 
the id name. Finally, the content of index.html is displayed 
in the browser.

So if you load CSS with index.html, you can apply CSS 
to the inserted JSX.


The data that you pass from App.js(componts) are called props.

The props that were passed to a component can be accessed 
with this.props, which is an object in the form of 
{propName: value}.

<Language 
	name = {languageItem.name}
	image ={languageItem.image}
/>

*/ 


/*
React III:

Props passed to the Lesson component can be accessed 
using this.props.propName.

Notice the {} after map and return keyword
{
	lessonList.map((lessonItem) => {
		return (
			<Lesson 
				name={lessonItem.name}
				image={lessonItem.image}
			/>
		)``
	})
}


// Declare the constructor
constructor(props) {
	super(props);

	// Declare the initial value of state
	this.state = {
		isModalOpen: false
	}
}


// js inside render() {}
if (this.state.isModalOpen) {
{
	modal = (
		<div className='modal'>
			<div className='modal-inner'>
				<div className='modal-header'></div>
				
				<div className='modal-introduction'>
				
				<h2>{this.props.name}</h2>
				
				<p>{this.props.introduction}</p>
			</div>

			<button className='modal-close-btn'>
				Close
			</button>
		</div>
	</div>  
)

}
}


handleClickLesson() {
    return this.setState({isModalOpen: true});
  }
  
  render() {
    let modal;
    if (this.state.isModalOpen) {
      modal = (
        <div className='modal'>
          <div className='modal-inner'>
            <div className='modal-header'></div>
            <div className='modal-introduction'>
              <h2>{this.props.name}</h2>
              <p>{this.props.introduction}</p>
            </div>
            <button 
              className='modal-close-btn'
              onClick={() => {this.handleClickLesson()}}
            >
              Close
            </button>
          </div>
        </div>
      );
    }

    return (
      <div className='lesson-card'>
        <div
          className='lesson-item'
          onClick={() => {this.handleClickLesson()}}
        >
          <p>{this.props.name}</p>
          <img src={this.props.image} />
        </div>
        {modal}
      </div>
    );
  }
*/


/*
REACT IV:
The <input> tag is used to create the send button. 
We can do this by specifying type='submit'. Also, 
value='button text' is specified in order to change 
the text displayed on the button.

The entire form must be enclosed in <form> tags.
Write the <form> tags so that they surround both 
the form input fields and the send button.


import React from 'react';

class ContactForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isSubmitted: false,
      email: '',
      hasEmailError: false,
    };
  }

  handleEmailChange(event) {
    const inputValue = event.target.value;
    // Declare the constant isEmpty and assign the result of the input check 
    const isEmpty = inputValue === ''
    
    // Update hasEmailError 
    this.setState({
      email: inputValue,
      hasEmailError: isEmpty
    });
    // this.setState({hasEmailError: isEmpty})
    
  }

  handleSubmit() {
    this.setState({isSubmitted: true});
  }

  render() {
    let emailErrorText;
    if (this.state.hasEmailError) {
      emailErrorText = (
        <p className='contact-message-error'>
          Please enter your email address
        </p>
      );
    }

    let contactForm;
    if (this.state.isSubmitted) {
      contactForm = (
        <div className='contact-submit-message'>
          Sent Successfully
        </div>
      );
    } else {
      contactForm = (
        <form onSubmit={() => {this.handleSubmit()}}>
          <p>Email Address (required)</p>
          <input
            value={this.state.email}
            onChange={(event) => {this.handleEmailChange(event)}}
          />
          {emailErrorText}
          <p>Message (required)</p>
          <textarea />
          <input
            type='submit'
            value='Send'
          />
        </form>
      );
    }

    return (
      <div className='contact-form'>
        {contactForm}
      </div>
    );
  }
}

export default ContactForm;



In order to run the code when the form is submitted, 
we need to set the onSubmit event in the <form> tag.

it is necessary to connect the input value to the state. 
We'll add an email state, which manages the input 
value of the email address. Also, we need to assign 
the value of the state to the value attribute of 
the <input> tag.
*/

/*
CHALLENGE:
import React from 'react';

class ContactForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isSubmitted: false,
      email: '',
      hasEmailError: false,
      Add the states "content" and "hasContentError" 
      content: '',
      hasContentError: false,
      
    };
  }

  handleEmailChange(event) {
    const inputValue = event.target.value;
    const isEmpty = inputValue === '';
    this.setState({
      email: inputValue,
      hasEmailError: isEmpty,
    });
  }

  Declare the method handleContentChange 
  handleContentChange(event) {
    const inputValue = event.target.value;
    const isEmpty = inputValue === '';
    
    this.setState({
      content: inputValue,
      hasContentError: isEmpty,
    })
  }

  handleSubmit() {
    this.setState({isSubmitted: true});
  }

  render() {
    let emailErrorText;
    if (this.state.hasEmailError) {
      emailErrorText = (
        <p className='contact-message-error'>
          Please enter your email address
        </p>
      );
    }
    
    Declare the variable contentErrorText 
    let contentErrorText;
    
    if(this.state.hasContentError){
      contentErrorText = (
        <p className='contact-message-error'>
          Please enter your message
        </p>
      )
    }
    
    Create an if statement with hasContentError as the condition 
    
    
    let contactForm;
    if (this.state.isSubmitted) {
      contactForm = (
        <div className='contact-submit-message'>
          Sent Successfully
        </div>
      );
    } else {
      contactForm = (
        <form onSubmit={() => {this.handleSubmit()}} >
          <p>Email Address (required)</p>
          <input
            value={this.state.email}
            onChange={(event) => {this.handleEmailChange(event)}}
          />
          {emailErrorText}
          <p>Message (required)</p>
          Add the value and an onChange event 
          <textarea
            value = {this.state.content}
            onChange={(event) => {this.handleContentChange(event)}}
            
          />
          Display contentErrorText  
          {contentErrorText}
          
          
          <input
            type='submit'
            value='Send'
          />
        </form>
      );
    }
    
    return (
      <div className='contact-form'>
        {contactForm}
      </div>
    );
  }
}

export default ContactForm;

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


/*
const lessonList = [
      {
        name: 'HTML & CSS',
        image: 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/react/html.svg',
        introduction: "How a website looks is created using languages such as HTML and CSS. Let's study these languages while actually creating a website!",
      },
      {
        name: 'Sass',
        image: 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/react/sass.svg',
        introduction: 'Sass is a language for making CSS more convenient and efficient.',
      },
      {
        name: 'JavaScript',
        image: 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/react/es6.svg',
        introduction: 'JavaScript is a versatile language used anywhere from interactive websites to backend servers.',
      },
      {
        name: 'React',
        image: 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/react/react.svg',
        introduction: 'React is a JavaScript library used to make the appearance of a website like HTML.',
      },
    ];
*/ 