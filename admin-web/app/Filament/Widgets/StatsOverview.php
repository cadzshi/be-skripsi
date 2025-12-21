<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Illuminate\Support\Carbon; 
use App\Models\Order;

class StatsOverview extends BaseWidget
{
    // Opsi: Auto refresh setiap 10 detik agar data real-time
    protected static ?string $pollingInterval = '10s'; 

    protected function getStats(): array
    {
        // Hitung Total Penjualan Hari Ini
        $todayRevenue = Order::whereDate('created_at', Carbon::today())->sum('total_price');
        
        // Hitung Total Penjualan Seluruhnya
        $totalRevenue = Order::sum('total_price');

        return [
            // Total Pesanan Masuk
            Stat::make('Total Pesanan', Order::count())
                ->description('Semua pesanan yang masuk')
                ->descriptionIcon('heroicon-m-shopping-bag')
                ->color('primary'),

            // Pesanan Pending 
            Stat::make('Pesanan Pending', Order::where('status', 'pending')->count())
                ->description('Perlu diproses')
                ->descriptionIcon('heroicon-m-clock')
                ->color('warning'), 

            // Pesanan Selesai
            Stat::make('Pesanan Selesai', Order::where('status', 'completed')->count())
                ->description('Sukses')
                ->descriptionIcon('heroicon-m-check-circle')
                ->color('success'), 

            // Penjualan Hari Ini
            Stat::make('Omset Hari Ini', 'Rp ' . number_format($todayRevenue, 0, ',', '.'))
                ->description('Pemasukan per ' . now()->format('d M Y'))
                ->descriptionIcon('heroicon-m-currency-dollar')
                ->color('success')
                ->chart([7, 2, 10, 3, 15, 4, 17]), 

            // Total Penjualan Seumur Hidup
            Stat::make('Total Pemasukan', 'Rp ' . number_format($totalRevenue, 0, ',', '.'))
                ->color('info'),
        ];
    }
}
