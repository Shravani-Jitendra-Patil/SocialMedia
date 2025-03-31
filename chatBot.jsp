<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Elongated Chatbot</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Use a more modern and elegant font family */
    background-color: #f4f4f4; /* Light background color for a clean look */
    display: flex;
    justify-content: center; /* Center content horizontally */
    align-items: center; /* Center content vertically */
    height: 100vh; /* Full viewport height */
    margin: 0; /* Remove default margin */
    background-image: linear-gradient(135deg, #f0f0f0, #dfe9f3); /* Soft gradient background for a more vibrant look */
    overflow: hidden; /* Prevent scrollbars from appearing */
}

.container {
    background-color: #ffffff; /* White background for content */
    padding: 30px;
    border-radius: 10px; /* Rounded corners for the container */
    box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
    text-align: center; /* Center the text */
    max-width: 100%; /* Allow for responsiveness */
    transition: transform 0.3s ease-in-out; /* Smooth transform effect */
}

.container:hover {
    transform: scale(1.05); /* Slight scaling effect on hover */
}

h1 {
    font-size: 2.5rem; /* Larger font size for the heading */
    color: #333; /* Dark color for the text */
    margin-bottom: 20px; /* Space between heading and content */
    font-weight: 600; /* Bold weight for emphasis */
}

p {
    font-size: 1.2rem; /* Slightly larger font for readability */
    color: #555; /* Soft dark gray for paragraph text */
    line-height: 1.6; /* Improved line spacing for readability */
}
    

   

    .chat-container {
    width: 400px;
    background-color: #fff;
    border-radius: 12px;
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
    padding: 20px;
    display: flex;
    flex-direction: column;
    height: 500px;
    max-width: 100%;
    overflow: hidden;
    transition: all 0.3s ease;
    background: linear-gradient(135deg, #e0f7fa 0%, #80deea 100%); /* Soft gradient background */
}

.chat-container:hover {
    transform: translateY(-5px); /* Slightly lift the container on hover */
    box-shadow: 0 8px 18px rgba(0, 0, 0, 0.15); /* Enhance shadow on hover */
}

.chat-container .header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 20px;
}

.chat-container .header h3 {
    font-size: 1.5rem;
    color: #00796b;
    margin: 0;
}

.chat-container .messages {
    flex-grow: 1;
    overflow-y: auto;
    padding-right: 10px;
    margin-bottom: 20px;
    border-bottom: 1px solid #b2dfdb; /* Subtle divider between messages and input */
}

.chat-container .input-box {
    display: flex;
    align-items: center;
    justify-content: space-between;
    border-top: 1px solid #b2dfdb;
    padding-top: 10px;
}

.chat-container .input-box input {
    width: 85%;
    padding: 10px;
    border-radius: 25px;
    border: 1px solid #00796b;
    font-size: 1rem;
    transition: border-color 0.3s ease;
}

.chat-container .input-box input:focus {
    outline: none;
    border-color: #004d40; /* Darker border color on focus */
}

.chat-container .input-box button {
    background-color: #00796b;
    color: #fff;
    padding: 10px 15px;
    border: none;
    border-radius: 25px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.chat-container .input-box button:hover {
    background-color: #004d40; /* Darker button color on hover */
}

.chat-container .messages p {
    margin: 5px 0;
    padding: 5px;
    background-color: #ffffff;
    border-radius: 10px;
    color: #00796b;
    font-size: 1rem;
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1);
}
    

    .chat-box {
    flex-grow: 1;
    overflow-y: auto;
    margin-bottom: 15px;
    padding: 15px;
    border: 1px solid #ddd;
    border-radius: 10px;
    max-height: 400px;
    background-color: #fafafa;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1); /* Light shadow to lift the box */
    transition: all 0.3s ease;
    font-family: 'Arial', sans-serif;
}

.chat-box:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2); /* Enhance shadow on hover */
}

.chat-box::-webkit-scrollbar {
    width: 8px;
}

.chat-box::-webkit-scrollbar-thumb {
    background-color: #4caf50;
    border-radius: 10px;
}

.chat-box::-webkit-scrollbar-thumb:hover {
    background-color: #388e3c;
}

.chat-box p {
    margin: 10px 0;
    padding: 10px;
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1);
    color: #333;
    font-size: 1rem;
    word-wrap: break-word;
    transition: all 0.3s ease;
}

.chat-box p:hover {
    background-color: #e8f5e9; /* Light background change on hover */
}

.chat-box p.user-message {
    background-color: #c8e6c9;
    color: #2e7d32;
    align-self: flex-end;
}

.chat-box p.bot-message {
    background-color: #fff9c4;
    color: #f57f17;
    align-self: flex-start;
}

.chat-box .message-container {
    display: flex;
    flex-direction: column;
    gap: 10px;
}
    

   .chat-message {
    margin-bottom: 15px;
    padding: 12px;
    border-radius: 10px;
    background-color: #f9f9f9; /* Light background */
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
    color: #333; /* Text color */
    font-size: 1rem;
    max-width: 75%;
    word-wrap: break-word;
    transition: all 0.3s ease;
    font-family: 'Arial', sans-serif;
}

.chat-message:hover {
    background-color: #e8f5e9; /* Light green shade when hovered */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15); /* Slightly stronger shadow on hover */
}

.chat-message.user-message {
    background-color: #c8e6c9; /* Light green for user messages */
    color: #2e7d32; /* Dark green for user messages */
    align-self: flex-end;
}

.chat-message.bot-message {
    background-color: #fff9c4; /* Light yellow for bot messages */
    color: #f57f17; /* Dark yellow for bot messages */
    align-self: flex-start;
}

.chat-message .message-text {
    word-break: break-word;
}
   

   .bot-message {
    background-color: #e0e0e0; /* Light grey background */
    padding: 15px;
    border-radius: 12px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
    color: #333; /* Dark text for readability */
    font-size: 1rem;
    max-width: 80%; /* Limit the width to ensure text doesn't stretch too far */
    word-wrap: break-word;
    margin-bottom: 10px;
    transition: all 0.3s ease;
    font-family: 'Arial', sans-serif;
    align-self: flex-start; /* Align bot messages to the left */
}

.bot-message:hover {
    background-color: #d6d6d6; /* Slightly darker grey on hover */
    box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2); /* Stronger shadow on hover for emphasis */
}

.bot-message .message-text {
    word-break: break-word; /* Prevents long words from breaking the layout */
    line-height: 1.5; /* Adds space between lines of text */
}

.bot-message .timestamp {
    font-size: 0.85rem;
    color: #757575; /* Slightly lighter color for the timestamp */
    text-align: right;
    margin-top: 5px;
}
   

    .user-message {
    background-color: #4caf50; /* Bright green background */
    padding: 15px;
    border-radius: 12px;
    color: white;
    font-size: 1rem;
    max-width: 80%; /* Ensures the message does not stretch too wide */
    margin-bottom: 10px;
    text-align: right;
    font-family: 'Arial', sans-serif;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
    transition: all 0.3s ease;
    align-self: flex-end; /* Align user messages to the right */
}

.user-message:hover {
    background-color: #45a049; /* Darker green on hover */
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Stronger shadow on hover */
}

.user-message .message-text {
    word-break: break-word; /* Prevents long words from breaking layout */
    line-height: 1.5; /* Adds space between lines of text */
}

.user-message .timestamp {
    font-size: 0.85rem;
    color: #e0e0e0; /* Light grey color for the timestamp */
    text-align: left;
    margin-top: 5px;
}
    

   .chat-input-container {
    display: flex;
    gap: 10px;
    align-items: center;
    padding: 10px;
    background-color: #f9f9f9; /* Light background color */
    border-radius: 15px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: background-color 0.3s ease;
}

.chat-input-container:hover {
    background-color: #f1f1f1; /* Slightly darker background on hover */
}

.chat-input-container .message-input {
    flex-grow: 1;
    padding: 12px 15px;
    font-size: 1rem;
    border-radius: 25px;
    border: 1px solid #ddd;
    outline: none;
    background-color: #fff;
    color: #333;
    transition: all 0.3s ease;
}

.chat-input-container .message-input:focus {
    border-color: #4caf50; /* Green border on focus */
    box-shadow: 0 0 5px rgba(76, 175, 80, 0.3); /* Subtle green glow on focus */
}

.chat-input-container .send-btn {
    background-color: #4caf50;
    color: white;
    border: none;
    padding: 12px 20px;
    border-radius: 25px;
    cursor: pointer;
    font-size: 1.1rem;
    transition: background-color 0.3s ease, transform 0.3s ease;
    display: flex;
    align-items: center;
    justify-content: center;
}

.chat-input-container .send-btn:hover {
    background-color: #45a049; /* Darker green on hover */
    transform: translateY(-3px); /* Subtle lift effect */
}

.chat-input-container .send-btn:active {
    transform: translateY(1px); /* Slightly lower on click */
}

.chat-input-container .send-btn i {
    font-size: 1.4rem;
    margin-left: 5px; /* Space between text and icon */
}

.chat-input-container .message-input::placeholder {
    color: #aaa; /* Lighter placeholder color */
}
   

    input[type="text"] {
    flex-grow: 1;
    padding: 12px 15px;
    font-size: 1rem;
    border-radius: 25px;
    border: 1px solid #ddd;
    outline: none;
    background-color: #fff;
    color: #333;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

input[type="text"]:focus {
    border-color: #4caf50; /* Green border when focused */
    box-shadow: 0 0 5px rgba(76, 175, 80, 0.3); /* Subtle green glow */
}

input[type="text"]::placeholder {
    color: #aaa; /* Lighter color for the placeholder text */
    font-style: italic;
}

input[type="text"]:hover {
    border-color: #66bb6a; /* Slightly darker green border on hover */
}
    

    button {
    padding: 12px 20px; /* Increased padding for a more spacious button */
    background-color: #4caf50; /* Main background color */
    color: white; /* White text */
    font-size: 1rem; /* Set a readable font size */
    font-weight: bold; /* Bold text for better visibility */
    border-radius: 30px; /* Rounded corners for a more modern look */
    border: none; /* Remove default border */
    cursor: pointer; /* Change cursor to pointer on hover */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
    transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease; /* Smooth transitions */
}

button:hover {
    background-color: #45a049; /* Slightly darker green on hover */
    transform: translateY(-3px); /* Lift the button up when hovered */
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Increase shadow on hover for a floating effect */
}

button:active {
    transform: translateY(1px); /* Button slightly presses down on click */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Reduce shadow when button is clicked */
}

button:focus {
    outline: none; /* Remove default outline on focus */
    box-shadow: 0 0 8px rgba(76, 175, 80, 0.5); /* Add a green glow around the button when focused */
}
    

   /* Disabled button */
button:disabled {
    background-color: #ccc; /* Light gray background for disabled state */
    color: #666; /* Slightly darker gray text */
    cursor: not-allowed; /* Disable cursor interaction */
    box-shadow: none; /* Remove shadow for a muted look */
    border: none; /* Remove border to maintain consistency */
    transition: background-color 0.3s ease; /* Smooth transition for background color */
}

/* Disabled button hover (no interaction) */
button:disabled:hover {
    background-color: #ccc; /* Ensure no change on hover */
    transform: none; /* Disable any transformation (e.g., no hovering effect) */
}

/* Typing Indicator */
.typing-indicator {
    font-style: italic; /* Italicized text to indicate typing */
    color: #888; /* Lighter gray for the text */
    text-align: center; /* Center the text */
    margin-bottom: 15px; /* Space below the typing indicator */
    font-size: 1rem; /* Set a clear, readable font size */
    animation: typing-animation 1.5s infinite; /* Add a typing animation effect */
}

/* Typing animation for the typing indicator */
@keyframes typing-animation {
    0% {
        content: "|";
    }
    25% {
        content: "| ";
    }
    50% {
        content: "|  ";
    }
    75% {
        content: "|   ";
    }
    100% {
        content: "|";
    }
}
   
  </style>
</head>
<body>

  <div class="chat-container">
    <div class="chat-box" id="chat-box">
      <div class="chat-message bot-message">Hello! How can I assist you today?</div>
    </div>
    
    <div class="chat-input-container">
      <input type="text" id="user-input" placeholder="Type a message..." oninput="checkInput()">
      <button id="send-btn" onclick="sendMessage()" disabled>Send</button>
    </div>
    <div class="typing-indicator" id="typing-indicator" style="display: none;">Bot is typing...</div>
  </div>

 <script>
    function checkInput() {
      const userInput = document.getElementById("user-input").value.trim();
      const sendButton = document.getElementById("send-btn");
      sendButton.disabled = userInput === ""; // Enable/disable button based on input
      console.log("Input checked. Button disabled:", sendButton.disabled);
    }

    function sendMessage() {
      const userInput = document.getElementById("user-input").value.trim();
      if (userInput === "") return;

      console.log("Send button clicked with input:", userInput);

      // Display user's message
      const userMessageDiv = document.createElement("div");
      userMessageDiv.classList.add("chat-message", "user-message");
      userMessageDiv.textContent = userInput;
      document.getElementById("chat-box").appendChild(userMessageDiv);

      // Clear input field
      document.getElementById("user-input").value = "";
      checkInput(); // Recheck input to disable the button

      // Scroll to the bottom of the chat
      document.getElementById("chat-box").scrollTop = document.getElementById("chat-box").scrollHeight;

      // Show typing indicator
      const typingIndicator = document.getElementById("typing-indicator");
      typingIndicator.style.display = "block";

      // Simulate bot's response
      setTimeout(() => {
        typingIndicator.style.display = "none";

        const botResponse = getBotResponse(userInput);

        // Display bot's response
        const botMessageDiv = document.createElement("div");
        botMessageDiv.classList.add("chat-message", "bot-message");
        botMessageDiv.textContent = botResponse;
        document.getElementById("chat-box").appendChild(botMessageDiv);

        // Scroll to the bottom of the chat
        document.getElementById("chat-box").scrollTop = document.getElementById("chat-box").scrollHeight;
      }, 1500);
    }

    function getBotResponse(input) {
      // Simple example responses. Expand this for more interactivity!
      const responses = {
        "hello": "Hi there! How can I assist you?",
        "how are you": "I'm just a bot, but I'm doing great! How about you?",
        "bye": "Goodbye! Have a great day ahead.",
        "help": "Sure! I'm here to assist you with your queries.",
        "signup": "Click 'Sign Up' and fill in your details.",
        "login": "Enter your email and password.",
        "post": "Click 'Create Post' write and share.",
        "good morning": "Good Morning Dear!!!",
        "good afternoon": "Good Afternoon Dear!!!",
        "good evening": "Good Evening Dear!!!"
      };

      // Convert input to lowercase for case-insensitive matching
      const lowerCaseInput = input.toLowerCase();

      // Return predefined response or a default fallback message
      return responses[lowerCaseInput] || "I'm not sure I understand. Could you clarify?";
    }
  </script>
  
  

</body>
</html>

