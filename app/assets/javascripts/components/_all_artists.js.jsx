var AllArtists = createReactClass({
    handleDelete(id) {
        this.props.handleDelete(id);
    },
    onUpdate(artist) {
        console.log("AllArtists:onUpdate")
        this.props.onUpdate(artist);
    },
    render() {
        var artists= this.props.items.map((artist) => {
            return (
                <tr key={artist.id}>
                    <Artist artist={artist}
                    handleDelete={this.handleDelete.bind(this, artist.id)}
                    handleUpdate={this.onUpdate}/>
                </tr>
            )
        });

        return (
            <table className="artist" className='table'>
                <tbody>
                <tr className="title"><th>Name</th><th>Created At</th><th>Last Updated</th></tr>
                {artists}
                </tbody>
            </table>
        )
    }
});
