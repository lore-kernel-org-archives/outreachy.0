X-GM-THRID: 6200385233952440320
X-Received: by 10.182.247.105 with SMTP id yd9mr28233866obc.50.1444747638679;
        Tue, 13 Oct 2015 07:47:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.227 with SMTP id z3ls1439804igl.16.canary; Tue, 13 Oct
 2015 07:47:18 -0700 (PDT)
X-Received: by 10.66.221.7 with SMTP id qa7mr28915738pac.33.1444747638311;
        Tue, 13 Oct 2015 07:47:18 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x22c.google.com (mail-io0-x22c.google.com. [2607:f8b0:4001:c06::22c])
        by gmr-mx.google.com with ESMTPS id z7si1023962igw.0.2015.10.13.07.47.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 07:47:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) client-ip=2607:f8b0:4001:c06::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x22c.google.com with SMTP id i196so22977807ioi.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 07:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=R54ElZQaVo3gRbbH+LAC20UadRyiE45+YmAghMLQjT4=;
        b=slmHMkbt1wSTi+Kxo6NIU+1O5LZldgQ6c4MvMn4YRarZz+La5WWYVxbay46wxLIC9P
         y8OYA1Y2+3HWgDZ9G+xwvatOnP0fLbPkUSkY6qhjb7PGWmSDgHf8/lrrQIpSq6USYUjx
         hznCQCCqZLIoOkgB2QQEFGM3bmFg+wvMZZ00MHzODx6vBDw2dqi08IpNmNZOFrB9DuHf
         WV6u379X34MlStPzbK0nmklYUv8Oi1QyENFPGTVpibPQ8F7U9PWkHGtm6pDpWK07uZbB
         PWsrh+8hHLlEL7ZDIrIuiaKKKa3OvEDkIiVsCjD4Pw8/e0C11M9+eMnOCr6EqJUD3v8R
         nfpw==
MIME-Version: 1.0
X-Received: by 10.107.30.78 with SMTP id e75mr11205385ioe.150.1444747638155;
 Tue, 13 Oct 2015 07:47:18 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Tue, 13 Oct 2015 07:47:18 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1509302341570.1977@localhost6.localdomain6>
References: <1443639675-18965-1-git-send-email-ksenija.stanojevic@gmail.com>
	<alpine.DEB.2.02.1509302341570.1977@localhost6.localdomain6>
Date: Tue, 13 Oct 2015 16:47:18 +0200
Message-ID: <CAL7P5j+p=JnMHuPCmdw7UH+x+Rbrg7QCtQCpBQ3noZCVUMopsA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Use mutex instead of semaphore
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi Greg,

I think you missed also this patch.

Regards,
Ksenija

On Wed, Sep 30, 2015 at 11:42 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 30 Sep 2015, Ksenija Stanojevic wrote:
>
>> Replace binary semaphore with mutex because mutex gives better performance
>> than binary semaphore.
>
> Nice :)  I didn't even realize that down and up were still used...
>
> julia
>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
>>  drivers/staging/comedi/drivers/dt9812.c | 28 ++++++++++++++--------------
>>  1 file changed, 14 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/staging/comedi/drivers/dt9812.c b/drivers/staging/comedi/drivers/dt9812.c
>> index e11c216..7d309f9 100644
>> --- a/drivers/staging/comedi/drivers/dt9812.c
>> +++ b/drivers/staging/comedi/drivers/dt9812.c
>> @@ -233,7 +233,7 @@ struct dt9812_usb_cmd {
>>  };
>>
>>  struct dt9812_private {
>> -     struct semaphore sem;
>> +     struct mutex mut;
>>       struct {
>>               __u8 addr;
>>               size_t size;
>> @@ -335,7 +335,7 @@ static int dt9812_digital_in(struct comedi_device *dev, u8 *bits)
>>       u8 value[2];
>>       int ret;
>>
>> -     down(&devpriv->sem);
>> +     mutex_lock(&devpriv->mut);
>>       ret = dt9812_read_multiple_registers(dev, 2, reg, value);
>>       if (ret == 0) {
>>               /*
>> @@ -345,7 +345,7 @@ static int dt9812_digital_in(struct comedi_device *dev, u8 *bits)
>>                */
>>               *bits = (value[0] & 0x7f) | ((value[1] & 0x08) << 4);
>>       }
>> -     up(&devpriv->sem);
>> +     mutex_unlock(&devpriv->mut);
>>
>>       return ret;
>>  }
>> @@ -357,9 +357,9 @@ static int dt9812_digital_out(struct comedi_device *dev, u8 bits)
>>       u8 value[1] = { bits };
>>       int ret;
>>
>> -     down(&devpriv->sem);
>> +     mutex_lock(&devpriv->mut);
>>       ret = dt9812_write_multiple_registers(dev, 1, reg, value);
>> -     up(&devpriv->sem);
>> +     mutex_unlock(&devpriv->mut);
>>
>>       return ret;
>>  }
>> @@ -444,7 +444,7 @@ static int dt9812_analog_in(struct comedi_device *dev,
>>       u8 val[3];
>>       int ret;
>>
>> -     down(&devpriv->sem);
>> +     mutex_lock(&devpriv->mut);
>>
>>       /* 1 select the gain */
>>       dt9812_configure_gain(dev, &rmw[0], gain);
>> @@ -493,7 +493,7 @@ static int dt9812_analog_in(struct comedi_device *dev,
>>       }
>>
>>  exit:
>> -     up(&devpriv->sem);
>> +     mutex_unlock(&devpriv->mut);
>>
>>       return ret;
>>  }
>> @@ -504,7 +504,7 @@ static int dt9812_analog_out(struct comedi_device *dev, int channel, u16 value)
>>       struct dt9812_rmw_byte rmw[3];
>>       int ret;
>>
>> -     down(&devpriv->sem);
>> +     mutex_lock(&devpriv->mut);
>>
>>       switch (channel) {
>>       case 0:
>> @@ -545,7 +545,7 @@ static int dt9812_analog_out(struct comedi_device *dev, int channel, u16 value)
>>       }
>>       ret = dt9812_rmw_multiple_registers(dev, 3, rmw);
>>
>> -     up(&devpriv->sem);
>> +     mutex_unlock(&devpriv->mut);
>>
>>       return ret;
>>  }
>> @@ -608,9 +608,9 @@ static int dt9812_ao_insn_read(struct comedi_device *dev,
>>       struct dt9812_private *devpriv = dev->private;
>>       int ret;
>>
>> -     down(&devpriv->sem);
>> +     mutex_lock(&devpriv->mut);
>>       ret = comedi_readback_insn_read(dev, s, insn, data);
>> -     up(&devpriv->sem);
>> +     mutex_unlock(&devpriv->mut);
>>
>>       return ret;
>>  }
>> @@ -774,7 +774,7 @@ static int dt9812_auto_attach(struct comedi_device *dev,
>>       if (!devpriv)
>>               return -ENOMEM;
>>
>> -     sema_init(&devpriv->sem, 1);
>> +     mutex_init(&devpriv->mut);
>>       usb_set_intfdata(intf, devpriv);
>>
>>       ret = dt9812_find_endpoints(dev);
>> @@ -846,11 +846,11 @@ static void dt9812_detach(struct comedi_device *dev)
>>       if (!devpriv)
>>               return;
>>
>> -     down(&devpriv->sem);
>> +     mutex_lock(&devpriv->mut);
>>
>>       usb_set_intfdata(intf, NULL);
>>
>> -     up(&devpriv->sem);
>> +     mutex_unlock(&devpriv->mut);
>>  }
>>
>>  static struct comedi_driver dt9812_driver = {
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443639675-18965-1-git-send-email-ksenija.stanojevic%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

