X-GM-THRID: 6466352868892868608
X-Received: by 10.46.87.82 with SMTP id r18mr2373905ljd.37.1505565372600;
        Sat, 16 Sep 2017 05:36:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.66.146 with SMTP id h18ls629633ljf.36.gmail; Sat, 16 Sep
 2017 05:36:10 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDQ37tPQjSDab0h/0ZKhDrhWcQUqrwdZFUjP8Q5lQ/pSXd27Rg4Jt4knch2juK8OBgNyvka
X-Received: by 10.46.87.82 with SMTP id r18mr2373903ljd.37.1505565370926;
        Sat, 16 Sep 2017 05:36:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505565370; cv=none;
        d=google.com; s=arc-20160816;
        b=Vjxk1LmgVFVgAj45a2i1VxYkdcymATGCHNZpoea5u7uQPied/6GMosqdPD1lfK3fAP
         86hTw52B7A1vjNdJTq0XdpZmb7kKUsvLEHKT7IMUenlPC7PRXfFxMAsIIWIrMjSLx1ib
         tnDIKwCJ6eJI2VDM9sCNRFsi7RbzY0I3cyN3FP0hdghVJ2lcguo7LIxEkeuGG6ku67zG
         EiqLfiOMNMlosXf5r/bg6i73MThGDq2YgZ+nPa5tJ0jG1Z7E4/LkkTK/IXIRbc3vAIWp
         6Xf+izsD9kKFMWJ5FnxPoGx8XzGXdvdvEorFFvya7espF8rjVAVysBLjiTTaXqXK7sLs
         mbOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=CTtansltTODvRHbwCCuEF1mc85EJWojiCdoT4qPwDiE=;
        b=w11cWRy7SEoJnWIMdcwfLZGcJUrO+UldkM2T7UVaDuq9Xu1TSi5VDoQv+R3hpAGmfD
         e8UfcqBQe1BkQM+x8mFbGvnMyiOncE5QbqZ8CkM8qNbL+PKNmPSs5x+tCm/AxAz+jQ0g
         sTvVY+LZoqvec5MnHFdNPOhR9x0DujuSaHl7i/5lLbsmdW6S7odzvmk7bicOhMntW5pk
         c4cdn4JtaxRCXPU4fJSRasyDEQrG/VkwfK9HkZeUIU/dROnohpFwQlkY+7u0H/vZrKMR
         dTCVVi6GikO0qAWzVEUMk1Ju2b5qzy6VFXCo+DkkeLgKqkAQpiqpVq3fx5HEwp6nqRVR
         K1fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si171540wmi.2.2017.09.16.05.36.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 05:36:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,402,1500933600"; 
   d="scan'208";a="291379964"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 14:36:10 +0200
Date: Sat, 16 Sep 2017 14:36:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Lidza Louina <lidza.louina@gmail.com>, 
    Mark Hounschell <markh@compro.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: remove variable rc
In-Reply-To: <1505565088-9210-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709161435500.2943@hadrien>
References: <1505565088-9210-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Aastha Gupta wrote:

> Found using coccinelle script:
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_neo.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> index 1943e66..a8491d7 100644
> --- a/drivers/staging/dgnc/dgnc_neo.c
> +++ b/drivers/staging/dgnc/dgnc_neo.c
> @@ -1199,12 +1199,9 @@ static int neo_drain(struct tty_struct *tty, uint seconds)
>  	un->un_flags |= UN_EMPTY;
>  	spin_unlock_irqrestore(&ch->ch_lock, flags);
>
> -	rc = wait_event_interruptible_timeout(un->un_flags_wait,
> +	return wait_event_interruptible_timeout(un->un_flags_wait,
>  					      ((un->un_flags & UN_EMPTY) == 0),
>  					      msecs_to_jiffies(seconds * 1000));
> -
> -	/* If ret is non-zero, user ctrl-c'ed us */
> -	return rc;

Maybe the comment should be preserved?

julia

>  }
>
>  /*
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505565088-9210-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

