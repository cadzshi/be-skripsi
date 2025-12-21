from pydantic import BaseModel
from typing import Optional, List


# category
class CategoryBase(BaseModel):
    name: str

class CategoryCreate(CategoryBase):
    pass

class Category(CategoryBase):
    id: int

    class Config:
        from_attributes = True

# wrapper buat hasilnya object
class CategoryResponseWrapper(BaseModel):
    CategoryResponse: List[Category]


# menu
class MenuBase(BaseModel):
    name: str
    description: Optional[str] = None
    price: int
    image_url: Optional[str] = None
    category_id: int

class MenuCreate(MenuBase):
    pass

class Menu(MenuBase):
    id: int
    is_available: bool

    class Config:
        from_attributes = True

# wrapper buat hasilnya object
class MenuResponseWrapper(BaseModel):
    MenuResponse: List[Menu]

# order detail
class OrderDetailBase(BaseModel):
    menu_id: int
    quantity: int
    price_at_time: int


class OrderDetailCreate(OrderDetailBase):
    pass


class OrderDetail(OrderDetailBase):
    id: int

    class Config:
        from_attributes = True


# order
class OrderBase(BaseModel):
    customer_name: Optional[str]
    total_price: int


class OrderCreate(OrderBase):
    details: List[OrderDetailCreate]


class Order(OrderBase):
    id: int
    status: str
    details: List[OrderDetail]

    class Config:
        from_attributes = True
