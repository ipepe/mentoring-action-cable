class ChatRoom extends React.Component {
    componentDidMount(){
        this.user_name = prompt('What is Your user name?')
        this.cable = ActionCable.createConsumer(); //connection

        alert('Chat room id: ' + this.props.id)
        alert('User name: ' + this.user_name)

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