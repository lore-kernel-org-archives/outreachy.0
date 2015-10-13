X-GM-THRID: 6200360709775163392
X-Received: by 10.129.134.129 with SMTP id w123mr28377877ywf.17.1444747525567;
        Tue, 13 Oct 2015 07:45:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.85 with SMTP id p82ls1827761iop.89.gmail; Tue, 13 Oct
 2015 07:45:25 -0700 (PDT)
X-Received: by 10.66.194.136 with SMTP id hw8mr28151262pac.39.1444747524992;
        Tue, 13 Oct 2015 07:45:24 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x233.google.com (mail-io0-x233.google.com. [2607:f8b0:4001:c06::233])
        by gmr-mx.google.com with ESMTPS id f4si928449igo.2.2015.10.13.07.45.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 07:45:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::233 as permitted sender) client-ip=2607:f8b0:4001:c06::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::233 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x233.google.com with SMTP id l186so22925178iof.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 07:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=w1yAakSeEIzLozULxaaJbjr2QlKhuO1RFWvqZyMVrbo=;
        b=eielSFz7W82JJMkMZgOfnl4K5AWsurkk+vYzvRoQMeMGLFg7Gct44YAeSkKLdfdcBF
         nvGZzwS82ZHSz00MxnQ8QCuGEPuaWNHLdc3/kNsnbIZAvHp6ihkHc+lytjUeyP/IJCY3
         j6eX3K0Fh5lvAAwZhACXAiaUdrofpGAiA27Q3O7UFMIITRBNR1ZFUnXCW+5WdOLquLLr
         eH9cUD3awIhQu816TYFaLN8NsiwO1uWg+KF4CKsL11dsu5XYj/X7UcNvzqtV8/fC8qve
         GlMAui9y1QwuXX78VDJuwSmElW9tQ92cYp1in5UNG6LQzkU/yjNxyiQFXkEfS41zMTwn
         fllA==
MIME-Version: 1.0
X-Received: by 10.107.30.78 with SMTP id e75mr11192772ioe.150.1444747524789;
 Tue, 13 Oct 2015 07:45:24 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Tue, 13 Oct 2015 07:45:24 -0700 (PDT)
In-Reply-To: <1443633964-16683-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1443633964-16683-1-git-send-email-ksenija.stanojevic@gmail.com>
Date: Tue, 13 Oct 2015 16:45:24 +0200
Message-ID: <CAL7P5jLSZ6r0tPUp-3KzDx=C94iqc_wiZvYsHeEN4f4RepSqgg@mail.gmail.com>
Subject: Re: [PATCH] Staging: rtl8723au: Use snprintf instead rsprintf
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=UTF-8

Hi Greg,

Have you missed this patch?

Regards,
Ksenija

On Wed, Sep 30, 2015 at 7:26 PM, Ksenija Stanojevic
<ksenija.stanojevic@gmail.com> wrote:
> Macro rsprintf is useless, remove it and use existing function
> snprintf instead.
>
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  .../staging/rtl8723au/hal/rtl8723a_bt-coexist.c    | 75 +++++++++++-----------
>  1 file changed, 37 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
> index cf15f80..049adea 100644
> --- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
> +++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
> @@ -72,7 +72,6 @@ if ((BTCoexDbgLevel == _bt_dbg_on_)) {\
>  #define DCMD_Printf(...)
>  #define RT_ASSERT(...)
>
> -#define rsprintf snprintf
>
>  #define GetDefaultAdapter(padapter)    padapter
>
> @@ -1455,7 +1454,7 @@ bthci_StartBeaconAndConnect(
>         }
>
>         if (pBTInfo->BtAsocEntry[CurrentAssocNum].AMPRole == AMP_BTAP_CREATOR) {
> -               rsprintf((char *)pBTInfo->BtAsocEntry[CurrentAssocNum].BTSsidBuf, 32, "AMP-%02x-%02x-%02x-%02x-%02x-%02x",
> +               snprintf((char *)pBTInfo->BtAsocEntry[CurrentAssocNum].BTSsidBuf, 32, "AMP-%02x-%02x-%02x-%02x-%02x-%02x",
>                 padapter->eeprompriv.mac_addr[0],
>                 padapter->eeprompriv.mac_addr[1],
>                 padapter->eeprompriv.mac_addr[2],
> @@ -1463,7 +1462,7 @@ bthci_StartBeaconAndConnect(
>                 padapter->eeprompriv.mac_addr[4],
>                 padapter->eeprompriv.mac_addr[5]);
>         } else if (pBTInfo->BtAsocEntry[CurrentAssocNum].AMPRole == AMP_BTAP_JOINER) {
> -               rsprintf((char *)pBTInfo->BtAsocEntry[CurrentAssocNum].BTSsidBuf, 32, "AMP-%02x-%02x-%02x-%02x-%02x-%02x",
> +               snprintf((char *)pBTInfo->BtAsocEntry[CurrentAssocNum].BTSsidBuf, 32, "AMP-%02x-%02x-%02x-%02x-%02x-%02x",
>                 pBTInfo->BtAsocEntry[CurrentAssocNum].BTRemoteMACAddr[0],
>                 pBTInfo->BtAsocEntry[CurrentAssocNum].BTRemoteMACAddr[1],
>                 pBTInfo->BtAsocEntry[CurrentAssocNum].BTRemoteMACAddr[2],
> @@ -9377,47 +9376,47 @@ static void BTDM_Display8723ABtCoexInfo(struct rtw_adapter *padapter)
>         u32 u4Tmp[4];
>         u8 antNum = Ant_x2;
>
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n ============[BT Coexist info]============");
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n ============[BT Coexist info]============");
>         DCMD_Printf(btCoexDbgBuf);
>
>         if (!rtl8723a_BT_coexist(padapter)) {
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n BT not exists !!!");
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n BT not exists !!!");
>                 DCMD_Printf(btCoexDbgBuf);
>                 return;
>         }
>
>         antNum = btdm_BtWifiAntNum(padapter);
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d/%d ", "Ant mechanism PG/Now run :", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d/%d ", "Ant mechanism PG/Now run :", \
>                 ((pHalData->bt_coexist.BT_Ant_Num == Ant_x2) ? 2 : 1), ((antNum == Ant_x2) ? 2 : 1));
>         DCMD_Printf(btCoexDbgBuf);
>
>         if (pBtMgnt->ExtConfig.bManualControl) {
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s", "[Action Manual control]!!");
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s", "[Action Manual control]!!");
>                 DCMD_Printf(btCoexDbgBuf);
>         } else {
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %s / %d", "BT stack/ hci ext ver", \
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %s / %d", "BT stack/ hci ext ver", \
>                         ((pBtMgnt->bSupportProfile) ? "Yes" : "No"), pBtMgnt->ExtConfig.HCIExtensionVer);
>                 DCMD_Printf(btCoexDbgBuf);
>         }
>
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\n %-35s = / %d", "Dot11 channel / BT channel", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\n %-35s = / %d", "Dot11 channel / BT channel", \
>                 pBtMgnt->BTChannel);
>                 DCMD_Printf(btCoexDbgBuf);
>
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\n %-35s = %d / %d / %d", "Wifi/BT/HS rssi", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\n %-35s = %d / %d / %d", "Wifi/BT/HS rssi", \
>                 BTDM_GetRxSS(padapter),
>                 pHalData->bt_coexist.halCoex8723.btRssi,
>                 pHalData->dmpriv.EntryMinUndecoratedSmoothedPWDB);
>                         DCMD_Printf(btCoexDbgBuf);
>
>         if (!pBtMgnt->ExtConfig.bManualControl) {
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\n %-35s = %s / %s ", "WIfi status",
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\n %-35s = %s / %s ", "WIfi status",
>                         ((BTDM_Legacy(padapter)) ? "Legacy" : (((BTDM_IsHT40(padapter)) ? "HT40" : "HT20"))),
>                         ((!BTDM_IsWifiBusy(padapter)) ? "idle" : ((BTDM_IsWifiUplink(padapter)) ? "uplink" : "downlink")));
>                 DCMD_Printf(btCoexDbgBuf);
>
>                 if (pBtMgnt->bSupportProfile) {
> -                       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d / %d / %d / %d", "SCO/HID/PAN/A2DP",
> +                       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d / %d / %d / %d", "SCO/HID/PAN/A2DP",
>                                 ((BTHCI_CheckProfileExist(padapter, BT_PROFILE_SCO)) ? 1 : 0),
>                                 ((BTHCI_CheckProfileExist(padapter, BT_PROFILE_HID)) ? 1 : 0),
>                                 ((BTHCI_CheckProfileExist(padapter, BT_PROFILE_PAN)) ? 1 : 0),
> @@ -9426,19 +9425,19 @@ static void BTDM_Display8723ABtCoexInfo(struct rtw_adapter *padapter)
>
>                         for (i = 0; i < pBtMgnt->ExtConfig.NumberOfHandle; i++) {
>                                 if (pBtMgnt->ExtConfig.HCIExtensionVer >= 1) {
> -                                       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %s/ %s/ %s", "Bt link type/spec/role",
> +                                       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %s/ %s/ %s", "Bt link type/spec/role",
>                                                 BtProfileString[pBtMgnt->ExtConfig.linkInfo[i].BTProfile],
>                                                 BtSpecString[pBtMgnt->ExtConfig.linkInfo[i].BTCoreSpec],
>                                                 BtLinkRoleString[pBtMgnt->ExtConfig.linkInfo[i].linkRole]);
>                                         DCMD_Printf(btCoexDbgBuf);
>
>                                         btInfoExt = pHalData->bt_coexist.halCoex8723.btInfoExt;
> -                                       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %s", "A2DP rate", \
> +                                       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %s", "A2DP rate", \
>                                                  (btInfoExt & BIT(0)) ?
>                                                  "Basic rate" : "EDR rate");
>                                         DCMD_Printf(btCoexDbgBuf);
>                                 } else {
> -                                       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %s/ %s", "Bt link type/spec", \
> +                                       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %s/ %s", "Bt link type/spec", \
>                                                 BtProfileString[pBtMgnt->ExtConfig.linkInfo[i].BTProfile],
>                                                 BtSpecString[pBtMgnt->ExtConfig.linkInfo[i].BTCoreSpec]);
>                                         DCMD_Printf(btCoexDbgBuf);
> @@ -9449,29 +9448,29 @@ static void BTDM_Display8723ABtCoexInfo(struct rtw_adapter *padapter)
>
>         /*  Sw mechanism */
>         if (!pBtMgnt->ExtConfig.bManualControl) {
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s", "============[Sw BT Coex mechanism]============");
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s", "============[Sw BT Coex mechanism]============");
>                 DCMD_Printf(btCoexDbgBuf);
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d ", "AGC Table", \
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d ", "AGC Table", \
>                         pBtCoex->btdm2Ant.bCurAgcTableEn);
>                 DCMD_Printf(btCoexDbgBuf);
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d ", "ADC Backoff", \
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d ", "ADC Backoff", \
>                         pBtCoex->btdm2Ant.bCurAdcBackOff);
>                 DCMD_Printf(btCoexDbgBuf);
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d ", "Low penalty RA", \
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d ", "Low penalty RA", \
>                         pBtCoex->btdm2Ant.bCurLowPenaltyRa);
>                 DCMD_Printf(btCoexDbgBuf);
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d ", "RF Rx LPF Shrink", \
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d ", "RF Rx LPF Shrink", \
>                         pBtCoex->btdm2Ant.bCurRfRxLpfShrink);
>                 DCMD_Printf(btCoexDbgBuf);
>         }
>         u4Tmp[0] = PHY_QueryRFReg(padapter, PathA, 0x1e, 0xff0);
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x/ 0x%x", "RF-A, 0x1e[11:4]/original val", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x/ 0x%x", "RF-A, 0x1e[11:4]/original val", \
>                 u4Tmp[0], pHalData->bt_coexist.BtRfRegOrigin1E);
>         DCMD_Printf(btCoexDbgBuf);
>
>         /*  Fw mechanism */
>         if (!pBtMgnt->ExtConfig.bManualControl) {
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s", "============[Fw BT Coex mechanism]============");
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s", "============[Fw BT Coex mechanism]============");
>                 DCMD_Printf(btCoexDbgBuf);
>         }
>         if (!pBtMgnt->ExtConfig.bManualControl) {
> @@ -9479,57 +9478,57 @@ static void BTDM_Display8723ABtCoexInfo(struct rtw_adapter *padapter)
>                         psTdmaCase = pHalData->bt_coexist.halCoex8723.btdm1Ant.curPsTdma;
>                 else
>                         psTdmaCase = pHalData->bt_coexist.halCoex8723.btdm2Ant.curPsTdma;
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %02x %02x %02x %02x %02x case-%d", "PS TDMA(0x3a)", \
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %02x %02x %02x %02x %02x case-%d", "PS TDMA(0x3a)", \
>                         pHalData->bt_coexist.fw3aVal[0], pHalData->bt_coexist.fw3aVal[1],
>                         pHalData->bt_coexist.fw3aVal[2], pHalData->bt_coexist.fw3aVal[3],
>                         pHalData->bt_coexist.fw3aVal[4], psTdmaCase);
>                 DCMD_Printf(btCoexDbgBuf);
>
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d ", "Decrease Bt Power", \
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d ", "Decrease Bt Power", \
>                         pBtCoex->btdm2Ant.bCurDecBtPwr);
>                 DCMD_Printf(btCoexDbgBuf);
>         }
>         u1Tmp = rtl8723au_read8(padapter, 0x778);
>         u1Tmp1 = rtl8723au_read8(padapter, 0x783);
>         u1Tmp2 = rtl8723au_read8(padapter, 0x796);
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x/ 0x%x/ 0x%x", "0x778/ 0x783/ 0x796", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x/ 0x%x/ 0x%x", "0x778/ 0x783/ 0x796", \
>                 u1Tmp, u1Tmp1, u1Tmp2);
>         DCMD_Printf(btCoexDbgBuf);
>
>         if (!pBtMgnt->ExtConfig.bManualControl) {
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x / 0x%x", "Sw DacSwing Ctrl/Val", \
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x / 0x%x", "Sw DacSwing Ctrl/Val", \
>                         pBtCoex->btdm2Ant.bCurDacSwingOn, pBtCoex->btdm2Ant.curDacSwingLvl);
>                 DCMD_Printf(btCoexDbgBuf);
>         }
>         u4Tmp[0] =  rtl8723au_read32(padapter, 0x880);
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x", "0x880", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x", "0x880", \
>                 u4Tmp[0]);
>         DCMD_Printf(btCoexDbgBuf);
>
>         /*  Hw mechanism */
>         if (!pBtMgnt->ExtConfig.bManualControl) {
> -               rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s", "============[Hw BT Coex mechanism]============");
> +               snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s", "============[Hw BT Coex mechanism]============");
>                 DCMD_Printf(btCoexDbgBuf);
>         }
>
>         u1Tmp = rtl8723au_read8(padapter, 0x40);
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x", "0x40", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x", "0x40", \
>                 u1Tmp);
>         DCMD_Printf(btCoexDbgBuf);
>
>         u4Tmp[0] = rtl8723au_read32(padapter, 0x550);
>         u1Tmp = rtl8723au_read8(padapter, 0x522);
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x/0x%x", "0x550(bcn contrl)/0x522", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x/0x%x", "0x550(bcn contrl)/0x522", \
>                 u4Tmp[0], u1Tmp);
>         DCMD_Printf(btCoexDbgBuf);
>
>         u4Tmp[0] = rtl8723au_read32(padapter, 0x484);
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x", "0x484(rate adaptive)", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x", "0x484(rate adaptive)", \
>                 u4Tmp[0]);
>         DCMD_Printf(btCoexDbgBuf);
>
>         u4Tmp[0] = rtl8723au_read32(padapter, 0x50);
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x", "0xc50(dig)", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x", "0xc50(dig)", \
>                 u4Tmp[0]);
>         DCMD_Printf(btCoexDbgBuf);
>
> @@ -9537,7 +9536,7 @@ static void BTDM_Display8723ABtCoexInfo(struct rtw_adapter *padapter)
>         u4Tmp[1] = rtl8723au_read32(padapter, 0xda4);
>         u4Tmp[2] = rtl8723au_read32(padapter, 0xda8);
>         u4Tmp[3] = rtl8723au_read32(padapter, 0xdac);
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x", "0xda0/0xda4/0xda8/0xdac(FA cnt)", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x", "0xda0/0xda4/0xda8/0xdac(FA cnt)", \
>                 u4Tmp[0], u4Tmp[1], u4Tmp[2], u4Tmp[3]);
>         DCMD_Printf(btCoexDbgBuf);
>
> @@ -9545,27 +9544,27 @@ static void BTDM_Display8723ABtCoexInfo(struct rtw_adapter *padapter)
>         u4Tmp[1] = rtl8723au_read32(padapter, 0x6c4);
>         u4Tmp[2] = rtl8723au_read32(padapter, 0x6c8);
>         u1Tmp = rtl8723au_read8(padapter, 0x6cc);
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x", "0x6c0/0x6c4/0x6c8/0x6cc(coexTable)", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x", "0x6c0/0x6c4/0x6c8/0x6cc(coexTable)", \
>                 u4Tmp[0], u4Tmp[1], u4Tmp[2], u1Tmp);
>         DCMD_Printf(btCoexDbgBuf);
>
>         /* u4Tmp = rtl8723au_read32(padapter, 0x770); */
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d / %d", "0x770(Hi pri Rx[31:16]/Tx[15:0])", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d / %d", "0x770(Hi pri Rx[31:16]/Tx[15:0])", \
>                 pHalData->bt_coexist.halCoex8723.highPriorityRx,
>                 pHalData->bt_coexist.halCoex8723.highPriorityTx);
>         DCMD_Printf(btCoexDbgBuf);
>         /* u4Tmp = rtl8723au_read32(padapter, 0x774); */
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d / %d", "0x774(Lo pri Rx[31:16]/Tx[15:0])", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %d / %d", "0x774(Lo pri Rx[31:16]/Tx[15:0])", \
>                 pHalData->bt_coexist.halCoex8723.lowPriorityRx,
>                 pHalData->bt_coexist.halCoex8723.lowPriorityTx);
>         DCMD_Printf(btCoexDbgBuf);
>
>         /*  Tx mgnt queue hang or not, 0x41b should = 0xf, ex: 0xd ==>hang */
>         u1Tmp = rtl8723au_read8(padapter, 0x41b);
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x", "0x41b (hang chk == 0xf)", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x", "0x41b (hang chk == 0xf)", \
>                 u1Tmp);
>         DCMD_Printf(btCoexDbgBuf);
> -       rsprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x", "lastHMEBoxNum", \
> +       snprintf(btCoexDbgBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = 0x%x", "lastHMEBoxNum", \
>                 pHalData->LastHMEBoxNum);
>         DCMD_Printf(btCoexDbgBuf);
>  }
> --
> 1.9.1
>

