X-GM-THRID: 6802694026822680576
X-Received: by 2002:a05:600c:d7:: with SMTP id u23mr4116320wmm.145.1583876432367;
        Tue, 10 Mar 2020 14:40:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:2c03:: with SMTP id q3ls1301768wmg.0.gmail; Tue, 10
 Mar 2020 14:40:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv65aruFYK47CzytcQwRwSQNMrAN5ze6zgP4MbD43MQf5A66OeppJe+RA3iggmR1eIOPWyZ
X-Received: by 2002:a05:600c:290e:: with SMTP id i14mr4057548wmd.139.1583876430729;
        Tue, 10 Mar 2020 14:40:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583876430; cv=none;
        d=google.com; s=arc-20160816;
        b=h9VgCk0m0KJd97CAZNPdqdu4yiHA+J2jpANmrd1X+gAOmDvUNegtXFYkzEg5CNq+Ow
         rePalGLnUXyyuON1J5XHAGYFxfA7V9k7+OWx8jzBeC3usgCbNCl4ou1UPAhqVvbLUGQo
         It9xGMC5VGD0PsrtgkcLlNr8/Qsko7JvzpAxcfS6mhtzKfVYa0uwk7cDeBDY7CTQMo3m
         hYeDbsqVGOCdx0MX6Up/UEeWddRQb6w6IIy5gRWHyg1OdsF8MoOtjWW/+0ylqtgl4afn
         be3/FAiazR5DPhfRSuYI3oArkLBXxm/BPFLdAnL+DIjF0Q4IgWX5mgUSrrdk1/AngM5k
         /E5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=wXGz/ui0Wb4Qypl/+B0iYerIMYKHNck1JzF66I5z8M0=;
        b=c5FhhwbCReYhEeHIKCSPUEb+k1hUya1V9r6olpE2+TeOqk8OczevvFREnY05TdAxBg
         gFuSP1ZIhi9dELsMtnLQXL6FYSYVXhDYj72eF39NBaaBWWEKyw5wEp9OuuSeouLQrCBQ
         H3W3CVL+irf2MwBQAgMJIUU8hihRxJV1jhGTCTpYRQhDW3552IjzKEw87wB39uFjppKy
         H6J0cfWFJolPCzElP36J6XwgqFDs7HPRibJ9sDGWp4zEhbmzfPGNFmx69ffZEpYSWXwP
         iQnor/bui+JSKY4V0QmGRX1ECJImgRT4vTKQ+e5ID2ri1P70lQQawa2aHa0SIVvbFkon
         jQDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h15si242848wml.4.2020.03.10.14.40.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 14:40:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,538,1574118000"; 
   d="scan'208";a="341934285"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 22:40:03 +0100
Date: Tue, 10 Mar 2020 22:40:02 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: r8192U_wx: use
 netdev_warn() instead of printk()
In-Reply-To: <20200310212658.4075-1-lu@pplo.net>
Message-ID: <alpine.DEB.2.21.2003102239310.2313@hadrien>
References: <20200310212658.4075-1-lu@pplo.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 10 Mar 2020, Lourdes Pedrajas wrote:

> printk() is deprecated, use netdev_warn() instead, which is a message printing
> function for network devices, defined in include/linux/netdevice.h.
> Issue found by checkpatch.
>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
> Changes since v1:
>  - Replace message printing function pr_warn with network devices
>    specific, netdev_warn()
>
>  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> index 0118edb0b9ab..58c1a8da7a8d 100644
> --- a/drivers/staging/rtl8192u/r8192U_wx.c
> +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> @@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
>  				hwkey);                 /* KeyContent */
>
>  		} else {
> -			printk("wrong type in WEP, not WEP40 and WEP104\n");
> +			netdev_warn("wrong type in WEP, not WEP40 and WEP104\n");

This does not look correct.  Are you sure that you actually compiled this
file.  Ie, do you have a corresponding .o file?

julia

>  		}
>
>  	}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200310212658.4075-1-lu%40pplo.net.
>

