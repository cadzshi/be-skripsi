<?php

namespace App\Filament\Resources\OrderResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;

class DetailsRelationManager extends RelationManager
{
    protected static string $relationship = 'details';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('title')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('id')
        ->columns([
            // 1. Tampilkan Foto Menu
            // Kita ambil dari relasi menu.image
            ImageColumn::make('menu.image')
                ->label('Foto Menu')
                ->disk('public'), // Pastikan sesuai disk penyimpanan Anda
            
            // 2. Nama Menu
            TextColumn::make('menu.name')
                ->label('Nama Menu')
                ->searchable(),

            // 3. Harga Saat Itu
            TextColumn::make('price_at_time')
                ->label('Harga')
                ->money('IDR'), // Otomatis format Rp
            
            // 4. Jumlah Beli
            TextColumn::make('quantity')
                ->label('Qty'),

            // 5. Subtotal (Hitungan Custom)
            TextColumn::make('subtotal')
                ->label('Subtotal')
                ->getStateUsing(function ($record) {
                    return 'Rp ' . number_format($record->price_at_time * $record->quantity, 0, ',', '.');
                }),
            ])  
            ->filters([
                //
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    
}
