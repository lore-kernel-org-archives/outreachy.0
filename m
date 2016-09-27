X-GM-THRID: 6334690503118815232
X-Received: by 10.129.91.136 with SMTP id p130mr7844195ywb.61.1474988772339;
        Tue, 27 Sep 2016 08:06:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.38 with SMTP id j38ls2127384iod.24.gmail; Tue, 27 Sep
 2016 08:06:07 -0700 (PDT)
X-Received: by 10.66.194.129 with SMTP id hw1mr7041674pac.92.1474988767803;
        Tue, 27 Sep 2016 08:06:07 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x242.google.com (mail-yb0-x242.google.com. [2607:f8b0:4002:c09::242])
        by gmr-mx.google.com with ESMTPS id c75si110119ywh.0.2016.09.27.08.06.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 08:06:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) client-ip=2607:f8b0:4002:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x242.google.com with SMTP id t5so640139yba.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 08:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=K/XhkePNlygSSlqCp1HGv8O+211jHeoD3k3g5eTNT8s=;
        b=xxvzpqm29qGR2odMH/P+dHCRS/1OmMD2d1zmw2vmToLY7wAflCdt+J1c0LwZJZwyeJ
         SmIOIh1ShFFZrbX2ubJcABw03u3UI60DUxbR3n2xveO0fOBsPMRnAKGo7bDVIz2s0NXL
         lnP01YNUApdet3vbIoGzCIGd3UwtFacUM+s3UL4rZjpUyOaK1DfP0EjbOQglTf6fQG0t
         7tgqB5iN5wg6o5ua36gdLC5i8tWnD095zOFJ/9XuOktvzDgeFvFlJBGtZVNgdzqSlpKs
         PuqQHVeQDEZp//Qszv5a1vqwTn5T12hXAcLdCXQ7sFcG4+OMpQ8N2TX8ca8DRsC4VP2e
         L8Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=K/XhkePNlygSSlqCp1HGv8O+211jHeoD3k3g5eTNT8s=;
        b=WXJNratnVuMHeU4fEJec+93b/+Kq6grMGtETT4+6wJX3au/kc60wdVaHYCNMOSyWLk
         +wOuETrGu4Sj8Wor+KyhIxUmH5h8ZDQy6jUEgZ3oDjSC9hm56RqKQUavVEDLOgC1wQli
         vBr3oC5W9+qEp63s93jX3tJygUeL78akb+lp33QMqA9Mo324zoEF4uC3kSZrGnQaFAXq
         foU0ETi4Xxd4X7zKmLHsr4ds01NdfdKTm2s3KIAnz/a8OhrtfhfnudN59pK9BovBEryl
         K1b1PwFuA/nWqapDX2LcdNHmyUhiuo5nDDLIAziU01ifQh7nbEh2vUGSfCuMIhAAh5FP
         uxYw==
X-Gm-Message-State: AE9vXwPf5Vle1Gcghr1H2ZG3N015K1cmInv3zUE26HIz7bnZZTqMfWtkVRtr+eI0+2hs5XSFmyv4ZlOE5J0FDg==
X-Received: by 10.37.174.137 with SMTP id b9mr21805387ybj.126.1474988767474;
 Tue, 27 Sep 2016 08:06:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.41.132 with HTTP; Tue, 27 Sep 2016 08:05:27 -0700 (PDT)
In-Reply-To: <20160927060539.GA10769@d830.WORKGROUP>
References: <20160926171404.GA11773@sayli-HP-15-Notebook-PC> <20160927060539.GA10769@d830.WORKGROUP>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Tue, 27 Sep 2016 20:35:27 +0530
Message-ID: <CAKG5xWhp5iZ8Ae6j90m7KVjeAz4KEUcarqJ_R6pu8pL2WaZ5Kg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] iio: temperature:
 maxim_thermocouple: Fix sparse endianness warnings
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 27, 2016 at 11:35 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Mon, Sep 26, 2016 at 10:44:04PM +0530, sayli karnik wrote:
>> Fix following endianness warnings using sparse:
>> warning: cast to restricted __be16
>> warning: cast to restricted __be32
>> Use __be16 type for incoming read data when storage_bytes equals 2 and __be32
>> when storage_bytes equals 4. Since the variable allocated already has the
>> correct storage size the patch is classified as cosmetic.
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>
> Hi Sayli -
>
> v2 code looks like it handles both cases.
>
> I think you've made a bug fix!
>
> When the storage_bytes == 2, it would work on LE systems but give
> invalid data on BE systems.  That unsigned int buf points to a location
> where only 2 bytes of data are placed during spi_read. Those 2 bytes go
> in the upper bytes. Then when the be16_to_cpu() happens that buf
> gets cast to 16bits.  We get the upper bytes on LE systems (good bits)
> but the lower bytes on BE systems (bad bits)
>
Yes I agree..so it's a bug fix for storage_bytes=2 and cosmetic for
storage_bytes=4.

> Lars - Please check my logic and the code too.  If this is a bug
> let us know if Sayli should include a fix tag.
>
> Pending Lars' review, you can update the changelog.
>
> Take a further look at storage_bytes and you'll find when it is
> set to 2 and when it is set to 4.  That would be good information
> to include in the changelog.  You'll find that this is only a bug
> in one of the two chips this driver supports.
>
> Check your precommit checkpatch hooks.  There are still CHECKs in
> the spi_read lines of code.
>
I did run checkpatch, but no CHECKs were caught.
This is strange, only errors and warnings were caught when I ran:
perl scripts/checkpatch.pl -f drivers/iio/temperature/* | less
I have run checkpatch many times on staging drivers until now.
I can only predict that the CHECK in my code must be that there
shouldn't be a space after the type cast.

> And, back to the less exciting. It would be good for that commit
> message to say what you did: replace unsigned int with __be16/32
> I know you're short of space on that line.  It's ok to drop the
> subdir (temperature) and just state the driver as in:
> iio: maxim_thermocouple: commit message.
>
> Please 'CC linux-iio on v3 and the module author, from bottom of
> source file.
>
Sure!

> Thanks Sayli,
> alisons
>
>> ---
>> v2:
>> Updated the subject line and changelog
>> Moved the spi_read function call inside respective case statements so that data
>> is read only once.
>> Moved the return statement after the switch case
>>
>>  drivers/iio/temperature/maxim_thermocouple.c | 16 +++++++++-------
>>  1 file changed, 9 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/iio/temperature/maxim_thermocouple.c b/drivers/iio/temperature/maxim_thermocouple.c
>> index 39dd202..2683b0f 100644
>> --- a/drivers/iio/temperature/maxim_thermocouple.c
>> +++ b/drivers/iio/temperature/maxim_thermocouple.c
>> @@ -123,22 +123,24 @@ static int maxim_thermocouple_read(struct maxim_thermocouple_data *data,
>>  {
>>       unsigned int storage_bytes = data->chip->read_size;
>>       unsigned int shift = chan->scan_type.shift + (chan->address * 8);
>> -     unsigned int buf;
>> +     __be16 buf1;
>> +     __be32 buf2;
>>       int ret;
>>
>> -     ret = spi_read(data->spi, (void *) &buf, storage_bytes);
>> -     if (ret)
>> -             return ret;
>> -
>>       switch (storage_bytes) {
>>       case 2:
>> -             *val = be16_to_cpu(buf);
>> +             ret = spi_read(data->spi, (void *) &buf1, storage_bytes);
>> +             *val = be16_to_cpu(buf1);
>>               break;
>>       case 4:
>> -             *val = be32_to_cpu(buf);
>> +             ret = spi_read(data->spi, (void *) &buf2, storage_bytes);
>> +             *val = be32_to_cpu(buf2);
>>               break;
>>       }
>>
>> +     if (ret)
>> +             return ret;
>> +
>>       /* check to be sure this is a valid reading */
>>       if (*val & data->chip->status_bit)
>>               return -EINVAL;
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160926171404.GA11773%40sayli-HP-15-Notebook-PC.
>> For more options, visit https://groups.google.com/d/optout.

