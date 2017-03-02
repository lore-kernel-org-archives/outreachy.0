X-GM-THRID: 6392997475785900032
X-Received: by 10.46.20.27 with SMTP id u27mr2502250ljd.4.1488491815816;
        Thu, 02 Mar 2017 13:56:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.155.194 with SMTP id d185ls154897lfe.2.gmail; Thu, 02 Mar
 2017 13:56:55 -0800 (PST)
X-Received: by 10.46.9.206 with SMTP id 197mr2322394ljj.12.1488491815321;
        Thu, 02 Mar 2017 13:56:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si310665wmd.0.2017.03.02.13.56.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:56:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,233,1484002800"; 
   d="scan'208";a="262893307"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 22:56:54 +0100
Date: Thu, 2 Mar 2017 22:56:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, oleg.drokin@intel.com, marvin24@gmx.de, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: rts5208: Remove unnecessary
 cast on void pointer
In-Reply-To: <1488489544-25941-4-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703022256190.2175@hadrien>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com> <1488489544-25941-4-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
> index 2379901..d745b93 100644
> --- a/drivers/staging/rts5208/rtsx_transport.c
> +++ b/drivers/staging/rts5208/rtsx_transport.c
> @@ -767,7 +767,7 @@ int rtsx_transfer_data(struct rtsx_chip *chip, u8 card, void *buf, size_t len,
>
>  	if (use_sg) {
>  		err = rtsx_transfer_sglist_adma(chip, card,
> -						(struct scatterlist *)buf,
> +						buf,

Here too, buf doesn't need its own line.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488489544-25941-4-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

