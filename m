X-GM-THRID: 6802338694226247680
X-Received: by 2002:adf:a50b:: with SMTP id i11mr27727317wrb.60.1583824953438;
        Tue, 10 Mar 2020 00:22:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:2c03:: with SMTP id q3ls1425284wmg.0.gmail; Tue, 10
 Mar 2020 00:22:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvpyTBjO30M6gmgKpAECy7DTcokNXPWDFaNomcf9ksxTInwmIdMTJNzPY7R0QUkUQSFGRd7
X-Received: by 2002:a1c:e918:: with SMTP id q24mr522148wmc.25.1583824952251;
        Tue, 10 Mar 2020 00:22:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583824952; cv=none;
        d=google.com; s=arc-20160816;
        b=nWlFGXkynFLEBSGV4TKn/+IiifXz3mcUS+KI0QctAUu35383YNV8TlkzIFhaZlBjyp
         VXzr1ez39/NPfgQ/7HsqDBbFJ38X1lgh5tDQQ6+IoPo+5v7iywOP98zv/toEB2/YtUqN
         8wL2G4xM4dmN1rkHtOk9FfAH1gq1MmeziGbfuJ18mXLly8UZMW7BpvxVUdL6pCbpeBVF
         KLHnEDtVghLm7plujstB73HAYrHAELSgs89xUAgLSX2hxylYJpqwh5G5yIbTzA7UYeHO
         snhWtIEkpMojC1DxTGyVQjjg6yW0A54QBx49T8BZIb00TE/aTyvUI2fW4hVWNPW7RK/Q
         jL0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=/uNm0LazB24LyqqGN5dX9rEzBVx+E0j+f0MTQJQpdhU=;
        b=ZnigzeZf5sQkV7oc/r3exCE93DFJTYHeTejfDkuKGoB6alB77FiS58+jTMOx0Uop8C
         Qh+laFeFXI5sOfy0rtik8wW92W7qBi0m8v2sqkG00gYINDkT/1k5BkcquUT4swTpHf1Q
         xMkGh1jjmG0auBXCUkMJR5K9VgCSYsqFOiqT6rRgofkd1P2DbgJtuC1gNMuaAffZ/2Cm
         VNxpRtOHNRXkksZRo231vF97JS4VEDC3XctO0uH4J7d975US8aHAJZWWzpMF/y3lGl85
         0ToIY/jIAFKB+nEJ8QIrwQAsrJCALiIER2Wd0XLvRMV2sLGkDQg2hArdzvFG9qwJQ3Vp
         /2qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n3si289537wrs.3.2020.03.10.00.22.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 00:22:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,535,1574118000"; 
   d="scan'208";a="439591707"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 08:22:31 +0100
Date: Tue, 10 Mar 2020 08:22:31 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Forest Bond <forest@alittletooquiet.net>, 
    =?ISO-8859-15?Q?J=E9r=F4me_Pouiller?= <jerome.pouiller@silabs.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: vt6656: remove variable
 declaration
In-Reply-To: <20200309222805.GA5524@kaaira-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.21.2003100819250.2455@hadrien>
References: <20200309222805.GA5524@kaaira-HP-Pavilion-Notebook>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



--- Please note the new email address ---


On Tue, 10 Mar 2020, Kaaira Gupta wrote:

> int ret is uneccesarily declared and initialised to 0. Return 0
> directly.
>
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/vt6656/card.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> index 7958fc165462..5592b558cbd4 100644
> --- a/drivers/staging/vt6656/card.c
> +++ b/drivers/staging/vt6656/card.c
> @@ -719,8 +719,6 @@ int vnt_radio_power_off(struct vnt_private *priv)
>   */
>  int vnt_radio_power_on(struct vnt_private *priv)
>  {
> -	int ret = 0;
> -
>  	vnt_exit_deep_sleep(priv);
>
>  	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> @@ -739,7 +737,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
>
>  	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
>
> -	return ret;
> +	return 0;
>  }

The change looks fine, but since the change has to do with the return
value, itcould be reasonable to adjust the comment about the return value
as well:

Return Value: true if success; otherwise false

Actually, the comment seems completely off, since the function does not
return either true or false.

julia

