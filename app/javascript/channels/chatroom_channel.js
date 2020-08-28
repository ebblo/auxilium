import consumer from "./consumer"

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  console.log("coucou");
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    console.log(id);

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        // console.log(data); // called when data is broadcast in the cable
        messagesContainer.insertAdjacentHTML('beforeend', data);
        // input.value = '';
        document.getElementById("message_content").value = "";
        window.scrollTo(0, document.body.scrollHeight);
      }
    });
  }
}

export { initChatroomCable };

// consumer.subscriptions.create("ChatroomChannel", {
//   connected() {
//     // Called when the subscription is ready for use on the server
//   },

//   disconnected() {
//     // Called when the subscription has been terminated by the server
//   },

//   received(data) {
//     // Called when there's incoming data on the websocket for this channel
//   }
// });
