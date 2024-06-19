<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class seleksi extends Model
{
    use HasFactory;

    protected $primaryKey = 'id';
    protected $keyType = 'integer';
    protected $table = 'seleksi';
    protected $fillable = [
        'id_periode',
        'tahap',
        'tanggal',
        'keterangan'
    ];
    //relasi periode
    public function periode()
    {
    return $this->belongsTo(
        Periode::class,
            "id_periode", //foreigh key di seleksi
            "id" //primary key di periode
        );
    }
}
