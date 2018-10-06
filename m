X-GM-THRID: 6609200682225369088
X-Received: by 2002:a6b:3bc8:: with SMTP id i191-v6mr11305020ioa.32.1538849140178;
        Sat, 06 Oct 2018 11:05:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a81:: with SMTP id v123-v6ls1356994ita.6.gmail; Sat, 06
 Oct 2018 11:05:39 -0700 (PDT)
X-Google-Smtp-Source: ACcGV610fEG3P3lQAiujbKucgs4lDSAS8NhCD4GS2t94tAnjXhk4asrVE+laElhA7VtmPjIPQw7Q
X-Received: by 2002:a24:d945:: with SMTP id p66-v6mr12038748itg.21.1538849139417;
        Sat, 06 Oct 2018 11:05:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538849139; cv=none;
        d=google.com; s=arc-20160816;
        b=cT72iJeQiqg6BiyS9D5SGtVR3VU1vRN1a74r9IynJio/LazoRqjVRGpDRylpp0a05o
         jGlZb8t1oynx0pVR6gO8v/FvUV8EWQUiU2OuvWOTIdq7aWsVDZwxPvJ57C0/G14/+IWG
         +ep1HMA7QFFG/sFF8nxim8bhDHZgdzTaI+O7sVjkeLvD/A/YTTqPAWP2+9SJzv56+Cgz
         fcS5cyj0/UYb6F6dNbcB4W0HNa4ZAZxxSzJUHvKD555SahvRtXGzjB2AHdIpUL6I3/rv
         hCCa+ErRd3YXjIbT4LM4faVk8hUC7z5FJJx4CSFhi+/dYOglU9ZePek50sarmCUnSjXK
         cRvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=a1SdA7j3wHQBwmJzdTKv7YOYSUQBemQEGpVkLf4lHq8=;
        b=QVju7QvgSbKQS/pZlxjdpkYFJ++bkZqD1jUjJpcxwO+fIN47Ly+RaYEvnTGygCbtLx
         SKIeOXiuZrUL0lRUUQfm06FuCmAJxJmDaawgEQ4OV+5j3k9Cq42RkNXOVoXlDUl5uYao
         IhAS4PU5NFxVV9kgmMnLGSdEKE4n/UFsg3N3fUGdeSQTiJsu9wUEGSW4bmU3o0/CZhS/
         /lGA0fbfhHd5/pXEiWBDa6EJk0KVl51xei+ZRWReGAwOQH69uuxpiHWWy3H4URZdKoKd
         mzRub57V09pzx5uZ4uVYmcs3ElwX8JoDrIgmUHNXLL5/lFKsCIVEJ1deoeBA5sMUDahR
         9zcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tTR70LeQ;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id 199-v6si89443ita.2.2018.10.06.11.05.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:05:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tTR70LeQ;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x634.google.com with SMTP id w14-v6so8257609plp.6
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 11:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=a1SdA7j3wHQBwmJzdTKv7YOYSUQBemQEGpVkLf4lHq8=;
        b=tTR70LeQKdSt5RhKxZtpnu0OQARJ5nOm8w3XdzAMbPl0Luz0BVduecHQEbLJbtehaf
         J9/lwIfUpoDnhpgU68jEq8Kt/nb5eKwK8REdzOaXQB0oECHWrlaA5+wdluEiANy8d+N6
         huD0x7ovQxVM+Hwf7QdZW+drVgYEZtMpYZnDxeY6V7Dg/1O+j2ecm9thHW60aF1Yrqub
         QrcsjLDArM9Ox1lwD8pdeAADpNgPsw+cgLRMSYS3dUZeYrSYCfipgGqxJgFYai/MGnAM
         qOZIK8SPqljrKC8bxw6uaczfsxSCgnJYR8nptWztwtRFqLyadRNYlPwDvhUJpWi8ZLDO
         Mvyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=a1SdA7j3wHQBwmJzdTKv7YOYSUQBemQEGpVkLf4lHq8=;
        b=L/E5J9XgRxilnypF5Kr0tkRoMAVrYC1EtPuueGiR5ytGYP9wy/YMvOfzBQ4sjlAbvU
         zsqjnW6adTJ8wPKsSLC4OxOlBCkw2PPGu1Y/5KZm3lBDjzdUm34W3qEf6ioCrcUKPmiM
         QzkfxM7rl1Dv89QZ29HPkA6UoLUXf0LsCnZ6wO+9Fo7u3yTGpTOgvuMxrU+k3fKPfL9J
         TjYFQYnj0Fyr+KZhG29iYPoXm7uKEEhQ+33K6dXU0VaL6vYtIrFiIgH/QzWEX6+0O7OD
         bYPS1zfbqwYlSSHPAfJKCmyNdFtn6wb4hgq46gGyidJrizlsgZvNBvGVl8uFu69WvZL5
         CdfA==
X-Gm-Message-State: ABuFfohgHye4Lrr9ekaREiUUyu9oE2Qic2FjGgH6Z77JqW6qD/Xb8+Fq
	lXoErApqxGuJzonXMI6pBgo=
X-Received: by 2002:a17:902:d01:: with SMTP id 1-v6mr17193252plu.88.1538849138733;
        Sat, 06 Oct 2018 11:05:38 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from [192.168.1.5] ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id g62-v6sm17826362pgc.22.2018.10.06.11.05.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:05:38 -0700 (PDT)
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v3]
 staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
To: Himanshu Jha <himanshujha199640@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
References: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
 <20181006175958.GF6283@himanshu-Vostro-3559>
From: Bhanusree <bhanusreemahesh@gmail.com>
Message-ID: <8b2ea889-5ef2-d0a4-d48f-e09d00299434@gmail.com>
Date: Sat, 6 Oct 2018 23:35:34 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181006175958.GF6283@himanshu-Vostro-3559>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On Saturday 06 October 2018 11:29 PM, Himanshu Jha wrote:
> On Sat, Oct 06, 2018 at 07:27:52PM +0530, Bhanusree Pola wrote:
>> Adjust all lines exceeding 75 chars per line to fix checkpatch warning.
>>
> Would you mind explaining this:
>
> from:	Bhanusree Pola <bhanusreemahesh@gmail.com>
> reply-to:	himanshujha199640@gmail.com
> to:	outreachy-kernel@googlegroups.com
> cc:	bhanusreemahesh@gmail.com,
> gregkh@linuxfoundation.org
> date:	6 Oct 2018, 16:44
> subject:	[Outreachy kernel][PATCH v2]staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
> mailing list:	outreachy-kernel@googlegroups.com Filter messages from this mailing list
> mailed-by:	googlegroups.com
> Signed by:	gmail.com
>
> "reply-to" ?
>
> >Please check your email settings!
>
I did not understand.What was the mistake i have done ? shouldn't I 
mention "reply-to" in specific ?

