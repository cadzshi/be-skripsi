from fastapi import FastAPI
from database import Base, engine
import routers.categories as categories_router
import routers.menus as menus_router
import routers.orders as orders_router
from fastapi.staticfiles import StaticFiles

Base.metadata.create_all(bind=engine)

app = FastAPI()

app.include_router(categories_router.router, prefix="/categories", tags=["Categories"])
app.include_router(menus_router.router, prefix="/menus", tags=["Menus"])
app.include_router(orders_router.router, prefix="/orders", tags=["Orders"])
# GANTI BAGIAN INI
# Paste path folder public laravel Anda di sini.
# PENTING: Di Python Windows, gunakan huruf 'r' di depan string agar backslash '\' terbaca benar.
path_storage_laravel = r"C:\Kuliah\Skripsi\Code\MySkripsuy\admin-web\storage\app\public"

# Mount ke route "/storage"
app.mount("/storage", StaticFiles(directory=path_storage_laravel), name="storage")

# uvicorn main:app --host 0.0.0.0 --port 8000 --reload
# 192.168.137.1 192.168.100.175
