Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C227C
	for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 15:58:52 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id w21so16493792wra.2
        for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 08:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BUuQtDre2SbW9YQChHCUIKV3LZ+6xhZRSLRw6p7DnxQ=;
        b=jQ6y6+s1/9SZL/E4NPLmUG07PMCa3jk2GdD0eSnV8y3F5W1XcvJURYZh8bbxoIUh+o
         i5ZqJlQ9PZhs9JnrmaoCwmmDXli7fKD4t7p3zTSpriYN7NFRjmsUFVme55ze/rQoh0Fp
         hHV45XzqVoabSt08wqyfv3SpFEGEDElOGfJxqJ6WAnpKkSJyX2muA4t/ePQchKh3H1xi
         G9uvIyxp6SeQjhHh5HQs0WnbyCcaPplKz2vdequ15yAIyB8K7Vl/UOH5oxOx5OpwE40r
         lRKMAF041/0ZedZ797rT2N4xv/xpPS+q61McKC/mSN/C3oLV767ciAbEb298l0I8xfd6
         DnAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BUuQtDre2SbW9YQChHCUIKV3LZ+6xhZRSLRw6p7DnxQ=;
        b=00cfJ0I+qCS1CNge4DdPcGUR6Fsgu4aOJsevLUMb1WDWh0uANNpMjG/7Atu3g0Lx5L
         0F7ciwRnl4xQBkiXAZ5Wfz0yODCGX4fZO7QaxpZ0V+jhg7RnT3k0jllI8ggPKZpNuOPR
         Ds5G/996TKXiey6jAH9wfXhiyN59g4KeNf5JY4t9yhYX7/UNar7JkUIBSQ85fz3SNg9i
         Ry7JMOBwEnaI7QNdKXj3GiremffQuF6AAOQTZeH4PTntMIuoN4+58H3rOToki6MU26zR
         7kADSC941swR04625e2SSqalyNYGFRFwzp1uy4YQ601+ESluj7+yyWLolCax1W9q1+vl
         xumQ==
X-Gm-Message-State: AOAM5303nTOGGThKXseHy3DSDTzpQDW0nx13n3A626IzdrkzfJv6zQ/V
	l7HRnRRxnWz/ugC33jdu33s=
X-Google-Smtp-Source: ABdhPJw+npS8UFm/QNK0vnzOcFxT3yHpuVYfekJkkUkx8du5jBr1LSuwrS96kBs8XklLJyE68/zCrg==
X-Received: by 2002:adf:b60b:0:b0:205:9cf1:20fd with SMTP id f11-20020adfb60b000000b002059cf120fdmr20951851wre.253.1648483130725;
        Mon, 28 Mar 2022 08:58:50 -0700 (PDT)
Received: from [192.168.1.14] ([102.41.111.198])
        by smtp.gmail.com with ESMTPSA id v14-20020a7bcb4e000000b0034492fa24c6sm12118182wmj.34.2022.03.28.08.58.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Mar 2022 08:58:50 -0700 (PDT)
Message-ID: <1d305abf-1b0d-c43e-6fe9-aa6e74fcb430@gmail.com>
Date: Mon, 28 Mar 2022 17:58:00 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: IRC channels
Content-Language: en-US
To: brunodout.dev@gmail.com, Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy@lists.linux.dev
References: <20220327180801.GA477239@alaa-emad>
 <20220327213039.579d15d7@elisabeth>
 <dd79b324e01740af619f4d3e0a57e1409e718606.camel@gmail.com>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <dd79b324e01740af619f4d3e0a57e1409e718606.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On ٢٨‏/٣‏/٢٠٢٢ ٠٢:١٦, brunodout.dev@gmail.com wrote:
> Hi Alaa,
> Hi Stefano,
>
> On Sun, 2022-03-27 at 21:30 +0200, Stefano Brivio wrote:
>> Hi Alaa,
>>
>> On Sun, 27 Mar 2022 20:08:01 +0200
>> Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com> wrote:
>>
>>> Hello All,
>>>
>>> I am Alaa , My initial application approved. I have
> Heyy Alaa, congratulations for that! I am very glad to be
> here and hope you are too!
>
>>>   I couldn’t join both irc channels, any guide plz
> Are you using the web client? If you are, you might access
> one of Stefano's links to join the first channel, and then
> join the second one with the command:
>
> /join #second-channel
>
>> Can you try these links?
>>
>>          
>> https://webchat.oftc.net/?randomnick=1&channels=outreachy-
>> kernel-networking&prompt=1
>>
>>          
>> https://webchat.oftc.net/?randomnick=1&channels=kernel-
>> outreachy&prompt=1
> Using both links as Stefano said will also work, but you'll
> have two browser tabs and two different connections using
> two different nicknames for that. I think adding both
> channels sepparated by comma in the channels=... part of the
> URL might also work, but I haven't tried.
>
> Best regards,
> Bruno (IRC: CodeAgain)


Hi Stefano & Bruno

Thanks a lot for your help , I am able to join both channels.

Best Regards,
Alaa

