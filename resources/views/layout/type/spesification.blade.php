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
                                            @if($eksterior->lampuKabutBelakang != null)
                                                <tr>
                                                    <td>Lampu Kabut Belakang</td>
                                                    <td>{{$eksterior->lampuKabutBelakang}}</td>
                                                </tr>
                                            @endif
                                            <tr>
                                                <td>Kaca Spion Elektrik</td>
                                                <td>{{$eksterior->kacaSpionElektrik}}</td>
                                            </tr>
                                            <tr>
                                                <td>Kaca Spion Luar Manual</td>
                                                <td>{{$eksterior->kacaSpionLuarManual}}</td>
                                            </tr>
                                            @if($eksterior->wiperOtomatis != null)
                                                <tr>
                                                    <td>Wiper Otomatis</td>
                                                    <td>{{$eksterior->wiperOtomatis}}</td>
                                                </tr>
                                            @endif
                                            <tr>
                                                <td>Wiper Kaca Belakang</td>
                                                <td>{{$eksterior->wiperKacaBelakang}}</td>
                                            </tr>
                                             @if($eksterior->washerKacaBelakang != null)
                                                <tr>
                                                    <td>Washer Kaca Belakang</td>
                                                    <td>{{$eksterior->washerKacaBelakang}}</td>
                                                </tr>
                                            @endif
                                            @if($eksterior->defoggerKacaBelakang != null)
                                                <tr>
                                                    <td>Defogger Kaca Belakang</td>
                                                    <td>{{$eksterior->defoggerKacaBelakang}}</td>
                                                </tr>
                                            @endif
                                            <tr>
                                                <td>Cover Velg</td>
                                                <td>{{$eksterior->coverVelg}}</td>
                                            </tr>
                                            @if($eksterior->tintedGlass != null)
                                                <tr>
                                                    <td>Tinted Glass</td>
                                                    <td>{{$eksterior->tintedGlass}}</td>
                                                </tr>
                                            @endif
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
                                            @if($eksterior->roofRack != null)
                                                <tr>
                                                    <td>Roof Rack</td>
                                                    <td>{{$eksterior->roofRack}}</td>
                                                </tr>
                                            @endif
                                            @if($eksterior->sunRoof != null)
                                                <tr>
                                                    <td>Sun Roof</td>
                                                    <td>{{$eksterior->sunRoof}}</td>
                                                </tr>
                                            @endif
                                            @if($eksterior->moonRoof != null)
                                                <tr>
                                                    <td>Moon Roof</td>
                                                    <td>{{$eksterior->moonRoof}}</td>
                                                </tr>
                                            @endif
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
                                            @if($eksterior->garnishKrom != null)
                                                <tr>
                                                    <td>Garnish Krom</td>
                                                    <td>{{$eksterior->garnishKrom}}</td>
                                                </tr>
                                            @endif
                                            @if($eksterior->roofRail != null)
                                                <tr>
                                                    <td>Roof Rail</td>
                                                    <td>{{$eksterior->roofRail}}</td>
                                                </tr>
                                            @endif
                                            @if($eksterior->tuasPembuka != null)
                                                <tr>
                                                    <td>Tuas Pembuka Tutup Bensin</td>
                                                    <td>{{$eksterior->tuasPembuka}}</td>
                                                </tr>
                                            @endif
                                            <tr>
                                                <td>Jenis Rem Belakang</td>
                                                <td>{{$eksterior->jenisRemBelakang}}</td>
                                            </tr>
                                            <tr>
                                                <td>Jenis Rem Depan</td>
                                                <td>{{$eksterior->jenisRemDepan}}</td>
                                            </tr>
                                            @if($eksterior->fiturTambahan != null)
                                                <tr>
                                                    <td>Fitur Tambahan</td>
                                                    <td>{{$eksterior->fiturTambahan}}</td>
                                                </tr>
                                            @endif
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
                                    @if($hiburan->layarSentuh != null)
                                        <tr>
                                            <td>Layar Sentuh</td>
                                            <td>{{$hiburan->layarSentuh}}</td>
                                        </tr>
                                    @endif
                                    @if($hiburan->radioAM != null)
                                        <tr>
                                            <td>Radio AM/FM</td>
                                            <td>{{$hiburan->radioAM}}</td>
                                        </tr>
                                    @endif
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
                                    @if($hiburan->pemutarDVD != null)
                                        <tr>
                                            <td>Pemutar DVD</td>
                                            <td>{{$hiburan->pemutarDVD}}</td>
                                        </tr>
                                    @endif
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
                                    @if($hiburan->perintahSuara != null)
                                        <tr>
                                            <td>Perintah Suara</td>
                                            <td>{{$hiburan->perintahSuara}}</td>
                                        </tr>
                                    @endif
                                    @if($hiburan->fiturTambahan != null)
                                        <tr>
                                            <td>Fitur Tambahan</td>
                                            <td>{{$hiburan->fiturTambahan}}</td>
                                        </tr>
                                    @endif
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
                                    @if($keamanan->centralLocking != null)
                                        <tr>
                                            <td>Central Locking</td>
                                            <td>{{$keamanan->centralLocking}}</td>
                                        </tr>
                                    @endif
                                    @if($keamanan->smartAccess != null)
                                        <tr>
                                            <td>Smart Access</td>
                                            <td>{{$keamanan->smartAccess}}</td>
                                        </tr>
                                    @endif
                                    @if($keamanan->powerDoorLocks != null)
                                        <tr>
                                            <td>Power Door Locks</td>
                                            <td>{{$keamanan->powerDoorLocks}}</td>
                                        </tr>
                                    @endif
                                    @if($keamanan->antiTheftDevice != null)
                                        <tr>
                                            <td>Anti Theft Device</td>
                                            <td>{{$keamanan->antiTheftDevice}}</td>
                                        </tr>
                                    @endif
                                    @if($keamanan->alarmMobil != null)
                                        <tr>
                                            <td>Alarm Mobil</td>
                                            <td>{{$keamanan->alarmMobil}}</td>
                                        </tr>
                                    @endif
                                    @if($keamanan->engineImmobilizer != null)
                                        <tr>
                                            <td>Engine Immobilizer</td>
                                            <td>{{$keamanan->engineImmobilizer}}</td>
                                        </tr>
                                    @endif
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
                                    @if($kenyamanan->powerWindowDepan != null)
                                        <tr>
                                            <td>Power Window Depan</td>
                                            <td>{{$kenyamanan->powerWindowDepan}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->powerWindowBelakang != null)
                                        <tr>
                                            <td>Power Window Belakang</td>
                                            <td>{{$kenyamanan->powerWindowBelakang}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Power Steering</td>
                                        <td>{{$kenyamanan->powerSteering}}</td>
                                    </tr>
                                    @if($kenyamanan->automaticClimate != null)
                                        <tr>
                                            <td>Automatic Climate</td>
                                            <td>{{$kenyamanan->automaticClimate}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->airQuality != null)
                                        <tr>
                                            <td>Air Quality</td>
                                            <td>{{$kenyamanan->airQuality}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Pemanas</td>
                                        <td>{{$kenyamanan->pemanas}}</td>
                                    </tr>
                                    @if($kenyamanan->gloveBox != null)
                                        <tr>
                                            <td>Glove Box</td>
                                            <td>{{$kenyamanan->gloveBox}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->engineStart != null)
                                        <tr>
                                            <td>Engine Start</td>
                                            <td>{{$kenyamanan->engineStart}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->ventilasiAC != null)
                                        <tr>
                                            <td>Ventilasi AC</td>
                                            <td>{{$kenyamanan->ventilasiAC}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->adjustableSheet != null)
                                        <tr>
                                            <td>Adjustable Sheet</td>
                                            <td>{{$kenyamanan->adjustableSheet}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->kursiPengemudi != null)
                                        <tr>
                                            <td>Kursi Pengemudi</td>
                                            <td>{{$kenyamanan->kursiPengemudi}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Kursi Heater Depan</td>
                                        <td>{{$kenyamanan->kursiHeaterDepan}}</td>
                                    </tr>
                                    <tr>
                                        <td>Kursi Heater Belakang</td>
                                        <td>{{$kenyamanan->kursiHeaterBelakang}}</td>
                                    </tr>
                                    @if($kenyamanan->onboardComputer != null)
                                        <tr>
                                            <td>Onboard Computer</td>
                                            <td>{{$kenyamanan->onboardComputer}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->spionLipat != null)
                                        <tr>
                                            <td>Spion Lipat</td>
                                            <td>{{$kenyamanan->spionLipat}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->automaticHeadLamps != null)
                                        <tr>
                                            <td>Automatic Head Lamps</td>
                                            <td>{{$kenyamanan->automaticHeadLamps}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->followMeHomeHeadLamps != null)
                                        <tr>
                                            <td>Follow Me Home HeadLamps</td>
                                            <td>{{$kenyamanan->followMeHomeHeadLamps}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->steeringWheel != null)
                                        <tr>
                                            <td>Steering Wheel Gearshift Paddle</td>
                                            <td>{{$kenyamanan->steeringWheel}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->powerOutlet != null)
                                        <tr>
                                            <td>Power Outlet</td>
                                            <td>{{$kenyamanan->powerOutlet}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->lingkarKemudi != null)
                                        <tr>
                                            <td>Lingkar Kemudi dengan tombol MultiFungsi</td>
                                            <td>{{$kenyamanan->lingkarKemudi}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->cruiseControl != null)
                                        <tr>
                                            <td>Cruise Control</td>
                                            <td>{{$kenyamanan->cruiseControl}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Kursi Lipat Belakang</td>
                                        <td>{{$kenyamanan->kursiLipatBelakang}}</td>
                                    </tr>
                                    @if($kenyamanan->pembukaBagasi != null)
                                        <tr>
                                            <td>Pembuka Bagasi</td>
                                            <td>{{$kenyamanan->pembukaBagasi}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Lampu Pengingat Jumlah Bahan Bakar</td>
                                        <td>{{$kenyamanan->lampuPengingat}}</td>
                                    </tr>
                                    @if($kenyamanan->lampuBaca != null)
                                        <tr>
                                            <td>Lampu Baca</td>
                                            <td>{{$kenyamanan->lampuBaca}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Headrest Kursi Belakang</td>
                                        <td>{{$kenyamanan->headrestKursi}}</td>
                                    </tr>
                                    <tr>
                                        <td>Arm Rest Belakang Tengah</td>
                                        <td>{{$kenyamanan->armRest}}</td>
                                    </tr>
                                    @if($kenyamanan->cupHolderDepan != null)
                                        <tr>
                                            <td>Cup Holder - Depan</td>
                                            <td>{{$kenyamanan->cupHolderDepan}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->cupHolderBelakang != null)
                                        <tr>
                                            <td>Cup Holder Belakang</td>
                                            <td>{{$kenyamanan->cupHolderBelakang}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->lumbarSupport != null)
                                        <tr>
                                            <td>Lumbar Support</td>
                                            <td>{{$kenyamanan->lumbarSupport}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Bottle Holder</td>
                                        <td>{{$kenyamanan->bottleHolder}}</td>
                                    </tr>
                                    @if($kenyamanan->lampuBagasi != null)
                                        <tr>
                                            <td>Lampu Bagasi</td>
                                            <td>{{$kenyamanan->lampuBagasi}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->mejaLipatBelakang != null)
                                        <tr>
                                            <td>Meja Lipat Belakang</td>
                                            <td>{{$kenyamanan->mejaLipatBelakang}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->vanityMirror != null)
                                        <tr>
                                            <td>Vanity Mirror</td>
                                            <td>{{$kenyamanan->vanityMirror}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->keylessEntry != null)
                                        <tr>
                                            <td>Keyless Entry</td>
                                            <td>{{$kenyamanan->keylessEntry}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->armRestTengah != null)
                                        <tr>
                                            <td>Arm Rest Konsol Tengah</td>
                                            <td>{{$kenyamanan->armRestTengah}}</td>
                                        </tr>
                                    @endif
                                    @if($kenyamanan->fiturTambahan != null)
                                        <tr>
                                            <td>Fitur Tambahan</td>
                                            <td>{{$kenyamanan->fiturTambahan}}</td>
                                        </tr>
                                    @endif
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
                                    @if($keselamatan->airbagBelakang != null)
                                        <tr>
                                            <td>Air Bag Belakang</td>
                                            <td>{{$keselamatan->airbagBelakang}}</td>
                                        </tr>
                                    @endif
                                    @if($keselamatan->childSafety != null)
                                        <tr>
                                            <td>Child Safety</td>
                                            <td>{{$keselamatan->childSafety}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Kantong Udara</td>
                                        <td>{{$keselamatan->kantongUdara}}</td>
                                    </tr>
                                    @if($keselamatan->airbagSamping != null)
                                        <tr>
                                            <td>Air Bag Samping</td>
                                            <td>{{$keselamatan->airbagSamping}}</td>
                                        </tr>
                                    @endif
                                    @if($keselamatan->vehicheStability != null)
                                        <tr>
                                            <td>Vehicle Stability</td>
                                            <td>{{$keselamatan->vehicleStability}}</td>
                                        </tr>
                                    @endif
                                    @if($keselamatan->antiLockBracking != null)
                                        <tr>
                                            <td>Anti Lock Bracking</td>
                                            <td>{{$keselamatan->antiLockBracking}}</td>
                                        </tr>
                                    @endif
                                    @if($keselamatan->brakeAssist != null)
                                        <tr>
                                            <td>Brake Assist</td>
                                            <td>{{$keselamatan->brakeAssist}}</td>
                                        </tr>
                                    @endif
                                    @if($keselamatan->EBD != null)
                                        <tr>
                                            <td>EBD</td>
                                            <td>{{$keselamatan->EBD}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Sabuk Pengaman</td>
                                        <td>{{$keselamatan->sabukPengaman}}</td>
                                    </tr>
                                    <tr>
                                        <td>Pengingat Pengaman</td>
                                        <td>{{$keselamatan->pengingatPengamanBelakang}}</td>
                                    </tr>
                                    @if($keselamatan->kameraBelakang != null)
                                        <tr>
                                            <td>Kamera Belakang</td>
                                            <td>{{$keselamatan->kameraBelakang}}</td>
                                        </tr>
                                    @endif
                                    @if($keselamatan->crashSensor != null)
                                        <tr>
                                            <td>Crash Sensor</td>
                                            <td>{{$keselamatan->crashSensor}}</td>
                                        </tr>
                                    @endif
                                    @if($keselamatan->sensorParkir != null)
                                        <tr>
                                            <td>Sensor Parkir</td>
                                            <td>{{$keselamatan->sensorParkir}}</td>
                                        </tr>
                                    @endif
                                    @if($keselamatan->engineCheck != null)
                                        <tr>
                                            <td>Engine Check</td>
                                            <td>{{$keselamatan->engineCheck}}</td>
                                        </tr>
                                    @endif
                                    @if($keselamatan->pengukurTekanan != null)
                                        <tr>
                                            <td>Pengukur Tekanan</td>
                                            <td>{{$keselamatan->pengukurTekanan}}</td>
                                        </tr>
                                    @endif
                                    @if($keselamatan->pelindungBenturanDepan != null)
                                        <tr>
                                            <td>Pelindung Benturan Depan</td>
                                            <td>{{$keselamatan->pelindungBenturanDepan}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Pelindung Benturan Samping</td>
                                        <td>{{$keselamatan->pelindungBenturanSamping}}</td>
                                    </tr>
                                    @if($keselamatan->sabukPengamanDepan != null)
                                        <tr>
                                            <td>Sabuk Pengaman Depan</td>
                                            <td>{{$keselamatan->sabukPengamanDepan}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Pengingat Pintu</td>
                                        <td>{{$keselamatan->pengingatPintu}}</td>
                                    </tr>
                                    @if($keselamatan->spionTengahLipat != null)
                                        <tr>
                                            <td>Spion Tengah Lipat</td>
                                            <td>{{$keselamatan->spionTengahLipat}}</td>
                                        </tr>
                                    @endif
                                    @if($keselamatan->kontrolTraksi != null)
                                        <tr>
                                            <td>Kontrol Traksi</td>
                                            <td>{{$keselamatan->kontrolTraksi}}</td>
                                        </tr>
                                    @endif
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
                                    @if($lain->electronicMultiTripmeter != null)
                                        <tr>
                                            <td>Electronic Multi Tripmeter</td>
                                            <td>{{$lain->electronicMultiTripmeter}}</td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td>Jok Dilapisi Kulit</td>
                                        <td>{{$lain->jokDilapisiKulit}}</td>
                                    </tr>
                                    <tr>
                                        <td>Lapisan Berbahan kain</td>
                                        <td>{{$lain->lapisanBerbahanKain}}</td>
                                    </tr>
                                    @if($lain->stirBerbalutKulit != null)
                                        <tr>
                                            <td>Stir Berbalut Kulit</td>
                                            <td>{{$lain->stirBerbalutKulit}}</td>
                                        </tr>
                                    @endif
                                    @if($lain->temperaturUdaraLuar != null)
                                        <tr>
                                            <td>Temperatur Udara Luar</td>
                                            <td>{{$lain->temperaturUdaraLuar}}</td>
                                        </tr>
                                    @endif
                                    @if($lain->jamDigital != null)
                                        <tr>
                                            <td>Jam Digital</td>
                                            <td>{{$lain->jamDigital}}</td>
                                        </tr>
                                    @endif
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
                                    @if($lain->fiturKeselamatanCanggih != null)
                                        <tr>
                                            <td>Fitur Keselamatan Canggih</td>
                                            <td>{{$lain->fiturKeselamatanCanggih}}</td>
                                        </tr>
                                    @endif
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