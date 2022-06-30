function show(){
    let html = '';
    html += `${showBar()}
    ${model.innhold}
    `;

    appDiv.innerHTML = html;
}

function showBar(){
    let html = `
    <button onclick="changePage('shop')"> Gaming Stuff Shop </button>
    <button onclick="changePage('kurv')"> Handlekurv (${model.totalpris}kr) </button>
 
    `
    return html;
}

function changePage(side){
    model.aktivside = side;
    updateView();
}
updateView();
function updateView(){
    const side = model.aktivside;
    if(side == 'shop') viewShop();
    if(side == 'kurv') viewCart();
}

function viewShop(){

    let html = '<h1>Gaming Stuff</h1> ';

    for(let i = 0; i < model.items.length; i++){
        let first = i % 3 == 0 ? 'first' : '';
        html += `
        <div class="cell ${first} "onclick="addToCart(${i})">
            Produkt Navn: ${model.items[i].name} <br>
            Pris: <tt>${model.items[i].price}</tt> <br>
            
            <hr>
        </div>
        `
    }
    model.innhold = html;
    show();
}

function viewCart(){

    let html = `<h1>Handlekurv</h1><hr>
    `;

    for(let i = 0; i < model.handlekurv.length; i++){
        html += `
           item: ${model.handlekurv[i]}<br>
        `
    }
    model.innhold = html;
    show();
}