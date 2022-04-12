Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2717D46A6
	for <outreachy@lists.linux.dev>; Tue, 12 Apr 2022 20:35:07 +0000 (UTC)
Received: by mail-io1-f41.google.com with SMTP id q11so23636229iod.6
        for <outreachy@lists.linux.dev>; Tue, 12 Apr 2022 13:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=M/SL6jGK0Sq77N5QBCF7FLbfokc9NofrgU/f7GHCINE=;
        b=IGHMDTCFCmYvFcY7njXSJlq5+k0qU5W4RKrNwWjdDDtLEYgaqVaxm42hs8yzb6WHvi
         jI5oFH9aT9H6BbgEvLkflG7LUpoXZIkVqyRoKSHvOJrnrHR68almb7jBJqmT1ydKXMmF
         5dDrb5DB40NuvHlklLXupzunEgHfkDZC5MaS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=M/SL6jGK0Sq77N5QBCF7FLbfokc9NofrgU/f7GHCINE=;
        b=57+H5VRrpXpJqdL5Ao0/Vndn1B7AnYgzPVgWIrsPDen99L0hBJlHqIDCChv0h17Fj+
         bj90X6fH5pj48Es8ttMESra50H3ueWaQGeub5w/b6WliXUaguREQhYDymEBmo8EQEWjH
         Vss8O7dZHL8J9neoiXSuq5b/8gStwa7UXh0EFv0FMptJzF1tUs619CjaG846Y2SyvtGU
         7op9RFcy5AgG6UY44Q2CZAzCRCLP21argq97J6MYK3MRSLgUsxbL47LFOutftHn8mL/t
         tI6T2OWtfxau0Y84pkFsr+Oy2cFLlguu41F5MUW7cT/arWXYCCBIb2T+fq62nW4H3gzc
         VkFA==
X-Gm-Message-State: AOAM533J4ZXbpQ59jdA5ExRbH4E0k2uSIB49KZFbmpi+Rew+kvixoeKS
	8Ftgiw01xGiX2Bxav45RXWqC8Q==
X-Google-Smtp-Source: ABdhPJyD/kOVnJKuPO9y/dGCfdQxgbauiG7ap0jN30d4ZSdU8kjF8qORVJzxwDZAtMgQAX1lLuZ9+Q==
X-Received: by 2002:a05:6638:380a:b0:326:3710:8ffe with SMTP id i10-20020a056638380a00b0032637108ffemr4372793jav.47.1649795706265;
        Tue, 12 Apr 2022 13:35:06 -0700 (PDT)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id c15-20020a5d8b4f000000b00648f75d0289sm22348849iot.6.2022.04.12.13.35.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 13:35:05 -0700 (PDT)
Message-ID: <a509099e-2b19-7a27-693c-b418bd2f7b28@ieee.org>
Date: Tue, 12 Apr 2022 15:35:04 -0500
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 2/2] staging: greybus: remove unneeded return
Content-Language: en-US
To: Jaehee Park <jhpark1013@gmail.com>, johan@kernel.org
Cc: elder@kernel.org, gregkh@linuxfoundation.org,
 greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
References: <cover.1649793138.git.jhpark1013@gmail.com>
 <d4d01ecdabc492e52a3decebf165d1f584f3b3bf.1649793138.git.jhpark1013@gmail.com>
From: Alex Elder <elder@ieee.org>
In-Reply-To: <d4d01ecdabc492e52a3decebf165d1f584f3b3bf.1649793138.git.jhpark1013@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/12/22 2:59 PM, Jaehee Park wrote:
> An empty function with void return type does not need an explicit
> return. Issue found by checkpatch.
> 
> Signed-off-by: Jaehee Park <jhpark1013@gmail.com>

Dan's suggestion here was to simply remove this function
entirely.  It is only used as the ->remove callback
for the soc_codec_dev_gbaudio structure.

You can see that soc_codec_dev_gbaudio is only used in the
call to devm_snd_soc_register_component() near the end of
"audio_codec.c".  When a sound component is registered
that way, the ->remove callback is optional.  You can see
that because the only place in "sound/soc/soc-component.c"
that it is referenced is snd_soc_component_remove() (as
Dan said), and it only calls the function if it the pointer
is non-null.  Allowing null function pointers in places
like this. to allow them to be optionally omitted is not
an uncommon pattern you'll see in the kernel.

Anyway, please don't just add another small patch to remove
the function.  Just replace *this* patch with one that
removes the function, and omits the assignment if its
address to soc_codec_dev_gbaudio->remove.

					-Alex

> ---
>   drivers/staging/greybus/audio_codec.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
> index 0f50d1e51e2c..3e3a16568def 100644
> --- a/drivers/staging/greybus/audio_codec.c
> +++ b/drivers/staging/greybus/audio_codec.c
> @@ -1032,7 +1032,6 @@ static int gbcodec_probe(struct snd_soc_component *comp)
>   static void gbcodec_remove(struct snd_soc_component *comp)
>   {
>   	/* Empty function for now */
> -	return;
>   }
>   
>   static int gbcodec_write(struct snd_soc_component *comp, unsigned int reg,

