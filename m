X-GM-THRID: 6335766380437045248
X-Received: by 10.46.9.87 with SMTP id 84mr224252ljj.12.1475439029476;
        Sun, 02 Oct 2016 13:10:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.65.84 with SMTP id o81ls1204061wma.21.canary; Sun, 02 Oct
 2016 13:10:28 -0700 (PDT)
X-Received: by 10.28.21.17 with SMTP id 17mr350286wmv.16.1475439028824;
        Sun, 02 Oct 2016 13:10:28 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id a126si777857wmd.1.2016.10.02.13.10.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 13:10:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id l131so8111121lfl.0
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 13:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=KkarQ+ABS+QBqPtQqcRuG7xEvNP1LMTIxzcgxuNeQVQ=;
        b=onuXCMpm0oecAr1FCODrLxPQ2QJ13dl4BXDXNLSUNIqiIeLzwTzlFQ23ipdrblmi3I
         1kfPXIhM+7lLaj3tFZ/exLERajnHH5gSCuhjat0GMFZrGGC/BVGpCAjQqITHoEXAM6Eo
         UjSbPVVcP9vOEewK3b0JAG+HRcubmyM6Vcikt/an6KRgLMfsm7T8PkqAfs0Xvmzzy3Dw
         0S6iSUEef+8q0NqbV5WNCxehWNtopNTxmtJnlkejswhgoudajTJdh0p4TSz/n7QfI2u3
         hPNGnSHNXIhL+8qAoP/y0fgoqcoOeiHIYX/i0u6AY1UUvqWbaN7ED2BtMWqVLS/VGa7v
         7eZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=KkarQ+ABS+QBqPtQqcRuG7xEvNP1LMTIxzcgxuNeQVQ=;
        b=TrDaE7ndJkm9vmUeKSIj0iaIqqu0ONCZHyMyP9nvluwFFYUfYd1d3Td9MPy1s80AiU
         T+nNCfzF4GkKSO7B5vRopqFxSRHQTESpGEpU4FHTBc8a/OHjmDt8GWRBVII0atijWZz6
         MTvrol18XcuWGC6B87lTpt5oFqs2wvQt/ESMBcrSTzfIYMnDOP4jKHdIVSZTeGfTxXfG
         gLHokk4viIo/Jeqv/Yeu5HpEn6+LjwLE965zyG0i2N8Jxp6bLXaWH+P+Hui0C8ZRmo0N
         GZAOjJV6C3BQom5n9spPrRi/ZNsj03SHN4uGkQOWt2eLmbq1gIbHf2j8H7rwyWDpTw0s
         LGLQ==
X-Gm-Message-State: AA6/9Rl6VSx1Y9phW5HPvhPjo5Q27kqczoqZmi9TtLrIyCdOJd749CsheDq1Cw87vezhHR5AuENMZJc/UVwY/g==
X-Received: by 10.25.24.91 with SMTP id o88mr6851793lfi.81.1475439028217; Sun,
 02 Oct 2016 13:10:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Sun, 2 Oct 2016 13:10:27 -0700 (PDT)
In-Reply-To: <20161002152244.GA32091@kroah.com>
References: <1475160534-23482-1-git-send-email-bhumirks@gmail.com> <20161002152244.GA32091@kroah.com>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Mon, 3 Oct 2016 01:40:27 +0530
Message-ID: <CAOH+1jEPK+-HqQq9sTXSGVkwaqse3YQh483kUo4EUV71nOs=Hg@mail.gmail.com>
Subject: Re: [PATCH] Staging: dgnc: constify attribute_group structures
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, markh@compro.net, 
	Lidza Louina <lidza.louina@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 2, 2016 at 8:52 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Thu, Sep 29, 2016 at 08:18:54PM +0530, Bhumika Goyal wrote:
>> Check for attribute_group structures that are only passed as a second
>> argument to the functions sysfs_remove_group and sysfs_create_group. As
>> these arguments are constant so, attribute_group structures having this
>> property  can also be made constant.
>> Done using coccinelle:
>>
>> @r1 disable optional_qualifier @
>> identifier i;
>> position p;
>> @@
>> static struct attribute_group i@p = {...};
>>
>> @ok1@
>> identifier r1.i;
>> position p;
>> expression e1;
>> @@
>> (
>> sysfs_remove_group(e1,&i@p)
>> |
>> sysfs_create_group(e1,&i@p)
>> )
>>
>> @bad@
>> position p!={r1.p,ok1.p};
>> identifier r1.i;
>> @@
>> i@p
>>
>> @depends on !bad disable optional_qualifier@
>> identifier r1.i;
>> @@
>> static
>> +const
>> struct attribute_group i={...};
>>
>> @depends on !bad disable optional_qualifier@
>> identifier r1.i;
>> @@
>> +const
>> struct attribute_group i;
>>
>> File size before:
>>    text          data     bss     dec     hex filename
>>    6248          1024       0    7272    1c68
>> drivers/staging/dgnc/dgnc_sysfs.o
>>
>> File size after:
>>    text          data     bss     dec     hex filename
>>    6288           960       0    7248    1c50
>> drivers/staging/dgnc/dgnc_sysfs.o
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/dgnc/dgnc_sysfs.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
>> index a83e0e4..290bf6e 100644
>> --- a/drivers/staging/dgnc/dgnc_sysfs.c
>> +++ b/drivers/staging/dgnc/dgnc_sysfs.c
>> @@ -677,7 +677,7 @@ static struct attribute *dgnc_sysfs_tty_entries[] = {
>>       NULL
>>  };
>>
>> -static struct attribute_group dgnc_tty_attribute_group = {
>> +static const struct attribute_group dgnc_tty_attribute_group = {
>>       .name = NULL,
>>       .attrs = dgnc_sysfs_tty_entries,
>>  };
>
> I'll take this patch, but all of these sysfs files should be removed
> from the driver, as there are standard ways of getting this information
> from a tty device that is not using this interface.
>
> So if you want to send a follow-on patch, removing all of them, I would
> really appreciate it.
>

Yes, I will surely work on this and send a follow-on patch addressing
the issue that you mentioned.

Thanks,
Bhumika

> thanks,
>
> greg k-h

