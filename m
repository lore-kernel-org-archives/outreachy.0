X-GM-THRID: 6392997475785900032
X-Received: by 10.46.83.7 with SMTP id h7mr228961ljb.24.1488530480294;
        Fri, 03 Mar 2017 00:41:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.81 with SMTP id i17ls203576ljd.41.gmail; Fri, 03 Mar 2017
 00:41:19 -0800 (PST)
X-Received: by 10.25.0.141 with SMTP id 135mr181607lfa.5.1488530479122;
        Fri, 03 Mar 2017 00:41:19 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si414604wmd.0.2017.03.03.00.41.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 00:41:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,236,1484002800"; 
   d="scan'208";a="215412569"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 09:41:18 +0100
Date: Fri, 3 Mar 2017 09:41:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, oleg.drokin@intel.com, marvin24@gmx.de, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 4/5] staging: rts5208: Remove
 unnecessary cast on void pointer
In-Reply-To: <20170303083130.GA25123@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1703030940340.3490@hadrien>
References: <20170303083130.GA25123@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

When you send a v2 for a patch in a series, you need to send a v2 for all
of the patches in the series.

julia

On Fri, 3 Mar 2017, simran singhal wrote:

> The following Coccinelle script was used to detect this:
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
> (
>   *((T *)e)
> |
>   ((T *)x)[...]
> |
>   ((T*)x)->f
> |
> - (T*)
>   e
> )
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>
>  v2:
>    -Moved buf to the previous line.
>
>  drivers/staging/rts5208/rtsx_transport.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
> index 2379901..8b57e17 100644
> --- a/drivers/staging/rts5208/rtsx_transport.c
> +++ b/drivers/staging/rts5208/rtsx_transport.c
> @@ -766,8 +766,7 @@ int rtsx_transfer_data(struct rtsx_chip *chip, u8 card, void *buf, size_t len,
>  		return -EIO;
>
>  	if (use_sg) {
> -		err = rtsx_transfer_sglist_adma(chip, card,
> -						(struct scatterlist *)buf,
> +		err = rtsx_transfer_sglist_adma(chip, card, buf,
>  						use_sg, dma_dir, timeout);
>  	} else {
>  		err = rtsx_transfer_buf(chip, card, buf, len, dma_dir, timeout);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170303083130.GA25123%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

