<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ViewSeleksiPeserta extends Model
{
    use HasFactory;

    protected $primaryKey = 'id';
    protected $keyType = 'string';
    protected $table = 'view_seleksi_peserta';
    //relasi program studi
    public function programStudi()
    {
        return $this->belongsTo(
            SiakadProgramStudi::class,
            "program_studi",
            "kode_prodi"
        );
    }
}
