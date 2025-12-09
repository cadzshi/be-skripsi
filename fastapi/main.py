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
# --- BAGIAN YANG DIPERBAIKI (GANTI MULAI DARI SINI) ---

# 1. Cari tahu lokasi file main.py ini sekarang ada di mana
current_dir = os.path.dirname(os.path.abspath(__file__))

# 2. Tentukan path relatif ke folder Laravel
# Logikanya: Dari folder 'fastapi', MUNDUR satu langkah (".."), lalu masuk ke 'admin-web'
path_storage_laravel = os.path.join(current_dir, "..", "admin-web", "storage", "app", "public")

# 3. Mount folder storage dengan pengecekan keamanan
# (Agar server tidak crash jika foldernya belum dibuat)
if os.path.isdir(path_storage_laravel):
    app.mount("/storage", StaticFiles(directory=path_storage_laravel), name="storage")
    print(f"SUCCESS: Storage mounted at {path_storage_laravel}")
else:
    # Opsi Tambahan: Coba buat foldernya otomatis jika belum ada (Biar gak error di server)
    try:
        os.makedirs(path_storage_laravel, exist_ok=True)
        app.mount("/storage", StaticFiles(directory=path_storage_laravel), name="storage")
        print(f"CREATED & MOUNTED: Storage created at {path_storage_laravel}")
    except Exception as e:
        print(f"WARNING: Gagal mount storage. Folder tidak ditemukan di: {path_storage_laravel}")

# # Mount ke route "/storage"
# app.mount("/storage", StaticFiles(directory=path_storage_laravel), name="storage")

# uvicorn main:app --host 0.0.0.0 --port 8000 --reload
# 192.168.137.1 192.168.100.175
