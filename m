X-GM-THRID: 6609200682225369088
X-Received: by 2002:a0c:873b:: with SMTP id 56mr4898427qvh.13.1538999972462;
        Mon, 08 Oct 2018 04:59:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2b98:: with SMTP id m24-v6ls99710qtm.9.gmail; Mon, 08
 Oct 2018 04:59:32 -0700 (PDT)
X-Google-Smtp-Source: ACcGV6216wAXI8uS3Dzpppq5LsYMQkHU3POijorTEd/H+/Nm1wagfxHH5EzRv16HN4a3PG2fxUEI
X-Received: by 2002:ac8:3839:: with SMTP id q54-v6mr17754782qtb.12.1538999972009;
        Mon, 08 Oct 2018 04:59:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538999971; cv=none;
        d=google.com; s=arc-20160816;
        b=lz5qP1k1/K+325lkJIxXffrEuej3BO7P83e0R0E4s9kCh1P4BPLS6xIfHwQhxMOiwc
         UFtSfKUiHjXFtoYX4zMT/WUYdME61Lh+mBn+OgsPsAuPAIaRZkp4mdyZYc2yA6ZphcOK
         VveunpN4Acd9NIwN9og863B6lT/WDrxQuXk7e0tDrHAwQZUJSdADCqNSJjxvlg6g0g5E
         1tMw8yvWcDKgCF402cDbEeIth3yr/FbcBnE2OUjwpdBnHNf4EFqusiBgurk8xl5I5gvw
         AI8tnXAuRKblT8A8osk3zh39RnSmZ92BCkteEdgW/XOArWaMa8GHNHwLO34c8buyARQZ
         VWJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=eMVgqHrBce1CO5eQFURpfC9aH7YStBqBV/1CYVe2xig=;
        b=TSlwcYyk5UpPdPXbw4romnAoMGLITuHEXqzD0gjcyRwqtieXskuas39vSBuSyzGRa8
         NDfS2x7r1BwjWJS7aP/PnzK9CWUC9P4vzNzg6dw/hYT/aJzCmLn1Wmmvn5Tu4/6eiYaV
         Mb1dj52TDia3D91dET4aa+3B4rPaC+oLmQjtFHMxogkNOTZK4iCtQSPthRtIdCcFmkm4
         wT5vLRZXUk4ahXAtIa0me+OanGDGi1R1QEok4esSd3AZWLyx8FhLwcic/1NR3GhvWM7A
         F+OrgX4B6oqUPl6LTyTAzZ1fJbXU3LMKF1ankRlTijTXHFQ0AZOlLZ6CL3sGbX1Qbbfx
         FtqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uECyeWfG;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x41-v6si822858qth.2.2018.10.08.04.59.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 04:59:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uECyeWfG;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id r9-v6so8117840pff.11
        for <outreachy-kernel@googlegroups.com>; Mon, 08 Oct 2018 04:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=eMVgqHrBce1CO5eQFURpfC9aH7YStBqBV/1CYVe2xig=;
        b=uECyeWfGeCoo15WFlCgQmyDIpnLKcDZzYEgLjJp+A5vhOMUUT3vD4MLpMqwqST364+
         cxgCkBoiy7mH4pYoP7TIZ3w+5gU8dNXLBvKgljEjJilj0f+PpFi+nAUI3J2YvlU3now5
         lGcfB043YtMG0Vx0GsfbCiSiQmWpGjZ6tJc99Rdbc7NA5rvKkk0wuMC1aFlX1b8kbm8j
         vZIQ+Cg7KInfHFZowLnntzMzGFUnc1hCrA2+i+DjpQ2bFgap7VYgCdJttotlbEsBYiLp
         9zfRGHOa5K21QatTUmP+KnYNu+ACjOy6PsV/y/ikb47mksAKvORBcl+oo1oRgFUW3XDh
         cmHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=eMVgqHrBce1CO5eQFURpfC9aH7YStBqBV/1CYVe2xig=;
        b=pZ/MsiW5459GSy+qeYpppk6f9Spro2FTpk0iydziWxoWEI+Aht76j5RO7EsR8mxP9T
         p2Zv+flg4wB3p1/tq+wlD4oZnVw8q0BH56fLWJnGNVdNaHuFWIA8VcxJxhg8PQL9xPkv
         mMRxM7mndpW9LRldYuzVsagl1u9ich5Y8z1Qm+TvYB53btwwGeC3cpzDGlHPPlhTbsj7
         mMxoI65EW82jaW/1TH///tPf4dtID7+nMzurGQgibbDdmwnVJLC3cLNHkdBlCg5dq2Ej
         t0ZVXTAbydzgcIv6ZmFZeuS2gZH0u2R2ClI3wYLsDQQdmvmfZgSiUmEbncdnhtrifbWW
         U4dQ==
X-Gm-Message-State: ABuFfohYTAnogC5iY1FHH1hmlZsrUNtbz3Mn1sR0mEfV0gDFha5kCysH
	nYb5B0iaYdwP5sS8NwxyagTqc7+O
X-Received: by 2002:a62:c60a:: with SMTP id m10-v6mr24079438pfg.15.1538999971048;
        Mon, 08 Oct 2018 04:59:31 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from [192.168.1.3] ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id t15-v6sm44253392pfj.7.2018.10.08.04.59.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 04:59:30 -0700 (PDT)
Subject: Re: [Outreachy kernel][PATCH v7] staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
To: Ian Abbott <abbotti@mev.co.uk>,
 Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: outreachy-kernel@googlegroups.com, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, hsweeten@visionengravers.com,
 Greg KH <gregkh@linuxfoundation.org>
References: <1d352f7b-f146-73af-23bc-5301c9cd035a@gmail.com>
 <62c732c8-8f6d-6a2c-3256-ba3386444f76@mev.co.uk>
 <f8152fce-71dc-6771-a33e-bc9d95fcf46a@gmail.com>
 <CAK-LDb+bPph5Vd++WV18jMRAr75HO+qJcRk8a2L-jvmBGmDVFg@mail.gmail.com>
 <fc5d5be6-6b37-91ec-9364-e12bb8d9dbfb@mev.co.uk>
From: Bhanusree <bhanusreemahesh@gmail.com>
Message-ID: <b38a4d13-5e17-f104-c397-af680505e7ec@gmail.com>
Date: Mon, 8 Oct 2018 17:29:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <fc5d5be6-6b37-91ec-9364-e12bb8d9dbfb@mev.co.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On Monday 08 October 2018 04:23 PM, Ian Abbott wrote:
> On 08/10/2018 11:40, Vaishali Thakkar wrote:
>> Adding Greg, Ian and Hartley
>
> Thanks.
>
>> On Mon, Oct 8, 2018 at 3:46 PM Bhanusree <bhanusreemahesh@gmail.com> 
>> wrote:
>>>
>>
>> Bhanusree,
>>
>> When you reply to email, keep everyone in the loop. Use reply-all
>> instead of replying in the mailing list only.
>>
>>>
>>> On Monday 08 October 2018 03:39 PM, Ian Abbott wrote:
>>>> On 07/10/18 12:32, Bhanusree wrote:
>>>>> comedi_pci_auto_config() function prototype is exceeding more than
>>>>> 75 characters per line. Adjusted to 75 chars to improve readability
>>>>>
>>>>> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
>>>>
>>>> I've never heard of that preference for function prototypes to not
>>>> exceed 75 columns.  Where does it come from?
>>> It is the warning given by checkpatch. Earlier it used to show if
>>> characters exceeded 80 per line. But now when checkpatch is applied it
>>> is showing the following warning.
>>>
>>> "Possible unwrapped commit description (prefer a maximum 75 chars 
>>> per line)"
>
> Bhanusree,
>
> I see your misunderstanding.  That checkpatch warning is referring to 
> the "commit description" (i.e. the descriptive text in the email about 
> the purpose of the patch), not to the source code. For source code, 
> the strongly preferred limit is 80 columns.
ok. Thanks for the clarification. I will try to chose some basic thing 
for the first commit.


