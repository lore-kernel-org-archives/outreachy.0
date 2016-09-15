X-GM-THRID: 6330466800696819712
X-Received: by 10.46.0.208 with SMTP id e77mr1266397lji.7.1473927051566;
        Thu, 15 Sep 2016 01:10:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.131 with SMTP id e3ls262027lji.29.gmail; Thu, 15 Sep 2016
 01:10:50 -0700 (PDT)
X-Received: by 10.46.71.207 with SMTP id u198mr1259613lja.2.1473927050791;
        Thu, 15 Sep 2016 01:10:50 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a126si88930wmd.1.2016.09.15.01.10.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:10:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,338,1470693600"; 
   d="scan'208";a="193504798"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 10:10:49 +0200
Date: Thu, 15 Sep 2016 10:10:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com, linux-usb@vger.kernel.org, 
    Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 5/6] staging: lustre: Remove unnecessary
 'return'
In-Reply-To: <bfedf0128abd4c08512b015481be1d5fd1d0d01e.1473923837.git.aquannie@gmail.com>
Message-ID: <alpine.DEB.2.10.1609151010010.3045@hadrien>
References: <cover.1473923837.git.aquannie@gmail.com> <bfedf0128abd4c08512b015481be1d5fd1d0d01e.1473923837.git.aquannie@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 15 Sep 2016, Rehas Sachdeva wrote:

> Fixes checkpatch.pl warning:
> WARNING: void function return statements are not generally useful.

It would be better to say what you did, rather than saying fix.  Here you
could say:

Remove unnecessary void return at the end of a function.  Issue detected
by checkpatch.

julia


>
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/rw.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/lustre/lustre/llite/rw.c
> index bb85d16..23747fa 100644
> --- a/drivers/staging/lustre/lustre/llite/rw.c
> +++ b/drivers/staging/lustre/lustre/llite/rw.c
> @@ -667,7 +667,6 @@ static void ras_update_stride_detector(struct ll_readahead_state *ras,
>  	ras->ras_stride_length = stride_gap + ras->ras_consecutive_pages;
>
>  	RAS_CDEBUG(ras);
> -	return;
>  }
>
>  /* Stride Read-ahead window will be increased inc_len according to
> @@ -883,7 +882,6 @@ out_unlock:
>  	RAS_CDEBUG(ras);
>  	ras->ras_request_index++;
>  	spin_unlock(&ras->ras_lock);
> -	return;
>  }
>
>  int ll_writepage(struct page *vmpage, struct writeback_control *wbc)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/bfedf0128abd4c08512b015481be1d5fd1d0d01e.1473923837.git.aquannie%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

