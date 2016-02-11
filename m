X-GM-THRID: 6250070785112670208
X-Received: by 10.194.110.233 with SMTP id id9mr5775160wjb.5.1455211013959;
        Thu, 11 Feb 2016 09:16:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.216 with SMTP id i207ls421489wmf.16.gmail; Thu, 11 Feb
 2016 09:16:53 -0800 (PST)
X-Received: by 10.28.128.204 with SMTP id b195mr2265208wmd.7.1455211013218;
        Thu, 11 Feb 2016 09:16:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w10si912544wmw.3.2016.02.11.09.16.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:16:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,431,1449529200"; 
   d="scan'208";a="202692792"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Feb 2016 18:16:52 +0100
Date: Thu, 11 Feb 2016 18:16:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: goldfish: Remove unneeded
 parentheses in assignment
In-Reply-To: <20160211212603.GA4216@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.10.1602111816220.2517@hadrien>
References: <20160211212603.GA4216@janani-Inspiron-3521>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 11 Feb 2016, Janani Ravichandran wrote:

> Remove parentheses around the right hand side of assignments as they are
> not needed. Semantic patch used:
>
> @@
> expression a, b, c;
> @@
>
> (
>   a = (b == c)
> |
>   a =
> - (
>   b
> - )
> )
> Reply-To:
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/goldfish/goldfish_audio.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/goldfish/goldfish_audio.c b/drivers/staging/goldfish/goldfish_audio.c
> index 364fdcd..8ef2d02 100644
> --- a/drivers/staging/goldfish/goldfish_audio.c
> +++ b/drivers/staging/goldfish/goldfish_audio.c
> @@ -122,7 +122,7 @@ static ssize_t goldfish_audio_read(struct file *fp, char __user *buf,
>  		return -ENODEV;
>
>  	while (count > 0) {
> -		length = (count > READ_BUFFER_SIZE ? READ_BUFFER_SIZE : count);
> +		length = count > READ_BUFFER_SIZE ? READ_BUFFER_SIZE : count;
>  		AUDIO_WRITE(data, AUDIO_START_READ, length);
>
>  		wait_event_interruptible(data->wait, data->buffer_status &
> @@ -197,8 +197,8 @@ static int goldfish_audio_open(struct inode *ip, struct file *fp)
>
>  	if (atomic_inc_return(&open_count) == 1) {
>  		fp->private_data = audio_data;
> -		audio_data->buffer_status = (AUDIO_INT_WRITE_BUFFER_1_EMPTY |
> -					     AUDIO_INT_WRITE_BUFFER_2_EMPTY);
> +		audio_data->buffer_status = AUDIO_INT_WRITE_BUFFER_1_EMPTY |
> +					     AUDIO_INT_WRITE_BUFFER_2_EMPTY;

Do these need to be lined up, or is it just a tab issue?

julia

>  		AUDIO_WRITE(audio_data, AUDIO_INT_ENABLE, AUDIO_INT_MASK);
>  		return 0;
>  	}
> --
> 2.5.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160211212603.GA4216%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
>

