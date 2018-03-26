var NewArtist = createReactClass({
    handleClick() {
        var name = this.refs.name.value;
        $.ajax({
            url: '/api/v1/artists',
            type: 'POST',
            data: { artist: { name: name } },
            success: (artist) => {
                this.props.handleSubmit(artist);
            }
        });
        this.refs.name.value = '';
    },
    render() {
        return (
            <div className='table'>
                <div className='row'>
                    <div className='col-sm-11'>
                    <input ref='name' placeholder='Enter the name of a new Artist' className='string form-control' />
                    </div>
                    <div className='col-sm-1'>
                    <button className='btn btn-default btn-block' onClick={this.handleClick}>Add</button>
                    </div>
                </div>
            </div>
        )
    }
});
