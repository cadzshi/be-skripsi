from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
import schemas
import crud.menus as menu_crud
from database import get_db

router = APIRouter()

@router.get("/", response_model=schemas.MenuResponseWrapper) 
def get_all(db: Session = Depends(get_db)):
    menus = menu_crud.get_menus(db)
    
    return {"MenuResponse": menus}

@router.post("/", response_model=schemas.Menu)
def create(menu: schemas.MenuCreate, db: Session = Depends(get_db)):
    return menu_crud.create_menu(db, menu)
