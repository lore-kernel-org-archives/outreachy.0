X-GM-THRID: 6754520121946931200
X-Received: by 2002:a17:906:557:: with SMTP id k23mr13612549eja.165.1572684250275;
        Sat, 02 Nov 2019 01:44:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c0cc:: with SMTP id j12ls1928107edp.10.gmail; Sat, 02
 Nov 2019 01:44:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwO9i6vd1u9CSy4NmaH45+mDtLz/CLvdFM1MDNmvSRKaIaWYqSi6vcPVuKm/tsBNPCGfx44
X-Received: by 2002:a50:ac1c:: with SMTP id v28mr17879357edc.156.1572684249479;
        Sat, 02 Nov 2019 01:44:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572684249; cv=none;
        d=google.com; s=arc-20160816;
        b=q43z2Lqx254q/DgNv4gU/j9k8Mv/sio+aotgJn66dOjUaQDq6xmfatM26f3U+YigAf
         KFRyzW86neao3fDX+zAcD2bhcRkBl1dPqtx2AbyyPtd2NWrBVGirOoA8RkM+rCVzcV1l
         IiThzcLUn9vkITVLNVNi0l20psvSnYIVJfGowzGnkVwTB4vA9rH6HEt3eBq5rkp0RQlB
         1xmT/hEslpystuWJslopDR44LGbiKMhXopTuQNImQbZqRV/KpcsJYkxcEPYcarT0T8eU
         6qgwQMgJDPyyYn/vfu/hFh1ApuEvUy3MiNbmjmHmJVjSU5vRx7H5bEdln1jt/s5GQYjZ
         5KaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qK5I3SarWAswN+9vHhE0nwOCCzKj1Yzo/ElwqzVri3Q=;
        b=u8Z93hBPx+PZVhhx95xqRKgIlRB1qQN3BmIeoExWRAb0toHIEgezXvwjzOydCCMY5Z
         n66ccr159QeJpXDNCkLJm5nh/1XC8BU6kWolhba0AOuazTZGzz7VwHzfiwgrHvee0YPk
         dY0eaGffVhvNDl72NG+4n+AvjdG6iUHO1H2vfnH0uDaFmU8aAe4L4NAow9C6VihS1gKT
         Y06FE1C4HxYfQeaNGsipUdul4r9CkldwcZDjk9d/aCfLEDwC5irycRtQS2y7uCfc8K3C
         fNlb4/qdUogAcjIn5Ibo2ieokLKvPL3IkPAtUoOf0jE7RPaOrHL3nSjtO4T5cRnO1nMc
         QTiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c28si555058eda.4.2019.11.02.01.44.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 01:44:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,258,1569276000"; 
   d="scan'208";a="409975135"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2019 09:44:09 +0100
Date: Sat, 2 Nov 2019 09:44:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH V2] media: staging/intel-ipu3: Fix
 assignment warning
In-Reply-To: <20191102014741.bjt23bzuz6coijgo@gmail.com>
Message-ID: <alpine.DEB.2.21.1911020943140.8826@hadrien>
References: <20191102014741.bjt23bzuz6coijgo@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 1 Nov 2019, Javier F. Arias wrote:

> This patch fixes a warning by replacing the integer value with
> a boolean.

Try one more time and use the imperative.

Starting with "This patch" is not a good idea.  We know that it is a patch
:)  Start with something more informative.

julia

> Issue found by Coccinelle.
>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
> Changes in V2:
> 	- Edit the commit message and description.
>
>  drivers/staging/media/ipu3/ipu3-css.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/ipu3/ipu3-css.c b/drivers/staging/media/ipu3/ipu3-css.c
> index fd1ed84c400c..f36de501edc6 100644
> --- a/drivers/staging/media/ipu3/ipu3-css.c
> +++ b/drivers/staging/media/ipu3/ipu3-css.c
> @@ -1450,7 +1450,7 @@ bool imgu_css_pipe_queue_empty(struct imgu_css *css, unsigned int pipe)
>  bool imgu_css_queue_empty(struct imgu_css *css)
>  {
>  	unsigned int pipe;
> -	bool ret = 0;
> +	bool ret = false;
>
>  	for (pipe = 0; pipe < IMGU_MAX_PIPE_NUM; pipe++)
>  		ret &= imgu_css_pipe_queue_empty(css, pipe);
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191102014741.bjt23bzuz6coijgo%40gmail.com.
>

