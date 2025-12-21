from fastapi import FastAPI
from database import Base, engine
import routers.categories as categories_router
import routers.menus as menus_router
import routers.orders as orders_router
from fastapi.staticfiles import StaticFiles
import os

Base.metadata.create_all(bind=engine)

app = FastAPI()

app.include_router(categories_router.router, prefix="/categories", tags=["Categories"])
app.include_router(menus_router.router, prefix="/menus", tags=["Menus"])
app.include_router(orders_router.router, prefix="/orders", tags=["Orders"])

# cari lokasi file
current_dir = os.path.dirname(os.path.abspath(__file__))

# nentuin path ke laravel
path_storage_laravel = os.path.join(current_dir, "..", "admin-web", "storage", "app", "public")

# mount folder storage
if os.path.isdir(path_storage_laravel):
    app.mount("/storage", StaticFiles(directory=path_storage_laravel), name="storage")
    print(f"SUCCESS: Storage mounted at {path_storage_laravel}")
else:
    # opsi
    try:
        os.makedirs(path_storage_laravel, exist_ok=True)
        app.mount("/storage", StaticFiles(directory=path_storage_laravel), name="storage")
        print(f"CREATED & MOUNTED: Storage created at {path_storage_laravel}")
    except Exception as e:
        print(f"WARNING: Gagal mount storage. Folder tidak ditemukan di: {path_storage_laravel}")

# uvicorn main:app --host 0.0.0.0 --port 8000 --reload
# 192.168.137.1 192.168.100.175
