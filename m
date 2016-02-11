X-GM-THRID: 6250067479758897152
X-Received: by 10.25.18.227 with SMTP id 96mr1400528lfs.4.1455210849525;
        Thu, 11 Feb 2016 09:14:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.7.2 with SMTP id 2ls294525lfh.89.gmail; Thu, 11 Feb 2016
 09:14:08 -0800 (PST)
X-Received: by 10.25.29.211 with SMTP id d202mr5719666lfd.7.1455210848726;
        Thu, 11 Feb 2016 09:14:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w128si992343wmd.0.2016.02.11.09.14.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:14:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,431,1449529200"; 
   d="scan'208";a="164375012"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Feb 2016 18:14:08 +0100
Date: Thu, 11 Feb 2016 18:14:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Remove unneeded
 parentheses on the right hand side of assignment
In-Reply-To: <20160211211314.GA4118@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.10.1602111813400.2517@hadrien>
References: <20160211211314.GA4118@janani-Inspiron-3521>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 11 Feb 2016, Janani Ravichandran wrote:

> Remove parentheses around the right hand side of assignments as they are
> not needed. Semantic patch used:
>
> @@
> expression a, b, c;
> @@
>
> (
>   a = (b == c)
> |
>   a =
> - (
>   b
> - )
> )
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/unisys/visorinput/visorinput.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/unisys/visorinput/visorinput.c b/drivers/staging/unisys/visorinput/visorinput.c
> index 38d4d5b..b85dc21 100644
> --- a/drivers/staging/unisys/visorinput/visorinput.c
> +++ b/drivers/staging/unisys/visorinput/visorinput.c
> @@ -468,7 +468,7 @@ handle_locking_key(struct input_dev *visorinput_dev,
>  		break;
>  	}
>  	if (led >= 0) {
> -		int old_state = (test_bit(led, visorinput_dev->led) != 0);
> +		int old_state = test_bit(led, visorinput_dev->led) != 0;

Maybe the parentheses are kind of nice in this case, due to the = on the
right hand side.

julia

>
>  		if (old_state != desired_state) {
>  			input_report_key(visorinput_dev, keycode, 1);
> --
> 2.5.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160211211314.GA4118%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
>

