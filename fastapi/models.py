from sqlalchemy import Column, Integer, String, Text, Boolean, ForeignKey, TIMESTAMP
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from database import Base


class Category(Base):
    __tablename__ = "categories"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(100), nullable=False)

    menus = relationship("Menu", back_populates="category")


class Menu(Base):
    __tablename__ = "menus"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(150), nullable=False)
    description = Column(Text)
    price = Column(Integer, nullable=False)
    image_url = Column(Text)
    category_id = Column(Integer, ForeignKey("categories.id"))
    is_available = Column(Boolean, default=True)
    created_at = Column(TIMESTAMP, server_default=func.now())

    category = relationship("Category", back_populates="menus")


class Order(Base):
    __tablename__ = "orders"

    id = Column(Integer, primary_key=True, index=True)
    customer_name = Column(String(150))
    total_price = Column(Integer, nullable=False)
    status = Column(String(20), default="pending")
    created_at = Column(TIMESTAMP, server_default=func.now())
    updated_at = Column(TIMESTAMP, server_default=func.now())

    details = relationship("OrderDetail", back_populates="order")


class OrderDetail(Base):
    __tablename__ = "order_details"

    id = Column(Integer, primary_key=True, index=True)
    order_id = Column(Integer, ForeignKey("orders.id"))
    menu_id = Column(Integer, ForeignKey("menus.id"))
    quantity = Column(Integer, nullable=False)
    price_at_time = Column(Integer, nullable=False)

    order = relationship("Order", back_populates="details")
