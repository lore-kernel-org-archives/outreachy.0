Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79EBF7C
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 02:08:06 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id u5so8985169plq.7
        for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 19:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679191686;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mEL/HlOawDoZERrNqBf6oPHRgazi5KdZ+xUvmJJYTYs=;
        b=FifFt/IobbladoHnNR4dzU1xfx8F6w5f4epyciI2Dzpxhvo5OEktWGPffl9H8Sm3rK
         CO/UMjp0s5E4pQX9zpBvLpJSOmsURKtk6eK3DVb0msN4fn8knB6s0ilkpRyL6jMlClga
         Bs7IqWDiINagEIN3NlrXNeWDzbNM1IW0bPO3t8YwE3hcdYOtdHbPX3Sct3OJVg0vknTj
         w616dASCaYdMgZTtoLbg45nYIqWFYz4eZTYYUIasWE85Ngr9SouzAUHUiGyA+DKYcetF
         b0T4cj1ulBsaNXpKyGlDLb2vcUt2pkXcWIV/TZkKP7BEnOYRw4Pem/pOvY2YuTza5Z5O
         j9PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679191686;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mEL/HlOawDoZERrNqBf6oPHRgazi5KdZ+xUvmJJYTYs=;
        b=l55Pev0cyxMSJdgNqi4YPmDoDbylNXrNOx5c1RQq+i3xUNVZNckwzsbR/JV0KwPO0K
         FUqgy2ZtwUpWP+JX8mnM4SBW0yEwCCOm2ShQVjNtEh3Df5EMn9YrPbVOwyoHgd/bgp7E
         EZ01X7LzHeOEsK3L5dLVGwAN/nQCH2vMwQoMMulFYnquPl+rWdoGorv+W6AyKrFl9C4/
         ukiRvZ7/ObOumgFDzNaFYtDmJSfB6l55EIiZvTzYZVbGihRhwh9TmGKHCWmNn5i7LnMG
         K5g7JvyxLbQsyG4aON8creA5OmdLB+d77hhAhdSnOl/S4MsDfobDfQ7/QEy26DrIVsKm
         MMkg==
X-Gm-Message-State: AO0yUKUTKRvxS1pPat9z1x3RKyorGgttc/doCgmdVYH9QyH+xO42/cmW
	9xFF2BtBWf56FgAjDkm1gZA=
X-Google-Smtp-Source: AK7set8e7AODa0WmjYKoaoyrRTUYXgNVRsqiHABUV7hijin4ty3yy9+MmkXIQri5CuowZYGhK9aCUA==
X-Received: by 2002:a17:902:ce8e:b0:19c:f698:8564 with SMTP id f14-20020a170902ce8e00b0019cf6988564mr14737092plg.17.1679191685963;
        Sat, 18 Mar 2023 19:08:05 -0700 (PDT)
Received: from [192.168.43.80] (subs03-180-214-233-28.three.co.id. [180.214.233.28])
        by smtp.gmail.com with ESMTPSA id jn15-20020a170903050f00b0019a837be977sm3880186plb.271.2023.03.18.19.08.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Mar 2023 19:08:05 -0700 (PDT)
Message-ID: <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com>
Date: Sun, 19 Mar 2023 09:08:01 +0700
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
 <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com>
 <20230318124937.GA39892@sumitra.com>
 <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com>
 <20230318175746.GB49651@sumitra.com>
Content-Language: en-US
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <20230318175746.GB49651@sumitra.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/19/23 00:57, Sumitra Sharma wrote:
> Cleaning the build worked for me. Thanks.
> What do you mean by enabling the NVEC_PAZ00?
> 

I mean you should set the config as Y or M (if permitted).

-- 
An old man doll... just what I always wanted! - Clara

