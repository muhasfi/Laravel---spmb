<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PeriodeResource\Pages;
use App\Filament\Resources\PeriodeResource\RelationManagers;
use App\Models\Periode;
use Filament\Forms;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PeriodeResource extends Resource
{
    protected static ?string $model = Periode::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('id')
                    ->required()
                    ->label("Tahun")
                    ->numeric()
                    ->minValue(2023),
                Forms\Components\Hidden::make('aktif')->default(0)
                    ->required()
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->label('Tahun'),
                Tables\Columns\TextColumn::make('aktif')
                    ->enum([
                        '1' => 'Ya',
                        '0' => 'Tidak',
                    ]),
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

                Tables\Actions\Action::make('Aktifkan')
                    ->icon('heroicon-s-eye')
                    ->action(function (Periode $record, array $data): void {
                        //ubah aktif=1 pada record yang dipilih
                        $record->aktif = 1;
                        $record->save();
                        //ubah aktif=0 selain record dipilih
                        Periode::where('id', '<>', $record->id)->update(['aktif' => 0]);
                    })
                    //membutuhkan konfirmasi
                    ->requiresConfirmation()
                    //terlihat jika nilai aktif=0
                    ->visible(function (Periode $record) {
                        return $record->aktif == 0; })

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
            'index' => Pages\ListPeriodes::route('/'),
            'create' => Pages\CreatePeriode::route('/create'),
            'edit' => Pages\EditPeriode::route('/{record}/edit'),
        ];
    }
}
