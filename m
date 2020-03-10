X-GM-THRID: 6802680075948916736
X-Received: by 2002:adf:fe41:: with SMTP id m1mr14025710wrs.355.1583872972477;
        Tue, 10 Mar 2020 13:42:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:498c:: with SMTP id r12ls4815910wrq.10.gmail; Tue, 10
 Mar 2020 13:42:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuGlXIYuNy4J1Fz75bGPpRT5gFGShW7hQTitUb8N4p9gzp3FivFbuzRJpVgQz65RkaDcy0J
X-Received: by 2002:adf:ed09:: with SMTP id a9mr13115310wro.307.1583872970963;
        Tue, 10 Mar 2020 13:42:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583872970; cv=none;
        d=google.com; s=arc-20160816;
        b=O7+ZJ/BrUfXS+W1v8+oTvhWWn+DaDqW8dibVlnV5ESrioje8MCwO8+jT6h0PE4Ri2b
         qNKi8R3IRr44rBPMO6gibRGIghGaitN80Mwaw5ZaFGwcXHnW4hDdLYdf6+1cNvhU2sfs
         pN8X2V8BaKeEuur/90HeVcHxkL+gmTfGxOsQNZS8Rqd1PUDi+8ta7b5l+5JL+UfC2BUc
         QhXG97dveV2yJdslcXDruGCk7RHtSoz9YJ44Xhl2fxzxRFdKXP8+dM+5qewWraQ49qN0
         N7eQjFsepwUpjvkQ0TDRaF25xehPv4yTT1Cs/+dZ5ODHQZlUAsYZCUwxVo9UOy7AD1+g
         ueTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Ok6d1xoRuuIiXg97BBUD0uh4ng0DOtVx30UgKPoLVgA=;
        b=zmX4EMyyb9qj56Cq5r2Q3JWpSquKQwQal4su1fppUQONNu3dMvMch13E8KJ+L0zfOv
         VZX+PFaKhnQm+KclpDgE98tAqQjI9y/aIvZ9f/SgNDv4RI9iz7hBZPJ013w77K7E++w6
         RtA3LyAPJldZNpDFqMOrkXyliGq7PenvwTU6sMIMmuBaW1PlDcwEyAOwS/zLlSAZpVKo
         2GFERpH6c25adYelNk5lSCw0fFM0JvxvoBiO2aMIJcs28pA1DKp1hYxXu6l9OZCIQ6Hy
         lwBwZRhxFYUmXknFxa63gOuqugaHIeDiVjdwfQ+uR6cduuR/krtEs42BpTpR9aZnOL/D
         CVtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h15si235839wml.4.2020.03.10.13.42.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 13:42:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,538,1574118000"; 
   d="scan'208";a="341931325"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 21:42:50 +0100
Date: Tue, 10 Mar 2020 21:42:50 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: r8192U_wx: use
 pr_warn instead() of printk()
In-Reply-To: <20200310203251.2961-1-lu@pplo.net>
Message-ID: <alpine.DEB.2.21.2003102141390.2313@hadrien>
References: <20200310203251.2961-1-lu@pplo.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 10 Mar 2020, Lourdes Pedrajas wrote:

> printk() is deprecated, use pr_warn() instead. Change suggested by
> checkpatch.
>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> index 0118edb0b9ab..09ab68865934 100644
> --- a/drivers/staging/rtl8192u/r8192U_wx.c
> +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> @@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
>  				hwkey);                 /* KeyContent */
>
>  		} else {
> -			printk("wrong type in WEP, not WEP40 and WEP104\n");
> +			pr_warn("wrong type in WEP, not WEP40 and WEP104\n");

There is a specific message printing function for network device drivers.

To find out what it is, you can probably go to drivers/net and do a git
grep for warn, or something like that.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200310203251.2961-1-lu%40pplo.net.
>

