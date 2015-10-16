X-GM-THRID: 6206160535830921216
X-Received: by 10.112.159.4 with SMTP id wy4mr3307111lbb.15.1444985856237;
        Fri, 16 Oct 2015 01:57:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.195 with SMTP id c3ls97116wiy.29.gmail; Fri, 16 Oct
 2015 01:57:35 -0700 (PDT)
X-Received: by 10.180.87.164 with SMTP id az4mr828882wib.1.1444985855882;
        Fri, 16 Oct 2015 01:57:35 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id go9si8325wib.3.2015.10.16.01.57.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 01:57:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id p11so125678wij.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 01:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=qjx3XDBWXks55VpGXgZDDAt63mwcsWKe1nSV/CScz5o=;
        b=jAahbMQDQwbWop2dypKVMgg5c12nu4beePC/xl+zNuiekgVinySZiyvXUfSweC5l68
         cI3CMxx4+CoC+iTNFoJQC55fnSU9rHoOb+4g/deYDpCWXW1WXGdz0ll12RDyafl1eo24
         Z9tmGydHqfV3J7df+m4KrsdynfmPL+qncP6XMoErYD4Fgjle5gkVZUXYkhn41CaaepYQ
         uzu0k3kmaDsmFd9RPBw3ChUF45hOxP/fo0xL33s9xiej8OQ3B8opqu8bLWfEiiKkm84q
         gk/SOb15HYvlqRnJX/JFDqs2sbNXR8F5TbE4joqHAf3z2Xhr39aeNW4LCA4lyQ0oLIIo
         R/6A==
MIME-Version: 1.0
X-Received: by 10.180.189.41 with SMTP id gf9mr3212534wic.95.1444985855776;
 Fri, 16 Oct 2015 01:57:35 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Fri, 16 Oct 2015 01:57:35 -0700 (PDT)
In-Reply-To: <4275207.TTHHeQE8pW@wuerfel>
References: <20151016083218.GA2815@ubuntu>
	<4275207.TTHHeQE8pW@wuerfel>
Date: Fri, 16 Oct 2015 14:27:35 +0530
Message-ID: <CAKHNQQFXZ2rqkbig2hwPSd=nHg-OZt3c6JiaGAHao6mkXPsUQQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lpoc_osc: Change
 the variable to be checked
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Shivani


On Fri, Oct 16, 2015 at 2:11 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Friday 16 October 2015 14:02:18 Shivani Bhardwaj wrote:
>> index 053d508..cdc7f88 100644
>> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> @@ -61,9 +61,7 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
>>         unsigned long val;
>>
>>         rc = kstrtoul(buffer, 10, &val);
>> -       if (rc)
>> -               return rc;
>> -       if (val < 0 || val > 1)
>> +       if (rc < 0)
>>                 return -ERANGE;
>>
>>         /* opposite senses */
>> --
>>
>
> I believe the intention of the code is to return -ERANGE if anything other
> than 0 or 1 is stored here, which no longer works after your patch. The
> range check in kstrtoul only ensures that there is a number that fits within
> an 'unsigned long'.

This means it is never going to throw out of range error?
If that is the case why do we take the variable val as unsigned long?
It can be typecasted in the function kstrtoul. We can take it as
simple int. And still
if (rc)
     return rc;

statement is never going to be valid, is it?
Plus, why base 10? base 2 should work fine to check for 0 and 1.

And, if everything above is wrong then, since val is taken as unsigned
int it can again never be less than 0 so, shouldn't the check be made
only for val>1?

>
>         Arnd

