using {Base} from './commom';
using {trainingcf.products.TblProducts} from './products';
using {trainingcf.user.TblUser} from './user';
using {trainingcf.clients.TblClient} from './clients';
namespace trainingcf.salesorder;

entity TblSalesOrder: Base{
    status: String(1);
    user: Association to TblUser;
    client: Association to TblClient;
}

entity TblSalesOrderItem: Base{
    status: String(1);
    salesOrder: Association to TblSalesOrder;
    product: Association to TblProducts;
}
