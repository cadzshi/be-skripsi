from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
import schemas
import crud.categories as category_crud
from database import get_db

router = APIRouter()

@router.get("/", response_model=schemas.CategoryResponseWrapper)
def get_all(db: Session = Depends(get_db)):
    categories = category_crud.get_categories(db)
    
    return {"CategoryResponse": categories} 

@router.post("/", response_model=schemas.Category)
def create(category: schemas.CategoryCreate, db: Session = Depends(get_db)):
    return category_crud.create_category(db, category)
