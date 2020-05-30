<div class="d-flex flex-row flex-nowrap type-spec">
            <div class="card-type">
                <h4>PERFORMA</h4>
                @foreach($type->performance as $performance)
                    <div class="d-flex justify-content-between body">
                        <div class="kolom">Mesin</div>
                        <strong>{{$performance->machine_capacity}}</strong>
                    </div>
                    <div class="d-flex justify-content-between body">
                        <div class="kolom">Tenaga</div>
                        <strong>{{$performance->horse_power}}</strong>
                    </div>
                @endforeach
            </div>
            <div class="card-type">
                <h4>KESELAMATAN</h4>
                @foreach($type->keselamatan as $keselamatan)
                    <div class="d-flex justify-content-between body">
                        <div class="kolom">Sabuk Pengaman</div>
                        <strong>{{$keselamatan->sabukPengaman}}</strong>
                    </div>
                    <div class="d-flex justify-content-between body">
                        <div class="kolom">Pengingat Pengaman</div>
                        <strong>{{$keselamatan->pengingatPengamanBelakang}}</strong>
                    </div>
                @endforeach 
            </div>
            <div class="card-type">
                <h4>KENYAMANAN</h4>
                @foreach($type->kenyamanan as $kenyamanan)
                    <div class="d-flex justify-content-between body">
                        <div class="kolom">Cruise Control</div>
                        <strong>{{$kenyamanan->cruiseControl}}</strong>
                    </div>
                    <div class="d-flex justify-content-between body">
                        <div class="kolom">Pembuka Bagasi</div>
                        <strong>{{$kenyamanan->pembukaBagasi}}</strong>
                    </div>
                @endforeach
            </div>
            <div class="card-type">
                <h4>KAPASITAS</h4>
                @foreach($type->capacity as $capacity)
                <div class="d-flex justify-content-between body">
                    <div class="kolom">Berat Bersih</div>
                    <strong>{{$capacity->berat_bersih}} kg</strong>
                </div>
                <div class="d-flex justify-content-between body">
                    <div class="kolom">Kapasitas Tangki</div>
                    <strong>{{$capacity->kapasitas_tangki}} L</strong>
                </div>
                @endforeach
            </div>
            <div class="angsur">
                <div class="angsuran">
                    <div class="card-type angsuran-front">
                        <h4>ANGSURAN</h4>
                        @foreach($type->down as $down)@endforeach
                        @foreach($down->credit as $credit)
                            <div class="d-flex justify-content-between body">
                                <div class="kolom">Durasi</div>
                                <strong>{{$credit->tenor}} months</strong>
                            </div>
                            <div class="d-flex justify-content-between body">
                                <div class="kolom">Angsuran</div>
                                <strong>{{$credit->price}} juta</strong>
                            </div>
                        @endforeach
                    </div>
                    <div class="angsuran-back">
                        <div class="d-flex justify-content-center">
                            <a href="https://api.whatsapp.com/send?phone=+628881260028" class="button">Promo Menarik</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>