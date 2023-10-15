Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CD779D0
	for <outreachy@lists.linux.dev>; Sun, 15 Oct 2023 20:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kgQ3kSv9"
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-53e2308198dso916118a12.1
        for <outreachy@lists.linux.dev>; Sun, 15 Oct 2023 13:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697402096; x=1698006896; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TpzzFHqZchZ079ZSceoZ+gGk8Uk6/jh68TgBT14ixLA=;
        b=kgQ3kSv9NQmXgZA/MYjGQaNHz8altm9jxjmNTGGE5tul69jc1GvXP9R+E25QYpz45I
         GAR/s39+Bnohci4s3r+PZG8GbbC5G4rrfc6fp0fLnInWRvo6gQAIClWjgV58KqjzGgrW
         rou3/0w4jIeLJsCPL+EN800pSQSlHAgZgNZ62/Vg+iFsfOaB8cTH6QZlYSKDLvg72RYm
         t2RICdzG52z/R8cc8dFaSWkMnl8a0C/LUIyVIl+dYBNwjFxSnlvgpL5VT9n1lTAtHHBz
         BqWKMUta2opQKoio82WZc7bu2gfMK2l240ZC3Rmd1KLzL8S7ESeq/5rnmnJGiwyDucmS
         4QNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697402096; x=1698006896;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TpzzFHqZchZ079ZSceoZ+gGk8Uk6/jh68TgBT14ixLA=;
        b=LrkwwQjdxed7sYwYHuDlLtniyxN0tdmZl+3UgZiieVhm7Nu24gLSKZA8c/1KeowROF
         P6YpKlXRrj5alX5kIkWFCDUEsPsMLYKiAfhUGA2E2zncmZXpfTnp6fHL1mum2cDAyy2n
         tj7Yj9RLvMmaoYr0W3ACa3a4dEgIDSyYLetOP630cC/yrih1d8e0UfCDNIkDffOR1GpW
         MLG9UmZuxS3XNJSiMKeMRBB9SskR9Rb/8Cn8X3vo1PNdlmhk+NaQyupba5Z36wX2AQDg
         lWjtE6HxX2SSIs9jJs/upCDgIz0X41kY1ZwLqACY9uV5yF0b7w/wwP/mftgWQbf1tJ6B
         gaGQ==
X-Gm-Message-State: AOJu0Yy9aKPW3XtxSmfPH1NVbMDCEJunXBdzcUO08sA1HRLUkgrwGy8e
	jmpUrV1cXSC6VtFKC8BkgHc=
X-Google-Smtp-Source: AGHT+IEvi0eVZsjsFBeVQbnHrdWeFkZi6oJTfR47MWMpw3IPpEpgPjtJF9N+1sEGx1u5eYo773agXA==
X-Received: by 2002:a17:906:2254:b0:9b2:bf2d:6b65 with SMTP id 20-20020a170906225400b009b2bf2d6b65mr28598230ejr.4.1697402096091;
        Sun, 15 Oct 2023 13:34:56 -0700 (PDT)
Received: from [192.168.0.103] (p579356c7.dip0.t-ipconnect.de. [87.147.86.199])
        by smtp.gmail.com with ESMTPSA id qt25-20020a170906ecf900b009a1fef32ce6sm2738355ejb.177.2023.10.15.13.34.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Oct 2023 13:34:55 -0700 (PDT)
Message-ID: <acf8c538-e148-447e-8efd-732fab3ad51f@gmail.com>
Date: Sun, 15 Oct 2023 22:34:54 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] staging: rtl8192u: Mute checkpatch error
Content-Language: en-US
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Cc: outreachy@lists.linux.dev, gregkh@linuxfoundation.org,
 julia.lawall@inria.fr, andi.shyti@linux.intel.com
References: <cover.1697367161.git.gilbertadikankwu@gmail.com>
 <bfe99c7a-f01f-4ae3-a17d-1e5887a5121f@inria.fr>
 <b5ac8e9f-f733-46bf-bff0-79556f0bd280@gmail.com>
 <ZSxHf+ZMA8UcbvRc@gilbert-PC>
From: Philipp Hortmann <philipp.g.hortmann@gmail.com>
In-Reply-To: <ZSxHf+ZMA8UcbvRc@gilbert-PC>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/23 22:11, Gilbert Adikankwu wrote:
> Hi, Thank you for response. Please is there a list where I can see all 
> the staging drivers that is about to be removed? Thanks Gilbert


Hi,

all wlan drivers that use "wireless extension" interface are planned to 
be removed or converted to mac80211. You can find them by looking for 
iw_handler

Simple way to find them is using:
https://elixir.bootlin.com/linux/latest/A/ident/iw_handler

Finally you are very unlucky. That a driver gets removed before you get 
your patches accepted is very unlikely. You can work on any of the others.

Feel free to ask me in case of questions.

If you send in patches for rtl8712 I can test on hardware for you.

Bye Philipp


