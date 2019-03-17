X-GM-THRID: 6669274004087373824
X-Received: by 2002:a2e:994b:: with SMTP id r11mr645386ljj.15.1552812475982;
        Sun, 17 Mar 2019 01:47:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9e18:: with SMTP id e24ls1676075ljk.9.gmail; Sun, 17 Mar
 2019 01:47:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzKX1zRFDH4VUttqhrj6quG/0Wlp6r16OVnoI8yjFRSVBllhAnwBRhFm/ld8Gm1/xu5WMGh
X-Received: by 2002:a2e:85cd:: with SMTP id h13mr592569ljj.8.1552812475275;
        Sun, 17 Mar 2019 01:47:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552812475; cv=none;
        d=google.com; s=arc-20160816;
        b=rji0ym7cLu1hZT6vbIhegU5j8u7yZSwpBPGbIrFucDnXhcFrCPNGEJVty5KU1aHhdA
         Ad6kyXqjJfdPB4M9d4L6QLjPWlDFKnrF4X3Yw4AQiB0dDzJrfrRQp0L+ZPqpoORE+ShD
         tqBGkr5LBjm7Isss+Jcjybm8erEq+C9yt3EaObqzzpYXcuFIOq9ooKqRmIxpxKqUxuDr
         QzIGMPS1HbAOybN1KHSQIGInnE8yErfdYXb4ZUVPDsDOZiTKLGQLtZBF9sMMnGZLdm1U
         Yj7Eqk1+V3ZcNmzdJ6DF7vVDApDVPiJ7SWLU20Nit1HIZ4pYKwNg5j9T6XSuOx7Uj/wH
         aaiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=u9bl0mJUCGHHj4YMV9dbsCsW9yBILf+d8XujzGKqS6g=;
        b=Vm+rlRpnOHJ9jSlU3m9ka8PW7sjjDyG8FVgjBSXJnwvqH25oYzfunrmXEW16u2oB+N
         Pq9NUYBrfovOdUyabwe7fyYc0SjnOZjoknKlslJkPLLCRU7Lr/bZajUYbGmOEGssfCjE
         79XJarf6a6NekaNCBIliAQCoSEGg1CeruhITLi8MbF8EnIWXxnMnm+QeFU4Am75vaTUc
         U2URr+TjTFxR2TpKDnAQaADjdTg9dS4sx9jan588/DF+K+37D8I0n+/uoANGCB3OAy5P
         fykZFy/P6PjUsFNff+DamVEeIzETpt5g3QfTMvKiDjVmSo/e+21LKH2M0Ixuk4xTZ97c
         b19Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y13si217060lfg.4.2019.03.17.01.47.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 01:47:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,489,1544482800"; 
   d="scan'208";a="299679044"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 09:47:54 +0100
Date: Sun, 17 Mar 2019 09:47:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sound: drivers: aloop.c:
 fix usage of '=' in 'if' condition.
In-Reply-To: <20190317082908.3246-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170947030.27672@hadrien>
References: <20190317082908.3246-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Sanjana Sanikommu wrote:

> fix usage of assignment operator '=' in if condition. Converted it into
> '=='. Issue found by checkpatch.pl semantic patch results for
> aloop.c.
>
> ERROR: Dont use assignment operator in if condition.

This is unlikely to be the right fix, as it massively changes the
semantics.  The correct change would be to move the assignment out of the
if to a preceding statement.

julia

>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  sound/drivers/mtpav.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/sound/drivers/mtpav.c b/sound/drivers/mtpav.c
> index 547662e02fcc..6e490ba50e83 100644
> --- a/sound/drivers/mtpav.c
> +++ b/sound/drivers/mtpav.c
> @@ -583,7 +583,7 @@ static irqreturn_t snd_mtpav_irqh(int irq, void *dev_id)
>   */
>  static int snd_mtpav_get_ISA(struct mtpav *mcard)
>  {
> -	if ((mcard->res_port = request_region(port, 3, "MotuMTPAV MIDI")) == NULL) {
> +	if ((mcard->res_port == request_region(port, 3, "MotuMTPAV MIDI")) == NULL) {
>  		snd_printk(KERN_ERR "MTVAP port 0x%lx is busy\n", port);
>  		return -EBUSY;
>  	}
> @@ -645,7 +645,7 @@ static int snd_mtpav_get_RAWMIDI(struct mtpav *mcard)
>  		hwports = 8;
>  	mcard->num_ports = hwports;
>
> -	if ((rval = snd_rawmidi_new(mcard->card, "MotuMIDI", 0,
> +	if ((rval == snd_rawmidi_new(mcard->card, "MotuMIDI", 0,
>  				    mcard->num_ports * 2 + MTPAV_PIDX_BROADCAST + 1,
>  				    mcard->num_ports * 2 + MTPAV_PIDX_BROADCAST + 1,
>  				    &mcard->rmidi)) < 0)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190317082908.3246-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

