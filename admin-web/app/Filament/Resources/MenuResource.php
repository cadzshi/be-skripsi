<?php

namespace App\Filament\Resources;

use App\Filament\Resources\MenuResource\Pages;
use App\Filament\Resources\MenuResource\RelationManagers;
use App\Models\Menu;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Toggle;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\IconColumn;

class MenuResource extends Resource
{
    protected static ?string $model = Menu::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
{
    return $form
        ->schema([
            TextInput::make('name')
                ->required()
                ->maxLength(150)
                ->label('Nama Menu'),

            Select::make('category_id')
                ->relationship('category', 'name') // Mengambil relasi category
                ->required()
                ->label('Kategori'),

            TextInput::make('price')
                ->required()
                ->numeric()
                ->prefix('Rp')
                ->label('Harga'),

            Textarea::make('description')
                ->label('Deskripsi'),

            FileUpload::make('image_url') // Simpan ke kolom image_url
                ->image()
                ->directory('menus') // Disimpan di folder storage/app/public/menus
                ->visibility('public')
                ->label('Foto Menu')
                ->disk('public'),        // <--- WAJIB ADA: Simpan di disk publik

            Toggle::make('is_available')
                ->label('Tersedia?')
                ->default(true),
        ]);
}

public static function table(Table $table): Table
{
    return $table
        ->columns([
            ImageColumn::make('image_url')->label('Foto'), // Menampilkan foto
            
            TextColumn::make('name')->searchable()->sortable(),
            
            TextColumn::make('category.name') // Menampilkan nama kategori
                ->label('Kategori')
                ->sortable(),

            TextColumn::make('price')->money('IDR'),

            IconColumn::make('is_available')
                ->boolean()
                ->label('Stok'),
        ])
        ->filters([
            //
        ])
        ->actions([
            Tables\Actions\EditAction::make(),
            Tables\Actions\DeleteAction::make(),
        ]);
}

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListMenus::route('/'),
            'create' => Pages\CreateMenu::route('/create'),
            'edit' => Pages\EditMenu::route('/{record}/edit'),
        ];
    }
}
