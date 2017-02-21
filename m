X-GM-THRID: 6389549071972958208
X-Received: by 10.157.11.27 with SMTP id a27mr9018565ota.125.1487684902661;
        Tue, 21 Feb 2017 05:48:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.1 with SMTP id 1ls13536575ota.5.gmail; Tue, 21 Feb 2017
 05:48:22 -0800 (PST)
X-Received: by 10.200.57.131 with SMTP id v3mr1688056qte.9.1487684902357;
        Tue, 21 Feb 2017 05:48:22 -0800 (PST)
Received: by 10.202.215.6 with SMTP id o6msoig;
        Tue, 21 Feb 2017 05:46:14 -0800 (PST)
X-Received: by 10.129.145.65 with SMTP id i62mr648854ywg.151.1487684774120;
        Tue, 21 Feb 2017 05:46:14 -0800 (PST)
Return-Path: <elder@linaro.org>
Received: from mail-it0-x22b.google.com (mail-it0-x22b.google.com. [2607:f8b0:4001:c0b::22b])
        by gmr-mx.google.com with ESMTPS id z191si1985228itc.0.2017.02.21.05.46.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 05:46:14 -0800 (PST)
Received-SPF: pass (google.com: domain of elder@linaro.org designates 2607:f8b0:4001:c0b::22b as permitted sender) client-ip=2607:f8b0:4001:c0b::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org;
       spf=pass (google.com: domain of elder@linaro.org designates 2607:f8b0:4001:c0b::22b as permitted sender) smtp.mailfrom=elder@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-it0-x22b.google.com with SMTP id h10so105002264ith.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 05:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=umDOXdRiQKVFUWm4FIkppWqfA/eqwCUVgo4geN6xtLQ=;
        b=F9YIROxJbGx6pMRZ6Sgdh7Kd6T8f4AVj51mAKaqSuJ64lwULobWgRC7hhmFOi1IWVG
         /qd0m8F/mtjeFICW6y8+2PzFNZso3AfRaAcRGHg8PHD8S7rHAcRpeWvq3Uru1/7tjixJ
         HhhokcNnZ7P+W6VTeVGgG5mTJqv46/TXhsVz0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=umDOXdRiQKVFUWm4FIkppWqfA/eqwCUVgo4geN6xtLQ=;
        b=WfWrTsyk3jCA25Vu+tuUD5+wc12mp0bSTSYWfmENhOK2IsctVeGrjdoYz/bK8kj1Tw
         /6pL7Tk7iWmQ2du/piueewVZ8GxWZe8Vfql8pjll2fZxDLv4gY+cDh/apR7e9OxR/XF7
         apAtBkEKgdn3nC7Im/OFRqJ2PSddO3TAeU4wDS1V7hG1Bulm7tluqqtt/+gSU6PAsOC8
         5rncnh9451NPKucv1vUAqIpLjKZpR/Emfbp/w+nDXB2xZdqMZ0B+FS7dk4qVERSeCdsU
         335aRbS4TF6ISi7X7O49VfaHD1URySXbD4EwXIqyKJMBYprBY4gUU/GOEJ+Z22+/tbLp
         6/7w==
X-Gm-Message-State: AMke39mIXD9+/JSUh506mioD3ybnnTNb08z08oznAVayMF0Xi6VirvKhh4GaL5W0o1qKdnv2
X-Received: by 10.107.9.96 with SMTP id j93mr19872581ioi.149.1487684772601;
        Tue, 21 Feb 2017 05:46:12 -0800 (PST)
Return-Path: <elder@linaro.org>
Received: from [172.22.22.68] (c-24-245-18-91.hsd1.mn.comcast.net. [24.245.18.91])
        by smtp.googlemail.com with ESMTPSA id 96sm10276669ioh.27.2017.02.21.05.46.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 05:46:12 -0800 (PST)
Subject: Re: [greybus-dev] [Outreachy kernel] [PATCH v2 3/6] staging: greybus:
 Remove unnecessary braces
To: Johan Hovold <johan@kernel.org>, Julia Lawall <julia.lawall@lip6.fr>
References: <20170221131535.GA3718@singhal-Inspiron-5558>
 <alpine.DEB.2.20.1702211420300.3121@hadrien>
 <20170221134436.GB10245@localhost>
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, simran singhal <singhalsimran0@gmail.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <0eb2a09f-e445-fe72-f848-79bd2fcccd56@linaro.org>
Date: Tue, 21 Feb 2017 07:46:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170221134436.GB10245@localhost>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/21/2017 07:44 AM, Johan Hovold wrote:
> On Tue, Feb 21, 2017 at 02:20:50PM +0100, Julia Lawall wrote:
>>
>>
>> On Tue, 21 Feb 2017, simran singhal wrote:
>>
>>> This patch removes braces for single statement blocks. The warning
>>> was detected using checkpatch.pl.
>>> Coccinelle was used to make the change.
>>>
>>> @@
>>> expression e,e1;
>>> @@
>>> - if (e) {
>>> + if (e)
>>>   e1;
>>> - }
>>>
>>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>>
>> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> 
> I do not think this patch should be merged.
> 
> Note that all of the braces you are removing are for single statements
> that span multiple lines, and that is precisely why the braces were
> added in the first place. Having braces for such statements often
> increase readability even if they are not mandated by the coding
> standard.
> 
> So I suggest this patch is dropped.

I concur.  I think the change was well-intended but I find the
practice Johan describes to improve readability of the code.

					-Alex

> 
> Thanks,
> Johan
> _______________________________________________
> greybus-dev mailing list
> greybus-dev@lists.linaro.org
> https://lists.linaro.org/mailman/listinfo/greybus-dev
> 


