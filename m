X-GM-THRID: 6201460938447519744
X-Received: by 10.107.160.72 with SMTP id j69mr19192959ioe.7.1443902240627;
        Sat, 03 Oct 2015 12:57:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.148 with SMTP id x20ls1925762qgx.34.gmail; Sat, 03 Oct
 2015 12:57:19 -0700 (PDT)
X-Received: by 10.13.224.132 with SMTP id j126mr18810760ywe.13.1443902239901;
        Sat, 03 Oct 2015 12:57:19 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id pe1si2377223pac.2.2015.10.03.12.57.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 12:57:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id lk4so136183499pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 12:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=mygXNnx8roj2DtQ60kaLGpoViXcHIJz9lPZMwMf8IRg=;
        b=ElaPPp9fu5vt99ZcVyYwRK0gxDsJI0xTQquieDJdeAaRzLy08p0f54qpzWL/PJwVpW
         POhBrzNpe6yQuALKynnkrNApZA5W32i1rzlztP1AFiDQSrmnHx7rq9pOWFVEGItVCxyu
         SinKz7Bt4QVTW+xvRpmnynd3ULvjonzgXp856GBL9kxP/OCePY07hRFMmxJ0kU2mvs9m
         F8XvDuf8bUisAJSn9ZDp3Mn9N7I9kwQckSZrTi5TwodNtNVFqKoSWy5S5j5nwhBTqE0U
         PxFTxFQ9H0iqp7BmbZ1u0Lk9iQL6SZfKCVz1jK1pzCW+hH0GcV+YXdqYcGUL3SrE1DUn
         2TZg==
X-Received: by 10.66.193.230 with SMTP id hr6mr28834648pac.39.1443902239735;
        Sat, 03 Oct 2015 12:57:19 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id tp6sm18824176pbc.81.2015.10.03.12.57.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 12:57:19 -0700 (PDT)
Date: Sun, 4 Oct 2015 01:27:05 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Julia Lawall <julia.lawall@lip6.fr>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: iio: meter: Use
 devm_iio_trigger_alloc
In-Reply-To: <alpine.DEB.2.02.1510032142100.2017@localhost6.localdomain6>
Message-ID: <alpine.DEB.2.11.1510040126240.19127@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443898073-12111-1-git-send-email-shraddha.6596@gmail.com> <alpine.DEB.2.02.1510032142100.2017@localhost6.localdomain6>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.5610331E.0034,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Sat, 3 Oct 2015, Julia Lawall wrote:

>> -	ret = request_irq(st->us->irq,
>> -			  ade7758_data_rdy_trig_poll,
>> -			  IRQF_TRIGGER_LOW,
>> -			  spi_get_device_id(st->us)->name,
>> -			  st->trig);
>> +	ret = devm_request_irq(&indio_dev->dev, st->us->irq,
>> +			       ade7758_data_rdy_trig_poll,
>> +			       IRQF_TRIGGER_LOW,
>> +			       spi_get_device_id(st->us)->name,
>> +			       st->trig);
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
>
> Since you are using devm_request_irq, you need to get rid of the free_irq
> as well.  Getting rid of the explicit frees is very important, because
> otherwise the implicit one introduced by the devm function will cause a
> double free.

Oh! That makes a lot of sense. Thanks :)

Shraddha
>
> julia
>
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
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443898073-12111-1-git-send-email-shraddha.6596%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>

