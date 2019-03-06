X-GM-THRID: 6664942000953884672
X-Received: by 2002:adf:ee01:: with SMTP id y1mr142604wrn.10.1551859149923;
        Tue, 05 Mar 2019 23:59:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b641:: with SMTP id g62ls93917wmf.11.canary-gmail; Tue,
 05 Mar 2019 23:59:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqzG1jDei/FbGC/M1vG+FJn3E9jc8uzKUnmd2onGsHCPrPMTfhqljgCT54UtDHgHH0scmfQ6
X-Received: by 2002:a7b:c0c8:: with SMTP id s8mr558191wmh.6.1551859149226;
        Tue, 05 Mar 2019 23:59:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551859149; cv=none;
        d=google.com; s=arc-20160816;
        b=vlLx2UmxP09YcO9ZLeEfiYuKBKQG+QBXEOcI9pFfaNvQ70bebZsci2eImiEFwsxecb
         vWrmGvm9lKdNe3EFssPqjbxOk0bDb2M6Ht7Eb2EZ1IrS5jrZ6gfSbeA/FcBUartjGYrq
         Im7LegkuxlEFNuK9BdR5nvflLYoMQQE7909u6lmABDsRyGsOBxu/qMxb1r5Sv5yrOjDa
         1B08jg8iciAfB6hwIUt789NP3dOpIKsPXb/zNoTYyve982+NFcEiHBVAGo7JK+d4xgrX
         31HGZGFd7MZ5mSTmQW9hb56xtjO3fWi4M63cii65j+J3oIQR0Rr+5r69cFvkvhiQFVNf
         eH7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=mLfaSrS/0Bmxy3frBLNTzBoNYiV88s14I79vbn+8qmA=;
        b=rgJqWWs93GmK+lyOQc3ObRlrJCmQ/paRh5zhq6TJENSKQRbdYbEux504zlQbKFHWjM
         j4YdLfb4uFLac1UKw4QpZgGYGiZPHuc2DiUjmADqqWK04mBLc+QyFjPhOn0+WiDYYN4V
         AiWjda3p1trQEpuKsW2cZre5U19zFttL8VyFLrSgcUeZgBeWuBLs3lf6fj0EB9C7cQW8
         0SEM9OIpQTKhJa8AbCQZ9y4juxTy7vhjQkLeXcog4T45l4qL1mVEzJvkfHcyqWz5INJW
         MofAgRrxDLaAt4aRBlH5KvTPP5o/N9rk7ewowVRlWo3XGZsnIJoIM/d8mh+U6JKTchTj
         BCng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m1si40195wrj.4.2019.03.05.23.59.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 23:59:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,446,1544482800"; 
   d="scan'208";a="298268162"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 08:59:08 +0100
Date: Wed, 6 Mar 2019 08:59:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] staging: fbtft: Remove unused
 #defines.
In-Reply-To: <20190306052313.GA3924@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.21.1903060857510.2706@hadrien>
References: <20190306052313.GA3924@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 6 Mar 2019, Bhagyashri Dighole wrote:

> Remove unused #defines detected by checkpatch.pl.

Does checkpatch detect unused defines?  I thought it highlighted this code
because of the came case issue.  Checkpatch uses regular expressions.  It
seems that it can now look at a series of lines, but I don't think it can
hunt around for things at arbitrary places in one or more files.

julia

>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v3:
>   -- Change the subject line according to log messages.
>   -- Remove extra spaces.
>
> Changes in v2:
>   - Remove unused macro.
>
>  drivers/staging/fbtft/fb_watterott.c | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> index 0a5206d..502d67f 100644
> --- a/drivers/staging/fbtft/fb_watterott.c
> +++ b/drivers/staging/fbtft/fb_watterott.c
> @@ -90,15 +90,9 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	return 0;
>  }
>
> -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
> -			   (((c) & 000600) >> 6) |\
> -			   (((c) & 0x001C) >> 2))
>  #define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
>  			   (((c) & 000700) >> 6) |\
>  			   (((c) & 0x0018) >> 3))
> -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
> -			   (((c) & 000700) >> 5) |\
> -			   (((c) & 0x001C) >> 2))
>
>  static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
>  {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190306052313.GA3924%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>

