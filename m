Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021337F1
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 07:54:00 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id cn6so4299266pjb.2
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 00:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679039640;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fhA8RgR8dB8dv5jmgXXgURpHIfzuS3rUgdc2khetgog=;
        b=LNWm66YajPKkn0uJ4706mVfXBVMwGg4Dz7LOGQ768LmNww3aarcc/DUSq/rmjod6oA
         kxfBRKLplugBuy5CIsncBMO5ZcLKUw28ynFScCoqVyKuXGYDVst1FKdmXJduEynGFU53
         q+Cect6Yw1xSFZviXlqheWH0SeqYPC2ZtPOAWOy+xwX4/j/tIov8TxfPuli+bEnWcb+F
         4OAk7w1gCUjdurreFYV1A21rDeVXCLLv9fcsDwgvvh7Nplm/ncDWJzflQGkgce198KO4
         1yW+2q1uuFpTUiPTny0fTMrK3ekeofB2rYOeoE1keT2+WAEhI2Ls/DUMwF0Yw9cYfbUn
         Awtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679039640;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fhA8RgR8dB8dv5jmgXXgURpHIfzuS3rUgdc2khetgog=;
        b=EgEq0E4rsDkszvSeHqsC2Ka8ireFW67tUuzkElV0dFIJKRCYCyObl8U4WG+uakJ7y8
         5dwZ12KBNCQIikb9IAhFflKIcyl7pW1DeeQD+DoyacASy9KZnM4xefDShNdIxzgw3TcJ
         nxnd+0Uzw8u0u5BvMu9XK2VrMy9EwatDjaoL+Hx8rj0/AawVKjRtqtiRJug4pyJkz892
         rf4cqmpPrFIDGK3WYyNtluyIdlzCxiQTGfng+Kw9BbQommj8b4OL8hIDJw5Cz1RmLOo7
         hP/b9NTp3dArXR5JsonNwMxbLBQSGlvKt76GGXtwTeHi8JPuMpaqwM25uKg45RV57ksl
         gD0w==
X-Gm-Message-State: AO0yUKXAWQbI7Xqt//xbawOAGo2glUnHinUuTmkB9Q1wKeSZ63Adon8q
	WyjHZSpPu7PkDJl+6UUaezDaA3+x36Ds9Q==
X-Google-Smtp-Source: AK7set+Jb79iNsQUzRM8WCMaeFg7baCx7NGQg2F9YNeYg0S87lETLGwcmqAzBb2Yy+pNhm/KXmV7dg==
X-Received: by 2002:a17:902:fb0f:b0:1a1:a06c:4892 with SMTP id le15-20020a170902fb0f00b001a1a06c4892mr2583827plb.13.1679039640414;
        Fri, 17 Mar 2023 00:54:00 -0700 (PDT)
Received: from [192.168.43.80] (subs02-180-214-232-2.three.co.id. [180.214.232.2])
        by smtp.gmail.com with ESMTPSA id j3-20020a170902c3c300b001a072be70desm938904plj.41.2023.03.17.00.53.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 00:54:00 -0700 (PDT)
Message-ID: <b870ba3c-79d6-13a5-adf8-fbc12ee1cdef@gmail.com>
Date: Fri, 17 Mar 2023 14:53:54 +0700
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] Documentation: submitting-patches: Disqualify style fixes
 from Fixes: tag
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
 <fe15da9c-d03f-ccc3-ea6a-2b6401496aad@linaro.org>
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <fe15da9c-d03f-ccc3-ea6a-2b6401496aad@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/16/23 15:23, Krzysztof Kozlowski wrote:
> I think it is pretty clear already. The doc says:
> "If your patch fixes a bug in a specific commit,"
> 

Oops, I don't see the whole file before writing this patch.
Thanks anyway!

-- 
An old man doll... just what I always wanted! - Clara

