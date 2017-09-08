X-GM-THRID: 6463324440693309440
X-Received: by 10.223.152.207 with SMTP id w73mr119810wrb.13.1504860411904;
        Fri, 08 Sep 2017 01:46:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.66 with SMTP id 2ls156692ljv.54.gmail; Fri, 08 Sep 2017
 01:46:51 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD5IFg43b4PDDzZNQRJed1gBfhcodZCbXlQvRyBXO/t/4w0pZxwiQVRlgYY7j4EWyr2HOBk
X-Received: by 10.25.67.88 with SMTP id m24mr163070lfj.9.1504860411032;
        Fri, 08 Sep 2017 01:46:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504860410; cv=none;
        d=google.com; s=arc-20160816;
        b=GzYq72KCuiLkGKNEodZpPr4aDD8VezHz3c0xPXoktkVMDEq9jTwW4SdAtUkUGNZBQB
         37Pz2RVNBZCn9X3Fqg6HC9Vral05ndPgmPg7Qte9N6ktqzRdyhiz60izp7CPDkfHvBgD
         R+anSgeuo0vsn0ievDB0/R55X0Z04UThj0t8J2C8/IHeTe6+6zzxdPQzYkLOLK9dd8A+
         8jHuqicPwHWM1/F5yOGkpe+6wLhB7cJz+5D+mnH4TSKVEYE21i7qsLV4s/aY/qFprl1C
         m6tB3SlvYjGxluamN6HHzSO3mkaPUPnoVOiwT4tVqybiwpuCDwBGYPlIBnZg2osDboER
         DKzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=xhS7QcPOKyf/eKsxDKj8rzy/HSiziiYa26/9tgfwYzo=;
        b=tuTD+TM6qIhUrF4dGrHAB7xj5rk34azCPfLL+t6vEecsa8bmil/QZc3Lo3xouJZlgN
         /QO/TM3EPigaDW6TKANSSm0mHkkKHbgQIxI31lkIvAVmTlbcXRvT9byrpHhg1tMvbe9c
         ZXTSUFtEnF1BAgWnPohpjvE3IOO4Pr5W4MEZZGVr9x5wRe375FNEKZA/q70L6/YaySwn
         qM+jOdwLG5qft9YWY75agWen4ycwry4Us8HeiWqt5PLOzvvlQpFZeKcWlFDO3/nadT6x
         4qxDpwgJcLxEL7Xjsr7439gHWr+4kOlRoo7Dh8r2inn5BUPBJS/g0LsgQyf20k0nsPXV
         Fx+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si239678wmj.0.2017.09.08.01.46.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 01:46:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,360,1500933600"; 
   d="scan'208";a="290131046"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 10:46:50 +0200
Date: Fri, 8 Sep 2017 10:46:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: harsha <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rt8712: xmit_linux: Avoid
 multiple assignments in a single line
In-Reply-To: <1504859870-13153-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709081045330.3165@hadrien>
References: <1504859870-13153-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 8 Sep 2017, harsha wrote:

> Fixed coding style issue
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  drivers/staging/rtl8712/xmit_linux.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
> index d13fd15..03c6b0c 100644
> --- a/drivers/staging/rtl8712/xmit_linux.c
> +++ b/drivers/staging/rtl8712/xmit_linux.c
> @@ -49,8 +49,10 @@ static uint remainder_len(struct pkt_file *pfile)
>  void _r8712_open_pktfile(_pkt *pktptr, struct pkt_file *pfile)
>  {
>  	pfile->pkt = pktptr;
> -	pfile->cur_addr = pfile->buf_start = pktptr->data;
> -	pfile->pkt_len = pfile->buf_len = pktptr->len;

I think this may be considered to be more readable as is.

julia

> +	pfile->cur_addr = pktptr->data;
> +	pfile->buf_start = pfile->cur_addr;
> +	pfile->pkt_len = pktptr->len;
> +	pfile->buf_len = pfile->pkt_len;
>  	pfile->cur_buffer = pfile->buf_start;
>  }
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504859870-13153-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

