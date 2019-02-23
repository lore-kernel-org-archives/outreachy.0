X-GM-THRID: 6661107741495394304
X-Received: by 2002:a7b:c0d8:: with SMTP id s24mr564083wmh.11.1550930871206;
        Sat, 23 Feb 2019 06:07:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:81cb:: with SMTP id 69ls24179wra.10.gmail; Sat, 23 Feb
 2019 06:07:50 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYvpekxNcUYxOYfunkSltRVvoudfxfE4ipzp/9Wmal7XI+oz79FgGZp61nxcdtfBCLccuGC
X-Received: by 2002:adf:9f42:: with SMTP id f2mr469442wrg.25.1550930870337;
        Sat, 23 Feb 2019 06:07:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550930870; cv=none;
        d=google.com; s=arc-20160816;
        b=SWSIQoVBfHyDpsR+lkuPuaWevuv5h7J2YExeJGQfLkx03DrnVBa/dq2qegYc/YtZFX
         9ca9KjYjhJX2YpuOxyyXEwZkyeHWXSs5n/V2GMKaQVVv57Oz8ABn1uSD212apLAGxDgg
         OYBYu7IF/hRNUhSL6Pzyez/5veBHXmf+hsskaUNz2pIsVUs7BPlqPWB8BOnZyi0MDY6B
         wHeoSo9XX40LFB44S8HITDAs0EzskrKc8d7R9ZlTzY89eTq50N7iNRThxg6NAMvIBNuB
         PWSlaGL/LORzHVfT4dyEY4I6xC4CAt/tlRBQgBLPPbN8hPG+zvHwE/9Tp+mqwKHby4U3
         1q3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=14HTcvlMFzz1uZy3xL6fu3eT/rKhBuIJMQ19QMNPvSA=;
        b=c3k5zfRrs04/hZkNOmum3tfYvLeYyvNNpxaABa6QjAjkcAEdQJMJtiD0qYR/JVJG8x
         velllayboUcRBod/kF1QlndOwI/cHfRR+tXfHY3aFbxK4MDQXKRyk9l/jv3CAm7AA1KH
         hlcxwgtnvYK2Cl2ruKfFiTBkedP+xj8YwpDg3W+qsmF7H+1Ob7jjyUFgle8ovNUXhOpl
         4pTICSQ2d0+UfwD7hJ2ZyzeOEHvPUNx5dejKI+KQ/AHOIJ8Rq0/gcH7VWEgmQ4wkwBdc
         LITaQ8XYcO2nDzLv8y+6qaRC/Hz903kAzwoe5626YFS6HlEbXV0PJGWQAP2kvWJFpm07
         22Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f2si203946wrq.5.2019.02.23.06.07.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 06:07:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,404,1544482800"; 
   d="scan'208";a="370610022"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2019 15:07:33 +0100
Date: Sat, 23 Feb 2019 15:07:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: mt7621_dma: Prefer
 unsigned int over just unsigned
In-Reply-To: <20190223081941.9629-3-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1902231506310.2551@hadrien>
References: <20190223081941.9629-1-bhanusreemahesh@gmail.com> <20190223081941.9629-3-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Feb 2019, Bhanusree Pola wrote:

> Fixes checkpatch.pl warning:
> WARNING: Prefer 'unsigned int' to bare use of 'unsigned'

Log messages are supposed to be in the imperative.  So here it should be
"Fix ...".  But it would be even better to come up with a description that
says something other than Fix.  Explain what you have done and why.

julia

>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index 54bf89e2f629..fa7631cfbb78 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -191,7 +191,7 @@ static inline u32 mtk_hsdma_read(struct mtk_hsdam_engine *hsdma, u32 reg)
>  }
>
>  static inline void mtk_hsdma_write(struct mtk_hsdam_engine *hsdma,
> -				   unsigned reg, u32 val)
> +				   unsigned int reg, u32 val)
>  {
>  	writel(val, hsdma->base + reg);
>  }
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190223081941.9629-3-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

