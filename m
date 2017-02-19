X-GM-THRID: 6388545566354178048
X-Received: by 10.99.113.76 with SMTP id b12mr5605965pgn.162.1487484153765;
        Sat, 18 Feb 2017 22:02:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.170.68 with SMTP id y4ls1533499iti.0.canary-gmail; Sat, 18
 Feb 2017 22:02:32 -0800 (PST)
X-Received: by 10.36.37.199 with SMTP id g190mr5279547itg.0.1487484152927;
        Sat, 18 Feb 2017 22:02:32 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id n10si1784165ywd.4.2017.02.18.22.02.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 22:02:32 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id q127so99632ywg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 22:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=0DPWCC5xOyw03XjRwHuSXixDrTJMMon3OWp03BQm0+Q=;
        b=WJgHgarCvFmx6ltK7V0uPrv3omUqxJYx1gInKZwUwwsXzlA+GiOdGkUov1gMnWo/Kr
         umU0Qo2tyQvLIIsGq2rKcCWcJKozy6eKvCEW0FOUR5nDx9I4Nj/8AVkOnYDXzeXislFD
         qVvdMoUsc/u1r7GJCnk2goVgPou/kmWn/cBX3XlDTik0q0b/On3jg5f8IsTkq/srb00Z
         2Pe2uM1TY7wGyrlBFeOG0OmSPXauNRhiUAbhrHBAN2GrSqnIoXb00BKvhDVAWz+ISCDe
         +85m3wUWhEK6y8T3RKoKLA2ld/M0vY1Gva8umIHKVjds9TnVaccKYrDZ8+q/fS1CIrMa
         nJPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=0DPWCC5xOyw03XjRwHuSXixDrTJMMon3OWp03BQm0+Q=;
        b=RkO+RHE6bM6e19ElBNvyYQatTy8bJ+W6Km4V3cqN+ArVchws3qtVWxtTPzhH8St9jJ
         p/dJrifS/sPOV+qb6hYMX1X+mFaIMMijDKvWZgsCdtqQbWiPvLmz+TvUW6wiaGo3acQR
         c5ADGHcGtZ5VjvkrgLyVXVwcXKze0f37hEApl9MTxedGJc7TkvXdW6Jxe8pkN198vvW+
         CczzmTb2kLn+Yr8vvNNAeweQ+jdWO2x022TP/FzXBGGDhySUitDeeu3ftd/j0Axr26Xo
         O1CRlDo+CQST8IKz+0FxLA3pi3SDLu4Rzax59Atx1c/o6etFCBPOAOfNjHSjhYd41ktb
         62wQ==
X-Gm-Message-State: AMke39mpA7IgEkvkOJKb0C9FB9leEOMYF46FsmUMcjXXvEOjQ+LF4ak+JZEbgJ6JFWmgcazC7IBJfKbvbsHzJA==
X-Received: by 10.13.215.8 with SMTP id z8mr11752824ywd.150.1487484152603;
 Sat, 18 Feb 2017 22:02:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.163.196 with HTTP; Sat, 18 Feb 2017 22:01:52 -0800 (PST)
In-Reply-To: <0b5ef4d0-14b5-1196-8bc4-deda9d8f75ce@metafoo.de>
References: <cover.1487448326.git.karniksayli1995@gmail.com>
 <92240a3dca0138880fe47a7df0a5e6df869c8199.1487448326.git.karniksayli1995@gmail.com>
 <0b5ef4d0-14b5-1196-8bc4-deda9d8f75ce@metafoo.de>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sun, 19 Feb 2017 11:31:52 +0530
Message-ID: <CAKG5xWjTjrwGWN-wJwzL0GPGhC2kohovYe8Umtn54Rf=yawerg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 2/3] staging: iio: ad7152: Use
 GENMASK() macro for left shifts
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 19, 2017 at 2:10 AM, Lars-Peter Clausen <lars@metafoo.de> wrote:
> On 02/18/2017 09:21 PM, sayli karnik wrote:
>> Use GENMASK() macro for left shifting integers.
>> Done using coccinelle:
>> @@ int a,b; @@
>>
>> -(a << b)
>> +GENMASK(a, b)
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>
> Hi,
>
> Thanks for the patch. Looks mostly good, but please rework the patch for
> version 2 to address the comments for patch 1.
>
Yes I am sending another version.
> Some additional comments inline.
>
> [...]
>>  /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
>>  #define AD7152_SETUP_CAPDIFF         BIT(5)
>> -#define AD7152_SETUP_RANGE_2pF               (0 << 6)
>> +#define AD7152_SETUP_RANGE_2pF               GENMASK(0, 6)
>>  #define AD7152_SETUP_RANGE_0_5pF     BIT(6)
>> -#define AD7152_SETUP_RANGE_1pF               (2 << 6)
>> -#define AD7152_SETUP_RANGE_4pF               (3 << 6)
>> +#define AD7152_SETUP_RANGE_1pF               GENMASK(2, 6)
>> +#define AD7152_SETUP_RANGE_4pF               GENMASK(3, 6)
>>  #define AD7152_SETUP_RANGE(x)                ((x) << 6)
>
> AD7152_SETUP_RANGE() can also use the GENMASK() macro
>
> [...]
>>  /* CFG2 Register Bit Designations (AD7152_REG_CFG2) */
>> -#define AD7152_CFG2_OSR(x)           (((x) & 0x3) << 4)
>> +#define AD7152_CFG2_OSR(x)           GENMASK(((x) & 0x3), 4)
>
> The extra parenthesis around (x) & 0x3 are no needed when using the macro
> (the macro will add them).
>
The outer parentheses are certainly not needed but for the ones around
x, checkpatch.pl complains otherwise-
CHECK: Macro argument 'x' may be better as '(x)' to avoid precedence issues

Should I still remove them?

thanks,
sayli
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0b5ef4d0-14b5-1196-8bc4-deda9d8f75ce%40metafoo.de.
> For more options, visit https://groups.google.com/d/optout.

