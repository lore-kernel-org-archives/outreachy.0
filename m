X-GM-THRID: 6465312034582953984
X-Received: by 10.28.8.71 with SMTP id 68mr389744wmi.24.1505333450665;
        Wed, 13 Sep 2017 13:10:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.83 with SMTP id i80ls1130198wmf.5.canary-gmail; Wed, 13
 Sep 2017 13:10:49 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB3ToAyV7vH5J0Q+Ms1V1bTcbXSgzOm4at3lhHKJCuviMHYDEwAQo1yOeDkts1fo2KClnjo
X-Received: by 10.28.149.18 with SMTP id x18mr357532wmd.18.1505333449431;
        Wed, 13 Sep 2017 13:10:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505333449; cv=none;
        d=google.com; s=arc-20160816;
        b=eAALzgu6MnnKS3nyJSQur7/IPa97IjOUKZhaA2jtyT4lH/yFjhdVNCPvKxximZWgJa
         kRqfOhk5V9hJuOAMGwm28Rw68lPCAf5iS9asCd4N5UGNTtXjvAhh7N8SAdTnxMvoFrdI
         /OSjZoXcOPL4AeTUJBlrfrt23EuRGLpse+220FDz4CuhZY3ORONt1GMkiv74g6cqz4QF
         rqwms7jOIiqLYxMHbVb68RNBJBFg86eYwXdewIAG1y47yfC4aSfmTdiyk/7EjcdO/omq
         JHk7AgQd7N9clzF+BOBZKzF2azmRgJtYiCVDn/emuI5htq5R8L3GdkD1wvtruxOwLaht
         d89g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=16UiEpt35juJos8fnk2wWQnWpFzQlNvGRUK9o9wDHr8=;
        b=NRvrxOv7k3K26igfktYR5r80jGjHCeUAiDFTUOmEOdnGzTZX532MGz6/AEb834uO3u
         iI5NZDfSm8efsdZAuQuNqI9mxuAZwFM2/vYC/bX8pCqEhOeRcztgq7LToj51Q7DbXN0c
         O2JrSegTvmFzOufVhbcQ8YMPfyS/rYYMI66MYuHEHuaPggd1Au2Qbs68D0HW827quAVO
         8nSGVu7Uk44qqvRTzgD1AMJokBE+dm4T2sfB3QNLypyj+6ImumSe5GNft4TG+9SoGnvq
         hWNFstftwRJ/g0InUF5LQE/zlvdTNHl/1CZu3nxG1thre7W8bEZM3f3HZM+9BgkICfzO
         nYzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p200si112717wmg.4.2017.09.13.13.10.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 13:10:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,389,1500933600"; 
   d="scan'208";a="237391912"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 22:10:48 +0200
Date: Wed, 13 Sep 2017 22:10:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: Android: follow coding
 guidlines
In-Reply-To: <20170913171234.GA4052@manoharreddy>
Message-ID: <alpine.DEB.2.20.1709132210210.2920@hadrien>
References: <20170913171234.GA4052@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Keerthi Reddy wrote:

> - Add a new line after struct declaration
> - remove extra new line.
>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/android/ion/ion.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/android/ion/ion.h b/drivers/staging/android/ion/ion.h
> index 621e5f7..f5f9cd6 100644
> --- a/drivers/staging/android/ion/ion.h
> +++ b/drivers/staging/android/ion/ion.h
> @@ -86,6 +86,7 @@ struct ion_buffer {
>  	struct sg_table *sg_table;
>  	struct list_head attachments;
>  };
> +
>  void ion_buffer_destroy(struct ion_buffer *buffer);
>
>  /**
> @@ -299,7 +300,6 @@ size_t ion_heap_freelist_shrink(struct ion_heap *heap,
>   */
>  size_t ion_heap_freelist_size(struct ion_heap *heap);
>
> -
>  /**
>   * functions for creating and destroying a heap pool -- allows you
>   * to keep a pool of pre allocated memory to use from your heap.  Keeping
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170913171234.GA4052%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>

