Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3763236C
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 12:34:31 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id v21so7901370ple.9
        for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 05:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679142870;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bLMbQoqVmKr2ekeAwj6Q3UmowPQyW7Ctc+JG77o17Dg=;
        b=OZ2EGS0DL5NVxR1VHzJ3Nj/+SzRtu9JW7BXPMa5ZuLniFGMUjXPDRszpWZFsm0kgJd
         efED7YDja8YNh7HmWXlXteBNMJeYDZi4ZlmotIdUMeZXFtfdl6vqr5NdHU2ZwdSOK988
         8Y2X51TrL1e9lU5jJMZcQyotQTAfqwWW7H0WbzoMZkvLpxaVBw5KpnFjJXbVaHSQqL0J
         J7UHHHGuLmkvF1nByXigrh3IWC3lmsZaYu8z6MWKPLjjlneWEy/51bIP35ZXdccLEfNI
         75NuPD4Ykk7fde0RGe41VdLoVWv8a7q+DBRWy76lizRW6mR7iurFyytVld85qOyAJThn
         FYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679142870;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bLMbQoqVmKr2ekeAwj6Q3UmowPQyW7Ctc+JG77o17Dg=;
        b=H7GJaA84vbA7lKnrgVllsXUbyo1JWnUv4WtetBo3WK92BB6YqqxE9J/BV3nYopmjP7
         05OZH7ptkGh2f8fedZ168CQcRruUvs+e2vteJ2s3O6QiPsAjSn8tTKv2q7TgletJQN7/
         zA6VKb7HQDsivEkFfrid7iG8lkopvXxsj/YNRAw9qHODZJ5frFzieAfLXgt8piQY4Hai
         xbMefMfwISXkd67tTL7FHWb+hjeRJGxGQsgq8C8tvbAguAsOcR3i4W8YwiT13FpLt4kW
         fNkiDb2MxP5powVqzxHmCSmrfLTFXq+k1hsway443tHpU1nbCZVvwW0Dobs66S68HblQ
         85fg==
X-Gm-Message-State: AO0yUKVrSc3bAT4usNr805V1Hs9YiMuV4ZfaKA3kql7NEHbsGQ8qYjaF
	ad54xnhOooeGDNANAAiHZj3BFagE0Vg=
X-Google-Smtp-Source: AK7set9R9UwCbVR6LbJ2B606EZ/NmMvEJiW2U/ZpgczlfLCI4jj4297eQF4vxGd03pAxm5PRBDY8XQ==
X-Received: by 2002:a17:903:2350:b0:19f:3797:d8de with SMTP id c16-20020a170903235000b0019f3797d8demr13253557plh.9.1679142870605;
        Sat, 18 Mar 2023 05:34:30 -0700 (PDT)
Received: from [192.168.43.80] (subs03-180-214-233-11.three.co.id. [180.214.233.11])
        by smtp.gmail.com with ESMTPSA id g2-20020a170902c38200b001960706141fsm3197233plg.149.2023.03.18.05.34.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Mar 2023 05:34:30 -0700 (PDT)
Message-ID: <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com>
Date: Sat, 18 Mar 2023 19:34:25 +0700
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: Unable to find module location
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: outreachy@lists.linux.dev
References: <20230318084048.GC4434@sumitra.com> <ZBWA3rb9nVP8ho05@debian.me>
 <20230318121508.GA37278@sumitra.com>
Content-Language: en-US
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <20230318121508.GA37278@sumitra.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/18/23 19:15, Sumitra Sharma wrote:
> HI,
> 
> I tried your way. Build and Install aarch64-linux-gnu-gcc, added the
> path and run the command 'make -j2 ARCH=arm
> CROSS_COMPILE=aarch64-linux-gnu-'
> 

The ARCH is wrong. In this case it should have been `ARCH=arm64`.


-- 
An old man doll... just what I always wanted! - Clara

