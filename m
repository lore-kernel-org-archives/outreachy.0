X-GM-THRID: 6665628449675149312
X-Received: by 2002:a17:906:4312:: with SMTP id j18mr1798634ejm.12.1551991876696;
        Thu, 07 Mar 2019 12:51:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2a9b:: with SMTP id l27ls1437818eje.10.gmail; Thu,
 07 Mar 2019 12:51:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqzItk0DIrFlH4GC9a4uq3u2olbBKP17e90yaDO2l1FcxPuIyIsUV4sCvBLR2OfeZ/nlY8E1
X-Received: by 2002:a17:906:4312:: with SMTP id j18mr1798629ejm.12.1551991875922;
        Thu, 07 Mar 2019 12:51:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551991875; cv=none;
        d=google.com; s=arc-20160816;
        b=jhcHo574GkeuODrgx+tx5BKNzz9R/huNA64/x2NIfL17QEai9o7zjOTDi1h01AU5RY
         KJXZY+Vg/kwzS/ccu+KMWgwonf6fEDCr6agxCyzKwEnbfT16GFVLy3TcJi5ApWVyHbdm
         7orbQrgM2AMs/yT2/n9RtMAV9QWfZu2dH3BAFqScyHWQZUjwRThm+qPuU+XRAbgV9XHp
         6IyFIYKWJvhMAgvlEEzuxMa9DhEFjGNJtz9QG2gipFRVcP4+y9Vi1L13AK0K6UYyIu4G
         U+NA12uMoWQuSDl1L+7fZlDjouBuXNZ5vCJTpOjXnWH0lRcnw6z/ONgdudy9XO5XkV0l
         csog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=iFImMRMDfTydPycSGC93+kAQ0Jj+uxAQT4ifFSqQBbM=;
        b=HDQ6oaDKXSq3KHrtRRgeU40Faj5SUUMFcOIgWN0qowCPAj1TBsE1yPqCE1NkLqAZeu
         gCrdBGy9TU52zDBK+tgptBrBTSAkFW6ENNiZR67aW/54KVHy/HVhccnCFeqA+gvaQ3Ev
         orcd/YSErRo/FU8hTe5AqoQbBXbQCKAIwHsIPORR01ohlYC8MM5MQBycvV5zOVRS5yy7
         Q3oIuFaVPnBEvqaatThsj3EygmIJx0GUxiAy91HgVL+zM2zG6XYMYDVwGPb2k8dxqr9M
         hz6dadspc6TS7TqLiZJMQjBvkecF+KSIF2jThjueBgempsTYfWTNqG4GfhO9I29+nkO+
         FxoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a7si319603edb.1.2019.03.07.12.51.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:51:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,453,1544482800"; 
   d="scan'208";a="372411157"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2019 21:51:15 +0100
Date: Thu, 7 Mar 2019 21:51:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: vt6655: Remove an unused
 function
In-Reply-To: <20190307204254.8003-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903072150460.2558@hadrien>
References: <20190307204254.8003-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Mar 2019, Madhumitha Prabakaran wrote:

> Remove an unused function, as it is never called in kernel tree.
> ---
> Changes in v2 -
> - Converted patch series to a patch
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/vt6655/mac.c | 7 -------
>  drivers/staging/vt6655/mac.h | 2 --
>  2 files changed, 9 deletions(-)
>
> diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
> index 40a8f1ce837c..2f773fdf8d64 100644
> --- a/drivers/staging/vt6655/mac.c
> +++ b/drivers/staging/vt6655/mac.c
> @@ -57,13 +57,6 @@
>   * Return Value: true if all test bits On; otherwise false
>   *
>   */

The text above looks like a comment about this function.  If you are
removing this function, you should remove the comment too.

julia

> -bool MACbIsRegBitsOn(struct vnt_private *priv, unsigned char byRegOfs,
> -		     unsigned char byTestBits)
> -{
> -	void __iomem *io_base = priv->PortOffset;
> -
> -	return (ioread8(io_base + byRegOfs) & byTestBits) == byTestBits;
> -}
>
>  /*
>   * Description:
> diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
> index 59538ac09fc5..c7888c4e96f2 100644
> --- a/drivers/staging/vt6655/mac.h
> +++ b/drivers/staging/vt6655/mac.h
> @@ -876,8 +876,6 @@ do {								\
>  #define MACvSetRFLE_LatchBase(iobase)                                 \
>  	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
>
> -bool MACbIsRegBitsOn(struct vnt_private *priv, unsigned char byRegOfs,
> -		     unsigned char byTestBits);
>  bool MACbIsRegBitsOff(struct vnt_private *priv, unsigned char byRegOfs,
>  		      unsigned char byTestBits);
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190307204254.8003-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

