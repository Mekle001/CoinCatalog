var Artist = createReactClass({
    getInitialState() {
        return {editable: false}
    },
    handleEdit() {
        if(this.state.editable) {
            var id = this.props.artist.id;
            var name = this.refs.name.value;
            var created_at = this.props.artist.created_at;
            var artist = {id: id , name: name, created_at: created_at };
            console.log('in handleEdit', this.state.editable, name);
            this.props.handleUpdate(artist);
        }
        this.setState({editable: !this.state.editable})
    },
    render() {
        var name = this.state.editable ? <input type='text' ref='name' defaultValue={this.props.artist.name} className='string form-control' /> : <span>{this.props.artist.name}</span>;
        var created_at = this.state.editable ? <p>{this.props.artist.created_at}</p> : <p>{this.props.artist.created_at}</p>;

        return (
            <React.Fragment>
                <td>{name}</td>
                <td>{created_at}</td>
                <td>
                    <button onClick={this.props.handleDelete} disabled={this.state.editable ? 'disabled' : ''} >Delete</button>
                    <button onClick={this.handleEdit}> {this.state.editable ? 'Submit' : 'Edit' } </button>
                </td>
            </React.Fragment>
        )
    }
});

