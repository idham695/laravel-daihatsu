<div class="feature">
    <h3>Fitur {{$types->product->name}} {{$types->type}}</h3>
    <ul class="nav nav-tabs tab">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#Eksterior">Eksterior</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#hiburan">Hiburan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#keamanan">Keamanan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#keselamatan">Keselamatan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#kenyamanan">Kenyamanan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#lain">lain - Lain</a>
                </li>
    </ul>
    <div class="tab-content content">
                    <div class="tab-pane active" id="Eksterior">
                        @foreach($types->eksterior as $eksterior)
                                    <table class="table table-lg bg-light">
                                        <thead>
                                            <tr>
                                                <th colspan="2">Eksterior</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Adjustable Headlight</td>
                                                <td>{{$eksterior->adjutableHeadlight}}</td>
                                            </tr>
                                            <tr>
                                                <td>Lampu Kabut Depan</td>
                                                <td>{{$eksterior->lampuKabutDepan}}</td>
                                            </tr>
                                            <tr>
                                                <td>Kaca Spion Elektrik</td>
                                                <td>{{$eksterior->kacaSpionElektrik}}</td>
                                            </tr>
                                            <tr>
                                                <td>Kaca Spion Luar Manual</td>
                                                <td>{{$eksterior->kacaSpionLuarManual}}</td>
                                            </tr>
                                            <tr>
                                                <td>Wiper Otomatis</td>
                                                <td>{{$eksterior->wiperOtomatis}}</td>
                                            </tr>
                                            <tr>
                                                <td>Wiper Kaca Belakang</td>
                                                <td>{{$eksterior->wiperKacaBelakang}}</td>
                                            </tr>
                                            <tr>
                                                <td>Cover Velg</td>
                                                <td>{{$eksterior->coverVelg}}</td>
                                            </tr>
                                            <tr>
                                                <td>Velg Alloy</td>
                                                <td>{{$eksterior->velgAlloy}}</td>
                                            </tr>
                                            <tr>
                                                <td>Anthena Elektrik</td>
                                                <td>{{$eksterior->anthenaElektrik}}</td>
                                            </tr>
                                            <tr>
                                                <td>Spoiler Belakang</td>
                                                <td>{{$eksterior->spoilerBelakang}}</td>
                                            </tr>
                                            <tr>
                                                <td>Atap Convertible</td>
                                                <td>{{$eksterior->atapConvertible}}</td>
                                            </tr>
                                            <tr>
                                                <td>Roof Rack</td>
                                                <td>{{$eksterior->roofRack}}</td>
                                            </tr>
                                            <tr>
                                                <td>Sun Roof</td>
                                                <td>{{$eksterior->sunRoof}}</td>
                                            </tr>
                                            <tr>
                                                <td>Pijakan Samping</td>
                                                <td>{{$eksterior->pijakanSamping}}</td>
                                            </tr>
                                            <tr>
                                                <td>Lampu Sein</td>
                                                <td>{{$eksterior->lampuSein}}</td>
                                            </tr>
                                            <tr>
                                                <td>Anthena Terpadu</td>
                                                <td>{{$eksterior->anthenaTerpadu}}</td>
                                            </tr>
                                            <tr>
                                                <td>Grille Krom</td>
                                                <td>{{$eksterior->grilleKrom}}</td>
                                            </tr>
                                            <tr>
                                                <td>Roof Rail</td>
                                                <td>{{$eksterior->roofRail}}</td>
                                            </tr>
                                            <tr>
                                                <td>Jenis Rem Belakang</td>
                                                <td>{{$eksterior->jenisRemBelakang}}</td>
                                            </tr>
                                            <tr>
                                                <td>Jenis Rem Depan</td>
                                                <td>{{$eksterior->jenisRemDepan}}</td>
                                            </tr>
                                            <tr>
                                                <td>Fitur Tambahan</td>
                                                <td>{{$eksterior->fiturTambahan}}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                @endforeach
                    </div>
                    <div class="tab-pane fade" id="hiburan">
                        @foreach($types->hiburan as $hiburan)
                            <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Hiburan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Layar Sentuh</td>
                                        <td>{{$hiburan->layarSentuh}}</td>
                                    </tr>
                                    <tr>
                                        <td>Radio AM/FM</td>
                                        <td>{{$hiburan->radioAM}}</td>
                                    </tr>
                                    <tr>
                                        <td>Sistem Navigasi</td>
                                        <td>{{$hiburan->sistemNavigasi}}</td>
                                    </tr>
                                    <tr>
                                        <td>Sambungan Bluetooth</td>
                                        <td>{{$hiburan->sambunganBluetooth}}</td>
                                    </tr>
                                    <tr>
                                        <td>Soket USB</td>
                                        <td>{{$hiburan->soketUSB}}</td>
                                    </tr>
                                    <tr>
                                        <td>Pemutar CD</td>
                                        <td>{{$hiburan->pemutarCD}}</td>
                                    </tr>
                                    <tr>
                                        <td>Pemutar DVD</td>
                                        <td>{{$hiburan->pemutarDVD}}</td>
                                    </tr>
                                    <tr>
                                        <td>Speaker Depan</td>
                                        <td>{{$hiburan->speakerDepan}}</td>
                                    </tr>
                                    <tr>
                                        <td>Speaker Belakang</td>
                                        <td>{{$hiburan->speakerBelakang}}</td>
                                    </tr>
                                    <tr>
                                        <td>Audio 2DIN</td>
                                        <td>{{$hiburan->audio2DIN}}</td>
                                    </tr>
                                    <tr>
                                        <td>Perintah Suara</td>
                                        <td>{{$hiburan->perintahSuara}}</td>
                                    </tr>
                                </tbody>
                            </table>
                        @endforeach
                    </div>
                    <div class="tab-pane fade" id="keamanan">
                    @foreach($types->keamanan as $keamanan)
                    <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Keamanan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Smart Access</td>
                                        <td>{{$keamanan->smartAccess}}</td>
                                    </tr>
                                    <tr>
                                        <td>Power Door Locks</td>
                                        <td>{{$keamanan->powerDoorLocks}}</td>
                                    </tr>
                                    <tr>
                                        <td>Anti Theft Device</td>
                                        <td>{{$keamanan->antiTheftDevice}}</td>
                                    </tr>
                                    <tr>
                                        <td>Alarm Mobil</td>
                                        <td>{{$keamanan->alarmMobil}}</td>
                                    </tr>
                                    <tr>
                                        <td>Engine Immobilizer</td>
                                        <td>{{$keamanan->engineImmobilizer}}</td>
                                    </tr>
                                </tbody>
                    </table>
                    @endforeach
                    </div>
                    <div class="tab-pane fade" id="kenyamanan">
                    @foreach($types->kenyamanan as $kenyamanan)
                    <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Kenyamanan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>AC</td>
                                        <td>{{$kenyamanan->AC}}</td>
                                    </tr>
                                    <tr>
                                        <td>Power Window</td>
                                        <td>{{$kenyamanan->powerWindowDepan}}</td>
                                    </tr>
                                    <tr>
                                        <td>Power Steering</td>
                                        <td>{{$kenyamanan->powerSteering}}</td>
                                    </tr>
                                    <tr>
                                        <td>Pemanas</td>
                                        <td>{{$kenyamanan->pemanas}}</td>
                                    </tr>
                                    <tr>
                                        <td>Glove Box</td>
                                        <td>{{$kenyamanan->gloveBox}}</td>
                                    </tr>
                                    <tr>
                                        <td>Engine Start</td>
                                        <td>{{$kenyamanan->engineStart}}</td>
                                    </tr>
                                    <tr>
                                        <td>Adjustable Sheet</td>
                                        <td>{{$kenyamanan->adjustableSheet}}</td>
                                    </tr>
                                    <tr>
                                        <td>Kursi Heater Depan</td>
                                        <td>{{$kenyamanan->kursiHeaterDepan}}</td>
                                    </tr>
                                    <tr>
                                        <td>Kursi Heater Belakang</td>
                                        <td>{{$kenyamanan->kursiHeaterBelakang}}</td>
                                    </tr>
                                    <tr>
                                        <td>Spion Lipat</td>
                                        <td>{{$kenyamanan->spionLipat}}</td>
                                    </tr>
                                    <tr>
                                        <td>Follow Me Home HeadLamps</td>
                                        <td>{{$kenyamanan->followMeHomeHeadLamps}}</td>
                                    </tr>
                                    <tr>
                                        <td>Steering Wheel Gearshift Paddle</td>
                                        <td>{{$kenyamanan->steeringWheel}}</td>
                                    </tr>
                                    <tr>
                                        <td>Lingkar Kemudi dengan tombol MultiFungsi</td>
                                        <td>{{$kenyamanan->lingkarKemudi}}</td>
                                    </tr>
                                    <tr>
                                        <td>Cruise Control</td>
                                        <td>{{$kenyamanan->cruiseControl}}</td>
                                    </tr>
                                    <tr>
                                        <td>Kursi Lipat Belakang</td>
                                        <td>{{$kenyamanan->kursiLipatBelakang}}</td>
                                    </tr>
                                    <tr>
                                        <td>Pembuka Bagasi</td>
                                        <td>{{$kenyamanan->pembukaBagasi}}</td>
                                    </tr>
                                    <tr>
                                        <td>Lampu Pengingat Jumlah Bahan Bakar</td>
                                        <td>{{$kenyamanan->lampuPengingat}}</td>
                                    </tr>
                                    <tr>
                                        <td>Headrest Kursi Belakang</td>
                                        <td>{{$kenyamanan->headrestKursi}}</td>
                                    </tr>
                                    <tr>
                                        <td>Arm Rest Belakang Tengah</td>
                                        <td>{{$kenyamanan->armRest}}</td>
                                    </tr>
                                    <tr>
                                        <td>Cup Holder - Depan</td>
                                        <td>{{$kenyamanan->cupHolderDepan}}</td>
                                    </tr>
                                    <tr>
                                        <td>Lumbar Support</td>
                                        <td>{{$kenyamanan->lumbarSupport}}</td>
                                    </tr>
                                    <tr>
                                        <td>Bottle Holder</td>
                                        <td>{{$kenyamanan->bottleHolder}}</td>
                                    </tr>
                                    <tr>
                                        <td>Lampu Bagasi</td>
                                        <td>{{$kenyamanan->lampuBagasi}}</td>
                                    </tr>
                                    <tr>
                                        <td>Meja Lipat Belakang</td>
                                        <td>{{$kenyamanan->mejaLipatBelakang}}</td>
                                    </tr>
                                    <tr>
                                        <td>Arm Rest Konsol Tengah</td>
                                        <td>{{$kenyamanan->armRestTengah}}</td>
                                    </tr>
                                </tbody>
                    </table>
                    @endforeach
                    </div>
                    <div class="tab-pane fade" id="keselamatan">
                    @foreach($types->keselamatan as $keselamatan)
                    <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Keselamatan </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Air Bag Depan</td>
                                        <td>{{$keselamatan->airbagDepan}}</td>
                                    </tr>
                                    <tr>
                                        <td>Air Bag Belakang</td>
                                        <td>{{$keselamatan->airbagBelakang}}</td>
                                    </tr>
                                    <tr>
                                        <td>Child Safety</td>
                                        <td>{{$keselamatan->childSafety}}</td>
                                    </tr>
                                    <tr>
                                        <td>Kantong Udara</td>
                                        <td>{{$keselamatan->kantongUdara}}</td>
                                    </tr>
                                    <tr>
                                        <td>Air Bag Samping</td>
                                        <td>{{$keselamatan->airbagSamping}}</td>
                                    </tr>
                                    <tr>
                                        <td>Vehicle Stability</td>
                                        <td>{{$keselamatan->vehicleStability}}</td>
                                    </tr>
                                    <tr>
                                        <td>Sabuk Pengaman</td>
                                        <td>{{$keselamatan->sabukPengaman}}</td>
                                    </tr>
                                    <tr>
                                        <td>Pengingat Pengaman</td>
                                        <td>{{$keselamatan->pengingatPengaman}}</td>
                                    </tr>
                                    <tr>
                                        <td>Kamera Belakang</td>
                                        <td>{{$keselamatan->kameraBelakang}}</td>
                                    </tr>
                                    <tr>
                                        <td>Sensor Parkir</td>
                                        <td>{{$keselamatan->sensorParkir}}</td>
                                    </tr>
                                    <tr>
                                        <td>Engine Check</td>
                                        <td>{{$keselamatan->engineCheck}}</td>
                                    </tr>
                                    <tr>
                                        <td>Pengukur Tekanan</td>
                                        <td>{{$keselamatan->pengukurTekanan}}</td>
                                    </tr>
                                    <tr>
                                        <td>Pelindung Benturan Samping</td>
                                        <td>{{$keselamatan->pelindungBenturanSamping}}</td>
                                    </tr>
                                    <tr>
                                        <td>Pengingat Pintu</td>
                                        <td>{{$keselamatan->pengingatPintu}}</td>
                                    </tr>
                                    <tr>
                                        <td>Kontrol Traksi</td>
                                        <td>{{$keselamatan->kontrolTraksi}}</td>
                                    </tr>
                                </tbody>
                    </table>
                    @endforeach
                    </div>
                    <div class="tab-pane fade" id="lain">
                    @foreach($types->lain as $lain)
                    <table class="table table-lg bg-light">
                                <thead>
                                    <tr>
                                        <th colspan="2">Lain - Lain</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Tachometer</td>
                                        <td>{{$lain->tachometer}}</td>
                                    </tr>
                                    <tr>
                                        <td>Electronic Multi Tripmeter</td>
                                        <td>{{$lain->electronicMultiTripmeter}}</td>
                                    </tr>
                                    <tr>
                                        <td>Jok Dilapisi Kulit</td>
                                        <td>{{$lain->jokDilapisiKulit}}</td>
                                    </tr>
                                    <tr>
                                        <td>Lapisan Berbahan kain</td>
                                        <td>{{$lain->lapisanBerbahanKain}}</td>
                                    </tr>
                                    <tr>
                                        <td>Stir Berbalut Kulit</td>
                                        <td>{{$lain->stirBerbalutKulit}}</td>
                                    </tr>
                                    <tr>
                                        <td>Temperatur Udara Luar</td>
                                        <td>{{$lain->temperaturUdaraLuar}}</td>
                                    </tr>
                                    <tr>
                                        <td>Odometer Digital</td>
                                        <td>{{$lain->odometerDigital}}</td>
                                    </tr>
                                    <tr>
                                        <td>Pengaturan Kursi Elektrik</td>
                                        <td>{{$lain->pengaturanKursiElektrik}}</td>
                                    </tr>
                                    <tr>
                                        <td>Tangki Bahan Bakar</td>
                                        <td>{{$lain->tangkiBahanBakar}}</td>
                                    </tr>
                                    <tr>
                                        <td>Jenis Lampu Depan</td>
                                        <td>{{$lain->jenisLampuDepan}}</td>
                                    </tr>
                                </tbody>
                    </table>
                    @endforeach
                    </div>
        </div>
</div>