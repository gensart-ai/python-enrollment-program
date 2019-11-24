#############################################################################
# Generated by PAGE version 4.26
#  in conjunction with Tcl version 8.6
#  Nov 23, 2019 05:17:40 PM +0700  platform: Windows NT
set vTcl(timestamp) ""


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(active_menu_fg) #000000
}




proc vTclWindow.top42 {base} {
    global vTcl
    if {$base == ""} {
        set base .top42
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m43" -background $vTcl(actual_gui_bg) \
        -highlightbackground #b7ffb3 -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 1060x602+98+107
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1362 742
    wm minsize $top 116 1
    wm overrideredirect $top 0
    wm resizable $top 0 0
    wm deiconify $top
    wm title $top "Pendaftaran Siswa Baru SMK Cyber Media Utama Tahun 2020"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    ttk::label $top.tLa46 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font {-family {Titillium} -size 16 -weight bold} -relief flat \
        -text {Form Pendaftaran Calon Siswa Baru} 
    vTcl:DefineAlias "$top.tLa46" "tag_pendaftaran" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $top.tLa47 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font {-family {Hack} -size 10} -relief flat \
        -text {Kode Verifikasi :} 
    vTcl:DefineAlias "$top.tLa47" "verify_code_status" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TLabelframe.Label -background $vTcl(actual_gui_bg)
    ttk::style configure TLabelframe.Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure TLabelframe.Label -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::style configure TLabelframe -background $vTcl(actual_gui_bg)
    ttk::labelframe $top.tLa60 \
        -text {Diisi oleh Calon Peserta Didik} -width 480 -height 425 
    vTcl:DefineAlias "$top.tLa60" "TLabelframe1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tLa60
    ttk::label $site_3_0.tLa50 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Nama Siswa} 
    vTcl:DefineAlias "$site_3_0.tLa50" "tag_nama" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $site_3_0.tEn51 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn51" "name_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa52 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Jenis Kelamin} 
    vTcl:DefineAlias "$site_3_0.tLa52" "tag_jenisK" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa53 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Tanggal Lahir} 
    vTcl:DefineAlias "$site_3_0.tLa53" "tag_tgllahir" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa54 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Asal Sekolah} 
    vTcl:DefineAlias "$site_3_0.tLa54" "tag_asalsklh" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa55 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Alamat Rumah} 
    vTcl:DefineAlias "$site_3_0.tLa55" "tag_alamat" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $site_3_0.tEn84 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn84" "jrk_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa85 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Jarak ke Sekolah} 
    vTcl:DefineAlias "$site_3_0.tLa85" "tag_jaraksekolah" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa86 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text KM 
    vTcl:DefineAlias "$site_3_0.tLa86" "tag_KM" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa87 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Tinggi Badan} 
    vTcl:DefineAlias "$site_3_0.tLa87" "tag_tinggibdn" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa88 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Berat Badan} 
    vTcl:DefineAlias "$site_3_0.tLa88" "tag_beratbdn" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $site_3_0.tEn89 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn89" "tinggibdn_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $site_3_0.tEn90 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn90" "beratbdn_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa91 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text CM 
    vTcl:DefineAlias "$site_3_0.tLa91" "tag_CM" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa92 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text KG 
    vTcl:DefineAlias "$site_3_0.tLa92" "tag_KG" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa93 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Transportasi ke Sekolah} 
    vTcl:DefineAlias "$site_3_0.tLa93" "tag_tpsklh" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TRadiobutton -background $vTcl(actual_gui_bg)
    ttk::style configure TRadiobutton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TRadiobutton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::radiobutton $site_3_0.tRa94 \
        -text Motor 
    vTcl:DefineAlias "$site_3_0.tRa94" "mtr_radio" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TRadiobutton -background $vTcl(actual_gui_bg)
    ttk::style configure TRadiobutton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TRadiobutton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::radiobutton $site_3_0.tRa95 \
        -text {Angkutan Umum} 
    vTcl:DefineAlias "$site_3_0.tRa95" "angkot_radio" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TRadiobutton -background $vTcl(actual_gui_bg)
    ttk::style configure TRadiobutton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TRadiobutton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::radiobutton $site_3_0.tRa96 \
        -text {Jalan Kaki} 
    vTcl:DefineAlias "$site_3_0.tRa96" "jalan_radio" vTcl:WidgetProc "Toplevel1" 1
    ttk::combobox $site_3_0.tCo99 \
        -font TkTextFont -textvariable combobox -foreground {} -background {} \
        -takefocus {} 
    vTcl:DefineAlias "$site_3_0.tCo99" "tgl_cb" vTcl:WidgetProc "Toplevel1" 1
    ttk::combobox $site_3_0.tCo100 \
        -font TkTextFont -textvariable combobox -foreground {} -background {} \
        -takefocus {} 
    vTcl:DefineAlias "$site_3_0.tCo100" "bln_cb" vTcl:WidgetProc "Toplevel1" 1
    ttk::combobox $site_3_0.tCo101 \
        -font TkTextFont -textvariable combobox -foreground {} -background {} \
        -takefocus {} 
    vTcl:DefineAlias "$site_3_0.tCo101" "thn_cb" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.tLa50 \
        -in $site_3_0 -x 20 -y 30 -anchor nw -bordermode ignore 
    place $site_3_0.tEn51 \
        -in $site_3_0 -x 160 -y 30 -width 296 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa52 \
        -in $site_3_0 -x 20 -y 60 -anchor nw -bordermode ignore 
    place $site_3_0.tLa53 \
        -in $site_3_0 -x 20 -y 90 -anchor nw -bordermode ignore 
    place $site_3_0.tLa54 \
        -in $site_3_0 -x 20 -y 130 -anchor nw -bordermode ignore 
    place $site_3_0.tLa55 \
        -in $site_3_0 -x 20 -y 310 -anchor nw -bordermode ignore 
    place $site_3_0.tEn84 \
        -in $site_3_0 -x 160 -y 190 -width 56 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa85 \
        -in $site_3_0 -x 20 -y 190 -anchor nw -bordermode ignore 
    place $site_3_0.tLa86 \
        -in $site_3_0 -x 220 -y 190 -anchor nw -bordermode ignore 
    place $site_3_0.tLa87 \
        -in $site_3_0 -x 20 -y 220 -anchor nw -bordermode ignore 
    place $site_3_0.tLa88 \
        -in $site_3_0 -x 20 -y 250 -anchor nw -bordermode ignore 
    place $site_3_0.tEn89 \
        -in $site_3_0 -x 160 -y 220 -width 56 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn90 \
        -in $site_3_0 -x 160 -y 250 -width 56 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa91 \
        -in $site_3_0 -x 220 -y 220 -anchor nw -bordermode ignore 
    place $site_3_0.tLa92 \
        -in $site_3_0 -x 220 -y 250 -anchor nw -bordermode ignore 
    place $site_3_0.tLa93 \
        -in $site_3_0 -x 20 -y 280 -anchor nw -bordermode ignore 
    place $site_3_0.tRa94 \
        -in $site_3_0 -x 160 -y 280 -anchor nw -bordermode ignore 
    place $site_3_0.tRa95 \
        -in $site_3_0 -x 230 -y 280 -anchor nw -bordermode ignore 
    place $site_3_0.tRa96 \
        -in $site_3_0 -x 360 -y 280 -anchor nw -bordermode ignore 
    place $site_3_0.tCo99 \
        -in $site_3_0 -x 160 -y 90 -width 53 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tCo100 \
        -in $site_3_0 -x 220 -y 90 -width 143 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tCo101 \
        -in $site_3_0 -x 370 -y 90 -width 83 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::style configure TLabelframe.Label -background $vTcl(actual_gui_bg)
    ttk::style configure TLabelframe.Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure TLabelframe.Label -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::style configure TLabelframe -background $vTcl(actual_gui_bg)
    ttk::labelframe $top.tLa61 \
        -text {Diisi oleh Orang Tua Calon Peserta Didik} -width 530 \
        -height 275 
    vTcl:DefineAlias "$top.tLa61" "TLabelframe2" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tLa61
    ttk::label $site_3_0.tLa56 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Nama Ayah} 
    vTcl:DefineAlias "$site_3_0.tLa56" "tag_ayah" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa57 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Nama Ibu} 
    vTcl:DefineAlias "$site_3_0.tLa57" "tag_ibu" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa58 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Profesi / Pekerjaan Ibu} 
    vTcl:DefineAlias "$site_3_0.tLa58" "tag_kerjaibu" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa59 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Profesi / Pekerjaan Ayah} 
    vTcl:DefineAlias "$site_3_0.tLa59" "tag_kerjaayah" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $site_3_0.tEn60 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn60" "dadname_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $site_3_0.tEn61 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn61" "momname_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $site_3_0.tEn62 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn62" "dadwork_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $site_3_0.tEn63 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn63" "momwork_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa68 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Pendidikan Terakhir Ayah} 
    vTcl:DefineAlias "$site_3_0.tLa68" "tag_eduayah" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa69 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {Pendidikan Terakhir Ibu} 
    vTcl:DefineAlias "$site_3_0.tLa69" "tag_eduibu" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $site_3_0.tEn72 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn72" "dadedu_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $site_3_0.tEn73 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn73" "momedu_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $site_3_0.tEn74 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn74" "phnumdad_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $site_3_0.tEn75 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$site_3_0.tEn75" "phnummom_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa76 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {No Telepon Ayah} 
    vTcl:DefineAlias "$site_3_0.tLa76" "tag_noayah" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa77 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text {No Telepon Ibu} 
    vTcl:DefineAlias "$site_3_0.tLa77" "tag_noibu" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa79 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text +62 
    vTcl:DefineAlias "$site_3_0.tLa79" "tag_62" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $site_3_0.tLa80 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -text +62 
    vTcl:DefineAlias "$site_3_0.tLa80" "tag_622" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.tLa56 \
        -in $site_3_0 -x 30 -y 30 -anchor nw -bordermode ignore 
    place $site_3_0.tLa57 \
        -in $site_3_0 -x 30 -y 60 -anchor nw -bordermode ignore 
    place $site_3_0.tLa58 \
        -in $site_3_0 -x 30 -y 120 -anchor nw -bordermode ignore 
    place $site_3_0.tLa59 \
        -in $site_3_0 -x 30 -y 90 -anchor nw -bordermode ignore 
    place $site_3_0.tEn60 \
        -in $site_3_0 -x 190 -y 30 -width 316 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn61 \
        -in $site_3_0 -x 190 -y 60 -width 316 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn62 \
        -in $site_3_0 -x 190 -y 90 -width 316 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn63 \
        -in $site_3_0 -x 190 -y 120 -width 316 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa68 \
        -in $site_3_0 -x 30 -y 150 -anchor nw -bordermode ignore 
    place $site_3_0.tLa69 \
        -in $site_3_0 -x 30 -y 180 -anchor nw -bordermode ignore 
    place $site_3_0.tEn72 \
        -in $site_3_0 -x 190 -y 150 -width 316 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn73 \
        -in $site_3_0 -x 190 -y 180 -width 316 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn74 \
        -in $site_3_0 -x 250 -y 210 -width 256 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn75 \
        -in $site_3_0 -x 250 -y 240 -width 256 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa76 \
        -in $site_3_0 -x 30 -y 210 -width 123 -relwidth 0 -height 19 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa77 \
        -in $site_3_0 -x 30 -y 240 -anchor nw -bordermode ignore 
    place $site_3_0.tLa79 \
        -in $site_3_0 -x 220 -y 210 -anchor nw -bordermode ignore 
    place $site_3_0.tLa80 \
        -in $site_3_0 -x 220 -y 240 -anchor nw -bordermode ignore 
    ttk::entry $top.tEn62 \
        -font TkTextFont -foreground {} -background {} -takefocus {} \
        -cursor ibeam 
    vTcl:DefineAlias "$top.tEn62" "smp_name_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TRadiobutton -background $vTcl(actual_gui_bg)
    ttk::style configure TRadiobutton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TRadiobutton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::radiobutton $top.tRa66 \
        -text {Laki - Laki} 
    vTcl:DefineAlias "$top.tRa66" "jk_boy" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TRadiobutton -background $vTcl(actual_gui_bg)
    ttk::style configure TRadiobutton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TRadiobutton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::radiobutton $top.tRa67 \
        -text Perempuan -compound top 
    vTcl:DefineAlias "$top.tRa67" "jk_girl" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TRadiobutton -background $vTcl(actual_gui_bg)
    ttk::style configure TRadiobutton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TRadiobutton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::radiobutton $top.tRa68 \
        -text SMP -compound top 
    vTcl:DefineAlias "$top.tRa68" "smp_radio" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TRadiobutton -background $vTcl(actual_gui_bg)
    ttk::style configure TRadiobutton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TRadiobutton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::radiobutton $top.tRa70 \
        -text MTS -compound top 
    vTcl:DefineAlias "$top.tRa70" "mts_radio" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TRadiobutton -background $vTcl(actual_gui_bg)
    ttk::style configure TRadiobutton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TRadiobutton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::radiobutton $top.tRa71 \
        -text Lainnya -compound top 
    vTcl:DefineAlias "$top.tRa71" "othersmp_radio" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.m43
    menu $site_3_0 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(pr,menubgcolor) -font TkMenuFont \
        -foreground $vTcl(pr,menufgcolor) -tearoff 0 
    ttk::entry $top.tEn44 \
        -font TkTextFont -justify center -foreground {} -background {} \
        -takefocus {} -cursor ibeam 
    vTcl:DefineAlias "$top.tEn44" "address_field" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu66 \
        -takefocus {} -text Daftar 
    vTcl:DefineAlias "$top.tBu66" "regist_button" vTcl:WidgetProc "Toplevel1" 1
    message $top.mes82 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Copyright 2019 © Reserved
SMK Cyber Media Utama} -width 147 
    vTcl:DefineAlias "$top.mes82" "tag_copyright" vTcl:WidgetProc "Toplevel1" 1
    message $top.mes83 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Harap Lampirkan juga data offline sebagai berikut :

1. Ijazah SMP/MTS/Sederajat & SKHUN
2. Fotocopy Kartu Keluarga
3. Fotocopy Akta Kelahiran Calon Peserta Didik
4. Fotocopy KTP Orang Tua
5. Pas Foto 3X4cm & 2X3cm = 2 Lembar@ukuran
6. Kartu Indonesia Pintar (Opsional)} \
        -width 290 
    vTcl:DefineAlias "$top.mes83" "tag_haraplampirkan" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tLa46 \
        -in $top -x 10 -y -10 -width 376 -relwidth 0 -height 59 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tLa47 \
        -in $top -x 10 -y 40 -width 336 -relwidth 0 -height 19 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tLa60 \
        -in $top -x 10 -y 70 -width 480 -relwidth 0 -height 425 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tLa61 \
        -in $top -x 520 -y 70 -width 530 -relwidth 0 -height 275 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tEn62 \
        -in $top -x 170 -y 220 -width 296 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tRa66 \
        -in $top -x 170 -y 130 -width 86 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tRa67 \
        -in $top -x 260 -y 130 -width 94 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tRa68 \
        -in $top -x 170 -y 190 -anchor nw -bordermode ignore 
    place $top.tRa70 \
        -in $top -x 240 -y 190 -anchor nw -bordermode ignore 
    place $top.tRa71 \
        -in $top -x 310 -y 190 -anchor nw -bordermode ignore 
    place $top.tEn44 \
        -in $top -x 170 -y 380 -width 296 -relwidth 0 -height 91 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tBu66 \
        -in $top -x 930 -y 540 -width 116 -relwidth 0 -height 45 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.mes82 \
        -in $top -x 10 -y 550 -width 147 -relwidth 0 -height 53 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.mes83 \
        -in $top -x 510 -y 360 -width 290 -relwidth 0 -height 123 \
        -relheight 0 -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top42 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}
