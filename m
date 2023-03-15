Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8546228E2
	for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 08:41:49 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id e15-20020a17090ac20f00b0023d1b009f52so1084856pjt.2
        for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 01:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678869709;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4zFMLDyL/bdLRe5Gwpg0yXR3rwuSKgB0m6HNAFB/EHw=;
        b=cmRAW6PZlhGCo/UnI7P7GRTbhrXNRd1UB0HF4rpDf+3mQyz6FVgjedDIoBCaIY4Oec
         asbYi/18/XPNLiLR8OekfHxPik3AVkQ/BnoOLB14YfiRE/IwuugJeKfsa61l676pNp/v
         AWgRsQc/kD8L8U8vsDBqPCwQAWcpZfaw61iR5TgvelfHbI+3xjsyDMZxR4jLgivZ3VnA
         DAPT68KSTrptF9/wADuTol/TgywXEQkfJGPl50GA2CAY7aDsc0F47TJ9lRFKbIv0aYBl
         cf+9MB6Ic9T/7FPq0WOrwmJcE92Y50oTaueP+Y2hrDOTkuPZiKrDLKseIvAqv0qr0JqM
         DavA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678869709;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4zFMLDyL/bdLRe5Gwpg0yXR3rwuSKgB0m6HNAFB/EHw=;
        b=QbbuInXJfdn+otHmNKiO5b++5WGd9gfGT9wWyFENeho9zoOE76Qe3gPEK+DGqzCHoQ
         gpKmrOVrfp1TBs16HlrPgsGKPj4lkMzt7/Of/uwzQjmZoMuh8Bz+Kvmv2Yr9bHKsIn5G
         ES6X4TcJ2YABRIS1t7RG9qKEfOwtMZhqcOqmWJ4a/vOKLYhZ0B78+dlcYT13UcHsa069
         X11Dk9BTdUHY6eGAqUGT8WTLDbTUXzqxG6tXRJzgdIhq5iY+3rOc7FFC+bCq+wFy01s9
         jq94u0aTkwPcnyXzInn086Cl3p1w+4sNrGj1vE3+7HWNMTcHKK3QR1TthEP/N5HPPUNF
         /U0g==
X-Gm-Message-State: AO0yUKVM8QIsRta4rt+EKJ983AUzofpUSt4rVeugtdDSEz+92w9G0y97
	xYCF1RYbQLt4zWNFC7RGFdwiJxMcSGw=
X-Google-Smtp-Source: AK7set9iWvo8Cv7dLQRDLiqBk8RNhN2al9LIlMVVno5edqC9jtX/WBX5A6hxK9DFMzdTmtesPIJQgQ==
X-Received: by 2002:a17:902:e848:b0:19a:7758:e5e6 with SMTP id t8-20020a170902e84800b0019a7758e5e6mr2145951plg.48.1678869708873;
        Wed, 15 Mar 2023 01:41:48 -0700 (PDT)
Received: from [192.168.43.80] (subs32-116-206-28-41.three.co.id. [116.206.28.41])
        by smtp.gmail.com with ESMTPSA id h17-20020a170902f55100b0019f3a28ea29sm3057233plf.160.2023.03.15.01.41.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 01:41:48 -0700 (PDT)
Message-ID: <936dcbf3-0bf3-0461-1ea5-d71e0e60fa88@gmail.com>
Date: Wed, 15 Mar 2023 15:41:40 +0700
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Content-Language: en-US
To: Sumitra Sharma <sumitraartsy@gmail.com>,
 Linux Outreachy <outreachy@lists.linux.dev>
References: <20230312170757.GE28100@ubuntu> <ZA7oTq4LwuatjaI4@debian.me>
 <20230314081646.GA37415@sumitra.com> <ZBA+AtHMFwwkwifW@debian.me>
 <20230314123317.GB38692@sumitra.com>
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <20230314123317.GB38692@sumitra.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/14/23 19:33, Sumitra Sharma wrote:
>> On Outreachyfirstpatch, there is a pointer to Outreachyfirstpatchalt
>> (which contains instructions on spinning up Ubuntu VM), so you need to
>> install your tools (including postfix and mutt) there if you want to
>> contribute through there. So I think the latter doc should be kept as
>> is.
>>
> 
> Hi
> 
> Can you send me a link to Outreachyfirstpatchalt, I am unable to find
> it.
> 

For your completeness, see https://kernelnewbies.org/OutreachyfirstpatchAlt.

Again, what I mean that OutreachyfirstpatchAlt is about spinning up
Linux VM. If you need follow setting up tools in Outreachyfirstpatch,
you can do that in the VM. So I suggest not to modify OutreachyfirstpatchAlt
for now. (But I wish the slug could be better named as LinuxVMSetup).

When replying to public mailing list, like here and LKML, reply with
"Reply all" button or similar. Do not just hit "Reply", as it will
reply in private.

Sorry for confusion.

-- 
An old man doll... just what I always wanted! - Clara

