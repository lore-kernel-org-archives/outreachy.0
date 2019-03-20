X-GM-THRID: 6670195041552564224
X-Received: by 2002:ab0:69d6:: with SMTP id u22mr15954498uaq.9.1553097731463;
        Wed, 20 Mar 2019 09:02:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7489:: with SMTP id p131ls615090vsc.5.gmail; Wed, 20 Mar
 2019 09:02:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzpXd3MeOtjNFyobJKNEtCNmswCwTq+Fk3KnumlLcdBrp7z6lcULRCvlUaK1GZ30OdSMzSW
X-Received: by 2002:a67:efc1:: with SMTP id s1mr16802436vsp.1.1553097730614;
        Wed, 20 Mar 2019 09:02:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553097730; cv=none;
        d=google.com; s=arc-20160816;
        b=TJwTpjhPPDBrcN4LhXyZBEZ1Z23FtWlUGQqrhIOD6+jjNjKDywEsYRWZqbfdPZHGs/
         66GxkggJZe21DiLPHlkE8l++erDjboFHAYdIuDbw+rLeWUVT8z/V1hL4xc/uFRKN3zed
         hhB6GcdEfJgf/uB0X9foB247diYQv7fOveTOhnmr1+KTM7zfGljYwZj6w9Z5htMeGWd8
         ujqVyUQdsmFsuSXFLfRjeH3OOyrRccvlcM4Fvht2pbwofR5Fi/+rxPJTpkdjzUjuP+vo
         NVIVjowax6lk4hGj/V7FYQyPg1TTMW7Il1PayuEn3P7gsVJlaSlzXYue6TvIM0gwdkhA
         N0Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=/MWEEedXU/DLQ5F+jdbiplijsIZG3HNEBheDBtcsomg=;
        b=YRznTS4ObzNEoZ6K7m4ULUCjGZ4O5tPw3amWxbkJCZkqXHuBxZPytwtbG3b8af0Jo7
         qW8A5DpPouvAzLkOBVtApheYDIdt1aHbwMqQvCSA+q47PuY2HfRqd4U2XiCoc3tqRS6G
         87XOnYTFLZ/MQKZuHQKB3QXIPzKs5G4cwUSLOxt5S7UuEF/oxjevhVNw4/yUlgOrK12J
         WWdvM0YWd+/AGK9kvXgVh6f+tWbalEiB5+4mK/EsZ4mEUvbM0Irm4pgkLnWCi6xZ/55N
         TPfFsWTjyqnq/c7WTrblUN/6EjwZmIXy8w2P9wujH7Of96FwqpJE7YVIANyF2KHN4mJs
         0ZIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=KkYFIPoU;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic309-20.consmr.mail.sg3.yahoo.com (sonic309-20.consmr.mail.sg3.yahoo.com. [106.10.244.83])
        by gmr-mx.google.com with ESMTPS id l10si130075vkl.2.2019.03.20.09.02.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 09:02:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) client-ip=106.10.244.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=KkYFIPoU;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553097727; bh=/MWEEedXU/DLQ5F+jdbiplijsIZG3HNEBheDBtcsomg=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=KkYFIPoUqYorLt0vk9izzJc0xGV0BDtRwzDkn7wrvp1doUfT7QT4o4rrFJcZC/RoQxs07X9NVwTHejvgjF3d8wrbJLHg9qM6c4HAtw0NpMWPSA/sRafvKcX/TY66T+dKunw6FYjBZTw4A0JOw5yI9vATKMJ+glOiLLfcucf8bNmtK1qlg+SEz+YCQqQQsufaYUY7igVcC2ZFfq+8RbpCJd3qfwMnP4D/S+93wxXQF9Kj9SJmpZYLMUudFKEz6ZWFGtd/zh1LS8v8F8nb7qep/dggeXfMuz6C+BGAc59gj33YatUywpAFkM/UORm1n/C5TgAJPlTH5Pazn1pGBhwp3A==
X-YMail-OSG: xtNtAbYVM1ndDxCqUgncJU5_050rXyXSzghKqhNcW1auCRorbyr5CqBHvoWu.3v
 c3T8DUK1DjHzpVRfH7_l7eAOjVtwR0GwbNad80D3_XDk3aUSxs6GqDPYCDXcXN0YX4y6x5E12oHG
 kdjTJ2voeFhE_9GqGRu58Ze5j4X9Q1aJVJKZbHWdiC.UluELln1eWvTGXhgflWOlJJsWVwqnmDCw
 KcLnexVfBmD1F4t9XxMimWd0y.a7cMF_soRJma_Oep28ffvbXgOKSMXrznP0GEsEOpDVrjjS3fZ5
 qgxqrQiYz7gecx7rKLguWYhDBwG7e3_Um4fM6_tKAbJtjvJbdv3_d.4g_No9atm9RZYaKFQO9cXy
 GEx1p3iIKZmsJAb4x_x54GE3Yeo4aBoo7.AZqptEFWYcQLefR3UkRfGM6qhe_kTshJxndCSXgZzf
 4HJbJ1iwyxOzCwP7t0EXu318yK6spdCrPaAhxb84wPvKd61bIZPJCMvgFsa2hn5nvxwR5U8gSld_
 hkhKw2SaQB6RwL1OWToFsVCk6WGfhhHRFez6ulbyrti0w_vwwC0G._Cztx56iYRmSgt3yJYVnrIS
 bGPmc_tt1kRUetQa2AjJl1M5umLRRIXOFF5dwbuDz6Y..w4XIYpPS0mhccKuo.1FKQuGjPUd5tOP
 jgIo3i17Rb_aUDuwF1EI87gbRJ_0Ium4ib8pBmMM81KUB2l7xWupuoc0_XpbBg73WjrmwJ18_gLr
 o6SN.c3KXSCSPLyrxbokSdKDMEbM2CgH2rc8HJDYM0dIEy1PzQ3fPJ2LKLPuPn9BcuCGUdOcE06a
 kikVFblkK8c1fN_p1AWHnFyPqEasnOkAbe_5AoLVl1tdCWxuXSzf957lVrudMWiPuvyhij5W5SVU
 5SNfOgP3pO3BGq.VzHCpYOaofbw3LJUTOvlsUmonCdpOUjsJDPXc7BdtvImDSDXtmEjj9gByoQXt
 i.1PAFGKZMTjzFTAuheuHm_LKJeGmS6OjzkMq7rn88QovwT5BR.x2k0l8m8k2XRzXrkea9qWzJM.
 HIzdrVkSqbfHrBYykDjS8.lKomLwnVsIENXCjiwqJj31dsFKo37yj5rJrr.btKmFs18AF213Lggt
 oRjWZeVR7w4D8E6ANhTo-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.sg3.yahoo.com with HTTP; Wed, 20 Mar 2019 16:02:07 +0000
Received: from 210.212.93.46 (EHLO [10.0.2.15]) ([210.212.93.46])
          by smtp416.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 0838cdd2b771f3e7a5a42e9a5d2c7c8f;
          Wed, 20 Mar 2019 16:02:05 +0000 (UTC)
Subject: Re: [PATCH] staging: greybus: Remove parentheses around variable
To: Johan Hovold <johan@kernel.org>
Cc: elder@kernel.org, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com
References: <20190319200308.10710-1-nishka.dasgupta@yahoo.com>
 <20190320085038.GC15782@localhost>
From: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <4d37053a-61c3-2eda-ae97-89e7c5ce787e@yahoo.com>
Date: Wed, 20 Mar 2019 21:32:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190320085038.GC15782@localhost>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 20/03/19 2:20 PM, Johan Hovold wrote:
> On Wed, Mar 20, 2019 at 01:33:08AM +0530, Nishka Dasgupta wrote:
>> Remove parentheses around variable.
> 
> Perhaps
> 
> 	Remove unnecessary parentheses around expression.
> 
> would be more accurate.
> 
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> 
> But no need to resend unless you want to. If you do, you can add my ack
> before your SoB-tag:
> 
> Acked-by: Johan Hovold <johan@kernel.org>

I would like to resend but I think this patch has already been added to 
staging-next, so I don't think I should send it again. I could if it's 
alright.
Thank you for your initial suggestion though, and I'm sorry I wasn't 
sure about how to acknowledge your help in the patch itself.

Thanking you,
Nishka Dasgupta

>> ---
>>   drivers/staging/greybus/bundle.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/greybus/bundle.c b/drivers/staging/greybus/bundle.c
>> index 376ca53f0d83..3f702db9e098 100644
>> --- a/drivers/staging/greybus/bundle.c
>> +++ b/drivers/staging/greybus/bundle.c
>> @@ -32,7 +32,7 @@ static ssize_t state_show(struct device *dev, struct device_attribute *attr,
>>   {
>>   	struct gb_bundle *bundle = to_gb_bundle(dev);
>>   
>> -	if (!(bundle->state))
>> +	if (!bundle->state)
>>   		return sprintf(buf, "\n");
>>   
>>   	return sprintf(buf, "%s\n", bundle->state);
> 
> Thanks,
> Johan
> 

