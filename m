X-GM-THRID: 6529514677099036672
X-Received: by 10.28.12.137 with SMTP id 131mr1157098wmm.18.1520273091552;
        Mon, 05 Mar 2018 10:04:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.0.78 with SMTP id 75ls1588097wma.4.gmail; Mon, 05 Mar 2018
 10:04:49 -0800 (PST)
X-Google-Smtp-Source: AG47ELsllx8ANzEtLba2Lq1ySCTQ6VGGCJAmc3K0MOKFEVTFjKnb3QFYCwCGMNqjzMeVDazRNDRc
X-Received: by 10.28.170.145 with SMTP id t139mr1274667wme.2.1520273089724;
        Mon, 05 Mar 2018 10:04:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520273089; cv=none;
        d=google.com; s=arc-20160816;
        b=KknzLTZOMhsDlwcJF9BtB/4PzQrTUiPfcXNNYOvirkCKr+cgTP8QoT/ZfDeHZFnybY
         spcIMIk4tRfV1adRQP+AA31liiG5z6RfN8rti0znK3Qe8Fq+xXtM/3mzE7Nc9Znb33qz
         3fVqGH2Pi9qKlJ1RGQwCcfsz0JAvkLgWarOHP5fBqYy/17butUxlaSFm4GxNXGzHuWRn
         dLg5gcKnridqCQFDbIh1WjOCSYvQr3QAjfu4DFXlBmkSl+MYjhM4D0I4zzZMZGzp1i34
         DL4stFWhCvm8mrup5iV0tdHIYyk+YobwYLiZiihqOrn5R0pt1I9NwOP5wvqiH/pml8dl
         G0uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:arc-authentication-results;
        bh=IK9J8ZfdzBUdaTK+yRQfTrwtxZ+4aIB5+Hbl8XqNLEc=;
        b=ewAs4HzSNN//ZlR4ROcQKOfMOqdYcyGj9KojPAPScjhyQoERHzVrC7YcDAkXoOcxX0
         K1DUt8oSCFhlYOcVlr6fgjPbAJgiZCUtrdn1DeLF/jM6zVDZj20IRFOdLSmEFGKerlr6
         RPNup1hUTNyEdwSFTgRK9lP5XCT9fJGdZE35weY8YmiadTQgDIR+Mw/+pDzjFlCKRd1i
         RlGvuwdHsWUIyjLfGFSLOK00f0HIvMIecvEVtKCg1B8pxieCKSV1GnsVSz21PPNGmFE3
         tqF5CWLZn6r9wSdImd88E1utPZ1JtKEhoKz9BISC8Zz+X55XPtczTNj2Eqz69FgaIBQU
         TE+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.68 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com. [209.85.215.68])
        by gmr-mx.google.com with ESMTPS id g206si252498wme.2.2018.03.05.10.04.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Mar 2018 10:04:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.68 as permitted sender) client-ip=209.85.215.68;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.68 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Received: by mail-lf0-f68.google.com with SMTP id i80so24505594lfg.5
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Mar 2018 10:04:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=IK9J8ZfdzBUdaTK+yRQfTrwtxZ+4aIB5+Hbl8XqNLEc=;
        b=gTdBJZPpGN6DCFv72yPpF9Tv6pc50EqjUqZUN/mK6L0HEqqQVVl9JGp5T4/2J3Na1d
         P2U/lxrSTuh8hvYm9aCO2hgSkf+valYd2hSOW8TQojKUK9+L8fupJqO0PI+IrYuz3ARt
         G4bqTCwq0optXXhVIMZNaSqpqt9d8QfUkXszEKEkanw4JCMyeoiIeIhCSjnj/bKYnHsY
         7NCSS+dyLDMWBjsoI6XMqtsiedFmaniPVcJttvmESH7PYc3f2eQ6rIcRa8DNYyRMvWdr
         p7fV1n7OzBRC3mkxMRg59l+AveWLfahHVHn3fDAAMQp2+GO0NpSqxyXXPS6vTDSWaGFi
         vFwA==
X-Gm-Message-State: AElRT7Eydp6RrnHWQPKlSLqHWIpAM0r0QIy2TOUHzHXqF4ckaOYBi9ax
	TebunD+wT92fbuy1wFjmWqiTdtGJ
X-Received: by 10.25.37.139 with SMTP id l133mr10835556lfl.70.1520273088897;
        Mon, 05 Mar 2018 10:04:48 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com. [209.85.215.45])
        by smtp.gmail.com with ESMTPSA id r13sm2782600lff.52.2018.03.05.10.04.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Mar 2018 10:04:48 -0800 (PST)
Received: by mail-lf0-f45.google.com with SMTP id i80so24505540lfg.5
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Mar 2018 10:04:48 -0800 (PST)
X-Received: by 10.25.152.141 with SMTP id a135mr10265987lfe.93.1520273088527;
 Mon, 05 Mar 2018 10:04:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.129.212 with HTTP; Mon, 5 Mar 2018 10:04:48 -0800 (PST)
In-Reply-To: <1520271071-53018-1-git-send-email-santhameena13@gmail.com>
References: <1520271071-53018-1-git-send-email-santhameena13@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 5 Mar 2018 23:34:48 +0530
X-Gmail-Original-Message-ID: <CAK-LDbK6UscgOSGJHMH9VHTiS8+LLvondj80SwyMDkp_fO6JnA@mail.gmail.com>
Message-ID: <CAK-LDbK6UscgOSGJHMH9VHTiS8+LLvondj80SwyMDkp_fO6JnA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: place constant on
 the right side of test
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 5, 2018 at 11:01 PM, Santha Meena Ramamoorthy
<santhameena13@gmail.com> wrote:
> Place constants on the right side of the test during comparisons to
> conform to the Linux kernel coding style.

Hi Santha,

I wonder how did you find this issue? If any tool was used, then
as you have done in other patches it would be good to add 'Issue
found using X'.

> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c      | 2 +-
>  drivers/staging/rtl8188eu/hal/rtl8188e_dm.c       | 2 +-
>  drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c | 8 ++++----
>  drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c    | 2 +-
>  4 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
> index 1ab2e55..8d242ad 100644
> --- a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
> +++ b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
> @@ -36,7 +36,7 @@ static u8 _is_fw_read_cmd_down(struct adapter *adapt, u8 msgbox_num)
>
>         do {
>                 valid = usb_read8(adapt, REG_HMETFR) & BIT(msgbox_num);
> -               if (0 == valid)
> +               if (valid == 0)
>                         read_down = true;
>         } while ((!read_down) && (retry_cnts--));
>
> diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> index d04b7fb..ff227c8 100644
> --- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> +++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> @@ -182,7 +182,7 @@ void rtw_hal_dm_init(struct adapter *Adapter)
>  /*  Compare RSSI for deciding antenna */
>  void rtw_hal_antdiv_rssi_compared(struct adapter *Adapter, struct wlan_bssid_ex *dst, struct wlan_bssid_ex *src)
>  {
> -       if (0 != Adapter->HalData->AntDivCfg) {
> +       if (Adapter->HalData->AntDivCfg != 0) {
>                 /* select optimum_antenna for before linked =>For antenna diversity */
>                 if (dst->Rssi >=  src->Rssi) {/* keep org parameter */
>                         src->Rssi = dst->Rssi;
> diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
> index 3673f57..54ede4b 100644
> --- a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
> +++ b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
> @@ -221,13 +221,13 @@ s32 InitLLTTable(struct adapter *padapter, u8 txpktbuf_bndy)
>         } else {
>                 for (i = 0; i < (txpktbuf_bndy - 1); i++) {
>                         status = _LLTWrite(padapter, i, i + 1);
> -                       if (_SUCCESS != status)
> +                       if (status != _SUCCESS)
>                                 return status;
>                 }
>
>                 /*  end of list */
>                 status = _LLTWrite(padapter, (txpktbuf_bndy - 1), 0xFF);
> -               if (_SUCCESS != status)
> +               if (status != _SUCCESS)
>                         return status;
>
>                 /*  Make the other pages as ring buffer */
> @@ -235,13 +235,13 @@ s32 InitLLTTable(struct adapter *padapter, u8 txpktbuf_bndy)
>                 /*  Otherwise used as local loopback buffer. */
>                 for (i = txpktbuf_bndy; i < Last_Entry_Of_TxPktBuf; i++) {
>                         status = _LLTWrite(padapter, i, (i + 1));
> -                       if (_SUCCESS != status)
> +                       if (status != _SUCCESS)
>                                 return status;
>                 }
>
>                 /*  Let last entry point to the start entry of ring buffer */
>                 status = _LLTWrite(padapter, Last_Entry_Of_TxPktBuf, txpktbuf_bndy);
> -               if (_SUCCESS != status) {
> +               if (status != _SUCCESS) {
>                         return status;
>                 }
>         }
> diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
> index a9912b6..4f0f512 100644
> --- a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
> +++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
> @@ -552,7 +552,7 @@ s32 rtl8188eu_xmitframe_complete(struct adapter *adapt, struct xmit_priv *pxmitp
>                 pbuf = round_up(pbuf_tail, 8);
>
>                 pfirstframe->agg_num++;
> -               if (MAX_TX_AGG_PACKET_NUMBER == pfirstframe->agg_num)
> +               if (pfirstframe->agg_num ==  MAX_TX_AGG_PACKET_NUMBER)
>                         break;
>
>                 if (pbuf < bulkptr) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1520271071-53018-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

