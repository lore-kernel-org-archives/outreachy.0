X-GM-THRID: 6948397950015897600
X-Received: by 2002:a17:906:3952:: with SMTP id g18mr3897184eje.104.1617803557763;
        Wed, 07 Apr 2021 06:52:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:22c9:: with SMTP id q9ls1244184eja.11.gmail; Wed, 07
 Apr 2021 06:52:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwzXv8IOA1NA27f+PFi04OHtCu4EEl4/cifKzJhJFrR8ONgRtnTr6KN0kOXlWu1HT6MDEb3
X-Received: by 2002:a17:906:3949:: with SMTP id g9mr3865908eje.7.1617803556309;
        Wed, 07 Apr 2021 06:52:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617803556; cv=none;
        d=google.com; s=arc-20160816;
        b=EginxyfyZK3djoAOwb3ebo0hsQQkXnnIgyHzEDfJhV2pBOrbGdMSAfHXpYOO1dKr0E
         +ngYX0mFyijbvEGvOQLls2Lx90bfk9IbRmuukVmnC+ipeLuiA+lRDbR99LzNcy9cFPon
         ZgUX4j/RoS9+3rj05vqIHuOhpqOfpP6Lgiqz8tz5pnt+771fJSYK8UI3L3VWn0Vy8Mct
         vDnAxEKSht70KICJQaepGXXAcPzxjA20Gq3tUmPw5XySdjQvb55RgmCbCF50alCC7u2J
         YCezAHmgwlR/OaQ62yJpbbmS8hbjTb2kE0ucP1XmuYEvK3V3C/h1BZafV3K7W9ty2yL5
         UNIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=hleXkTKcgUpCpqeqjCsgOXfKBA/Z3759zwNtLp84shw=;
        b=dKKqGQr2AUWIu+V4P5CTfCD+03GhC2A0lrWj6uu6hLATW46I4q+CRU8dUbTuw57mby
         dJaFkJKsMzlui1YgMu4QiiqdNLsROIdGb5/wQ3YYeyvjisoOIwAAxB7zpipuDc29d5gd
         FcqjOOk/oLzlnU54heHAuBJPr3/WbpNxwddodxe0ojm1beuecHkOCeysm8KuX5zNekUo
         /zTy2UcAxzqoNOQZMN9kcPYqIvCnTNmdGXaGO9LV8xCBnQ+WCM34VaTEMoCuppVG6vRG
         G2dJqjETTCk8vgRFlFpy13aN35jzRH2oFe6JQQW6QVb4fpgj0k6P6CO6CyH2WqUadqgn
         UB7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N+2Oj9Mz;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id ck26si3471351edb.1.2021.04.07.06.52.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 06:52:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N+2Oj9Mz;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x436.google.com with SMTP id b9so10199766wrs.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 06:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=hleXkTKcgUpCpqeqjCsgOXfKBA/Z3759zwNtLp84shw=;
        b=N+2Oj9Mz/S0stKobQuSd7JJY8Fty6Y3SJ+/KYg9WwT2lPZBenB+5HlxX15bWxUpcoS
         XS/tUojhc35Y8j4R8pGxnxo7+bcPFdlfdJJRRRBvlbCFBXUEp3P1Aiu4JT3YlXpTeidn
         5deQtywSztYhXzmmC0AV/B1silgbEHVlgow5wDXPr9fq8c6XAPFgb8IgVd71thK3THgW
         IIg8EfiH4G4DfoFasVWq59RSoGyQJIqL9fsn+YEItTBt2QlA/MPMMwNU0zU1fpxltgnJ
         DaFqnuFZsK27d7/NxtGFWKSJwHFI14Vx2I39DmkmmgRG4nR6XQ52G3o8s24AjaHFFxcl
         j6Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=hleXkTKcgUpCpqeqjCsgOXfKBA/Z3759zwNtLp84shw=;
        b=ZaRCNH6RCYR4greHgZVbyxRyglrU3UrsqNFnHexOLZYyYGlyxMCPeY6shY/YQFGy/p
         hsggqTDasZFfVxyxICu8f/4o+/IUW7h6N9BgX3gwP4Rr7Ajh/Lio8xbdnf/X7qQ73AZT
         jvK8Tae6k/UnX01Y36NIiolfJFE7rG8RuD5IcaKsIKTFKNXgn/CTsceFJXZe+m4uE+QM
         jfQOmTkLhmQRXSK5hxj0s9Oxf5oAtGD+TwslLKyHMwHYuzripRESty79W4r1PyXSKKqP
         4rrldYdr9cuc6i2+5U7a9/Sn9/2ikCYVUgtXVTq5AoYfrqsjOmT1ltv3sWPTGI1wHRdb
         lLNQ==
X-Gm-Message-State: AOAM533ThEmOQ9TMZZ7I/M9x6PGFDuNsC2TXgSYvj2w7WYmVcwHepQlp
	t6W5Y1bAoqm+xuBdWb2jDdQl4C5FmeuzhQ==
X-Received: by 2002:adf:cf11:: with SMTP id o17mr4717283wrj.404.1617803555896;
        Wed, 07 Apr 2021 06:52:35 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from ?IPv6:2001:818:de85:7e00:ef5c:3f2a:a646:d6ec? ([2001:818:de85:7e00:ef5c:3f2a:a646:d6ec])
        by smtp.gmail.com with ESMTPSA id d7sm9437459wrw.63.2021.04.07.06.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 06:52:35 -0700 (PDT)
Subject: Re: [Outreachy kernel] Help with record contributions
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
References: <ecc237fa-f349-4d5a-9894-e81a525f0257@gmail.com>
 <CAK-LDb+TymbYEUPfiadOtvijUpG_Witq0B1Zg_6XLE+7A0C6Pg@mail.gmail.com>
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Message-ID: <408359bf-2638-d4ce-7a14-7c6a17e453c8@gmail.com>
Date: Wed, 7 Apr 2021 14:52:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAK-LDb+TymbYEUPfiadOtvijUpG_Witq0B1Zg_6XLE+7A0C6Pg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



Em 07/04/21 14:14, Vaishali Thakkar escreveu:
> On Wed, Apr 7, 2021 at 2:52 PM Beatriz Martins de Carvalho
> <martinsdecarvalhobeatriz@gmail.com> wrote:
>> Hello!
>> How I record a patchset? I use the link to cover letter and describe
>> each patch or I use the link to each patch?
> Has it been added to staging-testing by Greg? You can then just put
> the web link of that git tree. Please don't record contributions with the
> mailing list links at this point because it'll then be difficult for us to
> review your contributions if you put links to every patch you've ever
> submitted.
Yes! It has been added!
> For example, you can just record one contribution as cleanup patches
> with following link for each project you're applying and you're done:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Beatriz+Martins+de+Carvalho
ah! I was thinking that that was necessary to record each cleanup 
patches! I will do this that you presented to me.
> Make sure to record solutions of project specific tasks as separate
> contributions. :)
>
Understood, I just send a message to the projects' mentors that I would 
like work, to know what I need to do for the next steps.
>> Thanks in advance,
>>
>> Beatriz Martins de Carvalho
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ecc237fa-f349-4d5a-9894-e81a525f0257%40gmail.com.
>
>
> --
> Vaishali
Thanks
Beatriz Carvalho


