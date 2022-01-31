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
		)
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
