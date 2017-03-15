X-GM-THRID: 6397785232436625408
X-Received: by 10.25.196.68 with SMTP id u65mr767954lff.0.1489608486356;
        Wed, 15 Mar 2017 13:08:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.70 with SMTP id x6ls340377ljd.21.gmail; Wed, 15 Mar 2017
 13:08:04 -0700 (PDT)
X-Received: by 10.46.21.28 with SMTP id s28mr823027ljd.14.1489608484895;
        Wed, 15 Mar 2017 13:08:04 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si103292wmg.3.2017.03.15.13.08.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 13:08:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,170,1486422000"; 
   d="scan'208";a="264744016"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2017 21:08:03 +0100
Date: Wed, 15 Mar 2017 21:07:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: corbet@lwn.net, outreachy-kernel@googlegroups.com, 
    linux-doc@vger.kernel.org, Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Documentation: Fix typos
In-Reply-To: <20170315175811.4187-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703152107120.4005@hadrien>
References: <20170315175811.4187-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 15 Mar 2017, Tamara Diaconita wrote:

> Fix typos in sync_file.txt to make documentation grammatically correct.

It's a bit picky, but you are not making the text grammatically correct,
You are fixing spelling mistakes, but not changing any aspect of the
grammar.

julia

>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  Documentation/sync_file.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/sync_file.txt b/Documentation/sync_file.txt
> index 269681a..c3d033a 100644
> --- a/Documentation/sync_file.txt
> +++ b/Documentation/sync_file.txt
> @@ -37,7 +37,7 @@ dma_fence_signal(), when it has finished using (or processing) that buffer.
>  Out-fences are fences that the driver creates.
>
>  On the other hand if the driver receives fence(s) through a sync_file from
> -userspace we call these fence(s) 'in-fences'. Receiveing in-fences means that
> +userspace we call these fence(s) 'in-fences'. Receiving in-fences means that
>  we need to wait for the fence(s) to signal before using any buffer related to
>  the in-fences.
>
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170315175811.4187-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

