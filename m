X-GM-THRID: 262267731968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,658add94603fb134
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.69.73 with SMTP id c9mr1587629pbu.3.1424298376522;
        Wed, 18 Feb 2015 14:26:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.36.147 with SMTP id k141ls207655iok.18.gmail; Wed, 18 Feb
 2015 14:26:16 -0800 (PST)
X-Received: by 10.66.193.106 with SMTP id hn10mr1599240pac.48.1424298376211;
        Wed, 18 Feb 2015 14:26:16 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x22c.google.com (mail-qa0-x22c.google.com. [2607:f8b0:400d:c00::22c])
        by gmr-mx.google.com with ESMTPS id q2si4719313qcn.2.2015.02.18.14.26.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 14:26:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22c as permitted sender) client-ip=2607:f8b0:400d:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22c as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-f44.google.com with SMTP id n8so3078970qaq.3
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 14:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=ulu4FwKAUu0okOuc+K1KdtZeyClLCnpBv273Y0tP6I0=;
        b=eUIvv+CbqaD2E19xvaKLmzKaSL/l0fKRt0bNbUEsIXG+8EHU2YvHOM8khJbGFG/GaF
         zki/0UiuYXppQ6wNRnUkHmry2j0e4ohh71RvBQSB4aTqr0HgLy2ZxJhNkkd3XWEjIqSN
         CR/SzsX7D89+mAQaa/ejqASX/9+ZPTPldC/kBAyuk9N4tP168JerKaVqs2A+lRDDdr45
         jn+NI9UcZXgPEQZpbTa0+4ROYg9B7Ps9m0kFh0ksRiTyoDPLuDlMtf/dZU6Nz+ZAi19T
         ixuKq4LJb93MJYplaxrnlSCRv6usli34KE9u1UxYiH31reUA0ZpuRBNjcyinWf4XQ2CO
         wErw==
X-Received: by 10.140.131.19 with SMTP id 19mr5312868qhd.20.1424298376103;
        Wed, 18 Feb 2015 14:26:16 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-71-190-187-138.nycmny.fios.verizon.net. [71.190.187.138])
        by mx.google.com with ESMTPSA id u66sm8540939qhd.11.2015.02.18.14.26.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 14:26:15 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E51186.9080302@gmail.com>
Date: Wed, 18 Feb 2015 17:26:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: drivers: replace
 init_timer by setup_timer
References: <20150218182936.GA4225@localhost.localdomain>
In-Reply-To: <20150218182936.GA4225@localhost.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/18/15 13:29, Aya Mahfouz wrote:
> This patch replaces init_timer and 2 step initialization of
> function and data by setup_timer to make the code 
> more concise using the following coccinelle script:
> 
> @@
> expression ds, e1, e2;
> @@
> 
> -init_timer (&ds);
> +setup_timer (&ds, e1, e2);
> ...
> -ds.function = e1;
> ...
> -ds.data = e2;
> 
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
> v2: changed commit message and picked Julia'a ack

Looks good to me - the only minor issue is the commit message. I would
make it say:

"
This patch replaces init_timer and 2 step initialization of function and
data by setup_timer to make the code  more concise.

The issue was discovered using the following coccinelle script:
"

Cheers,
Jes

>  drivers/staging/comedi/drivers/comedi_test.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/comedi_test.c b/drivers/staging/comedi/drivers/comedi_test.c
> index e56525a..fbc4342 100644
> --- a/drivers/staging/comedi/drivers/comedi_test.c
> +++ b/drivers/staging/comedi/drivers/comedi_test.c
> @@ -420,9 +420,8 @@ static int waveform_attach(struct comedi_device *dev,
>  	for (i = 0; i < s->n_chan; i++)
>  		devpriv->ao_loopbacks[i] = s->maxdata / 2;
>  
> -	init_timer(&devpriv->timer);
> -	devpriv->timer.function = waveform_ai_interrupt;
> -	devpriv->timer.data = (unsigned long)dev;
> +	setup_timer(&devpriv->timer, waveform_ai_interrupt,
> +		    (unsigned long)dev);
>  
>  	dev_info(dev->class_dev,
>  		 "%s: %i microvolt, %li microsecond waveform attached\n",
> 


