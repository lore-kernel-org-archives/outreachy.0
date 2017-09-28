X-GM-THRID: 6470761478432489472
X-Received: by 10.28.6.76 with SMTP id 73mr135803wmg.26.1506600962717;
        Thu, 28 Sep 2017 05:16:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.10.83 with SMTP id 80ls49845wmk.1.canary-gmail; Thu, 28 Sep
 2017 05:16:02 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDYJTweQmBk23Sg/9xc4iJReq9WJmnGF3SCXP5YIBnOBRUrO0CoITCL99NsmeTk0ZbQPhlu
X-Received: by 10.28.138.195 with SMTP id m186mr141102wmd.9.1506600962118;
        Thu, 28 Sep 2017 05:16:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506600962; cv=none;
        d=google.com; s=arc-20160816;
        b=jb5ivyo03RY/2Z5W0cWl82O72F0EuUJu4esfzYrv1EB+y0OpRRpk1E3JoqPCoxwwW8
         lr6nt6oz2q0vEP4AronxKfO7RLoGVhONugbZMJPXdOoz/SPQYuXVt/lYNVIAoPrNaXxo
         +cJf3Z5phUvo9QN4nnsce/Yi7cT/Xb8PHwGtB9L1+tcBlyxLcw84LrlSmUXpgvpSKT0M
         WFNt1gYn9S8h3gQIDkezECXdXSrm6RacdT3wpbm4ArwA+n0IJej1eVahFh9F7o3NbOqh
         8QKBYt6zCEPIxKDlLvOxkvQGSDM8JpGRNB6KrfmVEHicDx3Gb9WhbsXx89Lbn3EkbvrK
         mrfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=FixQ5Lgh2ZFkI2UDNOKWu7Z97wtHTBp8VoJYxgNfijM=;
        b=YB0xK/c/4CyuaiO4osJH5iy+ykTsxM5GqMw4tZEFhEZbwc/7dcQMpiG9ZrWTVGDN8B
         TXIwUdPC0ncSTbVOxomMP5zIwHWoRy1PA6tfh3D6e796+V2MZgXJwRpKrpbcIg7EAs8U
         CktXj66YLLHpHk1/3Gakhugm2lqlsXvwxLWY5Ivtx8HqKombI2FrtXz2gaSds7stNziz
         Sg08zbg/IpzMfVXgYF4kfxu8n7Cuf3c2ey871IwIyzjbzQhsgHWpzU12jjw3Z1SVZszc
         QohOlo97ePCSW8MO7L+qaAk1BV5E/7p1KybUX/Mj4MPDygq2rH5f1vs/ntN+asNeubrg
         8yQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q145si212415wme.4.2017.09.28.05.16.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 05:16:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,450,1500933600"; 
   d="scan'208";a="239026762"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Sep 2017 14:16:01 +0200
Date: Thu, 28 Sep 2017 14:16:00 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vc04_services: Remove
 duplicate extern variable
In-Reply-To: <20170928113505.GA12271@ubuntu>
Message-ID: <alpine.DEB.2.20.1709281415240.30797@hadrien>
References: <20170928113505.GA12271@ubuntu>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Sep 2017, Mihaela Muraru wrote:

> This patch removes the extern vchiq_arm_log_level variable from
> vchiq_2835_arm.c.The variable is also declared in vchiq_arm.h header.

This looks like the same code as the other patch I commented on, but again
the change doesn't match the log message.

julia

>
> Issue found by checkpatch.pl
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
>
> ---
> Changes in v2:
> 	- remove unnecessary blank line
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index ee00f51..a96bae0 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -84,7 +84,6 @@ static char *g_free_fragments;
>  static struct semaphore g_free_fragments_sema;
>  static struct device *g_dev;
>
> -
>  static DEFINE_SEMAPHORE(g_free_fragments_mutex);
>
>  static irqreturn_t
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170928113505.GA12271%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

