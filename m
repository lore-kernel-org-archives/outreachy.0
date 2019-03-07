X-GM-THRID: 6665628449675149312
X-Received: by 2002:a37:2d46:: with SMTP id t67mr9932225qkh.43.1552047933382;
        Fri, 08 Mar 2019 04:25:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:acb6:: with SMTP id m51ls616136qvc.1.gmail; Fri, 08 Mar
 2019 04:25:32 -0800 (PST)
X-Received: by 2002:a0c:93f2:: with SMTP id g47mr10737343qvg.4.1552047932862;
        Fri, 08 Mar 2019 04:25:32 -0800 (PST)
Received: by 2002:ae9:f702:0:0:0:0:0 with SMTP id s2msqkg;
        Thu, 7 Mar 2019 05:21:42 -0800 (PST)
X-Google-Smtp-Source: APXvYqwn6ypHL4YlwRsXdTGXH9hoPtphCzXjox8Px5iuC6U08NzMkLvWTMI+hbH0w0RhD7fdfWIM
X-Received: by 2002:ac2:43ab:: with SMTP id t11mr246454lfl.13.1551964901565;
        Thu, 07 Mar 2019 05:21:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551964901; cv=none;
        d=google.com; s=arc-20160816;
        b=RavmjV8Wy0LVdQzDLrjpVUgg0EJU1pVkfrGGonsrVwWoc6kKfHsdYcuUjv4Zk8TKSu
         mi//vlstHzRboVxeDzPz4UXF1HVPzeBCEnZm6XpiQ20Yn7743NOn6w19uUJo+hFPrKcZ
         27U1e4DlH8OYy5om5uInZp/Hl9TrJNDX8QaWTgaKOhLv5iyPelhA8pu7/1orIemSnoW/
         izGX90P1jVCGmpgmF1KWwbbK0dah9h/2yAQSgNOpI8c8QHrXFKRTx2aN76zbvdrg8Tkp
         hKRns3RB0YV2EM1t1nxZeWYlyTu3HSEkyCsm25kXrq3OxwOINAW8UuHNLhkeJCZy+tEC
         15aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=uYqHOZXcNPrRsp/mvTn7d8Qxk5ke5hZsJkjFGaJtI9o=;
        b=NNzioVLVnB/O6okBMXjcCfN6d4rREL+CQgcijgYfThwHywLAo2W3B0cz34cVUKtlr2
         6J56oakN/3Cz34XzIn0FAYy9eBTxZFbMBOPDxUM/bP20K2KKKJrvQXCowe4T/iDRWSog
         kEeRfKz7psVVfxFjaouhe6ePi5EFKYBL+kCOnnSEgqLXRPxCXHhrumdtDvGJSwLZlUfz
         t3SDwosLJu5uyY/V+QdXG+LaCVKlW5b81/LGkAHDqoOOhERXJbHarNuNmXfIMf/7Qf2H
         N0R5Ra5UHZ+6xtlSBV0+btEICMZx49fEJ095NMXLAwh5NNzM9bym0GD2HX8KkicuyLYf
         YFew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y13si196732lfg.4.2019.03.07.05.21.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 05:21:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,451,1544482800"; 
   d="scan'208";a="298447183"
Received: from wifi-eduroam-85-233.paris.inria.fr ([128.93.85.233])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2019 14:21:40 +0100
Date: Thu, 7 Mar 2019 14:21:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Remove an unused
 function
In-Reply-To: <20190307124236.20430-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.20.1903071420470.5181@hadrien>
References: <20190307124236.20430-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Mar 2019, Madhumitha Prabakaran wrote:

> Remove an unused function to improve codebase.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/vt6655/mac.h | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
> index 99de843b4551..59538ac09fc5 100644
> --- a/drivers/staging/vt6655/mac.h
> +++ b/drivers/staging/vt6655/mac.h
> @@ -887,8 +887,6 @@ void MACvSetShortRetryLimit(struct vnt_private *priv,
>  			    unsigned char byRetryLimit);
>
>  void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
> -void MACvGetLongRetryLimit(struct vnt_private *priv,
> -			   unsigned char *pbyRetryLimit);

This is the prototype of a function.  Is there a definition somewhere?  If
so, it would be good to remove the definition at the same time.

julia

>
>  void MACvSetLoopbackMode(struct vnt_private *priv, unsigned char byLoopbackMode);
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190307124236.20430-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

