<div class="teknical">
            <h3>Spesifikasi Teknik {{$type->product->name}} {{$type->type}}</h3>
            <ul class="nav nav-tabs tab">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#performance">Performance</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#capacity">Kapasitas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#suspensi">Suspensi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#transmisi">Transmisi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#detailMesin">Detail Mesin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#velg">Velg & Ban</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#kemudi">Kemudi</a>
                </li>
            </ul>
            <div class="tab-content content">
                    <div class="performance tab-pane active" id="performance">
                        @foreach($type->performance as $performance)
                            <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Performance</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>kapasitas mesin</td>
                                        <td>{{$performance->machine_capacity}}</td>
                                    </tr>
                                    <tr>
                                        <td>Tenaga</td>
                                        <td>{{$performance->horse_power}}</td>
                                    </tr>
                                    <tr>
                                        <td>Torsi</td>
                                        <td>{{$performance->torsi}}</td>
                                    </tr>
                                    <tr>
                                        <td>Jenis Bahan Bakar</td>
                                        <td>{{$performance->fuel}}</td>
                                    </tr>
                                    @if($performance->konsumsiBBMKota != null)
                                        <tr>
                                            <td>Konsumsi BBM Dalam Kota</td>
                                            <td>{{$performance->konsumsiBBMKota}} kmpl</td>
                                        </tr>
                                    @endif
                                    @if($performance->konsumsiBBMTol != null)
                                        <tr>
                                            <td>Konsumsi BBM Dalam Kota</td>
                                            <td>{{$performance->konsumsiBBMTol}} kmpl</td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        @endforeach
                    </div>
                    <div class="capacity tab-pane fade" id="capacity">
                    @foreach($type->capacity as $capacity)
                            <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Capacity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Kapasitas tempat duduk</td>
                                        <td>{{$capacity->kapasitas_tempat_duduk}} orang</td>
                                    </tr>
                                    <tr>
                                        <td>kapasitas tangki</td>
                                        <td>{{$capacity->kapasitas_tangki}} L</td>
                                    </tr>
                                    <tr>
                                        <td>Panjang</td>
                                        <td>{{$capacity->panjang}} mm</td>
                                    </tr>
                                    <tr>
                                        <td>Lebar</td>
                                        <td>{{$capacity->lebar}} mm</td>
                                    </tr>
                                    <tr>
                                        <td>Tinggi</td>
                                        <td>{{$capacity->tinggi}} mm</td>
                                    </tr>
                                    <tr>
                                        <td>Jarak sumbu roda</td>
                                        <td>{{$capacity->jarak_sumbu_roda}} mm</td>
                                    </tr>
                                    <tr>
                                        <td>Jarak Pijak Roda Depan</td>
                                        <td>{{$capacity->jarak_pijak_roda_depan}} mm</td>
                                    </tr>
                                    <tr>
                                        <td>Jarak Pijak Roda Belakang</td>
                                        <td>{{$capacity->jarak_pijak_roda_belakang}} mm</td>
                                    </tr>
                                    <tr>
                                        <td>Jumlah Pintu</td>
                                        <td>{{$capacity->jumlah_pintu}}</td>
                                    </tr>
                                    <tr>
                                        <td>Berat Bersih</td>
                                        <td>{{$capacity->berat_bersih}} kg</td>
                                    </tr>
                                    @if($capacity->berat_kotor != null)
                                        <tr>
                                            <td>Berat Kotor</td>
                                            <td>{{$capacity->berat_kotor}} kg</td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        @endforeach
                    </div>
                    <div class="suspensi tab-pane fade" id="suspensi">
                    @foreach($type->suspensi as $suspensi)
                    <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Suspensi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Suspensi depan</td>
                                        <td>{{$suspensi->suspensi_depan}}</td>
                                    </tr>
                                    <tr>
                                        <td>Suspensi belakang</td>
                                        <td>{{$suspensi->suspensi_belakang}}</td>
                                    </tr>
                                    <!-- tidak menampilkan data yang null -->
                                    @if($suspensi->shockBreaker != null)
                                        <tr>
                                            <td>Jenis ShockBreaker</td>
                                            <td>{{$suspensi->shockBreaker}}</td>
                                        </tr>
                                    @endif
                                </tbody>
                    </table>
                    @endforeach
                    </div>
                    <div class="transmisi tab-pane fade" id="transmisi">
                    @foreach($type->transmisi as $transmisi)
                    <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Transmisi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Girboks</td>
                                        <td>{{$transmisi->girbox}}</td>
                                    </tr>
                                    <tr>
                                        <td>Jenis Transmisi</td>
                                        <td>{{$transmisi->transmisi}}</td>
                                    </tr>
                                    @if($transmisi->penggerak != null)
                                        <tr>
                                            <td>Jenis Penggerak</td>
                                            <td>{{$transmisi->penggerak}}</td>
                                        </tr>
                                    @endif
                                </tbody>
                    </table>
                    @endforeach
                    </div>
                    <div class="detail tab-pane fade" id="detailMesin">
                    @foreach($type->detail as $detail)
                    <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Detail Mesin</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Jumlah Silinder</td>
                                        <td>{{$detail->jumlah_silinder}}</td>
                                    </tr>
                                    <tr>
                                        <td>Katup per silinder</td>
                                        <td>{{$detail->katup_per_silinder}}</td>
                                    </tr>
                                    <tr>
                                        <td>Konfigurasi katup</td>
                                        <td>{{$detail->konfigurasi_katup}}</td>
                                    </tr>
                                    <tr>
                                        <td>Sistem suplai bahan bakar</td>
                                        <td>{{$detail->suplai_bahan_bakar}}</td>
                                    </tr>
                                    @if($detail->mesin != null)
                                        <tr>
                                            <td>Mesin</td>
                                            <td>{{$detail->mesin}}</td>
                                        </tr>
                                    @endif
                                </tbody>
                    </table>
                    @endforeach
                    </div>
                    <div class="velg tab-pane fade" id="velg">
                    @foreach($type->velg as $velg)
                    <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Velg & Ban</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        @if($velg->ukuranVelgAlloy != null)
                                            <td>Ukuran Velg Alloy</td>
                                            <td>{{$velg->ukuranVelgAlloy}} inch</td>
                                        @endif
                                    </tr>
                                    <tr>
                                        <td>Ukuran Ban</td>
                                        <td>{{$velg->ukuran}}</td>
                                    </tr>
                                    <tr>
                                        <td>Jenis Ban</td>
                                        <td>{{$velg->jenis}}</td>
                                    </tr>
                                    <tr>
                                        <td>Ukuran Velg</td>
                                        <td>{{$velg->ukuran_velg}}</td>
                                    </tr>
                                </tbody>
                    </table>
                    @endforeach
                    </div>
                    <div class="kemudi tab-pane fade" id="kemudi">
                    @foreach($type->kemudi as $kemudi)
                    <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Kemudi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if($kemudi->jenisKemudi != null)
                                    <tr>
                                        <td>Jenis Kemudi</td>
                                        <td>{{$kemudi->jenisKemudi}}</td>
                                    </tr>
                                    @endif
                                    @if($kemudi->jenisKemudi != null)
                                        <tr>
                                            <td>Kolom Kemudi</td>
                                            <td>{{$kemudi->kolomKemudi}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Steering Gear Type</td>
                                        <td>{{$kemudi->steering_gear_type}}</td>
                                    </tr>
                                    <tr>
                                        <td>Radius Putar</td>
                                        <td>{{$kemudi->radius_putar}} m</td>
                                    </tr>
                                    @if($kemudi->posisiStir != null)
                                        <tr>
                                            <td>Pengaturan Posisi Stir</td>
                                            <td>{{$kemudi->posisiStir}}</td>
                                        </tr>
                                    @endif
                                </tbody>
                    </table>
                    @endforeach
                    </div>
            </div>
</div>  