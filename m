X-GM-THRID: 6202030500933009408
X-Received: by 10.112.138.4 with SMTP id qm4mr3601734lbb.6.1444024801472;
        Sun, 04 Oct 2015 23:00:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.162 with SMTP id 34ls420437lfw.11.gmail; Sun, 04 Oct
 2015 23:00:00 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr4926491lbs.18.1444024800726;
        Sun, 04 Oct 2015 23:00:00 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id q6si288392wif.2.2015.10.04.23.00.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 23:00:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id fx3so98294458wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 23:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Iq5+yUcNxVbC7vhrZLF2CmLgyhClYbfgtuCpXBRBWcY=;
        b=q+oCz6eApP3E1+haIMD4Fdstd0lcQuNFc65ymG/DXowIPZ6z9uU6CrdR4zcsrqbKhK
         GifyTQCF+w8qf0o7yfe4pVxCJeb7r18in072WOK9IyUgxfDDSCw9acqsQSKPSyNxQvCB
         uTfHWaBDpjQtrU+cfUHi7ZyifjcAnh42fxHIEC6H4TaD8L/poNIbCRJ1KxVeIJ9LoqIw
         EWYlSZiQlNpVw+sCRZ206Ys2VTRg15MgFCUhT63MZcKbRrwLjXOQvF4jTWveu7QPffYp
         h3nCZHvsgyzC/aFENtVY0uQvAN5p79KiSjp6Y6fQucr/KZ4O0RLxtyPOFa95whbvu1AF
         LXjw==
MIME-Version: 1.0
X-Received: by 10.194.176.6 with SMTP id ce6mr28009802wjc.101.1444024800559;
 Sun, 04 Oct 2015 23:00:00 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Sun, 4 Oct 2015 23:00:00 -0700 (PDT)
In-Reply-To: <1444024004-6326-1-git-send-email-shraddha.6596@gmail.com>
References: <1444024004-6326-1-git-send-email-shraddha.6596@gmail.com>
Date: Mon, 5 Oct 2015 11:30:00 +0530
Message-ID: <CAK-LDbKOPFeYW-ZFyd+ZNohU9R86n_=v0v+-zP=btJuD9BsZ7g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: wilc1000:
 wilc_wfi_cfgoperations: Replace memset with eth_zero_addr
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 5, 2015 at 11:16 AM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> Use eth_zero_addr to assign the zero address to the given address
> array instead of memset when second argument is address of zero.
>
> The Coccinelle patch used -
>
> // <smpl>
> @eth_zero_addr@
> expression e;
> @@
>
> -memset(e,0x00,ETH_ALEN);
> +eth_zero_addr(e);
> // </smpl>
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
> Changes in v2-
>  Dropped the second patch in series as it breaks the build.

Hi,

I am not sure why you dropped the second patch in series when you can
solve the build errors by looking at errors more closely. Your change is
correct. It just needs something more to be added.

Please send the whole series after solving the errors.

>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 04838f1..7cf39b29 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -562,7 +562,7 @@ static void CfgConnectResult(tenuConnDisconnEvent enuConnDisconnEvent,
>                          *  = SUCCESSFUL_STATUSCODE, while mac status is MAC_DISCONNECTED (which means something wrong happened) */
>                         u16ConnectStatus = WLAN_STATUS_UNSPECIFIED_FAILURE;
>                         linux_wlan_set_bssid(priv->dev, NullBssid);
> -                       memset(u8ConnectedSSID, 0, ETH_ALEN);
> +                       eth_zero_addr(u8ConnectedSSID);
>
>                         /*Invalidate u8WLANChannel value on wlan0 disconnect*/
>                         if (!pstrWFIDrv->u8P2PConnect)
> @@ -619,9 +619,9 @@ static void CfgConnectResult(tenuConnDisconnEvent enuConnDisconnEvent,
>                 u8P2Plocalrandom = 0x01;
>                 u8P2Precvrandom = 0x00;
>                 bWilc_ie = false;
> -               memset(priv->au8AssociatedBss, 0, ETH_ALEN);
> +               eth_zero_addr(priv->au8AssociatedBss);
>                 linux_wlan_set_bssid(priv->dev, NullBssid);
> -               memset(u8ConnectedSSID, 0, ETH_ALEN);
> +               eth_zero_addr(u8ConnectedSSID);
>
>                 /*Invalidate u8WLANChannel value on wlan0 disconnect*/
>                 if (!pstrWFIDrv->u8P2PConnect)
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1444024004-6326-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

