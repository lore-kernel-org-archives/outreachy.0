Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0898920EE
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 08:23:31 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id cy23so4210965edb.12
        for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 01:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678955010;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=joYaMiwjQcZM9mnHSr+tmfvxuPw0FiEwz0p0pt8qIwU=;
        b=DylcSuB3JZSeiV3whNRz9aSwIoLkLgsisV7Th+D5ZQpWTsEbdV8Gf6K0HLrCJ9kntb
         sASccw/M8ObP510zuPB5itxRX+jEUAsDceGY99L9PhDnd8fn9fiTcL5Elmvl01kYOfzI
         kmh/bspG4xoROXwvOhQk+Tot3PHre2d/ZnwA62/0yKLZetddYewTlQss1SEEZj6CFORf
         A/qSq7jy0OtrfD4qEPB6sOkL22h4I2ff+I0fnN4HMWa71oDSxPxY3ZvKsofE2bqUB1bL
         OeXmhaC3oSDDg8DBVkSL0bXiRn6xYM/FcGCUbE8vzv+9qytgILkaQgw4OKdapCdCzJ8k
         cHjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678955010;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=joYaMiwjQcZM9mnHSr+tmfvxuPw0FiEwz0p0pt8qIwU=;
        b=wWPYS88t5rf7BE5nk4MY1+7zzHuIeXc8Vp9rXvH+pDEkXUssUxNVZlmM3oUNrE8hy2
         uiHthIe34p8qChGZ/5yp06a6LvKEGEu3gx48unsBuPigWAliT8/ltp4pXI7jMOWabbvn
         vZ6fJt7Tc50I/sgwNjBPmbBEKJWdsBha2gX9oJJA0b8lc63/DeeknI5YISsQpzvLtwBO
         1qPpujP8S69Flx+aR7CYcGskQ7C99NPENGWlvA8AQC0zMXMrzXKMpuz7saywUDT8eMqY
         UHIQm7YS1v8WyaUEl1uCCVBPcYKzzquhnBRKqR9AnbuYNGqkxeuC/TyEehUJbRpBgle/
         O7rw==
X-Gm-Message-State: AO0yUKX8viDbeBOtPHcXs+EGdkAUwk+9kECkc1sW1kS4pOlGO3DnSnNv
	w3Ia2lENM5jgiyhitC/IvZ5W3Q==
X-Google-Smtp-Source: AK7set+kNZwALILY2NO7RKbYUDJYg5DcYoLdgrV0P3eoIaD/c2pobEmAb1fkvoJq74X1yqKgVSiY1Q==
X-Received: by 2002:a17:906:4e92:b0:878:72d0:2817 with SMTP id v18-20020a1709064e9200b0087872d02817mr9074870eju.29.1678955009994;
        Thu, 16 Mar 2023 01:23:29 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id op13-20020a170906bced00b008c607dd7cefsm3543392ejb.79.2023.03.16.01.23.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 01:23:29 -0700 (PDT)
Message-ID: <fe15da9c-d03f-ccc3-ea6a-2b6401496aad@linaro.org>
Date: Thu, 16 Mar 2023 09:23:28 +0100
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] Documentation: submitting-patches: Disqualify style fixes
 from Fixes: tag
Content-Language: en-US
To: Bagas Sanjaya <bagasdotme@gmail.com>,
 Linux Documentation <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Outreachy <outreachy@lists.linux.dev>
Cc: Jonathan Corbet <corbet@lwn.net>, Thorsten Leemhuis
 <linux@leemhuis.info>, Greg KH <gregkh@linuxfoundation.org>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Akira Yokosawa <akiyks@gmail.com>,
 Alison Schofield <alison.schofield@intel.com>,
 Kloudifold <cloudifold.3125@gmail.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
References: <20230316082034.14191-1-bagasdotme@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230316082034.14191-1-bagasdotme@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/03/2023 09:20, Bagas Sanjaya wrote:
> An interpretation of submitting-patches.rst regarding Fixes: tag
> interprets that the tag can be attributed to all kinds of issues
> (including coding style ones). However, from the discussion on Outreachy
> mailing list [1], Greg noted that the tag should not be meant for
> patches that fix coding style issues.
> 
> Clarify the position on the doc.
> 
> Link: https://lore.kernel.org/outreachy/ZBFPnZbvdI46Ah6r@kroah.com/ [1]
> Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
> ---
>  Documentation/process/submitting-patches.rst | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/process/submitting-patches.rst b/Documentation/process/submitting-patches.rst
> index 69ce64e03c70f8..564418e42ffc01 100644
> --- a/Documentation/process/submitting-patches.rst
> +++ b/Documentation/process/submitting-patches.rst
> @@ -568,6 +568,9 @@ process nor the requirement to Cc: stable@vger.kernel.org on all stable
>  patch candidates. For more information, please read
>  Documentation/process/stable-kernel-rules.rst.
>  
> +Note: Fixes: tag is appropriate only for real issues (e.g. reported bugs
> +or compiler warnings). Coding style fixes should not bear this tag.

I think it is pretty clear already. The doc says:
"If your patch fixes a bug in a specific commit,"

and you are now repeating this.

Coding style is not a bug, but that's obvious.

Best regards,
Krzysztof

