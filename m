X-GM-THRID: 6463987902323884032
X-Received: by 10.28.31.5 with SMTP id f5mr412618wmf.4.1505147335744;
        Mon, 11 Sep 2017 09:28:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.197.138 with SMTP id v132ls1283566wmf.25.gmail; Mon, 11 Sep
 2017 09:28:50 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4rFpbcUO2qDKsaMfkLm8rLdubgAZQdqdzPT6mShMfas4rhA7OIPL8E/RA/1EHGd8/Nkv99
X-Received: by 10.28.68.135 with SMTP id r129mr956667wma.19.1505147329990;
        Mon, 11 Sep 2017 09:28:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505147329; cv=none;
        d=google.com; s=arc-20160816;
        b=v4H7y9mUrfktu6MWQSB4pNnheN+zGyUwdsYudCbL1VDbpmAtWnjYEiPzf4FE3mXFBs
         IKdiiUWnJCESQ6RfHT1VzIUchnJYYpFRwzdh/dqFvboGmbWcNu5HYfmVYXFN4t2ZAR7N
         /6CMF5ARgxct2bk7mtGPdF0XHcSqvsTmMx+cE4JIa2lrCS8pM7A+4MeR/D/iwMo7bfod
         YnFz0IlD2AhYIobD/amw0gLVDT5XLzZOttqFesK1Fe8+wN51o/0763cNvEZoBhUQ8QhQ
         X4A2/iz8HzFzStwmW0pFv28xFSrwxMVW2b7pEPXPXBW7pQwYfmleQ246MqYUlJZ4AXSK
         EvCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=B4KbT9fVCFfZQp6G1uR5sGBlzXGgAfbaiVA3S6D4if0=;
        b=lNS5u5JitHVictf+cu9JtNmbiCcn7GkLkhoZQzzb39Mb7vRUfNbjMC5PZO/tcqUATU
         eAPZ7eBxuUKKpSA47/LoqswU0wD8KNIH16SiS3eMLFA8AbdvT12y7m7RFCDSA16tKRpz
         hmlJscx430OK7Chd7UUWd36wNL7is9dWAZpYth9C78BCN2EEOS+jOgblIa/E8YzQ2frh
         F74d1uWjK0/C3djp5ymBa1xdn5UKo4sm7RfFk6r9HvXoWEgSbfCtRgXU9AS+6Jxv9MeJ
         Jp5g9Y3xqUWqPaafvsp3DVfoJ3tQnLJhhAOXwQOlTh/X13sytXjxIgmbR4gKmaRzj4fL
         ivvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e135si530337wmg.6.2017.09.11.09.28.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:28:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9235589E;
	Mon, 11 Sep 2017 16:28:48 +0000 (UTC)
Date: Mon, 11 Sep 2017 09:28:47 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vc04_services: bcm2835-camera: Add blank line
 after declarations
Message-ID: <20170911162847.GA26750@kroah.com>
References: <20170910033412.GA26296@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170910033412.GA26296@meghana-HP-Pavilion-Notebook>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Sun, Sep 10, 2017 at 09:04:12AM +0530, Meghana Madhyastha wrote:
> This patch adds a blank line after declarations. This enhances readability.
> 
> Problem found using checkpatch.
> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index 4360db6..7a7b00e 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -1982,6 +1982,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
>  	struct vchiq_mmal_instance *instance;
>  	static VCHI_CONNECTION_T *vchi_connection;
>  	static VCHI_INSTANCE_T vchi_instance;
> +
>  	SERVICE_CREATION_T params = {
>  		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
>  		.service_id		= VC_MMAL_SERVER_NAME,

checkpatch is wrong here :(

