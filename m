X-GM-THRID: 6804610075497332736
X-Received: by 2002:a7b:cb42:: with SMTP id v2mr26820669wmj.170.1584342219540;
        Mon, 16 Mar 2020 00:03:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f8d1:: with SMTP id f17ls8887789wrq.3.gmail; Mon, 16 Mar
 2020 00:03:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvPz1z01A2NTIWM5cMjvAoOlpE6/FEO112kHJisVkTTMxr0gnBtx2esAVwdxP1xDHZWTcwz
X-Received: by 2002:a5d:69c1:: with SMTP id s1mr24095113wrw.351.1584342217924;
        Mon, 16 Mar 2020 00:03:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584342217; cv=none;
        d=google.com; s=arc-20160816;
        b=ukeXH70FOPqC91/BIfmlhAvFCU/MnOjRiqRPcF7p3tk6i1tFQSzkqLwPKZtV19n8Sg
         FN/sMXUxeUCl5D6XDM7MUZmHmxD2uAfOpUwuFwr0tFticSyxNryV9LM0hQ/WDhPKndyw
         q/PMlTWiwf8K+RvX5jGUo2v5kPx3ccIHzlKLDxwyyaIBKt4Qx7pGTlHY6Jp7/fmqbVdC
         c2Ykfo0O8PRbq5KPcYX2+ou9MThP5oFEIhTTbx3mnHc2qcvXuCkUSkqiYlxy90OpPQlJ
         MbogeiQtaP3M5qMPPh3GaTXgHgivBEIbmovo1rV4OffT/Rv7gm6B8iwyokHOdywAMoTt
         1aFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rSMuxVMoDThIRjQiE8jgtgQGXbSoG4ggXxz28IaXqNg=;
        b=E9Xu1/Us/wGrzX+FXDt+f/JkaIaEha16wFsQ7WmF/qpjpmZXt/KI6/ViTcKVcyaGOY
         aWSwxR+sn6J4hGUmZVMDsU3AEHmgZo1VDAhDkNsv8DNClWB5NEvsdZhQMDFImULb29Us
         U+BYOYBKrjjQ1IAsMnRCHA6SoWZPJZas/6ssoT4kyXCSGq4jYvtz4zd0+h08/bZBFYc1
         reeHPKrSPUw9gh+J8g30gDi2+A3Gqmjfa5pZVqNPkb+TjB4qgF/x9wLUXJ7VSssvZ1w+
         i2MQVyQcUEr7twuLVIrzNsk/pJV3DAyQxVPxt+CG800YMmMGw8FPtB3RX4XCB4EsedpQ
         Ibxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l13si770179wrp.2.2020.03.16.00.03.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 00:03:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,559,1574118000"; 
   d="scan'208";a="342454313"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 08:03:37 +0100
Date: Mon, 16 Mar 2020 08:03:37 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com, Stefano Brivio <sbrivio@redhat.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Fix line going over
 80 characters
In-Reply-To: <20200316012148.1200745-1-jbwyatt4@gmail.com>
Message-ID: <alpine.DEB.2.21.2003160801570.2415@hadrien>
References: <20200316012148.1200745-1-jbwyatt4@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 15 Mar 2020, John B. Wyatt IV wrote:

> Added a newline before the second argument for style, readability,
> and consistency.

Added -> Add to make the comment be in the imperative.

> Please note checkpath reports the third argument as being over 80
> characters, but not the second argument.

I think that checkpatch is careful about strings, because while exceeding
80 characters is discouraged, adding newline in the middle of a strong or
breakingup a string into two parts is even more discouraged.  You made the
right choice here though.

julia

>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x_usb.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> index b71756ab0394..f8485601aead 100644
> --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> @@ -3317,7 +3317,8 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
>  		break;
>
>  	default:
> -		netdev_warn(hw->wlandev->netdev, "Received frame on unsupported port=%d\n",
> +		netdev_warn(hw->wlandev->netdev,
> +			    "Received frame on unsupported port=%d\n",
>  			    HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status));
>  		break;
>  	}
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200316012148.1200745-1-jbwyatt4%40gmail.com.
>

