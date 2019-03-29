X-GM-THRID: 6673408192486047744
X-Received: by 2002:a1c:7dc3:: with SMTP id y186mr228969wmc.13.1553832153712;
        Thu, 28 Mar 2019 21:02:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:67c4:: with SMTP id b187ls144553wmc.14.canary-gmail;
 Thu, 28 Mar 2019 21:02:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxWXo2dGojdsmhhxQDXia4XQS1q7u28anQjz6QMMubqtULPvREecX7SYtle2I6V5uGSMwD4
X-Received: by 2002:a1c:3cc3:: with SMTP id j186mr223367wma.5.1553832152819;
        Thu, 28 Mar 2019 21:02:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553832152; cv=none;
        d=google.com; s=arc-20160816;
        b=p7HpP1HYYLkNrmwCkWsOlH/v4UMnAl2T/wwizfzTJDQK7hnOLZBcgQecEfNXzekDG9
         K3DSC6ZsceFmOwI90TBzXSqYVrGDJIS+m5ZzZMcwa1s3NWceBYjuCpRh6zRvdl9N2wqt
         bpSOlRRzl0/dW//+dDM82Ot1w+eamVqErDdoRyq4lsbf/Brd6qebrqK36FWHLh77RqkN
         ADDRkACM+PbrQT7hmna+os5BOUymC9BNcbz/M7VbMyfAOeaDmrAno8W1ihnAjRhUMwEg
         in4ioQv4jut/e0CTk/LELLZnbpmj6owH3OzkmrbOinRDTkVKk5KwAw353qrauWqCfcUD
         gXIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=A3UT0+i/kc7tTXbUhAz5Q7Fcnm4YeP5TrI3JzijGi/8=;
        b=KBu8AJXg1RMN8EQeBwibnbokn9o0Bi0x5kRcYfn2UaFYfK1tt3K8c6iZeeo3I2/gyx
         a9Dt2aw/NMdYKLkcOqKDT//Fo1fjmqW7L0GFSEqGfWJ5DeFbfzKQ/6s94tY0e0CC9ZFT
         P2YIGqXrlf93WVafG18sqK7BVSDMsvyJSN4umlciBBQwnyt2mT+9AFDS0pW0qvgzkjdJ
         DxCVFdUVcIF8Lnz342+SVHDWpBvChqgZIBXjVotcur70ZbmaqpimW4gRWajRj1O0BKKr
         /kc+653qnLkVW6K0kt2lW/T7rjBvECP5Fb8LsXsB6CUYxycGQE3dP7iyQ76BEDxLpUFA
         rfLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ij6ywnQv;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id a9si34563wrp.5.2019.03.28.21.02.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 21:02:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ij6ywnQv;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x12d.google.com with SMTP id a28so467060lfo.7
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 21:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=A3UT0+i/kc7tTXbUhAz5Q7Fcnm4YeP5TrI3JzijGi/8=;
        b=Ij6ywnQvogK8VFj853q0dKkUHqKqxMo75Rc76dN5flDiGD/guUiibFKPs329vzr+nu
         7f5RR7ojMXm+1prif/vFPq7ap6DYEd9Dmtqu9lgft1UF/uC4Tz54wZ8UrrRZpsicYJ18
         /0R37mhvKwWtF5qnX0c6lRTgkCpLiyq3ptv9Z+eCdb1yS55VfBae6aS7R6Qe9L0UKfbB
         W0qNB0xnZ9WpbKGrL2LoAfmcAyC71ameAGz8WbZ3rtDRLX1hRoYLbv4BEHAYDUcBhn6i
         ToNzWXoTlTYcXlBW2PhGp0PMI0c9zxqpFA5RrcTLuyyfKn/amIZ2XKg0Xm+FeKYAtAyi
         doAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=A3UT0+i/kc7tTXbUhAz5Q7Fcnm4YeP5TrI3JzijGi/8=;
        b=UzP6VbxEEoAQHXPkQ5jOSo0AtF70+JWvNUFAPHTybFZkV7jidRxkHaj3d3fGnHHOwW
         Y9H6IUXcUPsCgpnE70ZIQT492D142geANvqrbdQDC7x3fw8rl1+LSFyLaNvgUgPL3jlG
         C9fwrvHecx8ImVq6YKp3gUtaNCe29bE7SiEfkbTASD5gOQ5MjuEJH9uzlkfiPU/QxEm9
         RFq6x/R1+PHPAcXYj4b2HvClXgyLaJWI8FegR8+nNVNnoXsAPMmQD2jsdfXg5XYs5G05
         efLFmtTB3UPZ7j4f0zM4cqUnxs0fx4G8hnpSwc2V0C4PVvCbTS0hVN1D0m2Kv5mVnAST
         lO+g==
X-Gm-Message-State: APjAAAUj+NuWCx9HueJgKN8M2J5LxdomkUhJXTEwK0u2PPhq+X+3Hfv3
	bPZaAfHa8FHxN9xfmwmbmhrU2kbaGOpbGdW0Bx8e9g==
X-Received: by 2002:ac2:515b:: with SMTP id q27mr8725953lfd.110.1553832152081;
 Thu, 28 Mar 2019 21:02:32 -0700 (PDT)
MIME-Version: 1.0
References: <1553773857-4964-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <1553773857-4964-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Fri, 29 Mar 2019 09:32:18 +0530
Message-ID: <CANTOzWF62xCg+HTAEC1rvJTPp5LgMM86O4ftfUV+QbuSSJfcPw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: Remove unnecessary parentheses
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000772906058533bd4c"

--000000000000772906058533bd4c
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 28, 2019, 5:22 PM Payal Kshirsagar <
payal.s.kshirsagar.98@gmail.com> wrote:

> Challenge suggested by coccinelle.
>
> This patch removes unnecessary parentheses around the right hand side of
> an assignment.
> Using following script:
>
> @@
> local idexpression id;
> expression e1,e2;
> @@
>
> - id = (e1<<e2)
> + id = e1<<e2
>
> @@
> local idexpression id;
> expression e1,e2;
> @@
>
> - id = (e1>>e2)
> + id = e1>>e2
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
> diff -u -p a/rtlwifi/phydm/phydm.c b/rtlwifi/phydm/phydm.c
> --- a/rtlwifi/phydm/phydm.c
> +++ b/rtlwifi/phydm/phydm.c
> @@ -1766,8 +1766,7 @@ static u8 phydm_calculate_intf_distance(
>         if (f_interference >= bw_low && f_interference <= bw_up) {
>                 int_distance = (fc >= f_interference) ? (fc -
> f_interference) :
>                                                         (f_interference -
> fc);
> -               tone_idx_tmp =
> -                       (int_distance << 5); /* =10*(int_distance /0.3125)
> */
> +               tone_idx_tmp = int_distance << 5; /* =10*(int_distance
> /0.3125) */
>                 ODM_RT_TRACE(
>                         dm, ODM_COMP_API,
>                         "int_distance = ((%d MHz)) Mhz, tone_idx_tmp =
> ((%d.%d))\n",
> diff -u -p a/rtlwifi/phydm/phydm_adc_sampling.c
> b/rtlwifi/phydm/phydm_adc_sampling.c
> --- a/rtlwifi/phydm/phydm_adc_sampling.c
> +++ b/rtlwifi/phydm/phydm_adc_sampling.c
> @@ -67,7 +67,7 @@ static void phydm_la_get_tx_pkt_buf(void
>                         "is_round_up = ((%d)), finish_addr=((0x%x)),
> 0x7c0=((0x%x))\n",
>                         is_round_up, finish_addr, value32);
>                 /*Byte to 64Byte*/
> -               smp_number = ((adc_smp_buf->buffer_size) >> 3);
> +               smp_number = (adc_smp_buf->buffer_size) >> 3;
>         } else {
>                 addr = adc_smp_buf->start_pos;
>
> diff -u -p a/rtlwifi/phydm/phydm_hwconfig.c
> b/rtlwifi/phydm/phydm_hwconfig.c
> --- a/rtlwifi/phydm/phydm_hwconfig.c
> +++ b/rtlwifi/phydm/phydm_hwconfig.c
> @@ -59,10 +59,7 @@ static u32 phydm_process_rssi_pwdb(struc
>                         weighting = ((entry->rssi_stat.ofdm_pkt) > 4) ?
>                                             64 :
>                                             (entry->rssi_stat.ofdm_pkt <<
> 4);
> -                       undecorated_smoothed_pwdb =
> -                               (weighting * undecorated_smoothed_ofdm +
> -                                (64 - weighting) *
> undecorated_smoothed_cck) >>
> -                               6;
> +                       undecorated_smoothed_pwdb = (weighting *
> undecorated_smoothed_ofdm + (64 - weighting) * undecorated_smoothed_cck) >>
> 6;
>                         ODM_RT_TRACE(dm, ODM_COMP_RSSI_MONITOR,
>                                      "PWDB_1[%d] = (( %d )), W = (( %d
> ))\n",
>                                      pktinfo->station_id,
> @@ -218,16 +215,14 @@ static u32 phydm_process_rssi_ofdm(struc
>                 /* Calculate average RSSI */
>                 switch (rx_count) {
>                 case 2:
> -                       rssi_linear = (rssi_linear >> 1);
> +                       rssi_linear = rssi_linear >> 1;
>                         break;
>                 case 3:
>                         /* rssi_linear/3 ~ rssi_linear*11/32 */
> -                       rssi_linear = ((rssi_linear) + (rssi_linear << 1) +
> -                                      (rssi_linear << 3)) >>
> -                                     5;
> +                       rssi_linear = ((rssi_linear) + (rssi_linear << 1)
> + (rssi_linear << 3)) >> 5;
>                         break;
>                 case 4:
> -                       rssi_linear = (rssi_linear >> 2);
> +                       rssi_linear = rssi_linear >> 2;
>                         break;
>                 }
>
> @@ -582,7 +577,7 @@ static void odm_rx_phy_status92c_series_
>                 if (dm->support_ic_type & (ODM_RTL8703B)) {
>                 } else { /*3 bit LNA*/
>
> -                       LNA_idx = ((cck_agc_rpt & 0xE0) >> 5);
> +                       LNA_idx = (cck_agc_rpt & 0xE0) >> 5;
>                         VGA_idx = (cck_agc_rpt & 0x1F);
>                 }
>
> @@ -813,7 +808,7 @@ static void odm_rx_phy_status_jaguar_ser
>                 cck_highpwr = dm->is_cck_high_power;
>
>                 cck_agc_rpt = phy_sta_rpt->cfosho[0];
> -               LNA_idx = ((cck_agc_rpt & 0xE0) >> 5);
> +               LNA_idx = (cck_agc_rpt & 0xE0) >> 5;
>                 VGA_idx = (cck_agc_rpt & 0x1F);
>
>                 if (dm->support_ic_type == ODM_RTL8812) {
> @@ -1435,7 +1430,7 @@ static void phydm_set_per_path_phy_info(
>
>         if (rx_evm < 0) {
>                 /* Calculate EVM in dBm */
> -               evm_dbm = ((u8)(0 - rx_evm) >> 1);
> +               evm_dbm = (u8)(0 - rx_evm) >> 1;
>
>                 /* Calculate EVM in percentage */
>                 if (evm_dbm >= 33)
> @@ -1774,32 +1769,26 @@ phydm_process_rssi_for_dm_new_type(struc
>
>                 switch (phy_info->rx_count + 1) {
>                 case 2:
> -                       rssi_linear = (rssi_linear >> 1);
> +                       rssi_linear = rssi_linear >> 1;
>                         break;
>                 case 3:
>                         /* rssi_linear/3 ~ rssi_linear*11/32 */
> -                       rssi_linear = ((rssi_linear) + (rssi_linear << 1) +
> -                                      (rssi_linear << 3)) >>
> -                                     5;
> +                       rssi_linear = ((rssi_linear) + (rssi_linear << 1)
> + (rssi_linear << 3)) >> 5;
>                         break;
>                 case 4:
> -                       rssi_linear = (rssi_linear >> 2);
> +                       rssi_linear = rssi_linear >> 2;
>                         break;
>                 }
>                 rssi_ave = odm_convert_to_db(rssi_linear);
>
>                 if (undecorated_smoothed_pwdb <= 0) {
> -                       accumulate_pwdb =
> -                               (phy_info->rx_pwdb_all << scaling_factor);
> +                       accumulate_pwdb = phy_info->rx_pwdb_all <<
> scaling_factor;
>                         undecorated_smoothed_pwdb = phy_info->rx_pwdb_all;
>                 } else {
>                         accumulate_pwdb = accumulate_pwdb -
>                                           (accumulate_pwdb >>
> scaling_factor) +
>                                           rssi_ave;
> -                       undecorated_smoothed_pwdb =
> -                               (accumulate_pwdb +
> -                                (1 << (scaling_factor - 1))) >>
> -                               scaling_factor;
> +                       undecorated_smoothed_pwdb = (accumulate_pwdb + (1
> << (scaling_factor - 1))) >> scaling_factor;
>                 }
>
>                 entry->rssi_stat.undecorated_smoothed_pwdb =
> diff -u -p a/rtlwifi/btcoexist/halbtc8822b1ant.c
> b/rtlwifi/btcoexist/halbtc8822b1ant.c
> --- a/rtlwifi/btcoexist/halbtc8822b1ant.c
> +++ b/rtlwifi/btcoexist/halbtc8822b1ant.c
> @@ -4035,7 +4035,7 @@ void ex_btc8822b1ant_display_coex_info(s
>         btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_FW_VER, &fw_ver);
>         phyver = btcoexist->btc_get_bt_phydm_version(btcoexist);
>
> -       bt_coex_ver = ((coex_sta->bt_coex_supported_version & 0xff00) >>
> 8);
> +       bt_coex_ver = (coex_sta->bt_coex_supported_version & 0xff00) >> 8;
>
>         seq_printf(
>                 m, "\r\n %-35s = %d_%02x/ 0x%02x/ 0x%02x (%s)",
> diff -u -p a/rtlwifi/efuse.c b/rtlwifi/efuse.c
> --- a/rtlwifi/efuse.c
> +++ b/rtlwifi/efuse.c
> @@ -266,7 +266,7 @@ void read_efuse(struct ieee80211_hw *hw,
>         while ((*rtemp8 != 0xFF) && (efuse_addr < efuse_len)) {
>                 /*  Check PG header for section num.  */
>                 if ((*rtemp8 & 0x1F) == 0x0F) {/* extended header */
> -                       u1temp = ((*rtemp8 & 0xE0) >> 5);
> +                       u1temp = (*rtemp8 & 0xE0) >> 5;
>                         read_efuse_byte(hw, efuse_addr, rtemp8);
>
>                         if ((*rtemp8 & 0x0F) == 0x0F) {
> diff -u -p a/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
> b/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
> --- a/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
> +++ b/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
> @@ -838,7 +838,7 @@ halmac_check_efuse_enough_88xx(struct ha
>                                 (*(eeprom_mask_updated + (i >> 4)) & 0x0F);
>                         word_enb = pre_word_enb ^ 0x0F;
>                 } else {
> -                       pre_word_enb = (*(eeprom_mask_updated + (i >> 4))
> >> 4);
> +                       pre_word_enb = *(eeprom_mask_updated + (i >> 4))
> >> 4;
>                         word_enb = pre_word_enb ^ 0x0F;
>                 }
>
> @@ -912,7 +912,7 @@ halmac_program_efuse_88xx(struct halmac_
>                                 (*(eeprom_mask_updated + (i >> 4)) & 0x0F);
>                         word_enb = pre_word_enb ^ 0x0F;
>                 } else {
> -                       pre_word_enb = (*(eeprom_mask_updated + (i >> 4))
> >> 4);
> +                       pre_word_enb = *(eeprom_mask_updated + (i >> 4))
> >> 4;
>                         word_enb = pre_word_enb ^ 0x0F;
>                 }
>
> diff -u -p a/media/zoran/zoran_device.c b/media/zoran/zoran_device.c
> --- a/media/zoran/zoran_device.c
> +++ b/media/zoran/zoran_device.c
> @@ -496,7 +496,7 @@ zr36057_overlay (struct zoran *zr,
>                                 KERN_ERR
>                                 "%s: zr36057_overlay() - video_stride not
> aligned\n",
>                                 ZR_DEVNAME(zr));
> -               reg = (reg << ZR36057_VSSFGR_DispStride);
> +               reg = reg << ZR36057_VSSFGR_DispStride;
>                 reg |= ZR36057_VSSFGR_VidOvf;   /* clear overflow status */
>                 btwrite(reg, ZR36057_VSSFGR);
>
> @@ -1421,7 +1421,7 @@ zoran_irq (int             irq,
>                                         reg = 0;
>                                         if (zr->v4l_settings.height >
> BUZ_MAX_HEIGHT / 2)
>                                                 reg +=
> zr->v4l_settings.bytesperline;
> -                                       reg = (reg <<
> ZR36057_VSSFGR_DispStride);
> +                                       reg = reg <<
> ZR36057_VSSFGR_DispStride;
>                                         reg |= ZR36057_VSSFGR_VidOvf;
>                                         reg |= ZR36057_VSSFGR_SnapShot;
>                                         reg |= ZR36057_VSSFGR_FrameGrab;
> diff -u -p a/comedi/drivers/usbduxsigma.c b/comedi/drivers/usbduxsigma.c
> --- a/comedi/drivers/usbduxsigma.c
> +++ b/comedi/drivers/usbduxsigma.c
> @@ -1121,8 +1121,8 @@ static void usbduxsigma_pwm_pattern(stru
>                                     unsigned int sign)
>  {
>         struct usbduxsigma_private *devpriv = dev->private;
> -       char pwm_mask = (1 << chan);    /* DIO bit for the PWM data */
> -       char sgn_mask = (16 << chan);   /* DIO bit for the sign */
> +       char pwm_mask = 1 << chan;      /* DIO bit for the PWM data */
> +       char sgn_mask = 16 << chan;     /* DIO bit for the sign */
>         char *buf = (char *)(devpriv->pwm_urb->transfer_buffer);
>         int szbuf = devpriv->pwm_buf_sz;
>         int i;
> diff -u -p a/comedi/drivers/usbdux.c b/comedi/drivers/usbdux.c
> --- a/comedi/drivers/usbdux.c
> +++ b/comedi/drivers/usbdux.c
> @@ -1278,8 +1278,8 @@ static void usbdux_pwm_pattern(struct co
>                                unsigned int sign)
>  {
>         struct usbdux_private *devpriv = dev->private;
> -       char pwm_mask = (1 << chan);    /* DIO bit for the PWM data */
> -       char sgn_mask = (16 << chan);   /* DIO bit for the sign */
> +       char pwm_mask = 1 << chan;      /* DIO bit for the PWM data */
> +       char sgn_mask = 16 << chan;     /* DIO bit for the sign */
>         char *buf = (char *)(devpriv->pwm_urb->transfer_buffer);
>         int szbuf = devpriv->pwm_buf_sz;
>         int i;
> diff -u -p a/mt7621-mmc/sd.c b/mt7621-mmc/sd.c
> --- a/mt7621-mmc/sd.c
> +++ b/mt7621-mmc/sd.c
> @@ -1274,7 +1274,7 @@ static int msdc_ops_get_ro(struct mmc_ho
>
>         if (host->hw->flags & MSDC_WP_PIN_EN) { /* set for card */
>                 spin_lock_irqsave(&host->lock, flags);
> -               ro = (readl(host->base + MSDC_PS) >> 31);
> +               ro = readl(host->base + MSDC_PS) >> 31;
>                 spin_unlock_irqrestore(&host->lock, flags);
>         }
>         return ro;
> diff -u -p a/rtl8723bs/hal/odm_HWConfig.c b/rtl8723bs/hal/odm_HWConfig.c
> --- a/rtl8723bs/hal/odm_HWConfig.c
> +++ b/rtl8723bs/hal/odm_HWConfig.c
> @@ -122,7 +122,7 @@ static void odm_RxPhyStatus92CSeries_Par
>                 /* 2011.11.28 LukeLee: 88E use different LNA & VGA gain
> table */
>                 /* The RSSI formula should be modified according to the
> gain table */
>                 /* In 88E, cck_highpwr is always set to 1 */
> -               LNA_idx = ((cck_agc_rpt & 0xE0)>>5);
> +               LNA_idx = (cck_agc_rpt & 0xE0) >> 5;
>                 VGA_idx = (cck_agc_rpt & 0x1F);
>                 rx_pwr_all = odm_CCKRSSI_8723B(LNA_idx, VGA_idx);
>                 PWDB_ALL = odm_QueryRxPwrPercentage(rx_pwr_all);
> @@ -387,7 +387,7 @@ static void odm_Process_RSSIForDM(
>
>                         if (pEntry->rssi_stat.ValidBit == 64) {
>                                 Weighting = ((OFDM_pkt<<4) >
> 64)?64:(OFDM_pkt<<4);
> -                               UndecoratedSmoothedPWDB =
> (Weighting*UndecoratedSmoothedOFDM+(64-Weighting)*UndecoratedSmoothedCCK)>>6;
> +                               UndecoratedSmoothedPWDB = (Weighting *
> UndecoratedSmoothedOFDM + (64 - Weighting) * UndecoratedSmoothedCCK) >> 6;
>                         } else {
>                                 if (pEntry->rssi_stat.ValidBit != 0)
>                                         UndecoratedSmoothedPWDB =
> (OFDM_pkt*UndecoratedSmoothedOFDM+(pEntry->rssi_stat.ValidBit-OFDM_pkt)*UndecoratedSmoothedCCK)/pEntry->rssi_stat.ValidBit;
>

--000000000000772906058533bd4c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPjxkaXY+PGJyPjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGRp
diBkaXI9Imx0ciI+T24gVGh1LCBNYXIgMjgsIDIwMTksIDU6MjIgUE0gUGF5YWwgS3NoaXJzYWdh
ciAmbHQ7PGEgaHJlZj0ibWFpbHRvOnBheWFsLnMua3NoaXJzYWdhci45OEBnbWFpbC5jb20iPnBh
eWFsLnMua3NoaXJzYWdhci45OEBnbWFpbC5jb208L2E+Jmd0OyB3cm90ZTo8YnI+PC9kaXY+PGJs
b2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7Ym9y
ZGVyLWxlZnQ6MXB4ICNjY2Mgc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+Q2hhbGxlbmdlIHN1Z2dl
c3RlZCBieSBjb2NjaW5lbGxlLjxicj4NCjxicj4NClRoaXMgcGF0Y2ggcmVtb3ZlcyB1bm5lY2Vz
c2FyeSBwYXJlbnRoZXNlcyBhcm91bmQgdGhlIHJpZ2h0IGhhbmQgc2lkZSBvZiBhbiBhc3NpZ25t
ZW50Ljxicj4NClVzaW5nIGZvbGxvd2luZyBzY3JpcHQ6IDxicj4NCjxicj4NCkBAIDxicj4NCmxv
Y2FsIGlkZXhwcmVzc2lvbiBpZDs8YnI+DQpleHByZXNzaW9uIGUxLGUyOzxicj4NCkBAPGJyPg0K
PGJyPg0KLSBpZCA9IChlMSZsdDsmbHQ7ZTIpPGJyPg0KKyBpZCA9IGUxJmx0OyZsdDtlMjxicj4N
Cjxicj4NCkBAIDxicj4NCmxvY2FsIGlkZXhwcmVzc2lvbiBpZDs8YnI+DQpleHByZXNzaW9uIGUx
LGUyOzxicj4NCkBAPGJyPg0KPGJyPg0KLSBpZCA9IChlMSZndDsmZ3Q7ZTIpPGJyPg0KKyBpZCA9
IGUxJmd0OyZndDtlMjxicj4NCjxicj4NClNpZ25lZC1vZmYtYnk6IFBheWFsIEtzaGlyc2FnYXIg
Jmx0OzxhIGhyZWY9Im1haWx0bzpwYXlhbC5zLmtzaGlyc2FnYXIuOThAZ21haWwuY29tIiB0YXJn
ZXQ9Il9ibGFuayIgcmVsPSJub3JlZmVycmVyIj5wYXlhbC5zLmtzaGlyc2FnYXIuOThAZ21haWwu
Y29tPC9hPiZndDs8YnI+DQotLS08YnI+DQpkaWZmIC11IC1wIGEvcnRsd2lmaS9waHlkbS9waHlk
bS5jIGIvcnRsd2lmaS9waHlkbS9waHlkbS5jPGJyPg0KLS0tIGEvcnRsd2lmaS9waHlkbS9waHlk
bS5jPGJyPg0KKysrIGIvcnRsd2lmaS9waHlkbS9waHlkbS5jPGJyPg0KQEAgLTE3NjYsOCArMTc2
Niw3IEBAIHN0YXRpYyB1OCBwaHlkbV9jYWxjdWxhdGVfaW50Zl9kaXN0YW5jZSg8YnI+DQrCoCDC
oCDCoCDCoCBpZiAoZl9pbnRlcmZlcmVuY2UgJmd0Oz0gYndfbG93ICZhbXA7JmFtcDsgZl9pbnRl
cmZlcmVuY2UgJmx0Oz0gYndfdXApIHs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBpbnRf
ZGlzdGFuY2UgPSAoZmMgJmd0Oz0gZl9pbnRlcmZlcmVuY2UpID8gKGZjIC0gZl9pbnRlcmZlcmVu
Y2UpIDo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAoZl9pbnRlcmZlcmVuY2UgLSBm
Yyk7PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdG9uZV9pZHhfdG1wID08YnI+DQotwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAoaW50X2Rpc3RhbmNlICZsdDsmbHQ7IDUp
OyAvKiA9MTAqKGludF9kaXN0YW5jZSAvMC4zMTI1KSAqLzxicj4NCivCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoHRvbmVfaWR4X3RtcCA9IGludF9kaXN0YW5jZSAmbHQ7Jmx0OyA1OyAvKiA9MTAqKGlu
dF9kaXN0YW5jZSAvMC4zMTI1KSAqLzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIE9ETV9S
VF9UUkFDRSg8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBkbSwgT0RN
X0NPTVBfQVBJLDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICZxdW90
O2ludF9kaXN0YW5jZSA9ICgoJWQgTUh6KSkgTWh6LCB0b25lX2lkeF90bXAgPSAoKCVkLiVkKSlc
biZxdW90Oyw8YnI+DQpkaWZmIC11IC1wIGEvcnRsd2lmaS9waHlkbS9waHlkbV9hZGNfc2FtcGxp
bmcuYyBiL3J0bHdpZmkvcGh5ZG0vcGh5ZG1fYWRjX3NhbXBsaW5nLmM8YnI+DQotLS0gYS9ydGx3
aWZpL3BoeWRtL3BoeWRtX2FkY19zYW1wbGluZy5jPGJyPg0KKysrIGIvcnRsd2lmaS9waHlkbS9w
aHlkbV9hZGNfc2FtcGxpbmcuYzxicj4NCkBAIC02Nyw3ICs2Nyw3IEBAIHN0YXRpYyB2b2lkIHBo
eWRtX2xhX2dldF90eF9wa3RfYnVmKHZvaWQ8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCAmcXVvdDtpc19yb3VuZF91cCA9ICgoJWQpKSwgZmluaXNoX2FkZHI9KCgweCV4
KSksIDB4N2MwPSgoMHgleCkpXG4mcXVvdDssPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgaXNfcm91bmRfdXAsIGZpbmlzaF9hZGRyLCB2YWx1ZTMyKTs8YnI+DQrCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCAvKkJ5dGUgdG8gNjRCeXRlKi88YnI+DQotwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBzbXBfbnVtYmVyID0gKChhZGNfc21wX2J1Zi0mZ3Q7YnVmZmVyX3NpemUpICZn
dDsmZ3Q7IDMpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHNtcF9udW1iZXIgPSAoYWRj
X3NtcF9idWYtJmd0O2J1ZmZlcl9zaXplKSAmZ3Q7Jmd0OyAzOzxicj4NCsKgIMKgIMKgIMKgIH0g
ZWxzZSB7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgYWRkciA9IGFkY19zbXBfYnVmLSZn
dDtzdGFydF9wb3M7PGJyPg0KPGJyPg0KZGlmZiAtdSAtcCBhL3J0bHdpZmkvcGh5ZG0vcGh5ZG1f
aHdjb25maWcuYyBiL3J0bHdpZmkvcGh5ZG0vcGh5ZG1faHdjb25maWcuYzxicj4NCi0tLSBhL3J0
bHdpZmkvcGh5ZG0vcGh5ZG1faHdjb25maWcuYzxicj4NCisrKyBiL3J0bHdpZmkvcGh5ZG0vcGh5
ZG1faHdjb25maWcuYzxicj4NCkBAIC01OSwxMCArNTksNyBAQCBzdGF0aWMgdTMyIHBoeWRtX3By
b2Nlc3NfcnNzaV9wd2RiKHN0cnVjPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgd2VpZ2h0aW5nID0gKChlbnRyeS0mZ3Q7cnNzaV9zdGF0Lm9mZG1fcGt0KSAmZ3Q7IDQp
ID88YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCA2NCA6PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKGVudHJ5LSZndDtyc3NpX3N0YXQu
b2ZkbV9wa3QgJmx0OyZsdDsgNCk7PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgdW5kZWNvcmF0ZWRfc21vb3RoZWRfcHdkYiA9PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgKHdlaWdodGluZyAqIHVuZGVjb3JhdGVkX3Nt
b290aGVkX29mZG0gKzxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCAoNjQgLSB3ZWlnaHRpbmcpICogdW5kZWNvcmF0ZWRfc21vb3RoZWRfY2NrKSAm
Z3Q7Jmd0Ozxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoDY7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdW5kZWNvcmF0
ZWRfc21vb3RoZWRfcHdkYiA9ICh3ZWlnaHRpbmcgKiB1bmRlY29yYXRlZF9zbW9vdGhlZF9vZmRt
ICsgKDY0IC0gd2VpZ2h0aW5nKSAqIHVuZGVjb3JhdGVkX3Ntb290aGVkX2NjaykgJmd0OyZndDsg
Njs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBPRE1fUlRfVFJBQ0Uo
ZG0sIE9ETV9DT01QX1JTU0lfTU9OSVRPUiw8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCZxdW90O1BXREJfMVslZF0gPSAoKCAlZCAp
KSwgVyA9ICgoICVkICkpXG4mcXVvdDssPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwa3RpbmZvLSZndDtzdGF0aW9uX2lkLDxicj4N
CkBAIC0yMTgsMTYgKzIxNSwxNCBAQCBzdGF0aWMgdTMyIHBoeWRtX3Byb2Nlc3NfcnNzaV9vZmRt
KHN0cnVjPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgLyogQ2FsY3VsYXRlIGF2ZXJhZ2Ug
UlNTSSAqLzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN3aXRjaCAocnhfY291bnQpIHs8
YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBjYXNlIDI6PGJyPg0KLcKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgcnNzaV9saW5lYXIgPSAocnNzaV9saW5lYXIgJmd0OyZndDsg
MSk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcnNzaV9saW5lYXIg
PSByc3NpX2xpbmVhciAmZ3Q7Jmd0OyAxOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIGJyZWFrOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGNhc2UgMzo8YnI+
DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAvKiByc3NpX2xpbmVhci8zIH4g
cnNzaV9saW5lYXIqMTEvMzIgKi88YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqByc3NpX2xpbmVhciA9ICgocnNzaV9saW5lYXIpICsgKHJzc2lfbGluZWFyICZsdDsmbHQ7
IDEpICs8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgKHJzc2lfbGluZWFyICZsdDsmbHQ7IDMpKSAmZ3Q7Jmd0Ozxicj4NCi3CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDU7PGJy
Pg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcnNzaV9saW5lYXIgPSAoKHJz
c2lfbGluZWFyKSArIChyc3NpX2xpbmVhciAmbHQ7Jmx0OyAxKSArIChyc3NpX2xpbmVhciAmbHQ7
Jmx0OyAzKSkgJmd0OyZndDsgNTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCBicmVhazs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBjYXNlIDQ6PGJyPg0KLcKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcnNzaV9saW5lYXIgPSAocnNzaV9saW5l
YXIgJmd0OyZndDsgMik7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
cnNzaV9saW5lYXIgPSByc3NpX2xpbmVhciAmZ3Q7Jmd0OyAyOzxicj4NCsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIGJyZWFrOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IH08YnI+DQo8YnI+DQpAQCAtNTgyLDcgKzU3Nyw3IEBAIHN0YXRpYyB2b2lkIG9kbV9yeF9waHlf
c3RhdHVzOTJjX3Nlcmllc188YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBpZiAoZG0tJmd0
O3N1cHBvcnRfaWNfdHlwZSAmYW1wOyAoT0RNX1JUTDg3MDNCKSkgezxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIH0gZWxzZSB7IC8qMyBiaXQgTE5BKi88YnI+DQo8YnI+DQotwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBMTkFfaWR4ID0gKChjY2tfYWdjX3JwdCAmYW1wOyAw
eEUwKSAmZ3Q7Jmd0OyA1KTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBMTkFfaWR4ID0gKGNja19hZ2NfcnB0ICZhbXA7IDB4RTApICZndDsmZ3Q7IDU7PGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgVkdBX2lkeCA9IChjY2tfYWdjX3JwdCAm
YW1wOyAweDFGKTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9PGJyPg0KPGJyPg0KQEAg
LTgxMyw3ICs4MDgsNyBAQCBzdGF0aWMgdm9pZCBvZG1fcnhfcGh5X3N0YXR1c19qYWd1YXJfc2Vy
PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgY2NrX2hpZ2hwd3IgPSBkbS0mZ3Q7aXNfY2Nr
X2hpZ2hfcG93ZXI7PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgY2NrX2FnY19y
cHQgPSBwaHlfc3RhX3JwdC0mZ3Q7Y2Zvc2hvWzBdOzxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoExOQV9pZHggPSAoKGNja19hZ2NfcnB0ICZhbXA7IDB4RTApICZndDsmZ3Q7IDUpOzxicj4N
CivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoExOQV9pZHggPSAoY2NrX2FnY19ycHQgJmFtcDsgMHhF
MCkgJmd0OyZndDsgNTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBWR0FfaWR4ID0gKGNj
a19hZ2NfcnB0ICZhbXA7IDB4MUYpOzxicj4NCjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IGlmIChkbS0mZ3Q7c3VwcG9ydF9pY190eXBlID09IE9ETV9SVEw4ODEyKSB7PGJyPg0KQEAgLTE0
MzUsNyArMTQzMCw3IEBAIHN0YXRpYyB2b2lkIHBoeWRtX3NldF9wZXJfcGF0aF9waHlfaW5mbyg8
YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCBpZiAocnhfZXZtICZsdDsgMCkgezxicj4NCsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIC8qIENhbGN1bGF0ZSBFVk0gaW4gZEJtICovPGJyPg0KLcKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgZXZtX2RibSA9ICgodTgpKDAgLSByeF9ldm0pICZndDsmZ3Q7IDEpOzxi
cj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGV2bV9kYm0gPSAodTgpKDAgLSByeF9ldm0pICZn
dDsmZ3Q7IDE7PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgLyogQ2FsY3VsYXRl
IEVWTSBpbiBwZXJjZW50YWdlICovPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYgKGV2
bV9kYm0gJmd0Oz0gMzMpPGJyPg0KQEAgLTE3NzQsMzIgKzE3NjksMjYgQEAgcGh5ZG1fcHJvY2Vz
c19yc3NpX2Zvcl9kbV9uZXdfdHlwZShzdHJ1Yzxicj4NCjxicj4NCsKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIHN3aXRjaCAocGh5X2luZm8tJmd0O3J4X2NvdW50ICsgMSkgezxicj4NCsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIGNhc2UgMjo8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqByc3NpX2xpbmVhciA9IChyc3NpX2xpbmVhciAmZ3Q7Jmd0OyAxKTs8YnI+DQorwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByc3NpX2xpbmVhciA9IHJzc2lfbGluZWFy
ICZndDsmZ3Q7IDE7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgYnJl
YWs7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgY2FzZSAzOjxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIC8qIHJzc2lfbGluZWFyLzMgfiByc3NpX2xpbmVhciox
MS8zMiAqLzxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJzc2lfbGlu
ZWFyID0gKChyc3NpX2xpbmVhcikgKyAocnNzaV9saW5lYXIgJmx0OyZsdDsgMSkgKzxicj4NCi3C
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAo
cnNzaV9saW5lYXIgJmx0OyZsdDsgMykpICZndDsmZ3Q7PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgNTs8YnI+DQorwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByc3NpX2xpbmVhciA9ICgocnNzaV9saW5lYXIpICsg
KHJzc2lfbGluZWFyICZsdDsmbHQ7IDEpICsgKHJzc2lfbGluZWFyICZsdDsmbHQ7IDMpKSAmZ3Q7
Jmd0OyA1Ozxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGJyZWFrOzxi
cj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGNhc2UgNDo8YnI+DQotwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqByc3NpX2xpbmVhciA9IChyc3NpX2xpbmVhciAmZ3Q7Jmd0OyAy
KTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByc3NpX2xpbmVhciA9
IHJzc2lfbGluZWFyICZndDsmZ3Q7IDI7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgYnJlYWs7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgfTxicj4NCsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIHJzc2lfYXZlID0gb2RtX2NvbnZlcnRfdG9fZGIocnNzaV9saW5l
YXIpOzxicj4NCjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmICh1bmRlY29yYXRlZF9z
bW9vdGhlZF9wd2RiICZsdDs9IDApIHs8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBhY2N1bXVsYXRlX3B3ZGIgPTxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoChwaHlfaW5mby0mZ3Q7cnhfcHdkYl9hbGwgJmx0OyZsdDsg
c2NhbGluZ19mYWN0b3IpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGFjY3VtdWxhdGVfcHdkYiA9IHBoeV9pbmZvLSZndDtyeF9wd2RiX2FsbCAmbHQ7Jmx0OyBzY2Fs
aW5nX2ZhY3Rvcjs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB1bmRl
Y29yYXRlZF9zbW9vdGhlZF9wd2RiID0gcGh5X2luZm8tJmd0O3J4X3B3ZGJfYWxsOzxicj4NCsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIH0gZWxzZSB7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgYWNjdW11bGF0ZV9wd2RiID0gYWNjdW11bGF0ZV9wd2RiIC08YnI+DQrC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCAoYWNjdW11bGF0ZV9wd2RiICZndDsmZ3Q7IHNjYWxpbmdfZmFjdG9yKSArPGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgcnNzaV9hdmU7PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdW5k
ZWNvcmF0ZWRfc21vb3RoZWRfcHdkYiA9PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgKGFjY3VtdWxhdGVfcHdkYiArPGJyPg0KLcKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICgxICZsdDsmbHQ7IChzY2FsaW5n
X2ZhY3RvciAtIDEpKSkgJmd0OyZndDs8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBzY2FsaW5nX2ZhY3Rvcjs8YnI+DQorwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqB1bmRlY29yYXRlZF9zbW9vdGhlZF9wd2RiID0gKGFjY3VtdWxh
dGVfcHdkYiArICgxICZsdDsmbHQ7IChzY2FsaW5nX2ZhY3RvciAtIDEpKSkgJmd0OyZndDsgc2Nh
bGluZ19mYWN0b3I7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgfTxicj4NCjxicj4NCsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIGVudHJ5LSZndDtyc3NpX3N0YXQudW5kZWNvcmF0ZWRfc21v
b3RoZWRfcHdkYiA9PGJyPg0KZGlmZiAtdSAtcCBhL3J0bHdpZmkvYnRjb2V4aXN0L2hhbGJ0Yzg4
MjJiMWFudC5jIGIvcnRsd2lmaS9idGNvZXhpc3QvaGFsYnRjODgyMmIxYW50LmM8YnI+DQotLS0g
YS9ydGx3aWZpL2J0Y29leGlzdC9oYWxidGM4ODIyYjFhbnQuYzxicj4NCisrKyBiL3J0bHdpZmkv
YnRjb2V4aXN0L2hhbGJ0Yzg4MjJiMWFudC5jPGJyPg0KQEAgLTQwMzUsNyArNDAzNSw3IEBAIHZv
aWQgZXhfYnRjODgyMmIxYW50X2Rpc3BsYXlfY29leF9pbmZvKHM8YnI+DQrCoCDCoCDCoCDCoCBi
dGNvZXhpc3QtJmd0O2J0Y19nZXQoYnRjb2V4aXN0LCBCVENfR0VUX1U0X1dJRklfRldfVkVSLCAm
YW1wO2Z3X3Zlcik7PGJyPg0KwqAgwqAgwqAgwqAgcGh5dmVyID0gYnRjb2V4aXN0LSZndDtidGNf
Z2V0X2J0X3BoeWRtX3ZlcnNpb24oYnRjb2V4aXN0KTs8YnI+DQo8YnI+DQotwqAgwqAgwqAgwqBi
dF9jb2V4X3ZlciA9ICgoY29leF9zdGEtJmd0O2J0X2NvZXhfc3VwcG9ydGVkX3ZlcnNpb24gJmFt
cDsgMHhmZjAwKSAmZ3Q7Jmd0OyA4KTs8YnI+DQorwqAgwqAgwqAgwqBidF9jb2V4X3ZlciA9IChj
b2V4X3N0YS0mZ3Q7YnRfY29leF9zdXBwb3J0ZWRfdmVyc2lvbiAmYW1wOyAweGZmMDApICZndDsm
Z3Q7IDg7PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgc2VxX3ByaW50Zig8YnI+DQrCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCBtLCAmcXVvdDtcclxuICUtMzVzID0gJWRfJTAyeC8gMHglMDJ4LyAweCUw
MnggKCVzKSZxdW90Oyw8YnI+DQpkaWZmIC11IC1wIGEvcnRsd2lmaS9lZnVzZS5jIGIvcnRsd2lm
aS9lZnVzZS5jPGJyPg0KLS0tIGEvcnRsd2lmaS9lZnVzZS5jPGJyPg0KKysrIGIvcnRsd2lmaS9l
ZnVzZS5jPGJyPg0KQEAgLTI2Niw3ICsyNjYsNyBAQCB2b2lkIHJlYWRfZWZ1c2Uoc3RydWN0IGll
ZWU4MDIxMV9odyAqaHcsPGJyPg0KwqAgwqAgwqAgwqAgd2hpbGUgKCgqcnRlbXA4ICE9IDB4RkYp
ICZhbXA7JmFtcDsgKGVmdXNlX2FkZHIgJmx0OyBlZnVzZV9sZW4pKSB7PGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgLyrCoCBDaGVjayBQRyBoZWFkZXIgZm9yIHNlY3Rpb24gbnVtLsKgICov
PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYgKCgqcnRlbXA4ICZhbXA7IDB4MUYpID09
IDB4MEYpIHsvKiBleHRlbmRlZCBoZWFkZXIgKi88YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqB1MXRlbXAgPSAoKCpydGVtcDggJmFtcDsgMHhFMCkgJmd0OyZndDsgNSk7
PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdTF0ZW1wID0gKCpydGVt
cDggJmFtcDsgMHhFMCkgJmd0OyZndDsgNTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCByZWFkX2VmdXNlX2J5dGUoaHcsIGVmdXNlX2FkZHIsIHJ0ZW1wOCk7PGJyPg0K
PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYgKCgqcnRlbXA4ICZh
bXA7IDB4MEYpID09IDB4MEYpIHs8YnI+DQpkaWZmIC11IC1wIGEvcnRsd2lmaS9oYWxtYWMvaGFs
bWFjXzg4eHgvaGFsbWFjX2Z1bmNfODh4eC5jIGIvcnRsd2lmaS9oYWxtYWMvaGFsbWFjXzg4eHgv
aGFsbWFjX2Z1bmNfODh4eC5jPGJyPg0KLS0tIGEvcnRsd2lmaS9oYWxtYWMvaGFsbWFjXzg4eHgv
aGFsbWFjX2Z1bmNfODh4eC5jPGJyPg0KKysrIGIvcnRsd2lmaS9oYWxtYWMvaGFsbWFjXzg4eHgv
aGFsbWFjX2Z1bmNfODh4eC5jPGJyPg0KQEAgLTgzOCw3ICs4MzgsNyBAQCBoYWxtYWNfY2hlY2tf
ZWZ1c2VfZW5vdWdoXzg4eHgoc3RydWN0IGhhPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKCooZWVwcm9tX21hc2tfdXBkYXRlZCArIChpICZndDsm
Z3Q7IDQpKSAmYW1wOyAweDBGKTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCB3b3JkX2VuYiA9IHByZV93b3JkX2VuYiBeIDB4MEY7PGJyPg0KwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgfSBlbHNlIHs8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBwcmVfd29yZF9lbmIgPSAoKihlZXByb21fbWFza191cGRhdGVkICsgKGkgJmd0OyZndDsgNCkp
ICZndDsmZ3Q7IDQpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBy
ZV93b3JkX2VuYiA9ICooZWVwcm9tX21hc2tfdXBkYXRlZCArIChpICZndDsmZ3Q7IDQpKSAmZ3Q7
Jmd0OyA0Ozxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHdvcmRfZW5i
ID0gcHJlX3dvcmRfZW5iIF4gMHgwRjs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9PGJy
Pg0KPGJyPg0KQEAgLTkxMiw3ICs5MTIsNyBAQCBoYWxtYWNfcHJvZ3JhbV9lZnVzZV84OHh4KHN0
cnVjdCBoYWxtYWNfPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgKCooZWVwcm9tX21hc2tfdXBkYXRlZCArIChpICZndDsmZ3Q7IDQpKSAmYW1wOyAw
eDBGKTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB3b3JkX2VuYiA9
IHByZV93b3JkX2VuYiBeIDB4MEY7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgfSBlbHNl
IHs8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwcmVfd29yZF9lbmIg
PSAoKihlZXByb21fbWFza191cGRhdGVkICsgKGkgJmd0OyZndDsgNCkpICZndDsmZ3Q7IDQpOzxi
cj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHByZV93b3JkX2VuYiA9ICoo
ZWVwcm9tX21hc2tfdXBkYXRlZCArIChpICZndDsmZ3Q7IDQpKSAmZ3Q7Jmd0OyA0Ozxicj4NCsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHdvcmRfZW5iID0gcHJlX3dvcmRfZW5i
IF4gMHgwRjs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9PGJyPg0KPGJyPg0KZGlmZiAt
dSAtcCBhL21lZGlhL3pvcmFuL3pvcmFuX2RldmljZS5jIGIvbWVkaWEvem9yYW4vem9yYW5fZGV2
aWNlLmM8YnI+DQotLS0gYS9tZWRpYS96b3Jhbi96b3Jhbl9kZXZpY2UuYzxicj4NCisrKyBiL21l
ZGlhL3pvcmFuL3pvcmFuX2RldmljZS5jPGJyPg0KQEAgLTQ5Niw3ICs0OTYsNyBAQCB6cjM2MDU3
X292ZXJsYXkgKHN0cnVjdCB6b3JhbiAqenIsPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgS0VSTl9FUlI8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAmcXVvdDslczogenIzNjA1N19vdmVybGF5KCkg
LSB2aWRlb19zdHJpZGUgbm90IGFsaWduZWRcbiZxdW90Oyw8YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBaUl9ERVZOQU1FKHpyKSk7PGJyPg0KLcKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgcmVnID0gKHJlZyAmbHQ7Jmx0OyBaUjM2MDU3X1ZTU0ZHUl9E
aXNwU3RyaWRlKTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZWcgPSByZWcgJmx0OyZs
dDsgWlIzNjA1N19WU1NGR1JfRGlzcFN0cmlkZTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCByZWcgfD0gWlIzNjA1N19WU1NGR1JfVmlkT3ZmO8KgIMKgLyogY2xlYXIgb3ZlcmZsb3cgc3Rh
dHVzICovPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgYnR3cml0ZShyZWcsIFpSMzYwNTdf
VlNTRkdSKTs8YnI+DQo8YnI+DQpAQCAtMTQyMSw3ICsxNDIxLDcgQEAgem9yYW5faXJxIChpbnTC
oCDCoCDCoCDCoCDCoCDCoCDCoGlycSw8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZWcgPSAwOzxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmICh6ci0m
Z3Q7djRsX3NldHRpbmdzLmhlaWdodCAmZ3Q7IEJVWl9NQVhfSEVJR0hUIC8gMik8YnI+DQrCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCByZWcgKz0genItJmd0O3Y0bF9zZXR0aW5ncy5ieXRlc3BlcmxpbmU7PGJyPg0K
LcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgcmVnID0gKHJlZyAmbHQ7Jmx0OyBaUjM2MDU3X1ZTU0ZHUl9EaXNwU3RyaWRlKTs8YnI+DQor
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqByZWcgPSByZWcgJmx0OyZsdDsgWlIzNjA1N19WU1NGR1JfRGlzcFN0cmlkZTs8YnI+DQrCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBy
ZWcgfD0gWlIzNjA1N19WU1NGR1JfVmlkT3ZmOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJlZyB8PSBaUjM2MDU3X1ZTU0ZH
Ul9TbmFwU2hvdDs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCByZWcgfD0gWlIzNjA1N19WU1NGR1JfRnJhbWVHcmFiOzxicj4N
CmRpZmYgLXUgLXAgYS9jb21lZGkvZHJpdmVycy91c2JkdXhzaWdtYS5jIGIvY29tZWRpL2RyaXZl
cnMvdXNiZHV4c2lnbWEuYzxicj4NCi0tLSBhL2NvbWVkaS9kcml2ZXJzL3VzYmR1eHNpZ21hLmM8
YnI+DQorKysgYi9jb21lZGkvZHJpdmVycy91c2JkdXhzaWdtYS5jPGJyPg0KQEAgLTExMjEsOCAr
MTEyMSw4IEBAIHN0YXRpYyB2b2lkIHVzYmR1eHNpZ21hX3B3bV9wYXR0ZXJuKHN0cnU8YnI+DQrC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB1bnNp
Z25lZCBpbnQgc2lnbik8YnI+DQrCoHs8YnI+DQrCoCDCoCDCoCDCoCBzdHJ1Y3QgdXNiZHV4c2ln
bWFfcHJpdmF0ZSAqZGV2cHJpdiA9IGRldi0mZ3Q7cHJpdmF0ZTs8YnI+DQotwqAgwqAgwqAgwqBj
aGFyIHB3bV9tYXNrID0gKDEgJmx0OyZsdDsgY2hhbik7wqAgwqAgLyogRElPIGJpdCBmb3IgdGhl
IFBXTSBkYXRhICovPGJyPg0KLcKgIMKgIMKgIMKgY2hhciBzZ25fbWFzayA9ICgxNiAmbHQ7Jmx0
OyBjaGFuKTvCoCDCoC8qIERJTyBiaXQgZm9yIHRoZSBzaWduICovPGJyPg0KK8KgIMKgIMKgIMKg
Y2hhciBwd21fbWFzayA9IDEgJmx0OyZsdDsgY2hhbjvCoCDCoCDCoCAvKiBESU8gYml0IGZvciB0
aGUgUFdNIGRhdGEgKi88YnI+DQorwqAgwqAgwqAgwqBjaGFyIHNnbl9tYXNrID0gMTYgJmx0OyZs
dDsgY2hhbjvCoCDCoCDCoC8qIERJTyBiaXQgZm9yIHRoZSBzaWduICovPGJyPg0KwqAgwqAgwqAg
wqAgY2hhciAqYnVmID0gKGNoYXIgKikoZGV2cHJpdi0mZ3Q7cHdtX3VyYi0mZ3Q7dHJhbnNmZXJf
YnVmZmVyKTs8YnI+DQrCoCDCoCDCoCDCoCBpbnQgc3pidWYgPSBkZXZwcml2LSZndDtwd21fYnVm
X3N6Ozxicj4NCsKgIMKgIMKgIMKgIGludCBpOzxicj4NCmRpZmYgLXUgLXAgYS9jb21lZGkvZHJp
dmVycy91c2JkdXguYyBiL2NvbWVkaS9kcml2ZXJzL3VzYmR1eC5jPGJyPg0KLS0tIGEvY29tZWRp
L2RyaXZlcnMvdXNiZHV4LmM8YnI+DQorKysgYi9jb21lZGkvZHJpdmVycy91c2JkdXguYzxicj4N
CkBAIC0xMjc4LDggKzEyNzgsOCBAQCBzdGF0aWMgdm9pZCB1c2JkdXhfcHdtX3BhdHRlcm4oc3Ry
dWN0IGNvPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqB1bnNpZ25lZCBpbnQgc2lnbik8YnI+DQrCoHs8YnI+DQrCoCDCoCDCoCDCoCBzdHJ1Y3QgdXNi
ZHV4X3ByaXZhdGUgKmRldnByaXYgPSBkZXYtJmd0O3ByaXZhdGU7PGJyPg0KLcKgIMKgIMKgIMKg
Y2hhciBwd21fbWFzayA9ICgxICZsdDsmbHQ7IGNoYW4pO8KgIMKgIC8qIERJTyBiaXQgZm9yIHRo
ZSBQV00gZGF0YSAqLzxicj4NCi3CoCDCoCDCoCDCoGNoYXIgc2duX21hc2sgPSAoMTYgJmx0OyZs
dDsgY2hhbik7wqAgwqAvKiBESU8gYml0IGZvciB0aGUgc2lnbiAqLzxicj4NCivCoCDCoCDCoCDC
oGNoYXIgcHdtX21hc2sgPSAxICZsdDsmbHQ7IGNoYW47wqAgwqAgwqAgLyogRElPIGJpdCBmb3Ig
dGhlIFBXTSBkYXRhICovPGJyPg0KK8KgIMKgIMKgIMKgY2hhciBzZ25fbWFzayA9IDE2ICZsdDsm
bHQ7IGNoYW47wqAgwqAgwqAvKiBESU8gYml0IGZvciB0aGUgc2lnbiAqLzxicj4NCsKgIMKgIMKg
IMKgIGNoYXIgKmJ1ZiA9IChjaGFyICopKGRldnByaXYtJmd0O3B3bV91cmItJmd0O3RyYW5zZmVy
X2J1ZmZlcik7PGJyPg0KwqAgwqAgwqAgwqAgaW50IHN6YnVmID0gZGV2cHJpdi0mZ3Q7cHdtX2J1
Zl9zejs8YnI+DQrCoCDCoCDCoCDCoCBpbnQgaTs8YnI+DQpkaWZmIC11IC1wIGEvbXQ3NjIxLW1t
Yy9zZC5jIGIvbXQ3NjIxLW1tYy9zZC5jPGJyPg0KLS0tIGEvbXQ3NjIxLW1tYy9zZC5jPGJyPg0K
KysrIGIvbXQ3NjIxLW1tYy9zZC5jPGJyPg0KQEAgLTEyNzQsNyArMTI3NCw3IEBAIHN0YXRpYyBp
bnQgbXNkY19vcHNfZ2V0X3JvKHN0cnVjdCBtbWNfaG88YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCBp
ZiAoaG9zdC0mZ3Q7aHctJmd0O2ZsYWdzICZhbXA7IE1TRENfV1BfUElOX0VOKSB7IC8qIHNldCBm
b3IgY2FyZCAqLzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHNwaW5fbG9ja19pcnFzYXZl
KCZhbXA7aG9zdC0mZ3Q7bG9jaywgZmxhZ3MpOzxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHJvID0gKHJlYWRsKGhvc3QtJmd0O2Jhc2UgKyBNU0RDX1BTKSAmZ3Q7Jmd0OyAzMSk7PGJyPg0K
K8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcm8gPSByZWFkbChob3N0LSZndDtiYXNlICsgTVNEQ19Q
UykgJmd0OyZndDsgMzE7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3Bpbl91bmxvY2tf
aXJxcmVzdG9yZSgmYW1wO2hvc3QtJmd0O2xvY2ssIGZsYWdzKTs8YnI+DQrCoCDCoCDCoCDCoCB9
PGJyPg0KwqAgwqAgwqAgwqAgcmV0dXJuIHJvOzxicj4NCmRpZmYgLXUgLXAgYS9ydGw4NzIzYnMv
aGFsL29kbV9IV0NvbmZpZy5jIGIvcnRsODcyM2JzL2hhbC9vZG1fSFdDb25maWcuYzxicj4NCi0t
LSBhL3J0bDg3MjNicy9oYWwvb2RtX0hXQ29uZmlnLmM8YnI+DQorKysgYi9ydGw4NzIzYnMvaGFs
L29kbV9IV0NvbmZpZy5jPGJyPg0KQEAgLTEyMiw3ICsxMjIsNyBAQCBzdGF0aWMgdm9pZCBvZG1f
UnhQaHlTdGF0dXM5MkNTZXJpZXNfUGFyPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgLyog
MjAxMS4xMS4yOCBMdWtlTGVlOiA4OEUgdXNlIGRpZmZlcmVudCBMTkEgJmFtcDsgVkdBIGdhaW4g
dGFibGUgKi88YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAvKiBUaGUgUlNTSSBmb3JtdWxh
IHNob3VsZCBiZSBtb2RpZmllZCBhY2NvcmRpbmcgdG8gdGhlIGdhaW4gdGFibGUgKi88YnI+DQrC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAvKiBJbiA4OEUsIGNja19oaWdocHdyIGlzIGFsd2F5cyBz
ZXQgdG8gMSAqLzxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoExOQV9pZHggPSAoKGNja19h
Z2NfcnB0ICZhbXA7IDB4RTApJmd0OyZndDs1KTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBMTkFfaWR4ID0gKGNja19hZ2NfcnB0ICZhbXA7IDB4RTApICZndDsmZ3Q7IDU7PGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgVkdBX2lkeCA9IChjY2tfYWdjX3JwdCAmYW1wOyAweDFGKTs8
YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByeF9wd3JfYWxsID0gb2RtX0NDS1JTU0lfODcy
M0IoTE5BX2lkeCwgVkdBX2lkeCk7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgUFdEQl9B
TEwgPSBvZG1fUXVlcnlSeFB3clBlcmNlbnRhZ2UocnhfcHdyX2FsbCk7PGJyPg0KQEAgLTM4Nyw3
ICszODcsNyBAQCBzdGF0aWMgdm9pZCBvZG1fUHJvY2Vzc19SU1NJRm9yRE0oPGJyPg0KPGJyPg0K
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYgKHBFbnRyeS0mZ3Q7cnNzaV9z
dGF0LlZhbGlkQml0ID09IDY0KSB7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgV2VpZ2h0aW5nID0gKChPRkRNX3BrdCZsdDsmbHQ7NCkgJmd0OyA2
NCk/NjQ6KE9GRE1fcGt0Jmx0OyZsdDs0KTs8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBVbmRlY29yYXRlZFNtb290aGVkUFdEQiA9IChXZWlnaHRp
bmcqVW5kZWNvcmF0ZWRTbW9vdGhlZE9GRE0rKDY0LVdlaWdodGluZykqVW5kZWNvcmF0ZWRTbW9v
dGhlZENDSykmZ3Q7Jmd0OzY7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgVW5kZWNvcmF0ZWRTbW9vdGhlZFBXREIgPSAoV2VpZ2h0aW5nICogVW5k
ZWNvcmF0ZWRTbW9vdGhlZE9GRE0gKyAoNjQgLSBXZWlnaHRpbmcpICogVW5kZWNvcmF0ZWRTbW9v
dGhlZENDSykgJmd0OyZndDsgNjs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCB9IGVsc2Ugezxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIGlmIChwRW50cnktJmd0O3Jzc2lfc3RhdC5WYWxpZEJpdCAhPSAwKTxicj4NCsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IFVuZGVjb3JhdGVkU21vb3RoZWRQV0RCID0gKE9GRE1fcGt0KlVuZGVjb3JhdGVkU21vb3RoZWRP
RkRNKyhwRW50cnktJmd0O3Jzc2lfc3RhdC5WYWxpZEJpdC1PRkRNX3BrdCkqVW5kZWNvcmF0ZWRT
bW9vdGhlZENDSykvcEVudHJ5LSZndDtyc3NpX3N0YXQuVmFsaWRCaXQ7PGJyPg0KPC9ibG9ja3F1
b3RlPjwvZGl2PjwvZGl2PjwvZGl2Pg0K
--000000000000772906058533bd4c--

