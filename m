X-GM-THRID: 6201460938447519744
X-Received: by 10.66.158.100 with SMTP id wt4mr2043203pab.16.1443893642648;
        Sat, 03 Oct 2015 10:34:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.246 with SMTP id u109ls2519209qge.65.gmail; Sat, 03
 Oct 2015 10:34:01 -0700 (PDT)
X-Received: by 10.13.204.130 with SMTP id o124mr17965212ywd.36.1443893640991;
        Sat, 03 Oct 2015 10:34:00 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id w5si2404007pbt.1.2015.10.03.10.34.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 10:34:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fv12so137915587pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 10:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=q13oM7TsKm4Wo1W6YaAuVBlY11BLSgpNFNBT4BTjgzA=;
        b=mzhOYJ2BgChAysRb+Uv0yV9kdDecvqgoOw3LVZQam8RoNKiEr3fGqbrAeZiI2+vKYZ
         YtJs2llEHcnB0MAN0MeIkmb9ZgPOFnKZq153VL6QXQbKt0d4gHt4rs0LByBXNAykA0pA
         zYjXtYVTSrIihbumG1QwBbBXvYZRYzWL9Sr8vRWdRkFKVizqWhlNwQquSvpUh2t6T5tT
         xYMCGyYTC25dnbH/js8bKLJADpIkYwZBcEyHtuShbr09Eu28GwI2LufEeMI7zwDse0MR
         anjX+Tpn1y72VvVzFP5HG1lrfdR/P5KrOhRhkxZ4qwRxHj0JFTtfDLoVel8SiWpN2eKr
         kRoQ==
X-Received: by 10.68.204.65 with SMTP id kw1mr27915927pbc.76.1443893640819;
        Sat, 03 Oct 2015 10:34:00 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sl7sm18436250pbc.54.2015.10.03.10.33.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 10:34:00 -0700 (PDT)
Date: Sat, 3 Oct 2015 23:03:53 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Julia Lawall <julia.lawall@lip6.fr>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: iio: meter: Use
 devm_iio_trigger_alloc
In-Reply-To: <alpine.DEB.2.10.1510031922120.2586@hadrien>
Message-ID: <alpine.DEB.2.11.1510032303210.32532@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443892556-9121-1-git-send-email-shraddha.6596@gmail.com> <alpine.DEB.2.10.1510031922120.2586@hadrien>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.56101187.000E,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Sat, 3 Oct 2015, Julia Lawall wrote:

> On Sat, 3 Oct 2015, Shraddha Barke wrote:
>
>> Introduce use of managed resource function devm_iio_trigger_alloc
>> instead of iio_trigger_alloc and remove corresponding calls
>> to iio_trigger_free in the probe and remove functions.
>> Also unnecessary label error_free_trig is dropped.
>
> How about doing the request_irq as well?
>
> You have a nice example here:
>
> http://lxr.free-electrons.com/source/drivers/iio/imu/inv_mpu6050/inv_mpu_trigger.c#L119

Alright. Should I send a v3 with this change or a separate patch or
patch series?

Shraddha
>
> Unfortunately, there doesn't seem to be a devm function for the
> unregister...
>
> julia
>
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
>> Changes in v2-
>>  Use appropriate arguments in devm_iio_trigger_alloc.
>>
>>  drivers/staging/iio/meter/ade7758_trigger.c | 12 +++++-------
>>  1 file changed, 5 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/staging/iio/meter/ade7758_trigger.c b/drivers/staging/iio/meter/ade7758_trigger.c
>> index 5b35a7f..d5a324a 100644
>> --- a/drivers/staging/iio/meter/ade7758_trigger.c
>> +++ b/drivers/staging/iio/meter/ade7758_trigger.c
>> @@ -63,9 +63,10 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>>  	struct ade7758_state *st = iio_priv(indio_dev);
>>  	int ret;
>>
>> -	st->trig = iio_trigger_alloc("%s-dev%d",
>> -					spi_get_device_id(st->us)->name,
>> -					indio_dev->id);
>> +	st->trig = devm_iio_trigger_alloc(&indio_dev->dev,
>> +					  "%s-dev%d",
>> +					  spi_get_device_id(st->us)->name,
>> +					  indio_dev->id);
>>  	if (!st->trig) {
>>  		ret = -ENOMEM;
>>  		goto error_ret;
>> @@ -77,7 +78,7 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>>  			  spi_get_device_id(st->us)->name,
>>  			  st->trig);
>>  	if (ret)
>> -		goto error_free_trig;
>> +		goto error_ret;
>>
>>  	st->trig->dev.parent = &st->us->dev;
>>  	st->trig->ops = &ade7758_trigger_ops;
>> @@ -93,8 +94,6 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>>
>>  error_free_irq:
>>  	free_irq(st->us->irq, st->trig);
>> -error_free_trig:
>> -	iio_trigger_free(st->trig);
>>  error_ret:
>>  	return ret;
>>  }
>> @@ -105,5 +104,4 @@ void ade7758_remove_trigger(struct iio_dev *indio_dev)
>>
>>  	iio_trigger_unregister(st->trig);
>>  	free_irq(st->us->irq, st->trig);
>> -	iio_trigger_free(st->trig);
>>  }
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443892556-9121-1-git-send-email-shraddha.6596%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>

