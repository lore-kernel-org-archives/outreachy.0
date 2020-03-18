X-GM-THRID: 6805647461769543680
X-Received: by 2002:a19:ee13:: with SMTP id g19mr4048820lfb.205.1584563592115;
        Wed, 18 Mar 2020 13:33:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:96d9:: with SMTP id d25ls14409ljj.11.gmail; Wed, 18 Mar
 2020 13:33:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vteM1JeYLl7Px39Xgi6ik7NXqi1vrRdHrlLCmyAdkNsWx3J9EfnrbxRc7ThaZOKRZkbqaYQ
X-Received: by 2002:a05:651c:50e:: with SMTP id o14mr549872ljp.241.1584563590737;
        Wed, 18 Mar 2020 13:33:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584563590; cv=none;
        d=google.com; s=arc-20160816;
        b=t0fdwLHe+ONpdUD20Kv+f5ue1NLwhGD2E87ujgioGzpy4JaNr0v6hHfHqrQ9ZvoEKj
         QjDtSebNcq/Xp+yj0gGxAIvPiE3LVPM4kK32/IjBH/8oP0//k1PxZ5GN05t0VquucTIT
         cxSskPe1fVg1nQycqiHxY4gPWLyn2pFPBH/E9bG8VUb5UKWT+rWJ0NuR6jtBiMlaL6gC
         wlAr2sCxifBk43ZJKXfWQRk2uDD/hO5Z1XjOhDHhnNGwiuWbK43ugpElEyH25NKG9bxW
         HhFm/qOMYjENjHpdNo+hlpeJ9l5AxVqBGWoNH3petNG+OMvZDZ+gwkN6tvsrYFAyb4Qc
         G/9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=aZpdxZPvC2lGlmCDpaCczfZOLqDMbZjKCeP/v+0uIjo=;
        b=k1wm1xwREGg8Y4lsR2mnMpKwRTetnDJmwoFU2mu4b/vPgENNgDUyuJWBLzt38e+5ft
         9sQxgTGCHd8fUrIJ3QMk79T+SeJ5ZorK22BwzKeXuJOXYwKN9qVJdNM6zfaJdD+zG0Ev
         lugJp9g5wb0aWnq2B4fsWkC3i9EM2dpNbC8DhbUZvXgAUIy7WIcl0287wxu8/o3JoLqS
         6/M92QynQZxR/bh/YVCq3wegpQODyMMq79andpyEWDpb236vtC0knOx2JIrlHVj7yk4b
         fZBaVQKVsViMlHXnEsiPlLxmyDbze0tItGuxF1fsq4Xi36TF86keXKRLF6b6FQ/oPb4H
         FWIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b26si2754ljk.4.2020.03.18.13.33.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:33:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,568,1574118000"; 
   d="scan'208";a="342856104"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2020 21:33:09 +0100
Date: Wed, 18 Mar 2020 21:33:09 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: Elemenate anomalies
 in driver's coding style.
In-Reply-To: <20200318202747.4218-1-jane.pnx9@gmail.com>
Message-ID: <alpine.DEB.2.21.2003182131510.2979@hadrien>
References: <20200318202747.4218-1-jane.pnx9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 18 Mar 2020, Sam Muhammed wrote:

> This driver maintains a coding style of declaring variables
> and assigning values to them in separate lines.
> There are anomalies, elemenate them.

I think I was not clear.  When I suggested to do only one thing, rather
than starting with a series, I meant that you should do one or the other
of the things in your previous patch, but not both.  If you make multiple
changes to a file, they must be in a series, or Greg won't know in what
order to apply them.

julia


>
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 1795533cbd3a..8bf592812518 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -496,7 +496,8 @@ static int ql_get_mpi_shadow_regs(struct ql_adapter *qdev, u32 *buf)
>  static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
>  			   u32 offset, u32 count)
>  {
> -	int i, status = 0;
> +	int i;
> +	int status = 0;
>
>  	for (i = 0; i < count; i++, buf++) {
>  		status = ql_read_mpi_reg(qdev, offset + i, buf);
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200318202747.4218-1-jane.pnx9%40gmail.com.
>

