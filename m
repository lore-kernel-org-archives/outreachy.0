Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A73022CA7
	for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 09:13:10 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id ek18so41533206edb.6
        for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 02:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678871589;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1bFgkmALBRQKIZSnKpPV5QJ4JOw9hOkMz98UwsweR7c=;
        b=h2hS/8rSUM0WtGW6vxTCW98JIfj2rgNv8sM7IHhWHWKaANOshP0yV/tsUyZjNX5YJi
         caRPrUqTu2nQvPnkMxGPm89K1VNrkfLTZ70RF0UP2PvuOdO3c8mP2+uM6Lt0y5Wwu1y+
         /f4KwCVZAExmzaG7YIv5twVxCQfPi7KGykwXNYpdykJSg3xd/reVQEreSlmuZbbmAfFc
         t8au1LjB3XKsxgdXdKQFX8CwP2j1PL9PFLYfJfYHXfO6XEV/8E+HSIWCXAAgknjxQpGO
         EpsXG2A9JBVtU9nzC7seeqLpGucy0xe2uCjZGl6yMjWcL9dQmZWelqsPIr1WqKDU9YzO
         RDkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678871589;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1bFgkmALBRQKIZSnKpPV5QJ4JOw9hOkMz98UwsweR7c=;
        b=gh0nabD5gOWncxqgyOeCG7JpT28tm5miinN2ky8VluA5GaV1C+iVs4HM5lfOpzahQS
         uEkTtdaEGTXEejRLa+5nX18x+F3FEZK3JOvDyXOCA8sYde6s0rqyjIlgKbpZ84QyzdbI
         dtK8wTf+rLUjoGwpxOSF0PXjrrtAjLMv6YAGqR0OOLDBiP2FYU22Xn8431vIUjcS23zY
         GhON7Cyd/sdK1Cs2qezd3DPkqGuE1RjelheRmqIv29LN4aeNBPqeFnNo7NutOdgDhpud
         d6KiHot6q73ivTtoRMYV+KxGAe15XKmnM9oHSbyz/bD2gmBQaM8eVKhNmT/93hcNpiY8
         2Bpw==
X-Gm-Message-State: AO0yUKXhcLJbpRcIpyv0fBijsixQDqpWPdr63S9fKiwehSlPjwu0SOQ1
	uwVgB0UYd3x8eUFw3WEy6+jcBc6MwIQ=
X-Google-Smtp-Source: AK7set/ZMqIl6D8xG/S/Eo3hTmGX4SUJzXhz30odZV15dsmpAG5OudWwwufLf/HJNOnrCnKLCT5+yg==
X-Received: by 2002:a05:6402:b35:b0:4ac:bbaa:867a with SMTP id bo21-20020a0564020b3500b004acbbaa867amr1858255edb.24.1678871588763;
        Wed, 15 Mar 2023 02:13:08 -0700 (PDT)
Received: from [192.168.1.16] ([41.42.177.251])
        by smtp.gmail.com with ESMTPSA id ae8-20020a17090725c800b0092f289b6fdbsm375397ejc.181.2023.03.15.02.13.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 02:13:08 -0700 (PDT)
Message-ID: <7d8f670c-249f-1df0-0717-e4b8b0bab65c@gmail.com>
Date: Wed, 15 Mar 2023 11:13:07 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Outreachy - for Menna M.
Content-Language: en-US
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
References: <ZBD8Db61WVPsNVmO@aschofie-mobl2>
From: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
In-Reply-To: <ZBD8Db61WVPsNVmO@aschofie-mobl2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Alison,

On ١٥‏/٣‏/٢٠٢٣ ٠٠:٥٨, Alison Schofield wrote:
> Hi Menna,
>
> It seems like you may be looking for some first patch material.
>
> How about trying this one?
>
> Refactor arche_platform_wd_irq() to improve readability.
> It has excessive indentation. A side effect will be
> eliminating this checkpatch CHECK.
>
> drivers/staging/greybus/arche-platform.c
> ----------------------------------------
> CHECK: line length of 101 exceeds 100 columns
> #182: FILE: drivers/staging/greybus/arche-platform.c:182:
>
> No warranties or guarantees on acceptance but I'll support you
> in giving it a shot!
>
> Alison


Thanks a lot, but Ira said Khadija has been working on it.


appreciate your help,

Menna

