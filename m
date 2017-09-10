X-GM-THRID: 6463854288984604672
X-Received: by 10.200.39.79 with SMTP id h15mr4357216qth.15.1505028275244;
        Sun, 10 Sep 2017 00:24:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.223 with SMTP id 92ls138549iol.7.gmail; Sun, 10 Sep
 2017 00:24:34 -0700 (PDT)
X-Received: by 10.84.234.132 with SMTP id n4mr4899642plk.5.1505028274463;
        Sun, 10 Sep 2017 00:24:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505028274; cv=none;
        d=google.com; s=arc-20160816;
        b=j3Cj8qudon1cCHxHmHyX48UxQSySIaq0gH1Hx3+L+vNMFP/6HXtBs8Ey8PoqR9PZti
         3oCTLxyRl0hwpuYkDQw3XhnoUppCtFzeHKRIuVZliuwjeBapdwYY4trZolWbEAcsA0dQ
         gANUAsp2G6OaTLHy8MEah3yC4ALMnB6enLoIa/7WC6T93rLmekx2Poe/bciMUi9AruW7
         jXGPJvNg1si7mVFn5LSYwC3TahGJl9dd8OpD2EtDQ+v3QdUhGNnHJm1wM/3rE6nHkcrX
         toYBdV2v2CEAQYInvWua6zzHXr61uZmRITrpRI5Ln4DlFmIO2lMFcNw/8BfEqn342Xqz
         fxww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=EmLiMkTxXIuUWW3iiLN2bpgIyh/0En3MumJkXKQpMeU=;
        b=iH1yzSM7mi08xpD6s19o8YKfQja1xfPt3qjb1oJt+/G9ShNFYgUFa3xViPckp4Vfhk
         fbd9TFyN9KiTRWMUDCYRs1iBXksehH/N0BgZt8QBXaTFDPeTNEwpEU0V7aVglax6ntW5
         1MMfvr9msrOxi8OQ0v3mM3Axkf5Zn9t39c+gzjz6kjgLO0p4qRua0KafZHRE0ncWY4L/
         sflIWWUZutwNdcbxTwTrXflB7qQi0OJNRpc8uY1n/AImh/9wQ+Rjqr79P9X1XrvIRs79
         zg9X/3+hCPSAC016N1NM8s8zztNfD/KnZe4drsqj4l5NR4nQYCyFgfZbKiaIM2bpULaz
         TyPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U55IRAJz;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id j20si625006pfa.18.2017.09.10.00.24.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 00:24:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U55IRAJz;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id i130so1223246pgc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 00:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=EmLiMkTxXIuUWW3iiLN2bpgIyh/0En3MumJkXKQpMeU=;
        b=U55IRAJzq9OF39u7FnoG+DExkL60jvG0DL0p5Kr7+sr7Vk8MpO/vyUb3IJcW8yGdnM
         JQjk1p2NV6ls2lh/ZKJM2ZP7rc5VhleHFw/j3jAjR6yLZ5qmZtaFSrYOwQm8VE42rWGZ
         IqEPAkE9mVV1blM+hiFruALEPtvEUMf3+8ijeI1XC1VaDtJVc59l/t4rK/Xl37p6zaCY
         n4lhUOg8K6jmbLO1ObHIkTx3UJhKfNodyWNknJQXHgEF7KDovFE9phLPVsCmjTH+D9tO
         KqsBze46stKZFKxkAIQr10D6xUEW9rWSgsaaCJCacGxfFDbkf6NUYFOZgbKUJG5W6A3A
         h80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=EmLiMkTxXIuUWW3iiLN2bpgIyh/0En3MumJkXKQpMeU=;
        b=Es+WWkkfjpc0QRprPFtW+TeqVNxkb4ODTBc4ToSHkvoybeDCr/Xhywx9NdcGM3Sbmf
         cenuEpkwkZHIA+UYOOX5DxkdeG+BsY7ExE6/hvueG1FYYgypMUzi/bC6gNZpFYxWJry2
         6By/re1XEqMHlfhAjVedO4cDKtsALbdlA5jkLn1Ku9jq6Qk6KyFkIdFba+N11fY3uX8b
         fv7sIGSODD6Yl2o1d1pNSVOsQ/b0K/r3zEIO6SGtP/cuYKzQrhj2HxEktgc6KxCRfc/7
         0gDECt5gZBLVbMzrKv4IpuS2kHUVellQky1p3oW1YbAMkPNbtwV0ggHeDKhNYdjfUWwM
         VJ6g==
X-Gm-Message-State: AHPjjUgggbTA5aO0leh8fSLToZsdo8CIvtimUm6FCOrhVSXd4S65U23V
	IbMjSk+Djvfj0zPeInc=
X-Google-Smtp-Source: ADKCNb6Bql1X/cGuNXBaML69hdbd0azXYLyCF9Fbc5u7dD5wdWxYkyUE0gnaayZqvwr2UeUE/vz+Jg==
X-Received: by 10.98.70.90 with SMTP id t87mr7957039pfa.114.1505028273809;
        Sun, 10 Sep 2017 00:24:33 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id y63sm10281610pgd.20.2017.09.10.00.24.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 00:24:32 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtlwifi: Remove
 unnecessary 'out of memory' message.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
References: <1504983347-2957-1-git-send-email-shreeya.patel23498@gmail.com>
 <alpine.DEB.2.20.1709092109580.2149@hadrien>
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <b9f740f9-03a1-718c-40e1-212cb1ee0b45@gmail.com>
Date: Sun, 10 Sep 2017 12:54:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1709092109580.2149@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On Sunday 10 September 2017 12:42 AM, Julia Lawall wrote:
>
> On Sun, 10 Sep 2017, Shreeya Patel wrote:
>
>> This patch removes unnecessary 'out of memory' message to make
>> the code more efficient.
> I'm not sure it is really an efficiency issue.  The kzalloc will probably
> indeed never fail in practice.  And if it does, the system is probably in
> a state where efficiency doesn't matter.  On the other hand, regardless of
> whether the error occurs or not, the string will take up memory, and
> anyway, it is redundant, because kzalloc will emit a backtrace on error
> that will point to this call site.
>
> julia

Ok. I will find out the actual reason that why this warning was put up 
by the developer and will re-send the patch.
>
>
>> Problem found by checkpatch.
>>
>> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
>> ---
>>
>> Changes in v2:
>>    -Add a tab before the return statement.
>>
>>   drivers/staging/rtlwifi/rc.c | 4 +---
>>   1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
>> index 65de0c7..779a5c6 100644
>> --- a/drivers/staging/rtlwifi/rc.c
>> +++ b/drivers/staging/rtlwifi/rc.c
>> @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
>>   	struct rtl_rate_priv *rate_priv;
>>
>>   	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
>> -	if (!rate_priv) {
>> -		pr_err("Unable to allocate private rc structure\n");
>> +	if (!rate_priv)
>>   		return NULL;
>> -	}
>>
>>   	rtlpriv->rate_priv = rate_priv;
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504983347-2957-1-git-send-email-shreeya.patel23498%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


