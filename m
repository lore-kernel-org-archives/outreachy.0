X-GM-THRID: 6465897502179590144
X-Received: by 10.28.4.69 with SMTP id 66mr254771wme.25.1505466148724;
        Fri, 15 Sep 2017 02:02:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.212.133 with SMTP id l127ls244273lfg.35.gmail; Fri, 15 Sep
 2017 02:02:27 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBdzfH0XlOVk6Mq1oJZvwCdxdj2Qq11ybki31VHG0xd8pbKw5kcus77SaF/cJJz7l0vNjlN
X-Received: by 10.25.225.195 with SMTP id l64mr96238lfk.16.1505466147118;
        Fri, 15 Sep 2017 02:02:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505466147; cv=none;
        d=google.com; s=arc-20160816;
        b=iaquqp3uuL+xlY5vkHu7YZdeLn/woUJlVmdYEL7neTaZUarZhyhj8hBvSDIFLAv9Ab
         LI0aL0K5jTBwcOb1XDuJ0pc4boQ+dSKLWRIVh/1wSqrdAtvOHzItMrRQ3dfXM0t+z2nk
         EJsxbPtC6IaeNmlwx/xsjA6Vm4nGy5flOtqNQ7PFHV4gOjfCk+8gMwrTHW2dxUxIN00v
         3T4nkSgPv/jF3t4dbP5KmEQ4PL+yI+5NNyjAZMrJVyfa8HxXF671GkhHEIOmbm8a3gx7
         3AUof00nl+fqY2SRfIYDCSBKhJRV74K7xCBXmifnHjHeSohnPmtOEraxdczD2XVop4vV
         hH9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=c7Yu+5XskSrf9iPwarWhiQluabWXFEcr3u6PqLZz9yA=;
        b=FAqj0lChjxZPZ40OUOWVAMbSzsqo+5FhPPcXVJbeutxQVsemf0m9oMgYSAQclLn3J0
         eLQEnBoodWnrNJkH4z9ONlBWD+k9KX9heXFIS+82vvn9fVpiQZ3CEfkwlDM1cyTbeYXb
         3MlwfX/qyX+/+JJdouPfZVVG2CP3XmlFBY0T0EfLt7txiFIROEUpTIzPFcTeC6B9eV4w
         dpzQIFlqX+WYUAthwzEA+fmjwzs2hIysZrrGMztz53kH463p4t795URtZ6lRFdKKqaXS
         PlQtdMkI7kGT1S+NL7HJnlSm1PVwJoxwdRn1IKdRG5ErZhtw1YuV/zOEHI8e9w8IcQpo
         gDsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e84si33069wmi.7.2017.09.15.02.02.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 02:02:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,396,1500933600"; 
   d="scan'208";a="237602273"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 11:02:26 +0200
Date: Fri, 15 Sep 2017 11:01:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: pi433: Merge assignment with
 return value
In-Reply-To: <20170915070424.GA18122@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709151100140.3146@hadrien>
References: <20170915070424.GA18122@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Meghana Madhyastha wrote:

> Removes the unnecessary assignment of retval preceding
> the return statement.
>
> Detected using the following Coccinelle script:
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
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/pi433/rf69.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
> index c4b1b21..f5b90aa 100644
> --- a/drivers/staging/pi433/rf69.c
> +++ b/drivers/staging/pi433/rf69.c
> @@ -690,9 +690,7 @@ int rf69_set_preamble_length(struct spi_device *spi, u16 preambleLength)
>  	/* transmit to chip */
>  	retval = WRITE_REG(REG_PREAMBLE_MSB, msb);
>  	if (retval) return retval;
> -	retval = WRITE_REG(REG_PREAMBLE_LSB, lsb);
> -
> -	return retval;
> +	return WRITE_REG(REG_PREAMBLE_LSB, lsb);
>  }
>
>  int rf69_set_sync_enable(struct spi_device *spi, enum optionOnOff optionOnOff)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170915070424.GA18122%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

