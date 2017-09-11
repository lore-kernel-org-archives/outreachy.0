X-GM-THRID: 6463854288984604672
X-Received: by 10.101.87.206 with SMTP id q14mr2757005pgr.78.1505150100177;
        Mon, 11 Sep 2017 10:15:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.140 with SMTP id f134ls5658271ita.16.canary-gmail; Mon,
 11 Sep 2017 10:14:59 -0700 (PDT)
X-Received: by 10.129.78.202 with SMTP id c193mr7847174ywb.106.1505150099368;
        Mon, 11 Sep 2017 10:14:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505150099; cv=none;
        d=google.com; s=arc-20160816;
        b=oKRentRxzRrpF5641qcMKfOaVIM5FTHObpl6SMwfgSIn87Csjfvv5qA8bt/wPy9d5h
         b6MQzg8W/sxEPperbNGNDHzhgTr41ilswhSIi+3xHEdgzQygSpKnoNPGXzsJ8CKy76UB
         BfK22/S1GyMz2+/aR6almtix0j4jqMMmSIxltMK/VAfoCZywz12DUvVKMziw/zFmVJCc
         d2JuXrI5xAxnyahb80jzjGd357c1aZWMjiw4Qb0xoBWaPhEjmOBEPvVHGaz43AqohlbI
         PzUn+6Go+nFIPdeiXnq6oHEmiyYxQBKe0KmzbFsDnih0N+F2Y49+j8J862qJx8iD67B9
         c6Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=GG4M4DRvBovNvCJU16owbD6+zQsVL6DXcVSFzkLZfjE=;
        b=ZLhbc5tlQHHAy7n4uTksIC4yRql52GlHWycZFMW4N+Ndob//QCGA3YikvAIKp1UoRP
         0E2BHoUChWSSjsk6IA5oai8C4L5viR3S97NdBHUh0uhrHca7h474LuC0zIXivCCp+W10
         Uu8oA0/0E8Efcl2KeLpmtbF47M6gjQvM002H3oRyVaEo+TDAb+jfqKElAiGpXW660Uwm
         1quieqiKXVsiAyxxff+uZ30oD6aCDRDWL2okU+ncsqbqAZM6MU95qMk7x1/0OotkH1qU
         WZno7otlv3aCmHORITbhdv3mrMaqQUWcKOjjzRRRYEXUw5S5oz7dZ9FohV9oPRAsDjPo
         gLzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sYQjd9No;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id o12si890810pfg.19.2017.09.11.10.14.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:14:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sYQjd9No;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v5so4907172pgn.4
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 10:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=GG4M4DRvBovNvCJU16owbD6+zQsVL6DXcVSFzkLZfjE=;
        b=sYQjd9Not4Y13AqQwoDRc9+drdwxcXQWtr+T7Q2K8McXWBGdJ6twL7K83uIpP0oVYW
         jaT1VQymcmkTlEuY9LfW0zh3NohMQ6OONv2eKRJRBLO2ddU4nhJiy4+XrK+TDz85EWIA
         jgNfY6asbyeztxH3O70zm9ltW1RVrN2ht+yvl9IhFr0RG7A4vx/G57Zn+x/O/q5iO2Mu
         5U/qVWeWETlPuLZr4e/PBvul4gHSipXB5Ne4hOu6POHPitRZos4E5KOTyIASCl/pTKSs
         EBsfnGWm+g9SAGdiNV5QT1pe5M+XD6IIhDz60bdovXIMTA3UTbHytde07eCedb+JSpID
         uFpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=GG4M4DRvBovNvCJU16owbD6+zQsVL6DXcVSFzkLZfjE=;
        b=tYe+gtNmtZ3n9YBnHFkxW8IceO5AVhu2ePpAfjnbIBh0mgZCmdtrmP6e2oBwEPwMiF
         //6+LhZWBeG2CV/qZWhjilIhleQdV99N4LamXyUkTbU+UOcuYBXW6MnguCP2CqDNmHaD
         34dZHAgnyXTWFZuEYwPsrFajaBYpJbCS4W39BEsv0WxCOCcjnZm5+sRzD+0PXh5zXJ+/
         /jFTC81SO3gtn5srHWt/JzsV7RziDsJHIxEm+4dQHia7a4e9fxmeMVGeto7K/GM5Wcj4
         hKq363/WZD+0XBUZvN/rkA33fdZlIhm+yOxQ36/5dZsMMvRZOSheC5ms7TDq7AwpnPMu
         N0tg==
X-Gm-Message-State: AHPjjUhlp/3Q9nYwIrZTZ5O9gk1AWa2S4nBLVbm/Gn/VsPM6dmDxQS/O
	XpyKgMJGfrUXggsuYyA=
X-Google-Smtp-Source: ADKCNb5qfF6Y9UJYwEpNybW/0IUPsa4w78pTOpRFB8KlUMMZvyvo1MntgOU8IZiWZHElxjb4mWZEIQ==
X-Received: by 10.84.214.143 with SMTP id j15mr14263880pli.31.1505150098844;
        Mon, 11 Sep 2017 10:14:58 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id c71sm12172640pfk.71.2017.09.11.10.14.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:14:58 -0700 (PDT)
Subject: Re: [Outreachy kernel] Re: [PATCH v4] Staging: rtlwifi: Remove
 unnecessary 'out of memory' message.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
References: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com>
 <20170911163210.GA26981@kroah.com>
 <6e7b1bf6-89b9-a40e-4a67-af79312b12a7@gmail.com>
 <alpine.DEB.2.20.1709111900220.16190@hadrien>
 <6ac72deb-edd6-1026-a2e9-df6ea871b3af@gmail.com>
 <alpine.DEB.2.20.1709111909454.16190@hadrien>
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <bf32e89d-dc1c-0f27-aab3-097c00441340@gmail.com>
Date: Mon, 11 Sep 2017 22:44:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1709111909454.16190@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On Monday 11 September 2017 10:41 PM, Julia Lawall wrote:
>
> On Mon, 11 Sep 2017, Shreeya Patel wrote:
>
>>
>>
>> On Monday 11 September 2017 10:31 PM, Julia Lawall wrote:
>>
>>
>> On Mon, 11 Sep 2017, Shreeya Patel wrote:
>>
>>
>>
>> On Monday 11 September 2017 10:02 PM, Greg KH wrote:
>>
>> On Sun, Sep 10, 2017 at 03:10:05PM +0530, Shreeya Patel wrote:
>>
>> Logging messages that show some type of 'out of memory' error
>> are generally unnecessary as there is a generic message and
>> a stack dump done by the memory subsystem.
>>
>> These messages generally increase kernel size without much
>> added value.
>>
>> Problem found by checkpatch.
>>
>> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
>> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>> ---
>>
>> Changes in v4:
>>    -Include v2 and v3 in the patch.
>>
>> Changes in v3:
>>    -Make the commit message more appropriate.
>>
>> changes in v2:
>>    -Original patch was not sent to the mailing list.
>>     Also, add a tab before the return statement.
>>
>>   drivers/staging/rtlwifi/rc.c | 4 +---
>>   1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
>> index 65de0c7..779a5c6 100644
>> --- a/drivers/staging/rtlwifi/rc.c
>> +++ b/drivers/staging/rtlwifi/rc.c
>> @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
>> 	struct rtl_rate_priv *rate_priv;
>>
>> 	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
>> -	if (!rate_priv) {
>> -		pr_err("Unable to allocate private rc structure\n");
>> +	if (!rate_priv)
>> 		return NULL;
>> -	}
>>
>> 	rtlpriv->rate_priv = rate_priv;
>>
>> This patch is sent corrupted (leading space is gone), and git doesn't
>> like it.  Can you please fix it up and resend?
>>
>> thanks,
>>
>> greg k-h
>>
>>
>> Hello sir,
>>
>> If i am not removing the leading spaces then checkpatch is showing me errors
>> for trailing whitespace.
>>
>> Maybe you are not using checkpatch properly?  What is your command line?
>>
>> julia
>>
>> perl scripts/checkpatch.pl -f
>> /tmp/0001-Staging-rtlwifi-Remove-unnecessary-out-of-memory-mes.patch
> -f is for files, eg foo.c, not for patches.  You should be able to just
> give the patch file name directly.
>
> Also, could you change your mailer to make something visible when you
> quote other people?  Otherwise, it's hard to sort out what is new and what
> is quoted from others.

Ok. I will do that soon.

Thanks.
>
> thanks,
> julia

>>
>>
>> But there are no leading spaces present in the file which i have modified.
>> When i convert my changes into the patch, the whitespace errors are shown
>> up.
>> Can you please help me with this to make me understand why this is
>> happening?
>>
>>
>> --
>> You received this message because you are subscribed to the Google Groups
>> "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visithttps://groups.google.com/d/msgid/ou
>> treachy-kernel/6e7b1bf6-89b9-a40e-4a67-
>> af79312b12a7%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>>
>>
>>
>>


