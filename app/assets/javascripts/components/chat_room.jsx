class ChatRoom extends React.Component {
    componentDidMount(){
        this.user_name = prompt('What is Your user name?')
        this.cable = ActionCable.createConsumer(); //connection

        this.cable.subscriptions.create(
            { channel: 'ChatRoomChannel',
                chat_room_id: this.props.id,
                user_name: this.user_name
            },
            {
                received: (message) => {
                    console.log("[ActionCable][received]", message);
                    // TODO: append message to messagesBox
                }
            }
        );

    }
    ajaxPostMessage(messageFromInput){
        $.post('/messages', {
            from: this.user_name,
            body: messageFromInput,
            chat_room_id: this.props.id
        })
    }
    render() {
        return <div>
            <h1>Chat room: {this.props.title}</h1>
            <div className="messagesBox">
                {/*    this.props.messages - ostatnie 10 wiadomości */}
                {/*    tutaj wiadomości z serwera */}
            </div>
            <div className="inputBox">
                {/*    input */}
                {/*    button onClick={ajaxPostMessage} */}
            </div>
        </div>
    }
}