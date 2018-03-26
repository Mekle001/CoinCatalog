var ReactArtists = createReactClass({
    getInitialState() {
        return {
            items: [] //this.props.data
        }
    },
    componentDidMount() {
        $.getJSON('/api/v1/artists.json', (response) => {
            this.setState({items: response})
        });
    },
    handleSubmit(item) {
        var newState = this.state.items.concat(item);
        this.setState({ items: newState })
    },
    handleDelete(id) {
        $.ajax({
            url: `/api/v1/artists/${id}`,
            type: 'DELETE',
            success:() => {
                this.removeItemClient(id);
            }
        });
    },
    handleUpdate(item) {
        console.log("Container:" + item.id + " " + item.name)
        $.ajax({
            url: `/api/v1/artists/${item.id}`,
            type: 'PUT',
            data: { artist: item },
            success: (response) => {
                this.updateItems(response); //use updated from response, to get full object
                // callback to swap objects
             }
        }
    )},
    updateItems(item) {
        var items = this.state.items.filter((i) => {
            return i.id != item.id
        });
        items.push(item);
        this.setState({items: items });
    },
    removeItemClient(id) {
        var newItems = this.state.items.filter((item) => { return item.id != id; });
        this.setState({ items: newItems });
    },
    componentDidCatch(error, info) {
        // Display fallback UI
        this.setState({ hasError: true });
        // You can also log the error to an error reporting service
        console.log(error, info);
    },
    render() {
        return (
            <React.Fragment>
                <NewArtist handleSubmit={this.handleSubmit} />
                <AllArtists items={this.state.items} handleDelete={this.handleDelete} onUpdate={this.handleUpdate} />
            </React.Fragment>
        )
    }
});
