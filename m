X-GM-THRID: 6212166539594956800
X-Received: by 10.50.28.101 with SMTP id a5mr8070728igh.9.1446408506555;
        Sun, 01 Nov 2015 12:08:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.103 with SMTP id z94ls2048162qge.18.gmail; Sun, 01 Nov
 2015 12:08:25 -0800 (PST)
X-Received: by 10.31.108.23 with SMTP id h23mr15773929vkc.4.1446408505872;
        Sun, 01 Nov 2015 12:08:25 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x236.google.com (mail-yk0-x236.google.com. [2607:f8b0:4002:c07::236])
        by gmr-mx.google.com with ESMTPS id i140si1245838ywe.3.2015.11.01.12.08.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 12:08:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::236 as permitted sender) client-ip=2607:f8b0:4002:c07::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::236 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x236.google.com with SMTP id t191so121368530ykf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 12:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=/61//x9ZIF4kVJsNrLGmneG8lWw6XORS+0LgYCNPYyQ=;
        b=SnGKIZQSQzZbaAI674RcWwLvxCDn5v302oNda7jcCeJ6qKRhdLrwZUgEhaa5TOaVqV
         xZIwZfx3BRPG4TpLC+X/0gVhBS62tRs8/cN1lPxRJTx7JQy/+OtoB6t6xtsvi0d8YkF4
         7tq7fnzqFmzu6m/DPGaCPeLp0tCgiVtVU4fwy2/bmJSBOviDAw9CWhpMGzdsY6pQnx2O
         Jo+1mLO0tivpOnLdUzHp2drbDITcIxaX4W6EAiBBeul8keMaQ25YfSQU64PDonXCbI8W
         8qEV1W36WiBzTA/UAKRAZ4kCHjeAmvKl33MNJTPllg1t9DqMihXTwO/m+HM12hLIrD6t
         XXLQ==
MIME-Version: 1.0
X-Received: by 10.129.154.141 with SMTP id r135mr13574443ywg.195.1446408505766;
 Sun, 01 Nov 2015 12:08:25 -0800 (PST)
Received: by 10.37.107.66 with HTTP; Sun, 1 Nov 2015 12:08:25 -0800 (PST)
In-Reply-To: <56365728.9020304@kernel.org>
References: <1446382725-11765-1-git-send-email-ciorneiioana@gmail.com>
	<56365728.9020304@kernel.org>
Date: Sun, 1 Nov 2015 22:08:25 +0200
Message-ID: <CAHWJYF=W__yY5iOK7Y_=B_tU5GwV2uFyS4913btpLAjae=Cu9A@mail.gmail.com>
Subject: Re: [PATCH 1/2] iio: gyro: check sscanf return value
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, Lars-Peter Clausen <lars@metafoo.de>
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 8:17 PM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 01/11/15 12:58, Ioana Ciornei wrote:
>> This patch fixes the checkpatch warnings:
>> WARNING: unchecked sscanf return value
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> Hi Ioana,
>
> Couple of minor process points (the patches are fine!)
>
> You should have cc'd the driver author and generally also
> the various listed reviewers in MAINTAINERS.  In this case
> of of them is the driver author so possibly just pinging him
> is the way to go.  In the case of Analog devices parts,
> Lars-Peter is also the maintainer so it's all about as
> easy as it gets in this case.

Ok. From now on I will cc the maintainers and the reviewers.
Sorry for the trouble.

Ioana

>
> Lars, looks fine to me.  Your driver so please sanity check.
> Clearly it's not a bug as the inputs are entirely controlled
> by the driver code, but I think having a sanity check on
> the return value is a good thing (from the point of view of
> best practice).
>
> There is a second patch for some the IIO drivers that are your
> problem as well - I'll let you pull that off the list as I'm
> feeling lazy ;)
>
> I did have to check that sscanf never returns any more helpful
> error codes, but unlike the glibc one it seems not.  What fun.
>
> Jonathan
>> ---
>>
>> based on linux-iio/testing branch
>>
>>  drivers/iio/gyro/adis16136.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/iio/gyro/adis16136.c b/drivers/iio/gyro/adis16136.c
>> index 26de876..bb09bff 100644
>> --- a/drivers/iio/gyro/adis16136.c
>> +++ b/drivers/iio/gyro/adis16136.c
>> @@ -435,7 +435,9 @@ static int adis16136_initial_setup(struct iio_dev *indio_dev)
>>       if (ret)
>>               return ret;
>>
>> -     sscanf(indio_dev->name, "adis%u\n", &device_id);
>> +     ret = sscanf(indio_dev->name, "adis%u\n", &device_id);
>> +     if (ret != 1)
>> +             return -EINVAL;
>>
>>       if (prod_id != device_id)
>>               dev_warn(&indio_dev->dev, "Device ID(%u) and product ID(%u) do not match.",
>>
>



-- 
Ioana Ciornei
Facultatea de Automatica si Calculatoare, UPB
Tel. 0753 861 668

