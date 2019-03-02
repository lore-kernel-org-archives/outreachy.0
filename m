X-GM-THRID: 6663862445889552384
X-Received: by 2002:adf:f08c:: with SMTP id n12mr529685wro.7.1551552055051;
        Sat, 02 Mar 2019 10:40:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2e0a:: with SMTP id u10ls699881wmu.10.canary-gmail; Sat,
 02 Mar 2019 10:40:54 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY0ikur3UNX6P+YBb3Yl0a95AwAAVFrn6v7npw2WZ9KPZS3PxkLE+FsTLKk/0XOvXsrl61v
X-Received: by 2002:a1c:a846:: with SMTP id r67mr706432wme.18.1551552054390;
        Sat, 02 Mar 2019 10:40:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551552054; cv=none;
        d=google.com; s=arc-20160816;
        b=FmmueCwLgtd+6i3/g9wl1lI43C6CQQTWUSgR5n4Pt364R3EqQRsyjglbdt5LnsBS8m
         sdBZ9u4gRMZAZE/mBuwH6M+Kzvx1iGk29bKNEmzttqtDjvdOakisNZ2PSlVgDbaPCPXR
         NlwnZYd9fpBMbpuD8CVx/u8f9LgjPAoUbqhoMVbjiZizYoLZXpvtf+lO5TMXjhwk64he
         yX8iZIbN+lkZ//Ajq4rSDhBHH1BUPuCG9URlCfYK9P7qYKWVpFbxdD/xFepthT9jAcaA
         6CJFDLtGMhtqdNfZNOgbxf/e9DGyzohSKgQp5QX7LKyCBbSBQdZ3CTfkWegyyWgJFHb3
         wv3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=l7PIdAb/S2J61qJLxFy88xrQqxZrjLhT+UIzRcbT7bY=;
        b=MSP135BZ9mFyx9k6Z1MssX89gOe8ExxFeNlX2XcifeR1uyZr0Mad4xPL7TBRq2mPUN
         uQRFhXMSnRvKLxhQNxJceiCvgQNuSk+5k+LAncuqqKpwOhVe7g60Kn9TPIAN+q69GLpS
         2P15AFyWQ7S4nq9UTJ8u59d4JpXpDeB8jXjhcqCUDz7JyvWtQKTBdluxWSc7yoOuApeR
         48eMbj00I1gydPcifuoJ25J7if3RebcMhcmEMmcoAoAxbs7qdM01yyYGwZ0hg8n3KuQX
         F3is6dm9VODG1DUKDbraKeHpn+Ch3NkQUx2d8nhSFReImSReRuMZq2qHAapYfTqUNnd6
         QjOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q192si53149wme.3.2019.03.02.10.40.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 10:40:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,432,1544482800"; 
   d="scan'208";a="371634886"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2019 19:40:53 +0100
Date: Sat, 2 Mar 2019 19:40:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Debleena Sen <idebleenasen@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Fixed Warning: line over 80
 characters
In-Reply-To: <1551551350-111229-1-git-send-email-idebleenasen@gmail.com>
Message-ID: <alpine.DEB.2.21.1903021937500.11898@hadrien>
References: <1551551350-111229-1-git-send-email-idebleenasen@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

You need a log message.  Even if everything seems obvious from the subject
line.  The subject line and the log message should be in the imperative.
So that would be Fix, rather than Fixed.

The log message should say what you have done and why.  Fix doesn't really
do either.  You have fixed something, but one doesn't know what change you
have made nor why you chose to make that change.

Presumably you found this issue using checkpatch.  So you could say "Issue
found using checkpatch" to make that clear.

julia

On Sat, 2 Mar 2019, Debleena Sen wrote:

> Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> ---
>  drivers/staging/pi433/rf69.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
> index e19b9ce..0c189a7 100644
> --- a/drivers/staging/pi433/rf69.c
> +++ b/drivers/staging/pi433/rf69.c
> @@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
>  {
>  	switch (flag) {
>  	case mode_switch_completed:
> -		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
> +		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
> +			MASK_IRQFLAGS1_MODE_READY);
>  	case ready_to_receive:
>  		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RX_READY);
>  	case ready_to_send:
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551551350-111229-1-git-send-email-idebleenasen%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

