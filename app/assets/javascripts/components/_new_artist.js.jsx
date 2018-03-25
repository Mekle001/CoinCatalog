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
                    <input className='col-lg-2' ref='name' placeholder='Enter the name of a new Artist' className='string form-control' />
                    <button className='col-lg-1' onClick={this.handleClick}>Submit</button>
                </div>
            </div>
        )
    }
});
