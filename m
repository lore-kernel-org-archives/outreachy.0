Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBAD2560
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 13:01:47 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id h12-20020a17090aea8c00b0023d1311fab3so7929882pjz.1
        for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 06:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679144507;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TfySlKYhQEVZSARGI3TG2Kv36jXcdhllH6qsQkjCHk4=;
        b=dLhNbLfhtd4CDimYcQRA79dyyvjLXmtOVEwxfNineYCBmZyfmD2O6LDrwCf1sQ6Sn4
         QDQ3ZFeWr0sF9XEwCg7biFAWYf0hJubqZc72ZJqdQRgaY0Dli5YcUjAdQDdDExIC85kf
         eh/czaE4SXAv31IOTgLwmDVlJaxDIXHkbSvwiFZnapO9yL+KfN1850ZJZzd0J3o2+1rk
         ULFc0uP+RixLV5ZpkljCmM28oF9aArJ/tqE6/MSKRZkxFC0Dl1EWjVvcsetQH0wAaOh1
         07fz5g6OuzhKah/sL9J1lmk+7xP+/vJzdR+Qq7vbO9raWjgtqkN+osu2cqToKYsJTZIc
         Y4ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679144507;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TfySlKYhQEVZSARGI3TG2Kv36jXcdhllH6qsQkjCHk4=;
        b=4ES9CGU6hQBrQsDRkDXjTTgkl1b4cJgxiCnBHpmltqCnRfo+U7Zgn3uL+oRE5xDMd5
         nfq7nsfg2umue0DkzEwSFp03CiMlkpiL93htCdYSbuJhN9EkaTxex/5c30LmaHofij16
         BITIXHpFOe1VoxbS2Purxbu7AiOuZ4mkt4EwK6JOgGlRNhkRqwQKcNkH/DoHVlVd8ncq
         Nu5p1BWpDS3bJ6aDe6JDl17LjMdg9As86vi6nv/UwhpY5a7IUt/mMJ2wtAJviHJytnue
         YTm5+qSA08fiouP4ZKKVw/MqopQ55Pz7pmX4Tv4+lGTYr1YjxRXuVza9gBBTOb7SeTKT
         DXzw==
X-Gm-Message-State: AO0yUKXreACPrwougrlRMvwZwlQzax9rhUlSq3yCKQ274yBTys2AWnCz
	d8M974aKASJzbiZ+wrkGpb2tAqBYp+A=
X-Google-Smtp-Source: AK7set9EoRBaVeLgSMlfTw7WoQmyIqTNv1slYxuvKEcLowVLNbAnvGtSoW0oINT+CjdZ2Lbd5UHDvg==
X-Received: by 2002:a17:902:f315:b0:19f:35de:c17e with SMTP id c21-20020a170902f31500b0019f35dec17emr8278840ple.52.1679144506852;
        Sat, 18 Mar 2023 06:01:46 -0700 (PDT)
Received: from [192.168.43.80] (subs03-180-214-233-11.three.co.id. [180.214.233.11])
        by smtp.gmail.com with ESMTPSA id s12-20020a632c0c000000b004fadb547d0csm3097392pgs.61.2023.03.18.06.01.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Mar 2023 06:01:46 -0700 (PDT)
Message-ID: <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com>
Date: Sat, 18 Mar 2023 20:01:33 +0700
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: Unable to find module location
Content-Language: en-US
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: outreachy@lists.linux.dev
References: <20230318084048.GC4434@sumitra.com> <ZBWA3rb9nVP8ho05@debian.me>
 <20230318121508.GA37278@sumitra.com>
 <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com>
 <20230318124937.GA39892@sumitra.com>
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <20230318124937.GA39892@sumitra.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/18/23 19:49, Sumitra Sharma wrote:
> Sorry, for such a silly mistake.
> 
> However I run the command "make -j2 ./drARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-" and got 
> make[3]: Nothing to be done for 'drivers/staging/nvec/'.
> 
> I think  this is because it is not yet created as a module.
> 

Have you tried cleaning the build first with `mrproper` target? Also,
is NVEC_PAZ00 enabled?

-- 
An old man doll... just what I always wanted! - Clara

