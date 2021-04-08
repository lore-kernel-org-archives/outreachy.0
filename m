X-GM-THRID: 6948695492025909248
X-Received: by 2002:a92:c808:: with SMTP id v8mr7312662iln.26.1617893063528;
        Thu, 08 Apr 2021 07:44:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:271f:: with SMTP id m31ls770870jav.2.gmail; Thu, 08
 Apr 2021 07:44:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxJhXLwlTS7aUaKpMoJVoGDqrj7CSJdQULkncqVYi8DwDt35uxrTOkLaC88G3SnEpyW9wA2
X-Received: by 2002:a02:cbaf:: with SMTP id v15mr9026516jap.118.1617893062598;
        Thu, 08 Apr 2021 07:44:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617893062; cv=none;
        d=google.com; s=arc-20160816;
        b=CBpHitoX2LhydU1TH/QHAVSnRKdQVaGbcEeZIpYOyNMFtR0sMq6Mn4+idFajpbPKk8
         5xdivZiDAVsWQzCidHLnAJArSEJuRjLYWJLz11nMN7KlP96ZBqMVx/HnNFb5551l9JFg
         PCxAzFvHlH/GhQ9thPdhkz6m7pp3kRsWLnguVdhOfL6dTfcYy55qo5DYgJ4pgES/6qwM
         5bC2gRJyZsNrl84BBGZr02ca0Z9f3sEa/pipjZXLvfGdahF1DYOdcI8Hm+UjHN3lLUR2
         uLJ05MSzNn7Sgb+OIgrsZFxRtcudZQ67Uo6MqbBuG/PIP0ZDLQnG3wBG/IbPLoZmsJu/
         eDQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YpAvFAlyriYlEaEjs79DdGsMoYASlfDrTgf7tSYtuKY=;
        b=vK0+qKpIXi+OytjMc8TIUwErT+D7l2kS8fCynjt4/u8K6d+G5srE+eHXEI0TMWBMX+
         3Q/7JDsTNnf2gHkFGVaGGVWzOwHz/wq8PeGBs/ejNJlEfOrD9VrgLY/jaTEqZFdVnK2q
         P6w1tueSOsT16yLtUNdesND649E8ZZPh2sZXglkhOgyWba9g0elDCUZOzK8lgwbWnfE2
         ImYFuNIR63KmfnNACri5JwQgXFv/Yu9Sbw5EMjQNa3Nj5FBM7sXI1mOjigYhWocSIZXO
         P6Ap+qRCCbMB/13wEAtYsrYcPEkaYKETGWBSuaMxyk0rf3z+wCsLM4FJGc9rY7DRkZOP
         kkag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fNZwbfsQ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com. [2607:f8b0:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id c1si1615054iot.4.2021.04.08.07.44.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 07:44:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) client-ip=2607:f8b0:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fNZwbfsQ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32f.google.com with SMTP id 91-20020a9d08640000b0290237d9c40382so2470699oty.12
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 07:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YpAvFAlyriYlEaEjs79DdGsMoYASlfDrTgf7tSYtuKY=;
        b=fNZwbfsQddK9jGTNmryX6ZhmJjZw8VFx9tSVSeNlWYAIXviOH/qMofV2W28OvS04z8
         ahxt71zbihcY9yWgCtqpkk4lI4J1Y9ACz2oVp4u5CIhM4GXnBkQJ339iPFRzYnjQSp86
         jXqgP3cL+zBHLD/9dtzMsJKX4uMh5OJlO52ssFwDO1nffPei1KXIUStKIMuDESqEz2gR
         0v6/gVVUsmf/HJrcMcGtRCPJEmC47zJz80MvySME3cnQCCkKyaZBUSTh1U/ouZmjgxyn
         hspX/H+N+pu9iFkb6maiVcHMMA9/UrxGYqZdct0HFQrbX9ZzGmgZdAX1meSDyXP6lXcT
         J6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YpAvFAlyriYlEaEjs79DdGsMoYASlfDrTgf7tSYtuKY=;
        b=C4eHXwL8wlrvmGn6R/bGm48B2VT8sqs3GPs47D58cNudDtXhRi5ZJgBDVRllxxcsx+
         LlDt5WbS096MveW43C5pyQBtn94IlJlIEABlnOSn6CDPzAxyYLP9lJxvObz+0CL4+ZUc
         AQvptRk2pUZcquXTU3AtAF5JF/aAGOmrqBwMFnXCixWSZDjpFeNHllgT/WqKpZnS0zGL
         jwNjPipxRa5ma1YJtaUn2nDIzAADb55T7D6wR59nyo1AxrVY8136VPuvgMfwncS3fnDQ
         6A1d6UV3IGfpoErjIoA28emTop3jGLpfp7mvT5Wb3TECEY2mRqjreo4Cr4CTG4OttvSd
         VoLg==
X-Gm-Message-State: AOAM531K5Ik4kU6xLdC6xBfeoDsLZ6JoihhbkxZRiB6OqCKrN7WkcjPE
	2STUsyXPxMKq2qKn1voC24AgL+Eti4sE29rsMSi5+5h40XyfpA==
X-Received: by 2002:a9d:480d:: with SMTP id c13mr7877658otf.149.1617893062136;
 Thu, 08 Apr 2021 07:44:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210408131641.31113-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104081622310.11533@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2104081622310.11533@hadrien>
From: FMDF <fmdefrancesco@gmail.com>
Date: Thu, 8 Apr 2021 16:44:10 +0200
Message-ID: <CAPj211sLo9bRkYyN5BMpncrhwuX2mrqAkiBjx9Kyq=jrCANA0A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8723bs: Remove
 camelcase in several files
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary="00000000000040dc4c05bf77157e"

--00000000000040dc4c05bf77157e
Content-Type: text/plain; charset="UTF-8"

On Thu, 8 Apr 2021, 16:22 Julia Lawall, <julia.lawall@inria.fr> wrote:

>
>
> On Thu, 8 Apr 2021, Fabio M. De Francesco wrote:
>
> > Remove camelcase in bFwCurrentInPSMode, a variable used by code
> > of several subdirectories/files of the driver. Issue detected by
> > checkpatch.pl.
>
> It could be reasonable to mention the removal of b in the log message.
>
> julia
>

Yes it is indeed reasonable. Today I've made a messy work with this simple
patch. It's already at version 4 just for a recurrent lack of attention to
the details: my fault, therefore I decided that I'm done for today.

Now I'm writing from a tablet and obviously I cannot do patches with this.
I'll send the v5 tomorrow morning.

Thanks,

Fabio


> >
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> >
> > Changes from v2: Discard v2 because it is a diff against v1 instead of a
> > replacement for v1.
> > Changes from v1: Rewrite comment for the purpose of specifying which
> > variable changes. Shorten its name by removing two unnecessary
> > characters (b_).
> >
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c       |  2 +-
> >  drivers/staging/rtl8723bs/core/rtw_mlme.c      |  2 +-
> >  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 18 +++++++++---------
> >  drivers/staging/rtl8723bs/hal/hal_intf.c       |  2 +-
> >  drivers/staging/rtl8723bs/hal/rtl8723b_dm.c    |  6 +++---
> >  .../staging/rtl8723bs/hal/rtl8723b_hal_init.c  |  2 +-
> >  drivers/staging/rtl8723bs/hal/sdio_ops.c       | 14 +++++++-------
> >  .../staging/rtl8723bs/include/rtw_pwrctrl.h    |  2 +-
> >  8 files changed, 24 insertions(+), 24 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > index baf8b1e0f43c..a08f22b53592 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -1510,7 +1510,7 @@ static void rtw_lps_change_dtim_hdl(struct adapter
> *padapter, u8 dtim)
> >       if (pwrpriv->dtim != dtim)
> >               pwrpriv->dtim = dtim;
> >
> > -     if ((pwrpriv->bFwCurrentInPSMode == true) && (pwrpriv->pwr_mode >
> PS_MODE_ACTIVE)) {
> > +     if ((pwrpriv->b_fw_current_in_ps_mode == true) &&
> (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
> >               u8 ps_mode = pwrpriv->pwr_mode;
> >
> >               rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, (u8
> *)(&ps_mode));
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > index a7e40aaae2d9..51cea6cf46e7 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > @@ -1684,7 +1684,7 @@ void rtw_dynamic_check_timer_handler(struct
> adapter *adapter)
> >       if (adapter->net_closed)
> >               return;
> >
> > -     if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +     if ((adapter_to_pwrctl(adapter)->b_fw_current_in_ps_mode)
> >               && !(hal_btcoex_IsBtControlLps(adapter))
> >               ) {
> >               u8 bEnterPS;
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> > index f7465cf90c46..21e7a847866f 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> > @@ -365,7 +365,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8
> ps_mode, u8 smart_ps, u8 bcn_a
> >                       rtw_set_rpwm(padapter, PS_STATE_S4);
> >
> >                       rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE,
> (u8 *)(&ps_mode));
> > -                     pwrpriv->bFwCurrentInPSMode = false;
> > +                     pwrpriv->b_fw_current_in_ps_mode = false;
> >
> >                       hal_btcoex_LpsNotify(padapter, ps_mode);
> >               }
> > @@ -377,7 +377,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8
> ps_mode, u8 smart_ps, u8 bcn_a
> >
> >                       hal_btcoex_LpsNotify(padapter, ps_mode);
> >
> > -                     pwrpriv->bFwCurrentInPSMode = true;
> > +                     pwrpriv->b_fw_current_in_ps_mode = true;
> >                       pwrpriv->pwr_mode = ps_mode;
> >                       pwrpriv->smart_ps = smart_ps;
> >                       pwrpriv->bcn_ant_mode = bcn_ant_mode;
> > @@ -734,7 +734,7 @@ s32 rtw_register_task_alive(struct adapter
> *padapter, u32 task)
> >
> >       register_task_alive(pwrctrl, task);
> >
> > -     if (pwrctrl->bFwCurrentInPSMode) {
> > +     if (pwrctrl->b_fw_current_in_ps_mode) {
> >               if (pwrctrl->cpwm < pslv) {
> >                       if (pwrctrl->cpwm < PS_STATE_S2)
> >                               res = _FAIL;
> > @@ -782,7 +782,7 @@ void rtw_unregister_task_alive(struct adapter
> *padapter, u32 task)
> >
> >       unregister_task_alive(pwrctrl, task);
> >
> > -     if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) &&
> pwrctrl->bFwCurrentInPSMode) {
> > +     if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) &&
> pwrctrl->b_fw_current_in_ps_mode) {
> >               if (pwrctrl->cpwm > pslv)
> >                       if ((pslv >= PS_STATE_S2) || (pwrctrl->alives ==
> 0))
> >                               rtw_set_rpwm(padapter, pslv);
> > @@ -819,7 +819,7 @@ s32 rtw_register_tx_alive(struct adapter *padapter)
> >
> >       register_task_alive(pwrctrl, XMIT_ALIVE);
> >
> > -     if (pwrctrl->bFwCurrentInPSMode) {
> > +     if (pwrctrl->b_fw_current_in_ps_mode) {
> >               if (pwrctrl->cpwm < pslv) {
> >                       if (pwrctrl->cpwm < PS_STATE_S2)
> >                               res = _FAIL;
> > @@ -864,7 +864,7 @@ s32 rtw_register_cmd_alive(struct adapter *padapter)
> >
> >       register_task_alive(pwrctrl, CMD_ALIVE);
> >
> > -     if (pwrctrl->bFwCurrentInPSMode) {
> > +     if (pwrctrl->b_fw_current_in_ps_mode) {
> >               if (pwrctrl->cpwm < pslv) {
> >                       if (pwrctrl->cpwm < PS_STATE_S2)
> >                               res = _FAIL;
> > @@ -909,7 +909,7 @@ void rtw_unregister_tx_alive(struct adapter
> *padapter)
> >
> >       unregister_task_alive(pwrctrl, XMIT_ALIVE);
> >
> > -     if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) &&
> pwrctrl->bFwCurrentInPSMode) {
> > +     if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) &&
> pwrctrl->b_fw_current_in_ps_mode) {
> >               if (pwrctrl->cpwm > pslv)
> >                       if ((pslv >= PS_STATE_S2) || (pwrctrl->alives ==
> 0))
> >                               rtw_set_rpwm(padapter, pslv);
> > @@ -945,7 +945,7 @@ void rtw_unregister_cmd_alive(struct adapter
> *padapter)
> >
> >       unregister_task_alive(pwrctrl, CMD_ALIVE);
> >
> > -     if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) &&
> pwrctrl->bFwCurrentInPSMode) {
> > +     if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) &&
> pwrctrl->b_fw_current_in_ps_mode) {
> >               if (pwrctrl->cpwm > pslv) {
> >                       if ((pslv >= PS_STATE_S2) || (pwrctrl->alives ==
> 0))
> >                               rtw_set_rpwm(padapter, pslv);
> > @@ -978,7 +978,7 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
> >       pwrctrlpriv->power_mgnt = padapter->registrypriv.power_mgnt;/*
> PS_MODE_MIN; */
> >       pwrctrlpriv->bLeisurePs = pwrctrlpriv->power_mgnt !=
> PS_MODE_ACTIVE;
> >
> > -     pwrctrlpriv->bFwCurrentInPSMode = false;
> > +     pwrctrlpriv->b_fw_current_in_ps_mode = false;
> >
> >       pwrctrlpriv->rpwm = 0;
> >       pwrctrlpriv->cpwm = PS_STATE_S4;
> > diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c
> b/drivers/staging/rtl8723bs/hal/hal_intf.c
> > index bc9ae2088754..a73c2f76628d 100644
> > --- a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > +++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
> > @@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter *padapter)
> >
> >  void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
> >  {
> > -     if (adapter_to_pwrctl(padapter)->bFwCurrentInPSMode == true) {
> > +     if (adapter_to_pwrctl(padapter)->b_fw_current_in_ps_mode == true) {
> >               if (padapter->HalFunc.hal_dm_watchdog_in_lps)
> >
>  padapter->HalFunc.hal_dm_watchdog_in_lps(padapter); /* this function
> caller is in interrupt context */
> >       }
> > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> > index c2e9e4a0be22..265db187b8d5 100644
> > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> > @@ -141,7 +141,7 @@ void rtl8723b_InitHalDm(struct adapter *Adapter)
> >
> >  void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
> >  {
> > -     bool bFwCurrentInPSMode = false;
> > +     bool b_fw_current_in_ps_mode = false;
> >       bool bFwPSAwake = true;
> >       u8 hw_init_completed = false;
> >       struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
> > @@ -151,12 +151,12 @@ void rtl8723b_HalDmWatchDog(struct adapter
> *Adapter)
> >       if (hw_init_completed == false)
> >               goto skip_dm;
> >
> > -     bFwCurrentInPSMode =
> adapter_to_pwrctl(Adapter)->bFwCurrentInPSMode;
> > +     b_fw_current_in_ps_mode =
> adapter_to_pwrctl(Adapter)->b_fw_current_in_ps_mode;
> >       rtw_hal_get_hwreg(Adapter, HW_VAR_FWLPS_RF_ON, (u8
> *)(&bFwPSAwake));
> >
> >       if (
> >               (hw_init_completed == true) &&
> > -             ((!bFwCurrentInPSMode) && bFwPSAwake)
> > +             ((!b_fw_current_in_ps_mode) && bFwPSAwake)
> >       ) {
> >               /*  */
> >               /*  Calculate Tx/Rx statistics. */
> > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > index e31ad3feed62..7ebc438870fd 100644
> > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > @@ -430,7 +430,7 @@ void rtl8723b_InitializeFirmwareVars(struct adapter
> *padapter)
> >       struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
> >
> >       /*  Init Fw LPS related. */
> > -     adapter_to_pwrctl(padapter)->bFwCurrentInPSMode = false;
> > +     adapter_to_pwrctl(padapter)->b_fw_current_in_ps_mode = false;
> >
> >       /* Init H2C cmd. */
> >       rtw_write8(padapter, REG_HMETFR, 0x0f);
> > diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c
> b/drivers/staging/rtl8723bs/hal/sdio_ops.c
> > index af7f846f90fe..c78a6724fc1c 100644
> > --- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
> > +++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
> > @@ -173,7 +173,7 @@ static u32 sdio_read32(struct intf_hdl *intfhdl, u32
> addr)
> >       if (
> >               ((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 0x100))
> ||
> >               (!mac_pwr_ctrl_on) ||
> > -             (adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +             (adapter_to_pwrctl(adapter)->b_fw_current_in_ps_mode)
> >       ) {
> >               err = sd_cmd52_read(intfhdl, ftaddr, 4, (u8 *)&le_tmp);
> >  #ifdef SDIO_DEBUG_IO
> > @@ -230,7 +230,7 @@ static s32 sdio_readN(struct intf_hdl *intfhdl, u32
> addr, u32 cnt, u8 *buf)
> >       if (
> >               ((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 0x100))
> ||
> >               (!mac_pwr_ctrl_on) ||
> > -             (adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +             (adapter_to_pwrctl(adapter)->b_fw_current_in_ps_mode)
> >       )
> >               return sd_cmd52_read(intfhdl, ftaddr, cnt, buf);
> >
> > @@ -297,7 +297,7 @@ static s32 sdio_write32(struct intf_hdl *intfhdl,
> u32 addr, u32 val)
> >       if (
> >               ((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 0x100))
> ||
> >               (!mac_pwr_ctrl_on) ||
> > -             (adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +             (adapter_to_pwrctl(adapter)->b_fw_current_in_ps_mode)
> >       ) {
> >               le_tmp = cpu_to_le32(val);
> >
> > @@ -334,7 +334,7 @@ static s32 sdio_writeN(struct intf_hdl *intfhdl, u32
> addr, u32 cnt, u8 *buf)
> >       if (
> >               ((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 0x100))
> ||
> >               (!mac_pwr_ctrl_on) ||
> > -             (adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +             (adapter_to_pwrctl(adapter)->b_fw_current_in_ps_mode)
> >       )
> >               return sd_cmd52_write(intfhdl, ftaddr, cnt, buf);
> >
> > @@ -565,7 +565,7 @@ s32 sdio_local_read(
> >       rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
> >       if (
> >               (!mac_pwr_ctrl_on) ||
> > -             (adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +             (adapter_to_pwrctl(adapter)->b_fw_current_in_ps_mode)
> >       )
> >               return sd_cmd52_read(intfhdl, addr, cnt, buf);
> >
> > @@ -611,7 +611,7 @@ s32 sdio_local_write(
> >       rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
> >       if (
> >               (!mac_pwr_ctrl_on) ||
> > -             (adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +             (adapter_to_pwrctl(adapter)->b_fw_current_in_ps_mode)
> >       )
> >               return sd_cmd52_write(intfhdl, addr, cnt, buf);
> >
> > @@ -660,7 +660,7 @@ static u32 sdio_local_cmd53_read4byte(struct adapter
> *adapter, u32 addr)
> >
> >       hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr,
> &addr);
> >       rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
> > -     if (!mac_pwr_ctrl_on ||
> adapter_to_pwrctl(adapter)->bFwCurrentInPSMode) {
> > +     if (!mac_pwr_ctrl_on ||
> adapter_to_pwrctl(adapter)->b_fw_current_in_ps_mode) {
> >               sd_cmd52_read(intfhdl, addr, 4, (u8 *)&le_tmp);
> >               val = le32_to_cpu(le_tmp);
> >       } else {
> > diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > index 2e739a17dd95..fcb06a95fdf6 100644
> > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > @@ -203,7 +203,7 @@ struct pwrctrl_priv {
> >       u8 LpsIdleCount;
> >       u8 power_mgnt;
> >       u8 org_power_mgnt;
> > -     u8 bFwCurrentInPSMode;
> > +     u8 b_fw_current_in_ps_mode;
> >       unsigned long   DelayLPSLastTimeStamp;
> >       s32             pnp_current_pwr_state;
> >       u8 pnp_bstop_trx;
> > --
> > 2.30.2
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20210408131641.31113-1-fmdefrancesco%40gmail.com
> .
> >
>

--00000000000040dc4c05bf77157e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, 8 Apr 2021, 16:22 Julia Lawall, &lt;<a href=3D"mailto:=
julia.lawall@inria.fr">julia.lawall@inria.fr</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><br>
<br>
On Thu, 8 Apr 2021, Fabio M. De Francesco wrote:<br>
<br>
&gt; Remove camelcase in bFwCurrentInPSMode, a variable used by code<br>
&gt; of several subdirectories/files of the driver. Issue detected by<br>
&gt; <a href=3D"http://checkpatch.pl" rel=3D"noreferrer noreferrer" target=
=3D"_blank">checkpatch.pl</a>.<br>
<br>
It could be reasonable to mention the removal of b in the log message.<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Yes it is indeed reasonable. Today I&#39;ve made a messy work with thi=
s simple patch. It&#39;s already at version 4 just for a recurrent lack of =
attention to the details: my fault, therefore I decided that I&#39;m done f=
or today.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Now I&#39;m wr=
iting from a tablet and obviously I cannot do patches with this. I&#39;ll s=
end the v5 tomorrow morning.=C2=A0</div><div dir=3D"auto"><br></div><div di=
r=3D"auto">Thanks,=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>Fabio</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
<br>
&gt;<br>
&gt; Signed-off-by: Fabio M. De Francesco &lt;<a href=3D"mailto:fmdefrances=
co@gmail.com" target=3D"_blank" rel=3D"noreferrer">fmdefrancesco@gmail.com<=
/a>&gt;<br>
&gt; ---<br>
&gt;<br>
&gt; Changes from v2: Discard v2 because it is a diff against v1 instead of=
 a<br>
&gt; replacement for v1.<br>
&gt; Changes from v1: Rewrite comment for the purpose of specifying which<b=
r>
&gt; variable changes. Shorten its name by removing two unnecessary<br>
&gt; characters (b_).<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/core/rtw_cmd.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 2 +-<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/core/rtw_mlme.c=C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 2 +-<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c=C2=A0 =C2=A0| 18 ++=
+++++++---------<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/hal/hal_intf.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 2 +-<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c=C2=A0 =C2=A0 |=C2=A0=
 6 +++---<br>
&gt;=C2=A0 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c=C2=A0 |=C2=A0 2 +-=
<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/hal/sdio_ops.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0| 14 +++++++-------<br>
&gt;=C2=A0 .../staging/rtl8723bs/include/rtw_pwrctrl.h=C2=A0 =C2=A0 |=C2=A0=
 2 +-<br>
&gt;=C2=A0 8 files changed, 24 insertions(+), 24 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/stagin=
g/rtl8723bs/core/rtw_cmd.c<br>
&gt; index baf8b1e0f43c..a08f22b53592 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c<br>
&gt; @@ -1510,7 +1510,7 @@ static void rtw_lps_change_dtim_hdl(struct adapt=
er *padapter, u8 dtim)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pwrpriv-&gt;dtim !=3D dtim)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pwrpriv-&gt;dtim=
 =3D dtim;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((pwrpriv-&gt;bFwCurrentInPSMode =3D=3D true) =
&amp;&amp; (pwrpriv-&gt;pwr_mode &gt; PS_MODE_ACTIVE)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((pwrpriv-&gt;b_fw_current_in_ps_mode =3D=3D t=
rue) &amp;&amp; (pwrpriv-&gt;pwr_mode &gt; PS_MODE_ACTIVE)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8 ps_mode =3D p=
wrpriv-&gt;pwr_mode;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_hal_set_hwre=
g(padapter, HW_VAR_H2C_FW_PWRMODE, (u8 *)(&amp;ps_mode));<br>
&gt; diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/stagi=
ng/rtl8723bs/core/rtw_mlme.c<br>
&gt; index a7e40aaae2d9..51cea6cf46e7 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c<br>
&gt; @@ -1684,7 +1684,7 @@ void rtw_dynamic_check_timer_handler(struct adap=
ter *adapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (adapter-&gt;net_closed)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((adapter_to_pwrctl(adapter)-&gt;bFwCurrentInP=
SMode)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((adapter_to_pwrctl(adapter)-&gt;b_fw_current_=
in_ps_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; !(hal=
_btcoex_IsBtControlLps(adapter))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8 bEnterPS;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/st=
aging/rtl8723bs/core/rtw_pwrctrl.c<br>
&gt; index f7465cf90c46..21e7a847866f 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c<br>
&gt; @@ -365,7 +365,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 =
ps_mode, u8 smart_ps, u8 bcn_a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0rtw_set_rpwm(padapter, PS_STATE_S4);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, (u8 *)(&amp=
;ps_mode));<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0pwrpriv-&gt;bFwCurrentInPSMode =3D false;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0pwrpriv-&gt;b_fw_current_in_ps_mode =3D false;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0hal_btcoex_LpsNotify(padapter, ps_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -377,7 +377,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 =
ps_mode, u8 smart_ps, u8 bcn_a<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0hal_btcoex_LpsNotify(padapter, ps_mode);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0pwrpriv-&gt;bFwCurrentInPSMode =3D true;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0pwrpriv-&gt;b_fw_current_in_ps_mode =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0pwrpriv-&gt;pwr_mode =3D ps_mode;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0pwrpriv-&gt;smart_ps =3D smart_ps;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0pwrpriv-&gt;bcn_ant_mode =3D bcn_ant_mode;<br>
&gt; @@ -734,7 +734,7 @@ s32 rtw_register_task_alive(struct adapter *padapt=
er, u32 task)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0register_task_alive(pwrctrl, task);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pwrctrl-&gt;bFwCurrentInPSMode) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (pwrctrl-&gt;b_fw_current_in_ps_mode) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pwrctrl-&gt;=
cpwm &lt; pslv) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (pwrctrl-&gt;cpwm &lt; PS_STATE_S2)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D _FAIL;<br>
&gt; @@ -782,7 +782,7 @@ void rtw_unregister_task_alive(struct adapter *pad=
apter, u32 task)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unregister_task_alive(pwrctrl, task);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((pwrctrl-&gt;pwr_mode !=3D PS_MODE_ACTIVE) &a=
mp;&amp; pwrctrl-&gt;bFwCurrentInPSMode) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((pwrctrl-&gt;pwr_mode !=3D PS_MODE_ACTIVE) &a=
mp;&amp; pwrctrl-&gt;b_fw_current_in_ps_mode) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pwrctrl-&gt;=
cpwm &gt; pslv)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if ((pslv &gt;=3D PS_STATE_S2) || (pwrctrl-&gt;alives =3D=3D 0=
))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_set_rpwm(padapter, pslv);<br>
&gt; @@ -819,7 +819,7 @@ s32 rtw_register_tx_alive(struct adapter *padapter=
)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0register_task_alive(pwrctrl, XMIT_ALIVE);<br=
>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pwrctrl-&gt;bFwCurrentInPSMode) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (pwrctrl-&gt;b_fw_current_in_ps_mode) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pwrctrl-&gt;=
cpwm &lt; pslv) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (pwrctrl-&gt;cpwm &lt; PS_STATE_S2)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D _FAIL;<br>
&gt; @@ -864,7 +864,7 @@ s32 rtw_register_cmd_alive(struct adapter *padapte=
r)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0register_task_alive(pwrctrl, CMD_ALIVE);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pwrctrl-&gt;bFwCurrentInPSMode) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (pwrctrl-&gt;b_fw_current_in_ps_mode) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pwrctrl-&gt;=
cpwm &lt; pslv) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (pwrctrl-&gt;cpwm &lt; PS_STATE_S2)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D _FAIL;<br>
&gt; @@ -909,7 +909,7 @@ void rtw_unregister_tx_alive(struct adapter *padap=
ter)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unregister_task_alive(pwrctrl, XMIT_ALIVE);<=
br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((pwrctrl-&gt;pwr_mode !=3D PS_MODE_ACTIVE) &a=
mp;&amp; pwrctrl-&gt;bFwCurrentInPSMode) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((pwrctrl-&gt;pwr_mode !=3D PS_MODE_ACTIVE) &a=
mp;&amp; pwrctrl-&gt;b_fw_current_in_ps_mode) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pwrctrl-&gt;=
cpwm &gt; pslv)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if ((pslv &gt;=3D PS_STATE_S2) || (pwrctrl-&gt;alives =3D=3D 0=
))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_set_rpwm(padapter, pslv);<br>
&gt; @@ -945,7 +945,7 @@ void rtw_unregister_cmd_alive(struct adapter *pada=
pter)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unregister_task_alive(pwrctrl, CMD_ALIVE);<b=
r>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((pwrctrl-&gt;pwr_mode !=3D PS_MODE_ACTIVE) &a=
mp;&amp; pwrctrl-&gt;bFwCurrentInPSMode) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((pwrctrl-&gt;pwr_mode !=3D PS_MODE_ACTIVE) &a=
mp;&amp; pwrctrl-&gt;b_fw_current_in_ps_mode) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pwrctrl-&gt;=
cpwm &gt; pslv) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if ((pslv &gt;=3D PS_STATE_S2) || (pwrctrl-&gt;alives =3D=3D 0=
))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_set_rpwm(padapter, pslv);<br>
&gt; @@ -978,7 +978,7 @@ void rtw_init_pwrctrl_priv(struct adapter *padapte=
r)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pwrctrlpriv-&gt;power_mgnt =3D padapter-&gt;=
registrypriv.power_mgnt;/*=C2=A0 PS_MODE_MIN; */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pwrctrlpriv-&gt;bLeisurePs =3D pwrctrlpriv-&=
gt;power_mgnt !=3D PS_MODE_ACTIVE;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0pwrctrlpriv-&gt;bFwCurrentInPSMode =3D false;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0pwrctrlpriv-&gt;b_fw_current_in_ps_mode =3D false=
;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pwrctrlpriv-&gt;rpwm =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pwrctrlpriv-&gt;cpwm =3D PS_STATE_S4;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/stagin=
g/rtl8723bs/hal/hal_intf.c<br>
&gt; index bc9ae2088754..a73c2f76628d 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/hal/hal_intf.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/hal/hal_intf.c<br>
&gt; @@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter *padapter)=
<br>
&gt;<br>
&gt;=C2=A0 void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (adapter_to_pwrctl(padapter)-&gt;bFwCurrentInP=
SMode =3D=3D true) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (adapter_to_pwrctl(padapter)-&gt;b_fw_current_=
in_ps_mode =3D=3D true) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter-&gt=
;HalFunc.hal_dm_watchdog_in_lps)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0padapter-&gt;HalFunc.hal_dm_watchdog_in_lps(padapter); /* this=
 function caller is in interrupt context */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/sta=
ging/rtl8723bs/hal/rtl8723b_dm.c<br>
&gt; index c2e9e4a0be22..265db187b8d5 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c<br>
&gt; @@ -141,7 +141,7 @@ void rtl8723b_InitHalDm(struct adapter *Adapter)<b=
r>
&gt;<br>
&gt;=C2=A0 void rtl8723b_HalDmWatchDog(struct adapter *Adapter)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0bool bFwCurrentInPSMode =3D false;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0bool b_fw_current_in_ps_mode =3D false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bool bFwPSAwake =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 hw_init_completed =3D false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct hal_com_data *pHalData =3D GET_HAL_DA=
TA(Adapter);<br>
&gt; @@ -151,12 +151,12 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adap=
ter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (hw_init_completed =3D=3D false)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto skip_dm;<br=
>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0bFwCurrentInPSMode =3D adapter_to_pwrctl(Adapter)=
-&gt;bFwCurrentInPSMode;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0b_fw_current_in_ps_mode =3D adapter_to_pwrctl(Ada=
pter)-&gt;b_fw_current_in_ps_mode;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_hal_get_hwreg(Adapter, HW_VAR_FWLPS_RF_O=
N, (u8 *)(&amp;bFwPSAwake));<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(hw_init_complet=
ed =3D=3D true) &amp;&amp;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((!bFwCurrentInPSMode=
) &amp;&amp; bFwPSAwake)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((!b_fw_current_in_ps=
_mode) &amp;&amp; bFwPSAwake)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 Calcula=
te Tx/Rx statistics. */<br>
&gt; diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drive=
rs/staging/rtl8723bs/hal/rtl8723b_hal_init.c<br>
&gt; index e31ad3feed62..7ebc438870fd 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c<br>
&gt; @@ -430,7 +430,7 @@ void rtl8723b_InitializeFirmwareVars(struct adapte=
r *padapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct hal_com_data *pHalData =3D GET_HAL_DA=
TA(padapter);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 Init Fw LPS related. */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0adapter_to_pwrctl(padapter)-&gt;bFwCurrentInPSMod=
e =3D false;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0adapter_to_pwrctl(padapter)-&gt;b_fw_current_in_p=
s_mode =3D false;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Init H2C cmd. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_write8(padapter, REG_HMETFR, 0x0f);<br>
&gt; diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/stagin=
g/rtl8723bs/hal/sdio_ops.c<br>
&gt; index af7f846f90fe..c78a6724fc1c 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/hal/sdio_ops.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c<br>
&gt; @@ -173,7 +173,7 @@ static u32 sdio_read32(struct intf_hdl *intfhdl, u=
32 addr)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((device_id =3D=
=3D WLAN_IOREG_DEVICE_ID) &amp;&amp; (offset &lt; 0x100)) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(!mac_pwr_ctrl_o=
n) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(adapter_to_pwrctl(ad=
apter)-&gt;bFwCurrentInPSMode)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(adapter_to_pwrctl(ad=
apter)-&gt;b_fw_current_in_ps_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D sd_cmd52=
_read(intfhdl, ftaddr, 4, (u8 *)&amp;le_tmp);<br>
&gt;=C2=A0 #ifdef SDIO_DEBUG_IO<br>
&gt; @@ -230,7 +230,7 @@ static s32 sdio_readN(struct intf_hdl *intfhdl, u3=
2 addr, u32 cnt, u8 *buf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((device_id =3D=
=3D WLAN_IOREG_DEVICE_ID) &amp;&amp; (offset &lt; 0x100)) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(!mac_pwr_ctrl_o=
n) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(adapter_to_pwrctl(ad=
apter)-&gt;bFwCurrentInPSMode)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(adapter_to_pwrctl(ad=
apter)-&gt;b_fw_current_in_ps_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return sd_cmd52_=
read(intfhdl, ftaddr, cnt, buf);<br>
&gt;<br>
&gt; @@ -297,7 +297,7 @@ static s32 sdio_write32(struct intf_hdl *intfhdl, =
u32 addr, u32 val)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((device_id =3D=
=3D WLAN_IOREG_DEVICE_ID) &amp;&amp; (offset &lt; 0x100)) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(!mac_pwr_ctrl_o=
n) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(adapter_to_pwrctl(ad=
apter)-&gt;bFwCurrentInPSMode)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(adapter_to_pwrctl(ad=
apter)-&gt;b_fw_current_in_ps_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0le_tmp =3D cpu_t=
o_le32(val);<br>
&gt;<br>
&gt; @@ -334,7 +334,7 @@ static s32 sdio_writeN(struct intf_hdl *intfhdl, u=
32 addr, u32 cnt, u8 *buf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((device_id =3D=
=3D WLAN_IOREG_DEVICE_ID) &amp;&amp; (offset &lt; 0x100)) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(!mac_pwr_ctrl_o=
n) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(adapter_to_pwrctl(ad=
apter)-&gt;bFwCurrentInPSMode)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(adapter_to_pwrctl(ad=
apter)-&gt;b_fw_current_in_ps_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return sd_cmd52_=
write(intfhdl, ftaddr, cnt, buf);<br>
&gt;<br>
&gt; @@ -565,7 +565,7 @@ s32 sdio_local_read(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MA=
C, &amp;mac_pwr_ctrl_on);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(!mac_pwr_ctrl_o=
n) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(adapter_to_pwrctl(ad=
apter)-&gt;bFwCurrentInPSMode)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(adapter_to_pwrctl(ad=
apter)-&gt;b_fw_current_in_ps_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return sd_cmd52_=
read(intfhdl, addr, cnt, buf);<br>
&gt;<br>
&gt; @@ -611,7 +611,7 @@ s32 sdio_local_write(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MA=
C, &amp;mac_pwr_ctrl_on);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(!mac_pwr_ctrl_o=
n) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(adapter_to_pwrctl(ad=
apter)-&gt;bFwCurrentInPSMode)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(adapter_to_pwrctl(ad=
apter)-&gt;b_fw_current_in_ps_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return sd_cmd52_=
write(intfhdl, addr, cnt, buf);<br>
&gt;<br>
&gt; @@ -660,7 +660,7 @@ static u32 sdio_local_cmd53_read4byte(struct adapt=
er *adapter, u32 addr)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LO=
CAL_DEVICE_ID, addr, &amp;addr);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MA=
C, &amp;mac_pwr_ctrl_on);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (!mac_pwr_ctrl_on || adapter_to_pwrctl(adapter=
)-&gt;bFwCurrentInPSMode) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!mac_pwr_ctrl_on || adapter_to_pwrctl(adapter=
)-&gt;b_fw_current_in_ps_mode) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sd_cmd52_read(in=
tfhdl, addr, 4, (u8 *)&amp;le_tmp);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D le32_to_=
cpu(le_tmp);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers=
/staging/rtl8723bs/include/rtw_pwrctrl.h<br>
&gt; index 2e739a17dd95..fcb06a95fdf6 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h<br>
&gt; +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h<br>
&gt; @@ -203,7 +203,7 @@ struct pwrctrl_priv {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 LpsIdleCount;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 power_mgnt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 org_power_mgnt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0u8 bFwCurrentInPSMode;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0u8 b_fw_current_in_ps_mode;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long=C2=A0 =C2=A0DelayLPSLastTimeSt=
amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0s32=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0pnp_current_pwr_state;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 pnp_bstop_trx;<br>
&gt; --<br>
&gt; 2.30.2<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20210408131641.31113-1-fmdefrancesco%40gma=
il.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.goog=
le.com/d/msgid/outreachy-kernel/20210408131641.31113-1-fmdefrancesco%40gmai=
l.com</a>.<br>
&gt;<br>
</blockquote></div></div></div>

--00000000000040dc4c05bf77157e--

