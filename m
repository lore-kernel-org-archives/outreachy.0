X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.13.195 with SMTP id j3mr11024424wic.2.1426318910409;
        Sat, 14 Mar 2015 00:41:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.131 with SMTP id fo3ls291799wib.39.canary; Sat, 14 Mar
 2015 00:41:49 -0700 (PDT)
X-Received: by 10.180.182.201 with SMTP id eg9mr3993657wic.3.1426318909871;
        Sat, 14 Mar 2015 00:41:49 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id bz6si265921wib.3.2015.03.14.00.41.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 00:41:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id w10so2903514wix.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 00:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=16asb/aKAd/RCMNfxRA64qWZ7MO9o+RqlIVh5tbHSF4=;
        b=IbNAqhP7UNdke40DtOaoRljdzHczwsqBaFqVDzvYTEizDl1eGhh2164BNtF4qy58G6
         asDMreR2LWE8ymEKcevysoPXkAnPy9zeU/tOLGAkzmiFHhNdCT6ATf/aX39fjMuqfQ49
         SU6KpTCmOeB78+IN9/oEV34XhpWv6X5QCeBxXc1uWj4w15giz9EOaL2+tclulkGeCg7E
         UkYgkfywAzmM2nOoWTvGjFwbGaS/Vn4Rzi6o/n37XPvm7yGRwKWklUwx4TNqXxAB1H9y
         FBERdEHbj+n+8sPfYfm6/E4CeNnBwnX24j5lT5xEHeS55eomJIS5kWjwXT3YjQZu1DTU
         Vwaw==
MIME-Version: 1.0
X-Received: by 10.194.87.100 with SMTP id w4mr100959230wjz.65.1426318909773;
 Sat, 14 Mar 2015 00:41:49 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Sat, 14 Mar 2015 00:41:49 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1503140735350.2075@localhost6.localdomain6>
References: <cover.1426296329.git.cristina.opriceana@gmail.com>
	<c77aa9f0cb01943bd9b2b8afd1a87807da692eb5.1426296329.git.cristina.opriceana@gmail.com>
	<alpine.DEB.2.02.1503140735350.2075@localhost6.localdomain6>
Date: Sat, 14 Mar 2015 09:41:49 +0200
Message-ID: <CAEnQRZCbvjZCnrz8e+rt20ZjfUczZ2SewzArbm=L2NqcN7puZg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/6] Staging: iio: Prefer using the BIT macro
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Cristina Opriceana <cristina.opriceana@gmail.com>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 14, 2015 at 8:36 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> diff --git a/drivers/staging/iio/frequency/ad9834.h b/drivers/staging/iio/frequency/ad9834.h
>> index 8ca6e52..b54fb33 100644
>> --- a/drivers/staging/iio/frequency/ad9834.h
>> +++ b/drivers/staging/iio/frequency/ad9834.h
>> @@ -11,25 +11,25 @@
>>  /* Registers */
>>
>>  #define AD9834_REG_CMD               (0 << 14)
>> -#define AD9834_REG_FREQ0     (1 << 14)
>> +#define AD9834_REG_FREQ0     BIT(14)
>
> This makes it different from its neighbors.  It doesn't seem like a good
> idea here.

I guess computing the correct bits would be more readable.

e.g:

2 << 14 = BIT(15) | BIT(14)
7 << 13 = BIT(15) | BIT(14) | BIT(13)

You could also search for the datasheet to see the correct bit
definitions.

>
>>  #define AD9834_REG_FREQ1     (2 << 14)
>>  #define AD9834_REG_PHASE0    (6 << 13)
>>  #define AD9834_REG_PHASE1    (7 << 13)
>>
>>  /* Command Control Bits */
>>
>> -#define AD9834_B28           (1 << 13)
>> -#define AD9834_HLB           (1 << 12)
>> -#define AD9834_FSEL          (1 << 11)
>> -#define AD9834_PSEL          (1 << 10)
>> -#define AD9834_PIN_SW                (1 << 9)
>> -#define AD9834_RESET         (1 << 8)
>> -#define AD9834_SLEEP1                (1 << 7)
>> -#define AD9834_SLEEP12               (1 << 6)
>> -#define AD9834_OPBITEN               (1 << 5)
>> -#define AD9834_SIGN_PIB              (1 << 4)
>> -#define AD9834_DIV2          (1 << 3)
>> -#define AD9834_MODE          (1 << 1)
>> +#define AD9834_B28           BIT(13)
>> +#define AD9834_HLB           BIT(12)
>> +#define AD9834_FSEL          BIT(11)
>> +#define AD9834_PSEL          BIT(10)
>> +#define AD9834_PIN_SW                BIT(9)
>
> You could clean up the indentation at the same time.
>
> julia
>
>> +#define AD9834_RESET         BIT(8)
>> +#define AD9834_SLEEP1                BIT(7)
>> +#define AD9834_SLEEP12               BIT(6)
>> +#define AD9834_OPBITEN               BIT(5)
>> +#define AD9834_SIGN_PIB              BIT(4)
>> +#define AD9834_DIV2          BIT(3)
>> +#define AD9834_MODE          BIT(1)
>>
>>  #define AD9834_FREQ_BITS     28
>>  #define AD9834_PHASE_BITS    12

