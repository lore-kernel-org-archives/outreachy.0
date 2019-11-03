X-GM-THRID: 6755114272133480448
X-Received: by 2002:a17:906:6a06:: with SMTP id o6mr19742633ejr.89.1572797775937;
        Sun, 03 Nov 2019 08:16:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6a4f:: with SMTP id n15ls3203496ejs.0.gmail; Sun, 03
 Nov 2019 08:16:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqyji2MdSXZTdvq6p9Uc8rVQTiZKVZm9+1qRk8yWF0uWEck10CcUW/+JLlbCVpgWzkTJAkpk
X-Received: by 2002:a17:906:8054:: with SMTP id x20mr2098369ejw.68.1572797775063;
        Sun, 03 Nov 2019 08:16:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572797775; cv=none;
        d=google.com; s=arc-20160816;
        b=QQ9CsA5c0V4fPDHVdKpSkJrJgYXN09Azn4C1PhYeJrNZiItTIUYW9s3ZC1B4wo+SwW
         Ta8HsSb9PB15IyqjdtZixgQ0VOqFYUwEBniYh3xYwkaMpGK1bc4s0SchbkejOM11VZuV
         7Z3IGZGB22VOFfCV+rdr5Yg2aWdgQY7ilZi4szhB/Eud81vBP+a5TC+jBct/a512dhaA
         AK8v35QTq0N7FIrNBF5X1TskzziNIDJ6PMDd6uqUbsotRC3VlSoDOWEaRpK9vi0tcYQY
         XoxqXGjhOV6tktBnBLfuPNdU+9e9eE7S+k/HsNYPY7mHLpWT3CfYEiv8rFNJToq85A2A
         aZ9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=mLI8cJ9y1lFlB6mTbgP90c8pfjmtWE8st2dJl8Qk4Yk=;
        b=B/yPdJixdxMNfkOXHTGCye1L8En/NqIsIpu343/W0b99LtEGPEkxwVzTy6NPqwtqrz
         CE5C7HLgZbZ+82SIFn/9ZMRUUdR0fRpjZSXojZnaI/TP5jpPtai+xiYyXaevdSoHiimb
         tEaNAV2aLdOz4FECalFNa2rOHQn4mf3fTbTO7siSzWPm5wo0KcVT/j/MvgT6og2UpHes
         jm9ssV5op9+NsjYmvg5usp8HDcNplNZlrRwMg7tfMA42g4FbdI7yoZJnj14MuZLp33dR
         cqX34KxgbSMmeVkPB8SEJKGvgTpBQQxhkl4sxGD3XBOrrEKC+n6gwR07KaqktI4TsfCr
         yTkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l37si908508edc.2.2019.11.03.08.16.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 08:16:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,263,1569276000"; 
   d="scan'208";a="325435501"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2019 17:16:14 +0100
Date: Sun, 3 Nov 2019 17:16:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Evan Chime <chime.evan.dri.devel@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    laurent.pinchart@ideasonboard.com, mchehab@kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] Staging: media: omap4iss: Add
 comment to memory barrier
In-Reply-To: <62b034d416bc0b0f2fc2a10c225bcf1441b4eecc.1572797322.git.chime.evan.dri.devel@gmail.com>
Message-ID: <alpine.DEB.2.21.1911031716020.2557@hadrien>
References: <cover.1572797322.git.chime.evan.dri.devel@gmail.com> <62b034d416bc0b0f2fc2a10c225bcf1441b4eecc.1572797322.git.chime.evan.dri.devel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Nov 2019, Evan Chime wrote:

> Fix "WARNING: memory barrier without comment" from checkpath. Add comment
> to memory barrier smp_wmb() on line 660
>
> Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> ---
>  drivers/staging/media/omap4iss/iss.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index ce34c19874c7..85b0d9cbaa14 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -657,7 +657,7 @@ int omap4iss_module_sync_idle(struct media_entity *me, wait_queue_head_t *wait,
>  	if (!wait_event_timeout(*wait, !atomic_read(stopping),
>  				msecs_to_jiffies(1000))) {
>  		atomic_set(stopping, 0);
> -		smp_wmb();
> +		smp_wmb(); /* Prevent stores reordering across the barrier */

Which stores?

julia

>  		return -ETIMEDOUT;
>  	}
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/62b034d416bc0b0f2fc2a10c225bcf1441b4eecc.1572797322.git.chime.evan.dri.devel%40gmail.com.
>

