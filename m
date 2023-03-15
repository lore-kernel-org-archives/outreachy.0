Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E02A2F25
	for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 09:25:47 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id ek18so41666131edb.6
        for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 02:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678872346;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B7WaKVoFBx9EORaO+UKkaCuWWXYtHwRyUJ18yywo4YE=;
        b=MIQUOfe9QelEZlRggZYO8d0BGrHCYCn27/wli5ONCXY9sAfVg3IKZXwIuDofYAJn2R
         0LIVfQX8XfferkHi7e/hJipNXOK5pDe1/1Wigd6SBAq4RnanuKb9LLCqVfBXLOypfYvu
         g3q+VzzFO8XVvo0jLyjXGfWCOO9cA0Xmji+4szZ11j3AMq6s8koBXVcrFkx2yHBOKBM5
         8IpK2O+ejCuOAkvZKAZbH81GCCPtAduRI2FMJEGPuy/0FNaaFobof4nlhzDHREdqj77A
         X4BuN13EainqVIiMAMv4G7A0rO8n2wQifSsAhD47r2epSXnlDk0oKlbY7PzVqg41aiGr
         GqQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678872346;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B7WaKVoFBx9EORaO+UKkaCuWWXYtHwRyUJ18yywo4YE=;
        b=FVA8ik1LFj0J4VB4kmG3zYFoTTHxa+rXtB6lOnQc6ARZlFizU8Z1Ka2+6f/ZBGliCr
         4lAhwE/koGavFSxKtzZ3oyGQbyBLnB653k31+sQj4AwSJZ2RBOCOsaqrrZSwxKngnqvc
         WGzLWOvopSGjiiL9eqOWeb8zf5u62n39adhhZ0592jDdyrF2H0Thu5WuYwWLxeNOkzY9
         s2j8GizcwKnjaUbK6XtnNhnrybrujiCYv6LFpkU2jDbwNEAEc7viISVLIro1jURrEcxK
         j/17SClK7A5jnVzaa40eg5N+RpeGHTjXF17c2Z3vpZ8ZEyRfZtO1+CtSdCaYYt9cQWoL
         QTeQ==
X-Gm-Message-State: AO0yUKU2we5Rfc1ukIC7dGMrBU0XSpEYwRnFhMVFe0E3gp2iDqUFit59
	PorRGMwsM6x6oOUZomVJQQ52BVDJtaE=
X-Google-Smtp-Source: AK7set9FNDLLkni9Jilnrp87QhS9WH5Uy881qU71uE07jrBzorQuXe1ltGJAR1WjfT1DANOCXf5/WQ==
X-Received: by 2002:a17:907:e8e:b0:8e6:bcb6:4698 with SMTP id ho14-20020a1709070e8e00b008e6bcb64698mr8589549ejc.0.1678872345744;
        Wed, 15 Mar 2023 02:25:45 -0700 (PDT)
Received: from [192.168.1.16] ([41.42.177.251])
        by smtp.gmail.com with ESMTPSA id r9-20020a50c009000000b004c13fe8fabfsm2085358edb.84.2023.03.15.02.25.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 02:25:45 -0700 (PDT)
Message-ID: <c61a1799-9a1f-4638-ab16-19156ab1d1b5@gmail.com>
Date: Wed, 15 Mar 2023 11:25:43 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [Outreachy Info] Ask for help finding cleanups
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
References: <ZBEIAKymniRkamjr@aschofie-mobl2>
 <212018e0-dac0-adfd-ad63-2520933dece1@gmail.com>
 <124d2ef9-6f1d-2652-c88d-161f1bc06443@inria.fr>
Content-Language: en-US
From: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
In-Reply-To: <124d2ef9-6f1d-2652-c88d-161f1bc06443@inria.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On ١٥‏/٣‏/٢٠٢٣ ١١:١٩, Julia Lawall wrote:
> Here is a possible suggestion of something to do.
>
> There is a macro called container_of that extracts a structure that
> surrounds another structure (you may find it interesting to look at the
> definition of this macro).
>
> In the staging tree, there are some definitions like:
>
> #define to_lm3554(p_sd)	container_of(p_sd, struct lm3554, sd)
>
> These are often in header (.h) files, but you may want to check .c files
> too.
>
> It is not great to have such a thing as a macro, because from looking at
> the definition one cannot tell what type it applies to.
>
> One can get the same benefit from an efficiency point of view by making an
> inline function (concretely, typically a static inline function, because
> the definition only needs to be visible in the current file, or in the
> case of a header file in the file that includes the header file).
>
> So the idea is to convert these macros into function definitions.
>
> The possible challenge is that a function takes an argument of a specific
> type and returns a value of a specific type.  In this case, there is
> always the possibility that the macro is being used because the arguemnt
> has different types at different call sites.  So you need to check all the
> call sites, find the type of the argument, and check that that same type
> is used at all call sites.
>
> julia
>

Got it, Thanks Julia, I will check this. appreciate your help.


Menna

