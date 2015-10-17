X-GM-THRID: 6202672545102036992
X-Received: by 10.107.156.129 with SMTP id f123mr16157499ioe.4.1445102677952;
        Sat, 17 Oct 2015 10:24:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.213 with SMTP id e82ls176219ioi.8.gmail; Sat, 17 Oct
 2015 10:24:37 -0700 (PDT)
X-Received: by 10.107.33.207 with SMTP id h198mr19462851ioh.9.1445102677572;
        Sat, 17 Oct 2015 10:24:37 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x241.google.com (mail-yk0-x241.google.com. [2607:f8b0:4002:c07::241])
        by gmr-mx.google.com with ESMTPS id t64si1754646ywd.2.2015.10.17.10.24.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 10:24:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::241 as permitted sender) client-ip=2607:f8b0:4002:c07::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x241.google.com with SMTP id y125so991402ykd.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 10:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=MuJ0Whp15XwgdEY+eSjjkzDOTVxRZPVmNJIaTXJZzpk=;
        b=XAo6z5QGUa4Jvyd/AXq/w35DY3vyhuPgwomFRpbtUKcnl/HXdl2cf2/YlAg+M0aFGz
         Anu3E6oOgMc1yy36oC1v8lYdNYd75ilUTiXTZL4xTp4eqMj94VhTqfQ0TIel7Zb0eXJZ
         R9W6IwajfNF76OECC1EGtRZJAnZ+6FlInq1MmJ4l5qWODo1RK1D58UsorAI6dXtFUV2k
         5+oI4tfECCvdrxYzZ+cGhZmWenYce0TxBx1ykCVYVZg93r6+BbGQMUYgHW66wnXbHUXY
         RefArbLlcjm/aHaIW5C+G59pweValg37eGj9Oa92GeCuYmrSLyVfR/YpCSSDOHvjZdyX
         ja+w==
MIME-Version: 1.0
X-Received: by 10.129.154.141 with SMTP id r135mr13968667ywg.195.1445102677398;
 Sat, 17 Oct 2015 10:24:37 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Sat, 17 Oct 2015 10:24:37 -0700 (PDT)
In-Reply-To: <20151017153704.GB3911@kroah.com>
References: <1445076655-26291-1-git-send-email-ciorneiioana@gmail.com>
	<20151017153704.GB3911@kroah.com>
Date: Sat, 17 Oct 2015 20:24:37 +0300
Message-ID: <CAHWJYF=m0=t3ijE3rxDXNbt+JLcvz==zCFtebdjR5CndK2OOXA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: properly indent
 block comments
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 17, 2015 at 6:37 PM, Greg KH <greg@kroah.com> wrote:
> On Sat, Oct 17, 2015 at 01:10:55PM +0300, Ioana Ciornei wrote:
>> Rework block comments in order to follow
>> kernel coding style
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> ---
>>  drivers/staging/iio/adc/ad7192.c | 20 ++++++++++----------
>>  1 file changed, 10 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
>> index bb76096..7d3714f 100644
>> --- a/drivers/staging/iio/adc/ad7192.c
>> +++ b/drivers/staging/iio/adc/ad7192.c
>> @@ -35,10 +35,10 @@
>>  #define AD7192_REG_DATA              3 /* Data Register           (RO, 24/32-bit) */
>>  #define AD7192_REG_ID                4 /* ID Register             (RO, 8-bit) */
>>  #define AD7192_REG_GPOCON    5 /* GPOCON Register         (RO, 8-bit) */
>> -#define AD7192_REG_OFFSET    6 /* Offset Register         (RW, 16-bit
>> -                                * (AD7792)/24-bit (AD7192)) */
>> -#define AD7192_REG_FULLSALE  7 /* Full-Scale Register
>> -                                * (RW, 16-bit (AD7792)/24-bit (AD7192)) */
>> +/* Offset Register        (RW, 16-bit) (AD7792)/24-bit (AD7192)) */
>> +#define AD7192_REG_OFFSET    6
>> +/* Full-Scale Register (RW, 16-bit) (AD7792)/24-bit (AD7192)) */
>> +#define AD7192_REG_FULLSALE  7
>
> Now things are not lined up with the other defines :(
>
> What was wrong with the original code?  It looked fine to me, please
> leave it as-is.
>

The reason I created this patch is the fact that the comment blocks
are not properly indented and checkpatch complained about it.
If it introduces other problems maybe it is better to not apply it.

Thanks,

Ioana

