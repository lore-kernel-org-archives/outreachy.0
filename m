X-GM-THRID: 6341570941829513216
X-Received: by 10.194.6.227 with SMTP id e3mr437814wja.11.1476512220194;
        Fri, 14 Oct 2016 23:17:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.74.215 with SMTP id x206ls1598088lfa.52.gmail; Fri, 14 Oct
 2016 23:16:59 -0700 (PDT)
X-Received: by 10.25.41.16 with SMTP id p16mr435789lfp.3.1476512219178;
        Fri, 14 Oct 2016 23:16:59 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r128si59424wmf.3.2016.10.14.23.16.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 23:16:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,496,1473112800"; 
   d="scan'208";a="240875374"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2016 08:16:58 +0200
Date: Sat, 15 Oct 2016 08:16:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    labbott@redhat.com, sumit.semwal@linaro.org, arve@android.com, 
    riandrews@android.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: android: ion: constify
 dma_buf_ops structure
In-Reply-To: <1476512028-2583-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.20.1610150816200.9092@hadrien>
References: <1476512028-2583-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sat, 15 Oct 2016, Bhumika Goyal wrote:

> The dma_buf_ops structure is stored in the ops field of a
> dma_buf_export_info structure and also used as a condition inside the
> if() statement. The if condition does not modify its value and the
> ops field is of type const struct *dma_buf_ops, so dma_buf_ops
> structures having this property can be declared as const.
>
> File size before:
>    text	   data	    bss	    dec	    hex	filename
>   14471	    819	    224	  15514	   3c9a
> drivers/staging/android/ion/ion.o
>
> File size after:
>    text	   data	    bss	    dec	    hex	filename
>   14599	    707	    224	  15530	   3caa
> drivers/staging/android/ion/ion.o
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/android/ion/ion.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
> index 396ded5..45eceea 100644
> --- a/drivers/staging/android/ion/ion.c
> +++ b/drivers/staging/android/ion/ion.c
> @@ -1013,7 +1013,7 @@ static int ion_dma_buf_end_cpu_access(struct dma_buf *dmabuf,
>  	return 0;
>  }
>
> -static struct dma_buf_ops dma_buf_ops = {
> +static const struct dma_buf_ops dma_buf_ops = {
>  	.map_dma_buf = ion_map_dma_buf,
>  	.unmap_dma_buf = ion_unmap_dma_buf,
>  	.mmap = ion_mmap,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1476512028-2583-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

