<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SeleksiResource\Pages;
use App\Filament\Resources\SeleksiResource\RelationManagers;
use App\Models\Seleksi;
use Filament\Forms;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SeleksiResource extends Resource
{
    protected static ?string $model = Seleksi::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                // Forms\Components\TextInput::make('id')
                // ->required(),
                Forms\Components\TextInput::make('id_periode')
                    ->required(),
                Forms\Components\TextInput::make('tahap')
                    ->required()
                    ->maxLength(100),
                Forms\Components\DatePicker::make('tanggal')
                    ->required(),
                Forms\Components\TextInput::make('keterangan')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                // Tables\Columns\TextColumn::make('id'),
                Tables\Columns\TextColumn::make('id_periode'),
                Tables\Columns\TextColumn::make('tahap'),
                Tables\Columns\TextColumn::make('tanggal')
                    ->date(),
                Tables\Columns\TextColumn::make('keterangan'),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime(),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),

                Tables\Actions\Action::make('Peserta')
                    ->icon('heroicon-s-user-group')
                    ->url(function (seleksi $record) {
                        return SeleksiResource::getUrl('peserta', $record);
                    })
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
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
            'index' => Pages\ListSeleksis::route('/'),
            'create' => Pages\CreateSeleksi::route('/create'),
            'edit' => Pages\EditSeleksi::route('/{record}/edit'),
            'peserta' => Pages\PesertaSeleksi::route('/{record}/peserta'),
        ];
    }
}
