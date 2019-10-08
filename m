X-GM-THRID: 6745433279172706304
X-Received: by 2002:a50:d090:: with SMTP id v16mr34908929edd.176.1570552198416;
        Tue, 08 Oct 2019 09:29:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:a859:: with SMTP id dx25ls999343ejb.16.gmail; Tue,
 08 Oct 2019 09:29:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzu0dUh8juPKhryYmkAxFL2oG9uqj8WpMI0pZ1H5Km9ffQ0huCDAVKfFrOnTs9mxtuCIbN1
X-Received: by 2002:a17:906:b298:: with SMTP id q24mr29492622ejz.168.1570552197466;
        Tue, 08 Oct 2019 09:29:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570552197; cv=none;
        d=google.com; s=arc-20160816;
        b=romPHNyhbUXUsMBTF6KSVsl6n9jrpzc8VfTwVtt7qFYvLGUpay0UHR3/BSdE7osjvW
         cGzBkrrJ5m8vb24E4qsW1Lo6+r9yhXF/YQe8JV/9mPmJQvaey2kKaNor4HVRGOtScI0U
         k4KkOPFL8MUnCIgNcRbtMB2mWC6/CylX2C08SGUdgqeofajmzicNnJcrliZpTH6HTTmO
         dXYZ+ozXe+m1uta14hxktaJRRnRnIi1gk0mMiqzFpjjSvPv7DQ/utL7xGn6pHdNEONa+
         Jmbkbk5rY1oymEgI4AyDfGTUvSFR7kFv5OhQ3zN3KTxhRnH36Fo3ExbTyVl5MFvPtPEe
         USkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+xTbG6WBgu0bfAryFGpYnitcZlJuCUU+mrk8Ok/i/Eg=;
        b=o3ejALyOQddVRSLiT+F77MDuXzWwI8YlrRotC2I2erKwp7dk4s8AAINbq+ySrWA+BJ
         BXQANYo21OKd+0AiAUPle4JA99fH/p7ioIH0bV2wsj7j9/vr9EG5eYU4Jkn9imj3oC80
         0VtrrajWOFmcnMZsCMrnv4plzO29AbyMs5pXilHHXLWwFG7NXjZneuIGnQLs9xB3qORG
         IQ59lV11m6IlIWQIQGvXndgzIVdsVmSbtM4tL7nua5UIEZlTu2SWFPe78P5gIxm/gSGo
         60Twl+RQv57snAwdc/s9L9dib9Cm2S238M009a3xskIK4I9UwFpfaU+IRvkSWcqls3wG
         4vaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c31si1221818edb.0.2019.10.08.09.29.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Oct 2019 09:29:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,270,1566856800"; 
   d="scan'208";a="405292059"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Oct 2019 18:29:57 +0200
Date: Tue, 8 Oct 2019 18:29:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    matthias.bgg@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: mt7621-dma: add a blank line
 to fix checkpatch warning
In-Reply-To: <20191008140552.25639-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1910081829350.2508@hadrien>
References: <20191008140552.25639-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 8 Oct 2019, Jules Irenge wrote:

> Add blank line to fix missed blank line warning.
> Warning issued by checkpatch.pl tool:
> "WARNING: Missing a blank line after declarations".
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index d964642d95a3..e309923aed2c 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -157,6 +157,7 @@ struct mtk_hsdam_engine {
>  	struct device_dma_parameters dma_parms;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> +
>  	volatile unsigned long chan_issued;

This is also a declaration, so there should not be a blank line before it.

julia

>
>  	struct mtk_hsdma_chan chan[1];
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191008140552.25639-1-jbi.octave%40gmail.com.
>

