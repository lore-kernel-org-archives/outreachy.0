X-GM-THRID: 6664640601666879488
X-Received: by 2002:a5d:5111:: with SMTP id s17mr1053511wrt.13.1551732889448;
        Mon, 04 Mar 2019 12:54:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:81cb:: with SMTP id 69ls3693586wra.10.gmail; Mon, 04 Mar
 2019 12:54:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqymQvfghXoUxLtmRca529UXvCbUvahWrUMf1oQhL3JXx1JqxH3pge3ggXmQV0AR0e+kLvIR
X-Received: by 2002:adf:b692:: with SMTP id j18mr1011499wre.8.1551732888601;
        Mon, 04 Mar 2019 12:54:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551732888; cv=none;
        d=google.com; s=arc-20160816;
        b=SdaXdiFyB/9khqmb4rUZLxczyd60uwGMcY7ED/jn2CQpgzWNDjOI9A/el9ej7U6hiE
         dnW0IbQOtkEIMmVddR9Yt8UmCVpXchx4WbGZK1O3yHuFeGYfvG9GMfvVrQVIXZ+iP6Ib
         wH4cxRF41GnAH5h0A5WUrWSrfHNZYmW1x1Ywjonf+z2fXvUuj5/q1rLTqGN+1AVP3Yh7
         ATgek12yWO+2JVE15RbE6YrCp9EFyOeB141oTqnMKAHwqX9HMMDxqkgOlCC/nWMs4yIe
         phnudqlkIVdR+H4wz0wkKVwiKxk8FzczT/DI46MgPZ83uB2lQ38JqMamN5S4rZEsnDv1
         UPQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0WqUJBDi/etI8rdGnADjkpoBqJrk3K2CjUXmuiWyuGM=;
        b=abFYmtEQnIqi37lvaLNLd2Mr94E4NdbySBu+d+eeOrI+Uar+353EmnCmjLv3pPLjlv
         j+Jpbclx1b05L5fzsrx+yMy6gJEqh4MNk727rh+AX0KbmjinZTbB257vfTbAb0KIIfsy
         lEkmxGeGx4tJPtKh2y0wqor0NwFLDPnBVuQ21L6mo0lxq42jQxhREIQWbvLJMjnuJjCG
         HYQ+SIVIknAcGKQc51db50Tx9Xj6glGDIUmv14OeqhRT4sgXkyoGVMoIr5H/RJHVY+u5
         EFqLUKErYLhDjKTZI9ytN9USUz5Na93bU9d1rewlcAvG5nObDCwojiOT6JBMzK4f6XEI
         ygFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g10si335714wmk.1.2019.03.04.12.54.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 12:54:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,441,1544482800"; 
   d="scan'208";a="298075836"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2019 21:54:47 +0100
Date: Mon, 4 Mar 2019 21:54:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Avoid multiple
 assignments
In-Reply-To: <20190304183110.3702-1-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903042153230.2591@hadrien>
References: <20190304183110.3702-1-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 5 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

Something is going wrong in how you are sending your mail.  This message
was put in the group's spam folder.  Maybe you are subscribed with a
different address?

julia



> Avoid multiple assignments in the same line. Issue found with
> Checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index e9f10c2669ea..739841c3b5d6 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -782,7 +782,8 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
>  		0x800f0 + (int)crtc->channel * 0x140;
>
>  	pr_info("crtc->cursor.mmio = %p\n", crtc->cursor.mmio);
> -	crtc->cursor.maxH = crtc->cursor.maxW = 64;
> +	crtc->cursor.maxW = 64;
> +	crtc->cursor.maxH = crtc->cursor.maxW;

Maybe it would be simpler to say = 64 both times?

julia

>  	crtc->cursor.size = crtc->cursor.maxH * crtc->cursor.maxW * 2 / 8;
>  	crtc->cursor.vstart = sm750_dev->pvMem + crtc->cursor.offset;
>
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304183110.3702-1-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

