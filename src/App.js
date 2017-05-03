import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import config from './config/index.js'

class App extends Component {
  render() {
    console.log('config',config);
    return (
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h2>Welcome to React</h2>
        </div>
        <p className="App-intro">
          CURRENT ROOT API IS: {
            config.api_root
          }
        </p>
      </div>
    );
  }
}

export default App;
