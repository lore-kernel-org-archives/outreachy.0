X-GM-THRID: 6803689046764683264
X-Received: by 2002:a17:90a:c38e:: with SMTP id h14mr10474909pjt.98.1584120149540;
        Fri, 13 Mar 2020 10:22:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls4204491pff.0.gmail; Fri, 13 Mar
 2020 10:22:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsY2/DC5CAdH3n2ocPnEuGCf6L9mVE2m2UclW78JE2TkpVUVTJn7NPIsgk4weCLZtD1R8d0
X-Received: by 2002:a63:fb0c:: with SMTP id o12mr14563030pgh.204.1584120147869;
        Fri, 13 Mar 2020 10:22:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584120147; cv=none;
        d=google.com; s=arc-20160816;
        b=nxSDhSmbhgtNQxIwryhVqQECU/tl9CRgRFr9uJMCv8EH8n3peDLmra9M8QTw/noakd
         RbVwHZDn7nfrZItuZe4jgouUpVJEN9ldnzdnloAkQfTlThNeyXCcq/9DnAFgvzxGL+NM
         QeRL2YilJ1rlGI2diB8XyRPhvXAvqOlcQSv64XY9tn3VcmHcjYmlJAk/DJnjBN0i46tf
         sf9ncPgAZg3Lm8svFCd7UEiFwds9uS++SVfceHAuooAUEaJqayPo/Uj0Fd5iHyHsw9yy
         +dRuif7unebDRmy3ouYwlSmlKOdWS0gSw1cBdISb92VbDhuv3Pxyml6QOK8eTLkBnLmT
         J6IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=GWjxOP2hWk6MfH/7BfaA9E9phnnnA9ZqUGi/u9yozjY=;
        b=sHm4YhfDZrgQxzh3eF1CJAOCy60xCo5rK40HjFjTmGhW3Aq5UgIJvBtfUFzGpxe5SJ
         syrVwzRdirP8lgYgmuuRtoSPu+jRtNTc3oSmDvTNHmFSfj+VoRv0SzhQsljjnLM9sHvp
         l4MzaYxl6ujpW1K7OEjkk6tIq29+mblKrMTB99R9TVKrlrYg5r1KppygQiBaEN5Kk7+3
         vp3HuaXk+fLQWHRS0T3JeU+hvkAJDZiy+HD7rX2E7t1CPePonNYQSRR/IuZBxZg3dtMH
         /ovIq19YqiZgQi/UNrwb+RfZonkjGOMpTFHGBzhG/32oH49tgXbNB3136FbEuGBbE5J4
         IquA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=cFCl+S4c;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id y13si413455plp.0.2020.03.13.10.22.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 10:22:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=cFCl+S4c;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-ot1-x343.google.com with SMTP id 66so10878882otd.9
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 10:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=GWjxOP2hWk6MfH/7BfaA9E9phnnnA9ZqUGi/u9yozjY=;
        b=cFCl+S4cDitNgse+d9K+9h2xL/EGteumH4qRqXvcCO3Nkcq6gh43CZZcYgnarZ/xp3
         DE/dz9dIJ6EMS95fvVcMxHj/VNJZnKbWFB4v8p64UyEZphzO1hHkrQwIj6DKkHQGmN+j
         3wjcubDaF+HGPcY82HzxHFW3dBvkKTAwD02ZE8qlyIxoC5zw1pibbNpOseJAYrz/9EMQ
         zdTt6gPVbDAqCjd4wOckZerM2Zj/uch+MtKu6bq+NEYZQzbcb0BEPK3VwQiEwOkRKSF6
         tJCWnP34SCT1MYi36ncfOOuR90iu9SpKwK9CLCXdu/VFPm2D94novZokdf4MOFt6iq5m
         LmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=GWjxOP2hWk6MfH/7BfaA9E9phnnnA9ZqUGi/u9yozjY=;
        b=EEKbxmzNwQDboQeJQg7S53Z2g/DcNdOY4QiY0z/YXRAkMKxUl7twIeo+UWHYxQJsa3
         xYE2Jl70osRkkMeCvcqnbbE1OTHaakNJnpgwd68oaUW+LaXGma5PAR4ZcrOwVmT3XAaK
         v8qTchVkPWQPXCSeIIe9FDomhA7kczIKKjkWHi154EpLrozI1xmA+hK6HPld7xwxevWs
         m/Unu5UPLh4X+34L+7govHToOppsczuRqEGNEEQuwOyz7CZcNoTsFIGAuxcwuLTUik6/
         bEcAfCoRYaOBAoPyQNUrbNh/B+UVR9WFmbvxSpg8IXgZeKS90tS+gkpn8uGqX3eJ6Tz6
         QC8Q==
X-Gm-Message-State: ANhLgQ0undr8+pjPmGvI9Z9qiyhKtlBCsBURjMk6k11nGwpaLoxHIhRg
	nSCdGqupIvq0tzw5dv7EOWBIVqjAEWcKdw==
X-Received: by 2002:a9d:bf5:: with SMTP id 108mr12646433oth.260.1584120146729;
        Fri, 13 Mar 2020 10:22:26 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from [192.168.0.167] (fixed-187-189-60-137.totalplay.net. [187.189.60.137])
        by smtp.gmail.com with ESMTPSA id p130sm4293885oig.51.2020.03.13.10.22.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 10:22:25 -0700 (PDT)
Subject: Re: [PATCH v2] Staging: media: imx: eliminate unused code
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 outreachy-kernel@googlegroups.com
References: <20200313134953.GA11354@evX1> <20200313161503.GB2298954@kroah.com>
From: Enrique Vargas <jevargas@seas.upenn.edu>
Message-ID: <55005d92-2da1-0ed8-6ef7-2c5192afff73@seas.upenn.edu>
Date: Fri, 13 Mar 2020 11:22:23 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20200313161503.GB2298954@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 3/13/20 10:15 AM, Greg Kroah-Hartman wrote:
> On Fri, Mar 13, 2020 at 07:49:53AM -0600, Enrique Vargas wrote:
>> Eliminate code that is never used inside #ifdef 0 / #endif.  This eliminates WARNING found using checkpatch.
>>
>> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
>> ---
>>  drivers/staging/media/imx/imx-media-csi.c | 8 +-------
>>  1 file changed, 1 insertion(+), 7 deletions(-)
> What changed from v1?
>
> Always put that below the --- line.
>
> Please fix up and send a v3.
>
> thanks,
>
> greg k-h
Thanks, I sent v3.

