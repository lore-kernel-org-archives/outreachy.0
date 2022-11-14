Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4224B1113
	for <outreachy@lists.linux.dev>; Mon, 14 Nov 2022 03:37:23 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id m6so9909511pfb.0
        for <outreachy@lists.linux.dev>; Sun, 13 Nov 2022 19:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=huQaLPlF3z6pX+8i8yYBtm/h88Hf3C5+moxTFK5eGA8=;
        b=OUicdBJx1vduAvAwyd6jPOQHqC1LWfO8cTcJeUbbZmeoZkaTOm7/8zwzbHqRUTXxm8
         jZI/4rBjL6HryZYwmQddi9NICHPWjMqISjxuVOp79xQ/CSKacXSvKQ5iTkOChzUG1VEm
         P4ES6LGlfHWZvh7Nq6aj1Y6JhSOkUnaBwF+a13DDcH8K0RjzktXsgMYxJbzSh4fcpJtJ
         AZq9lShbJwRQ2b7r4wV+nuX4hdbkFZozVtadUxDJ7+3EbSRXTXWbWF3y3IcSi6I9TZqP
         VlDgS084htDOwpJ/BN9cqDCxccMFilruV3zmvzmlUs2ifXgy8wI0dnneG3GnGZzUWOFe
         vbSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=huQaLPlF3z6pX+8i8yYBtm/h88Hf3C5+moxTFK5eGA8=;
        b=2eVBKi2Ll3+kmK68G/NN+1UNZaMhHCz1MWj+4L3Oa3Kvs+2TnpHmXx3ydPCs5hv2FU
         3yby6wJ+qEvV7WMO32lBEPoWPo8KPYb2pmkzYv17nBMtnmdfZyupB4pGKmDqg/PP9+d4
         LEekdpmfHXprzLAUKupep1bcdVrZOXRRdatKBtlDV786nBB1D/94akV8se2YpDm6BFFi
         ikOLgkVKtbfGv48rsCZ0XR3U5ILYFD6rhxYj2ulrCXoznpVGpZ8wdCPJOhqYGym7H70m
         AqhKVrwLfgKbUYeqYUmnobo4ymJPWo4P0nB0ITrsK9/Lk4Ip6hABmOPiXGDSWEQ6ICZe
         fUmA==
X-Gm-Message-State: ANoB5pk0Kl5m2/tI/pEtZ+6x0ULpBeKNMAcJ3lWSLfXLmGxX76NbdPCF
	S1Lxo0EHrNQZmcKZ91K3nQ9zeQ==
X-Google-Smtp-Source: AA0mqf5LqfwX34Nz78yClbqLWMd4qcYdYdtwGjDVGvRJzMaokohc5KP1ILzUGMQLPAT2aYVcrEhYYQ==
X-Received: by 2002:a62:1757:0:b0:557:ef5e:6db3 with SMTP id 84-20020a621757000000b00557ef5e6db3mr12375662pfx.13.1668397042544;
        Sun, 13 Nov 2022 19:37:22 -0800 (PST)
Received: from localhost ([122.172.85.60])
        by smtp.gmail.com with ESMTPSA id e6-20020a17090a818600b00212daa6f41dsm5389610pjn.28.2022.11.13.19.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 19:37:21 -0800 (PST)
Date: Mon, 14 Nov 2022 09:07:20 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Hunter Chasens <hunter.chasens18@ncf.edu>
Cc: outreachy@lists.linux.dev, johan@kernel.org, elder@kernel.org,
	gregkh@linuxfoundation.org, hvaibhav.linux@gmail.com,
	vireshk@kernel.org, pure.logic@nexus-software.ie
Subject: Re: [PATCH v3 1/2] Staging: greybus: Whitespace cleanup
Message-ID: <20221114033720.ixm7fhauvdkdhg7m@vireshk-i7>
References: <cover.1668395762.git.hunter.chasens18@ncf.edu>
 <35ee8be5f3737350b5324bfb2b6fd6b74fd02c58.1668395762.git.hunter.chasens18@ncf.edu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <35ee8be5f3737350b5324bfb2b6fd6b74fd02c58.1668395762.git.hunter.chasens18@ncf.edu>

On 13-11-22, 22:26, Hunter Chasens wrote:
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index fcbd5f71eff2..6f86b0141853 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -179,7 +179,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>  				if (arche_pdata->wake_detect_state !=
>  						WD_STATE_COLDBOOT_START) {
>  					arche_platform_set_wake_detect_state(arche_pdata,
> -									     WD_STATE_COLDBOOT_TRIG);
> +									    WD_STATE_COLDBOOT_TRIG);

This looks incorrect, 'W' should be right below 'a' here, isn't it ?

>  					spin_unlock_irqrestore(&arche_pdata->wake_lock,
>  							       flags);
>  					return IRQ_WAKE_THREAD;
> diff --git a/drivers/staging/greybus/greybus_authentication.h b/drivers/staging/greybus/greybus_authentication.h
> index 7edc7295b7ab..48b4a9794d3c 100644
> --- a/drivers/staging/greybus/greybus_authentication.h
> +++ b/drivers/staging/greybus/greybus_authentication.h
> @@ -41,7 +41,6 @@
>  #define CAP_AUTH_RESULT_CR_NO_KEY	0x03
>  #define CAP_AUTH_RESULT_CR_SIG_FAIL	0x04
>  
> -

This was intentionally left here I believe.

>  /* IOCTL support */
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index 4c42e393cd3d..539c7030ffec 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -240,8 +240,6 @@ static void show_loopback_devices(struct loopback_test *t)
>  	for (i = 0; i < t->device_count; i++)
>  		printf("device[%d] = %s\n", i, t->devices[i].name);
>  
> -}
> -

This looks strange.

> @@ -537,7 +531,6 @@ static int log_results(struct loopback_test *t)
>  			abort();
>  		}
>  
> -	}

This too..

-- 
viresh
