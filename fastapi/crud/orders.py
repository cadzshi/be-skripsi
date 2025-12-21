from sqlalchemy.orm import Session
import models, schemas
from datetime import datetime
import pytz


def create_order(db: Session, order: schemas.OrderCreate):
    
    # ambil waktu wib
    tz_jakarta = pytz.timezone('Asia/Jakarta')
    tn = datetime.now(tz_jakarta)
    
    db_order = models.Order(
        customer_name=order.customer_name,
        total_price=order.total_price,
        status="pending",
        created_at=tn, 
        updated_at=tn  
    )

    db.add(db_order)
    db.commit()
    db.refresh(db_order)

    for item in order.details:
        db_detail = models.OrderDetail(
            order_id=db_order.id,
            menu_id=item.menu_id,
            quantity=item.quantity,
            price_at_time=item.price_at_time,
        )
        db.add(db_detail)

    db.commit()
    db.refresh(db_order)
    return db_order
