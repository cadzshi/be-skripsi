from sqlalchemy.orm import Session
import models, schemas


def get_menus(db: Session):
    return db.query(models.Menu).all()


def create_menu(db: Session, menu: schemas.MenuCreate):
    db_menu = models.Menu(
        name=menu.name,
        description=menu.description,
        price=menu.price,
        image_url=menu.image_url,
        category_id=menu.category_id
    )
    db.add(db_menu)
    db.commit()
    db.refresh(db_menu)
    return db_menu
