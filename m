X-GM-THRID: 6948024355480666112
X-Received: by 2002:a05:622a:282:: with SMTP id z2mr11590577qtw.283.1618406262105;
        Wed, 14 Apr 2021 06:17:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a3c1:: with SMTP id m184ls1256333qke.1.gmail; Wed, 14
 Apr 2021 06:17:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyoF3UAZrr2cGlr2braDqvZTjrzBWEPC1uRST5jAW/PV729QQq3qQNUr9MEkGraP5A/Hs1I
X-Received: by 2002:a37:9042:: with SMTP id s63mr31281517qkd.324.1618406261245;
        Wed, 14 Apr 2021 06:17:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618406261; cv=none;
        d=google.com; s=arc-20160816;
        b=IlBCvwDtSP1u6RWKucyeMY2s1RW3WQ5yv/8we/sAxZcBvAtp3jrtMofKP4xmHRBg0t
         1yJLZ+ofqK3Q351Zr/GeRsFJuNl7E6IZ6Ub+EYWT0BRfJIYQwjnycfTOPsU1kD9icdSa
         J2l/mIYRRtYYm2Ez6i1fp6PrTsNGa6BaWziesvnPPnIhkuJzDBFZayPKHop+vvt/s0YG
         /NMeBEmS3EkOGQKMQZvzbpQPhaVG4ZDiJ8wumaKo/uGa2DTR3mOvmqCZtM/z5j6kNnEg
         dV96Md8tnub1Qp7xqmVY0xsFZGI1VFScMW+UBDMudkQaBW3zxe/c6UeBUUPDee7sdzaF
         J0Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=KR5tUi2Pjym92G8VJBGTvp1Vw9Vmq14ckbna/IAfvxY=;
        b=S/IFV+/2hkc7x2MjphHCe5K2pMArHiegtKg0ohHPsOs6c1ttzzCGYnfvuSsyBK1x1u
         X3s46cWvgmHz6V9KY8dv+0Nuo7xvk10KaP+eZydzcEVAFM/gI89m0I4KDUCyyoiIhahj
         LeTafaEH2oKsBsFROK8mPua0aFoD5aoqO7i/IcDdt7UahzU9nUM6n/kHy3Im1WJnFv1u
         3+S25sbAOJAIHKSHnUYWaSzdQKWyUHAot4ZOVrlZQ6iFUs1su8OP0CdXkEd64v3HvcMv
         3Ml4PHR9gJHIdV4/5O3wLkKVLeFORXpgrEyVVESEzEDbATzcdrOSXBaPPHSpaMzQnA0/
         zT4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ieee.org header.s=google header.b=LXpcpQcB;
       spf=pass (google.com: domain of elder@ieee.org designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=elder@ieee.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ieee.org
Return-Path: <elder@ieee.org>
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id n9si1381182qkg.0.2021.04.14.06.17.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 06:17:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of elder@ieee.org designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ieee.org header.s=google header.b=LXpcpQcB;
       spf=pass (google.com: domain of elder@ieee.org designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=elder@ieee.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ieee.org
Received: by mail-il1-x12e.google.com with SMTP id v13so1035483ilj.8
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 06:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KR5tUi2Pjym92G8VJBGTvp1Vw9Vmq14ckbna/IAfvxY=;
        b=LXpcpQcBz4zfAoS3GCoj2F36fqCg83/wkDUE/2flZ4QY/NLdrXBzUHPJp5syo5f+uV
         NzYemHAM0XS0+RWtXiKoERGidOZnVfMZtnV86xTUC6CWr1B5ykeho2l7NbBK+IJbfzXk
         p5D7/PA7yRi9D1nhZy78UuT+H1i2dXHhIiOZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KR5tUi2Pjym92G8VJBGTvp1Vw9Vmq14ckbna/IAfvxY=;
        b=n5dked4M2ayQVC99POP2ux9ZZhCvX3zRAEoKfvlmFedvS4/hPEzQtBOfO4E5/xt+tq
         CiNgAKDhXCPAIK28iYbSjDNAQZIF3sPkT0MNioZd48Y0qH61Ji3TvZYMcMY3FLtXJIj4
         L5Da6zEbdzABG8PV/QkEf3/HNPYFZIhwtTt9eWAxmztq05PcOWp1ff9PHenT0907HoTT
         8f0ijAEmHz0v7lMvZulMGgPCUc5kqKVJkQaWPaQ7oBeYs1IClSWkf4clChtQNmMQTQ2E
         07hkavby6zfIP3h6C0W+LF0Qr72sKZJ0m6KrzDd66KfaAn5okYWkTrTjZ3Qn69Tr0wXg
         dThQ==
X-Gm-Message-State: AOAM530u2TPfp+1juVQzdJJ9z9wi4tQzQ6QyI9WWqwojAdLNlDQZ53Af
	NUE2K9jYLgQ7UFbW80vVgnQxvOrJL2s4/lCr
X-Received: by 2002:a92:7f0c:: with SMTP id a12mr16080857ild.54.1618406260271;
        Wed, 14 Apr 2021 06:17:40 -0700 (PDT)
Return-Path: <elder@ieee.org>
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id h17sm3621738ilh.55.2021.04.14.06.17.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 06:17:39 -0700 (PDT)
Subject: Re: [PATCH] staging: greybus: Match parentheses alignment
To: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>,
 Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
Cc: johan@kernel.org, elder@kernel.org, greybus-dev@lists.linaro.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <20210406124259.GA96537@zhans> <YGxhrLZPIPjILWUH@kroah.com>
 <7d7be8bcc0e80d826083890ed7791070ad25e603.camel@perches.com>
From: Alex Elder <elder@ieee.org>
Message-ID: <1607b040-6bc4-9a58-ae81-4ea0adf5885d@ieee.org>
Date: Wed, 14 Apr 2021 08:17:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <7d7be8bcc0e80d826083890ed7791070ad25e603.camel@perches.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 4/6/21 12:21 PM, Joe Perches wrote:
> On Tue, 2021-04-06 at 15:27 +0200, Greg KH wrote:
>> On Tue, Apr 06, 2021 at 06:42:59PM +0600, Zhansaya Bagdauletkyzy wrote:
>>> Match next line with open parentheses by adding tabs/spaces
>>> to conform with Linux kernel coding style.
>>> Reported by checkpatch.
> []
>>> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> []
>>> @@ -378,8 +378,8 @@ struct ap_csi_config_request {
>>>   #define GB_CAMERA_CSI_CLK_FREQ_MARGIN		150000000U
>>>   
>>>
>>>   static int gb_camera_setup_data_connection(struct gb_camera *gcam,
>>> -		struct gb_camera_configure_streams_response *resp,
>>> -		struct gb_camera_csi_params *csi_params)
>>> +					   struct gb_camera_configure_streams_response *resp,
>>> +					   struct gb_camera_csi_params *csi_params)
>>
>> And now you violate another coding style requirement, which means
>> someone will send another patch to fix that up and around and around it
>> goes...
> 
> None of the coding style document is an actual requirement Greg.
> It's all rules of thumb.  Useful rules, but not hard and fast right?

I agree with this, but this ambiguity causes some problems.

Greybus is a go-to place for just-starting developers to
work with some reasonably good "real" code.  But someone
just starting has no way of judging whether the warnings
issued by checkpatch are real or not.  Even experienced
developers will lack the insight to judge this if they
are modifying on a less-familiar part of the kernel.

The result--for Greybus certainly--is fairly regular
stream patches that suggest making trivial changes based
on checkpatch recommendations.  And unfortunately each
one is destined to be rejected by the maintainers.  This
is no good for anybody.

Can you think of a way to try to further characterize
how "serious" a warning message is?  I recognize that
even if (for example) you had something like 1-10 severity
scale, the scale might not be uniform across the whole
kernel tree.  Perhaps (like the -W options for GCC) there
could be a way to specify in a Makefile which checkpatch
messages are reported/not reported?  I don't claim that's
a good suggestion, but if I could optionally indicate
somewhere that "two consecutive blank lines is OK for
Greybus" (one example that comes to mind) I might do so.

> To me, the biggest issue with this code isn't whether or not the
> code is aligned at open parentheses or stays within 80 columns,
> but is the use of 30+ character length identifiers.

I agree with you on this one...  I've worked with code
like that and it's very difficult to make it readable.
I've made a mental note to go look at this and see if
I can make it better.  I can't say when I'll get to it
but I think it's a good suggestion.

					-Alex

> Using identifiers of that length makes using 80 column, or even
> 100 column length lines infeasible.
> 
> Perhaps seeing if include/linux/greybus/greybus_protocols.h
> could be updated to use shorter length identifiers might be useful.
> 
> The median length identifier there is ~25 chars long and the
> maximum length identifier is ~50 chars.
> 
> 
> 


