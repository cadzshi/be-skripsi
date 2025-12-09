from sqlalchemy.orm import Session
import models, schemas


def create_order(db: Session, order: schemas.OrderCreate):
    
    # --- 1. AMBIL WAKTU JAKARTA (WIB) ---
    tz_jakarta = pytz.timezone('Asia/Jakarta')
    tn = datetime.now(tz_jakarta)
    # ------------------------------------

    # --- 2. MASUKKAN WAKTU KE DATABASE ---
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

    # Insert details (Bagian ini biarkan sama seperti kode Anda)
    for item in order.details:
        db_detail = models.OrderDetail(
            order_id=db_order.id,
            menu_id=item.menu_id,
            quantity=item.quantity,
            price_at_time=item.price_at_time,
            # created_at=tn, # Opsional: Detail order juga bisa dikasih tanggal
            # updated_at=tn
        )
        db.add(db_detail)

    db.commit()
    db.refresh(db_order)
    return db_order
