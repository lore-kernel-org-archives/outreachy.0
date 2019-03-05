X-GM-THRID: 6664640601666879488
X-Received: by 2002:a02:4fda:: with SMTP id r87mr1787214jad.23.1551805940806;
        Tue, 05 Mar 2019 09:12:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls1035871itc.5.canary-gmail;
 Tue, 05 Mar 2019 09:12:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqzqW2HsL4utdjz/AxbH4vLWkrheTXRA29hIlwT2wMvUWHbSm6r1VizVjI84ERLevwpjmoWd
X-Received: by 2002:a24:5c5:: with SMTP id 188mr3362892itl.3.1551805940022;
        Tue, 05 Mar 2019 09:12:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551805940; cv=none;
        d=google.com; s=arc-20160816;
        b=WQ9gWXSaFyacefDUGzDucSEQz+iku0B2g7Lcvrimm5KMPibYQkRbp5Q+APXTjoapVz
         uluspaftdo7+Qc2Pr2lxf8XhHz4VHS9I100boupgMyK0RQxoS6YZnocZHmPJWeV+J1UW
         Ck1nT8EQdw7TORBh1ecrZgo5z3g4Eh2u3SYWRtwNH78ouoXMZOehjx/V/DzaGxYV4ibB
         qwWdMZ8UsI8mD5vHuAMw4AHkbTg1tjp34DjEXlTRwbKlLmztTlVwpAJ6eUVnkHKCugoT
         gU64J5lJavdGncf3aymqO2sni50wrS90qI/hikLXKHkJ3msri4v8z5g0JKan/tBepoDQ
         slsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=PTiBlEXyghS7m0gDfsXnwWdVEj58dpeQdhlSB1BSeF4=;
        b=EGSpgKEjn3WebjGJ7sp073HWaeulDsk5dQENSYPrledacCHQ4uP7cSLENtsGRxpx3H
         HBFwOW+uGp6yimOthyOtHg5e2c64FIhPV/uGyrWepJGGrc2XMGmoSIxustzpZf5xw18F
         QCTu0eaYHLhRjxaHZZNH5nU2P//RcL3UTT1kaHW+D8idzI5yyBX7hg8rM0llUiImS1Bv
         4lKm4Rm/wblm2CpY8aidMz5jakc7odKCdKBFi65ZH2y2pGWIul/IBgeWpwnAIm5QEYr4
         kJkpfzXbJzh8N+xlcMBRlUVYnDg+mfAXopGOUH74ZoTTiHj7YL4Iu84tDJM5nKA+0ilO
         tCWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="UtdRH/Pd";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic309-20.consmr.mail.sg3.yahoo.com (sonic309-20.consmr.mail.sg3.yahoo.com. [106.10.244.83])
        by gmr-mx.google.com with ESMTPS id 184si569734iou.3.2019.03.05.09.12.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 09:12:20 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) client-ip=106.10.244.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="UtdRH/Pd";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551805937; bh=PTiBlEXyghS7m0gDfsXnwWdVEj58dpeQdhlSB1BSeF4=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=UtdRH/Pda9b9jtrESK7GRoLY/uEMDS/2eoKK67gv2SqDSr5gzdZR9SBvu5+vE6YxVMd8m03a4cG/4bWPOJnQqcdI/4SV3TSzeisxMg4LS5jhnKARbvvVj13xerOWpDFRAu2RVlsf4I0GuillZbd0o96zsWIeJeUGi60jVk2h2fQCNFSZadjVNFeg69dK1087J6VfjU+TMvN6ZpCRi/GaHOHe1x2ZXCcFqybCyWfOa7cj7qVbtiMRXFcS+S3e8Z/j++GBgdPBEFzNaX1RnuRcNcje8L4gjJpGO/9lroWcvVYsNoEmzd2/fN3c38xL0XFWB/ASHHKnnU3Oj8i0ahN7Mw==
X-YMail-OSG: qF6BjWYVM1njNrEEQ_WBoURZz5TGczyjhUbBcRuLAkyQjeD0UzbGzZOuuolF6Bp
 IQiiM_fbjMChGWao5rUT0Vs18G2L9iCwQZyPZtQtQ2aQkkgp3y_OmT1cent6jn8K7K1U2GDL1cKF
 AhAaFoioRPOZz3HmJ5_kXsYUKFFT1jls_fEvJHQ7bDso5pqYrpH9OIF2j8CEBHI.mnkQ4uYRQyPP
 uzDbYVOEN53wfzPVMZchKzxMO_BpgivwhWQ_rJ0CNaJJo45D6RSXAUvgmhfmCfriLo4tfB9ZQys1
 TWbfPmGiuzSUcVbI6W3ytF99x_cSxCHki3ok37et3uS0V7qwszm3hXBKu6n7Xdnc5hUe16JbFWpl
 diOC9y2C7O4nwqq8Avy9lgkUWmj3BTf2OqIv5RUc9RkbRdozZwY1O_wejg7X9pQcoKM8eRrzAPLG
 q0Pf8Uo1HOl2q.lkd2iW6wUjaXbE9iZWkn4cCAiANThMApnXoTQZXCDliysxGcQKrSyDg54ckVoI
 MmPzghUFdzzBEd5R9gwYoLa.uFYrD7VD1.9wIuxKypYq_qwMymVCK6tZFEh2KUoVeoknzFoyY5kt
 DO745B.r3dzd.TzVZ9DPdfkmjE8EPGVuuD4fHtQ9M8SmelKAchaO4R6R.5dPqhk4OaZC9myVGVeK
 apDuCl536CC8YD.R5ruyQneF8EjKnbhFPP7MRzIpvpjDijihHwhZQzli0.mDODqgE84snPI.KdpY
 uRAdIN.bGhX5jJHXe8r0hSBjnVIS0WGYMmjMoqmox73_gZoXxbgw6YgbEzvCK8F6SsdBR.e_QZ4c
 EXYBepeuhAYREaI0tdf6mBSHzCPJ_FllW_onqRhNUo16CwtTkTcA_2Wx4PR7YOrTW_H2K_Omm7Q2
 rpTLKrysU62kLjv8VP6Sr8z9aM9UvIp3mLRnZfgv1CHnBVHZvI5NIZ3KBMUwEuUdgjkpfj6VP8Vg
 WQYPVmab.E09Fwl5H46xWHHLZ6vl94_WTEq7I.gqHHPgptJEeo5WFp7uN7Bifj6k19nnEr0o8ATR
 DM5yRF2Tyy5gpmk0sFE3anLcvoZxrkhVxKR9Mrh11HKdmztum5d8dA6Am2yoBnt2UV2e8dJ8-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.sg3.yahoo.com with HTTP; Tue, 5 Mar 2019 17:12:17 +0000
Received: from 122.163.79.112 (EHLO [10.0.2.15]) ([122.163.79.112])
          by smtp411.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 3eead574ac664c2eda80fc08b632ef5e;
          Tue, 05 Mar 2019 17:12:15 +0000 (UTC)
Subject: Re: [PATCH] staging: sm750fb: Avoid multiple assignments
To: Greg KH <gregkh@linuxfoundation.org>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
 outreachy-kernel@googlegroups.com
References: <20190304183110.3702-1-nishka.dasgupta@yahoo.com>
 <20190305075115.GC6956@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <0f0632e9-f9e3-ea09-b866-00a865ad6ab6@yahoo.com>
Date: Tue, 5 Mar 2019 22:42:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190305075115.GC6956@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 05/03/19 1:21 PM, Greg KH wrote:
> On Tue, Mar 05, 2019 at 12:01:10AM +0530, Nishka Dasgupta wrote:
>> Avoid multiple assignments in the same line. Issue found with
>> Checkpatch.
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>> ---
>>   drivers/staging/sm750fb/sm750.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
>> index e9f10c2669ea..739841c3b5d6 100644
>> --- a/drivers/staging/sm750fb/sm750.c
>> +++ b/drivers/staging/sm750fb/sm750.c
>> @@ -782,7 +782,8 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
>>   		0x800f0 + (int)crtc->channel * 0x140;
>>   
>>   	pr_info("crtc->cursor.mmio = %p\n", crtc->cursor.mmio);
>> -	crtc->cursor.maxH = crtc->cursor.maxW = 64;
>> +	crtc->cursor.maxW = 64;
>> +	crtc->cursor.maxH = crtc->cursor.maxW;
> 
> The original code is fine here.  I would just ignore this checkpatch.pl
> message for this line.
Okay, will do. What should I do for similar Checkpatch warnings in 
future? Do I just ignore them?

> thanks,
> 
> greg k-h
> 

