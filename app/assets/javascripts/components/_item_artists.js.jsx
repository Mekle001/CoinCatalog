var Artist = createReactClass({
    getInitialState() {
        return {editable: false}
    },
    handleEdit() {
        if(this.state.editable) {
            var id = this.props.artist.id;
            var name = this.refs.name.value;
            //var created_at = this.props.artist.created_at;
            var artist = {id: id , name: name };
            console.log('in handleEdit', this.state.editable, name);
            this.props.handleUpdate(artist);
        }
        this.setState({editable: !this.state.editable})
    },
    render() {
        var name = this.state.editable ? <input type='text' ref='name' defaultValue={this.props.artist.name} className='string form-control' /> : <span>{this.props.artist.name}</span>;
        var created_at = <p>{this.props.artist.created_at}</p>;
        var updated_at = <p>{this.props.artist.updated_at}</p>;
        return (
            <React.Fragment>
                <td>{name}</td>
                <td>{created_at}</td>
                <td>{updated_at}</td>
                <td >
                    <div class="btn-group">
                    <button onClick={this.props.handleDelete} className={this.state.editable ? 'btn btn-default disabled' : 'btn btn-default'} >Delete</button>
                    <button onClick={this.handleEdit} className='btn btn-default'> {this.state.editable ? 'Submit' : 'Edit' } </button>
                    </div>
                </td>
            </React.Fragment>
        )
    }
});

