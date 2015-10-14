X-GM-THRID: 6205445895815692288
X-Received: by 10.180.107.167 with SMTP id hd7mr1226442wib.6.1444847579020;
        Wed, 14 Oct 2015 11:32:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.166 with SMTP id hl6ls179615wib.54.gmail; Wed, 14 Oct
 2015 11:32:58 -0700 (PDT)
X-Received: by 10.180.10.202 with SMTP id k10mr5895175wib.2.1444847578664;
        Wed, 14 Oct 2015 11:32:58 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id ch7si367887wib.2.2015.10.14.11.32.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:32:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id p11so6593865wij.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=HfsK2YZ3UL9HTqlNWTbZrp7Ylv6zEPuBcmN1qOnU/C8=;
        b=NHUOjej4s1pM5o1eBLOKsIHAzSWzmuqlJD+7g9aJgpiCVU26xDCAyIqoQOt3Lizx0R
         hMVcNsYpKony4Xy7Squ455NbL7Yar1NNqBcQ/TJGfsxT6IaEAMhCkMxFTEWMjgAfQAaY
         LCqExb7vxPtOfHYryR0IqzmVjsJ5uVK0CJDhRsLPBm4JD916RTa2P5Fm20C/LoaQ1QjN
         lPomRxduxzDsBE58bOAba2AmklazV5erRgyAjqthSeNg7nsIa6AV8jFR7igCspS1u3AE
         8zCSsOst23sstZvIRBDzicn8XGBr+QgYCDnKuKdqaYB5k2nM2JE9ZKsyu3KvevczgqQU
         FVHA==
MIME-Version: 1.0
X-Received: by 10.180.90.166 with SMTP id bx6mr28064941wib.93.1444847578492;
 Wed, 14 Oct 2015 11:32:58 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 14 Oct 2015 11:32:58 -0700 (PDT)
In-Reply-To: <20151014101906.GA3935@ubuntu>
References: <20151014101906.GA3935@ubuntu>
Date: Wed, 14 Oct 2015 21:32:58 +0300
Message-ID: <CAEnQRZDrRmc3WbSZWfRL49uqtKJxjLbkPF+NRT3L5nKwVRyrhA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: rtl8723au: rtw_mlme_ext:
 Remove unnecessary test expression
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 1:19 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> Logical and-ing of a struct and its member should be replaced by the
> member only as the struct has already been NULL tested before.
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>

Fair enough.

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
> Changes in v3:
>         -Make commit message better.
>
>  drivers/staging/rtl8723au/core/rtw_mlme_ext.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
> index fca22ba..d28f29a 100644
> --- a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
> @@ -1715,7 +1715,7 @@ OnAssocReq23a(struct rtw_adapter *padapter, struct recv_frame *precv_frame)
>         spin_unlock_bh(&pstapriv->asoc_list_lock);
>
>         /*  now the station is qualified to join our BSS... */
> -       if (pstat && pstat->state & WIFI_FW_ASSOC_SUCCESS &&
> +       if (pstat->state & WIFI_FW_ASSOC_SUCCESS &&
>             status == WLAN_STATUS_SUCCESS) {
>                 /* 1 bss_cap_update & sta_info_update23a */
>                 bss_cap_update_on_sta_join23a(padapter, pstat);
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014101906.GA3935%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.

