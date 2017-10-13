X-GM-THRID: 6475389666031828992
X-Received: by 10.25.35.87 with SMTP id j84mr70769lfj.23.1507909497211;
        Fri, 13 Oct 2017 08:44:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.67.89 with SMTP id m25ls135853lfj.6.gmail; Fri, 13 Oct 2017
 08:44:56 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RmPwasQDGirGN5Z4Nv9jWEXk2QGgle9edF03CJ69JD+sYOlMB+sMRCWRpFySkOtQJ8W3IH
X-Received: by 10.25.23.195 with SMTP id 64mr67234lfx.10.1507909496227;
        Fri, 13 Oct 2017 08:44:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507909496; cv=none;
        d=google.com; s=arc-20160816;
        b=khVpmsyKlVe14cHwhpwXlvf5tBTUXo5ypHlVLo+XU2D5cfzFurWmj+a7tSfpEmMgfH
         chVZ6/Ws3SkoIid33H/x/0SivGDHfue2rsiGv7pG8JkZBTHB+rcfqFSTJWYqWKAGnJJF
         os26UYqDJiUdIDMJ57ZiPsgBpV4p7pH7RGdYrE13mExpy7z8NZ3bcHyoySxerlXRILvI
         RD4MBT59NiFERuTEYEd+Y4ozM2RW0jHPRYPdj59xvQcQvykErLZ3Ku8ixYQ8pB77lDbM
         PAEhiJqG5iny8w6Mbo6j5KmBPF73VEZ2FoyRvVkKr6mxvdiayZGF9ZPxjpABPw4/l7NY
         otBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:arc-authentication-results;
        bh=BPtrIaywNZWnSYJZvCZ3fU1PECamF9pfiCCiKSvNvs4=;
        b=zM3e7Ic3OUrVNREwmNcMqtnJwCol5CNPWv7OCZOH4QH3d3yUSwVqQA9TwEiOK77jxD
         Ak0RyWU84Zug6c+31cWf95claC9MlpuZTp7HKl41jN2XJpIrQ+lV66W02o8vehnwMPBU
         jtzOTr8mlCBj4zeRqymgUDk4mZhZnsr3B1bi6GarZtYy+6BsZOsZWUhZIKb1NL/oiUbv
         Pw4UXAyKhmc9lB8Od8ezf6LeiHZuE6BNZQ/yTxTu2I4wfAB88kPaOHZ3ekMS80m0UdRG
         n3WmFtmcQ0z3folzgbTLWa9/iQG0rkVVG0RBz/v0HpfOW2wnLG6jTCyPIS9gBiyDLOuw
         KbnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id w29si80670lfc.1.2017.10.13.08.44.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 08:44:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:57411 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e328t-0006P4-82; Fri, 13 Oct 2017 17:44:55 +0200
Subject: Re: [PATCH] drm/tinydrm: Remove explicit .best_encoder assignment
To: Haneen Mohammed <hamohammed.sa@gmail.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 gregkh@linuxfoundation.org
References: <20171010205858.GA4806@Haneen>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <6c679b74-6eb2-4077-9337-018f1652c36f@tronnes.org>
Date: Fri, 13 Oct 2017 17:44:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171010205858.GA4806@Haneen>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 10.10.2017 22.58, skrev Haneen Mohammed:
> Since the driver is relying on the atomic helpers, remove the explicit
> .best_encoder assignment and let the core call
> drm_atomic_helper_best_encoder().
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---

Thanks, applied to drm-misc.

Noralf.

>   drivers/gpu/drm/tinydrm/core/tinydrm-pipe.c | 1 -
>   1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-pipe.c b/drivers/gpu/drm/tinydrm/core/tinydrm-pipe.c
> index 177e9d8..bc55de2 100644
> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-pipe.c
> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-pipe.c
> @@ -50,7 +50,6 @@ static int tinydrm_connector_get_modes(struct drm_connector *connector)
>   
>   static const struct drm_connector_helper_funcs tinydrm_connector_hfuncs = {
>   	.get_modes = tinydrm_connector_get_modes,
> -	.best_encoder = drm_atomic_helper_best_encoder,
>   };
>   
>   static enum drm_connector_status


