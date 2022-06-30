async function getItems() {
    let response = await axios.get('/items');
    model.items = response.data;
    show();

}
function addToCart(index) {

model.totalpris += model.items[index].price;
model.handlekurv.push(model.items[index].name)
  
viewShop();
 
}