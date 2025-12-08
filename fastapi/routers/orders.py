from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
import schemas
import crud.orders as order_crud
from database import get_db

router = APIRouter()

@router.post("/", response_model=schemas.Order)
def create(order: schemas.OrderCreate, db: Session = Depends(get_db)):
    return order_crud.create_order(db, order)
