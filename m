Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B29092CA7
	for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 09:11:00 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id fd5so38778304edb.7
        for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 02:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678871458;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LDFqstaKZo/vr0IR6PCqLNZFEnt6XwrNkka9yOMAhio=;
        b=R7J1a2XnQEnz1FaLHpIk+JrURMi6+opDKBeC5pNcd+6Eqxb+c+XPI01Xl/Ohuxvt/D
         rtUr3MudfcBWbfaVjqQ8770aoFP6DFxnvQ4oPxuLg3Xm2D79+OaqAGha/S5GI2GJiUFm
         HbtgL0advTrJSE1aSB06Axj2UGBAffBN3qge0f1buFFtD/kKmcq7nrU5sym3C3ZEmLAS
         67LjHmpiOHXm6QKt6sydVuA7/7dqFq8K1vY458sthT4/tu9WMcD31J3tjAzSGt9GzrVC
         o0Jqroj2mqhKei4TWQhUaGvDrmCp0sXNORKdSRE6fUjAx4wDzlOunScoFOZ2gHw60ZFr
         LRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678871458;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LDFqstaKZo/vr0IR6PCqLNZFEnt6XwrNkka9yOMAhio=;
        b=BKw2gamGSqKn0egqGc8y0byp2x7M496fVb8xIIpMBxVTSkiZPlz4z0T0LXNNF5d0/I
         GL0XTR23EEyktEY5sZ+HIxiNozPv1qMnYYA5jKiKnZNntQQVi9ZZ8EVzXKbl0x91i+7m
         rNa/Dve/gelNrNql8Xc43dGUXZ5NZ6b3EhQL676lkSGTykLS2nCGxPXTY123RSNCInHY
         V8UzQ15te7r+zvNpcOzWepftoz3oJld+7hhdai9OxPM78JHV8UAIk6GSRgydK1uuLm8x
         XryASuvI4MoG4/SymZ1usfterEkC8qo+3ws0p3Gv4bDubSKEG8PxkzoDRXIj8/9EWNRS
         Iz+A==
X-Gm-Message-State: AO0yUKUdgvzoF2BJOFf3xj7fbnkBcGgsYcsua9Xry1s+yt7pCHw3QJvL
	xHIcrDO2PkQbrMctrSb6b5lq4ZDpaEU=
X-Google-Smtp-Source: AK7set+Uw0akwgvBSw1JfV3F2oKl2P9oWBV8msXkFti8oBENELxWFFYn8lePzpSv72sePHpWGTgTWg==
X-Received: by 2002:a05:6402:b3a:b0:4fc:154:3fda with SMTP id bo26-20020a0564020b3a00b004fc01543fdamr1861473edb.4.1678871457789;
        Wed, 15 Mar 2023 02:10:57 -0700 (PDT)
Received: from [192.168.1.16] ([41.42.177.251])
        by smtp.gmail.com with ESMTPSA id m4-20020a509304000000b004fccef39ec9sm2071866eda.70.2023.03.15.02.10.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 02:10:57 -0700 (PDT)
Message-ID: <212018e0-dac0-adfd-ad63-2520933dece1@gmail.com>
Date: Wed, 15 Mar 2023 11:10:55 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [Outreachy Info] Ask for help finding cleanups
To: Alison Schofield <alison.schofield@intel.com>,
 Outreachy Linux Kernel <outreachy@lists.linux.dev>
References: <ZBEIAKymniRkamjr@aschofie-mobl2>
Content-Language: en-US
From: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
In-Reply-To: <ZBEIAKymniRkamjr@aschofie-mobl2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Alison,

Thanks, appreciate your help.

On ١٥‏/٣‏/٢٠٢٣ ٠١:٤٩, Alison Schofield wrote:
> Hi Applicants,
>
> We want to support you finding cleanups. Today I spent some time
> looking through staging and am working up a small todo list that
> may be useful.
>
> I posted one such cleanup to Menna because I saw them submit a
> couple of attempts at a first patches.

Thanks, but Ira said that Kadija has been working on it, so please if 
you can send another one.

appreciate your support.


Best Regards,

Menna

>
> I think that Kloudifold, Khadija, and Sumitra are busy iterating on
> their first patches. Keep going! Ask for help finding your second
> patch if needed.
>
> Anyone else who wants help in finding their first patch, please reach
> out. I imagine their are some folks exploring here, that I haven't
> met on the list yet.
>
> Finally, it seems we won't be holding to the traditional 10 cleanup
> patch requirement this round! Please continue your efforts and I'll
> redirect you towards projects after a 'few' cleanup patches are
> accepted into staging.
>
> Thanks,
> Alison
>
>
>
