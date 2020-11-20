using { training.salesorder as salesorder } from '../schema/salesorder';
using { training.user as user } from '../schema/user';

namespace training.views;

define view ProductByClient as

	select from salesorder.TbSalesOrderItemByUserView {
		products.ID as ![productId],
		products.name as ![productName],
		salesOrder.client.ID as ![clientId],
		salesOrder.client.name as ![clientName]
	};