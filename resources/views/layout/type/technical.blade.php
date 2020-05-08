<div class="teknical">
            <h3>Spesifikasi Teknik {{$types->product->name}} {{$types->type}}</h3>
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
                        @foreach($types->performance as $performance)
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
                                </tbody>
                            </table>
                        @endforeach
                    </div>
                    <div class="capacity tab-pane fade" id="capacity">
                    @foreach($types->capacity as $capacity)
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
                                </tbody>
                            </table>
                        @endforeach
                    </div>
                    <div class="suspensi tab-pane fade" id="suspensi">
                    @foreach($types->suspensi as $suspensi)
                    <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Suspensi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Suspensi depan</td>
                                        <td>{{$suspensi->suspensi_depan}} orang</td>
                                    </tr>
                                    <tr>
                                        <td>Suspendi belakang</td>
                                        <td>{{$suspensi->suspensi_belakang}}</td>
                                    </tr>
                                </tbody>
                    </table>
                    @endforeach
                    </div>
                    <div class="transmisi tab-pane fade" id="transmisi">
                    @foreach($types->transmisi as $transmisi)
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
                                    <tr>
                                        <td>Jenis Penggerak</td>
                                        <td>{{$transmisi->penggerak}}</td>
                                    </tr>
                                </tbody>
                    </table>
                    @endforeach
                    </div>
                    <div class="detail tab-pane fade" id="detailMesin">
                    @foreach($types->detail as $detail)
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
                                    <tr>
                                        <td>Mesin</td>
                                        <td>{{$detail->mesin}}</td>
                                    </tr>
                                </tbody>
                    </table>
                    @endforeach
                    </div>
                    <div class="velg tab-pane fade" id="velg">
                    @foreach($types->velg as $velg)
                    <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Velg & Ban</th>
                                    </tr>
                                </thead>
                                <tbody>
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
                    @foreach($types->kemudi as $kemudi)
                    <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Kemudi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Steering Gear Type</td>
                                        <td>{{$kemudi->steering_gear_type}}</td>
                                    </tr>
                                    <tr>
                                        <td>Radius Putas</td>
                                        <td>{{$kemudi->radius_putar}}</td>
                                    </tr>
                                </tbody>
                    </table>
                    @endforeach
                    </div>
            </div>
</div>  