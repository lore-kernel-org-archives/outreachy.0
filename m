X-GM-THRID: 6253387026836488192
X-Received: by 10.182.29.129 with SMTP id k1mr17807068obh.23.1455986422135;
        Sat, 20 Feb 2016 08:40:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.11 with SMTP id j11ls439052ioe.60.gmail; Sat, 20 Feb
 2016 08:40:21 -0800 (PST)
X-Received: by 10.66.145.232 with SMTP id sx8mr17671770pab.13.1455986421601;
        Sat, 20 Feb 2016 08:40:21 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-ob0-x22e.google.com (mail-ob0-x22e.google.com. [2607:f8b0:4003:c01::22e])
        by gmr-mx.google.com with ESMTPS id k15si1160061igt.3.2016.02.20.08.40.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 08:40:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22e as permitted sender) client-ip=2607:f8b0:4003:c01::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22e as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22e.google.com with SMTP id xk3so135631745obc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 08:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=yIiclYMleDJup24aCRawJI1i9o+Dt24xC0d+NI9iB9E=;
        b=klt+6EbJ1/rMBjwahO/NNNFFCauTI9hNjddv9I17z0L1hA1r2uXJokyl9aL4uRG+FS
         EC/Iq9XyBSFV3f/1v0pl63unKipbt3sXGKBA+BA0+mqA6uu9lvOr8pLgakbZT/3Sm0d7
         VHTL4ZvmUY8VsSTpTLdd8L++hZM+pn8u9S58ggb63/p/NFADkJ82tKywev2d1gCOTYxa
         ognEwnRF7SBQ74PHf3Cot5Ow6E0UgU8QmXNVwzBWYqxxO5umRPGZZzkKEnV3tQ/LiZ/s
         /YzL6gkpybLMrN/87HwymeeSjmeIZxr5JFPhTd5e9bVN905mP8wDz2vDuht0Ae7HytLi
         6XHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=yIiclYMleDJup24aCRawJI1i9o+Dt24xC0d+NI9iB9E=;
        b=WTlAkDVjneb/rutOcw8aMIomUKdxHbx8qWTu4MBoqJdSpcHn1W/p1QaBSNf0Seq7Em
         2JARNRCXUFhQCxWcKRiFjvMJHzvUZjiiBczZWBVFeQdeP1qbU5t+iFi8IYS1O//Mdeyn
         jYcVw2+2BSYqzLxsPSaPkJn/11E4YRYcJLE0w1BLg3DLh/Dju8vyyeYi44WDpOZnIY+9
         S91qSN2qrg6ZrNTWTJlUDfgVh8RnKs4esLyYeW2ZsNCNslJU6zbQvh4oiUM6NemYTP1Q
         V4A1rswZAQgTjy7be4kHzIqGZJF9uYDgGHSxpwDIoYS9Akcx1RUpn6Dcx4l7yisjdVB7
         CTAA==
X-Gm-Message-State: AG10YOTjoZ3yx7MmFSOduW7YshgiWHQGO0BYd1SxmrWvhBpzBcRZdEy86gkhj4RxF7p/R5KzdMpz+2eY/ViZSQ==
MIME-Version: 1.0
X-Received: by 10.182.70.70 with SMTP id k6mr16116241obu.74.1455986421410;
 Sat, 20 Feb 2016 08:40:21 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Sat, 20 Feb 2016 08:40:21 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602201014150.2706@hadrien>
References: <1455980111-15231-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.10.1602201014150.2706@hadrien>
Date: Sat, 20 Feb 2016 22:10:21 +0530
Message-ID: <CAOH+1jEOeWM7pR2bsX3xPxJJUNueUo8T29ODXSkzmqo0n5PLbQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: light: Remove __func__
 from dev_err
From: Bhumika Goyal <bhumirks@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 20, 2016 at 8:44 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 20 Feb 2016, Bhumika Goyal wrote:
>
>> This patch removes __func__ argument from dev_err as dev_err includes
>> the function name in the log printout, so there is no need to
>> include it manually.
>
> No, it doesn't.  The function name should be left there if it is useful.
>
> julia
>

Ok Julia and thanks for the feedback . I thought that the function
name is only useful for debugging and should not be
displayed in normal module message.
Also I have a doubt because I saw some of the patches sent by other
developers where they have removed __func__ from dev_err so why is
removing __func__ not helping here?

Thanks
Bhumika

>> Found using coccinelle:
>>
>> @a@
>> expression E;
>> expression  msg;
>> @@
>>
>> dev_err(E, msg, __func__);
>>
>> @script:python b@
>> e << a.msg;
>> y;
>> @@
>>
>> if(e.find("%s: ") == True):
>>         m = e.replace("%s: ", "");
>>         coccinelle.y = m;
>> elif(e.find("%s ") == True):
>>         m = e.replace("%s ", "");
>>         coccinelle.y = m;
>> else:
>>         m = e.replace("%s", "");
>>
>> @c@
>> expression a.E, a.msg;
>> identifier  b.y;
>> @@
>>
>> - dev_err(E, msg, __func__);
>> + dev_err(E, y);
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/iio/light/tsl2x7x_core.c | 38 +++++++++++---------------------
>>  1 file changed, 13 insertions(+), 25 deletions(-)
>>
>> diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
>> index 2a62718..348c9c2 100644
>> --- a/drivers/staging/iio/light/tsl2x7x_core.c
>> +++ b/drivers/staging/iio/light/tsl2x7x_core.c
>> @@ -348,8 +348,7 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
>>
>>       if (chip->tsl2x7x_chip_status != TSL2X7X_CHIP_WORKING) {
>>               /* device is not enabled */
>> -             dev_err(&chip->client->dev, "%s: device is not enabled\n",
>> -                             __func__);
>> +             dev_err(&chip->client->dev, "device is not enabled\n");
>>               ret = -EBUSY;
>>               goto out_unlock;
>>       }
>> @@ -357,14 +356,12 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
>>       ret = tsl2x7x_i2c_read(chip->client,
>>               (TSL2X7X_CMD_REG | TSL2X7X_STATUS), &buf[0]);
>>       if (ret < 0) {
>> -             dev_err(&chip->client->dev,
>> -                     "%s: Failed to read STATUS Reg\n", __func__);
>> +             dev_err(&chip->client->dev, "Failed to read STATUS Reg\n");
>>               goto out_unlock;
>>       }
>>       /* is data new & valid */
>>       if (!(buf[0] & TSL2X7X_STA_ADC_VALID)) {
>> -             dev_err(&chip->client->dev,
>> -                     "%s: data not valid yet\n", __func__);
>> +             dev_err(&chip->client->dev, "data not valid yet\n");
>>               ret = chip->als_cur_info.lux; /* return LAST VALUE */
>>               goto out_unlock;
>>       }
>> @@ -482,8 +479,7 @@ static int tsl2x7x_get_prox(struct iio_dev *indio_dev)
>>       struct tsl2X7X_chip *chip = iio_priv(indio_dev);
>>
>>       if (mutex_trylock(&chip->prox_mutex) == 0) {
>> -             dev_err(&chip->client->dev,
>> -                     "%s: Can't get prox mutex\n", __func__);
>> +             dev_err(&chip->client->dev, "Can't get prox mutex\n");
>>               return -EBUSY;
>>       }
>>
>> @@ -586,8 +582,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
>>       reg_val = i2c_smbus_read_byte(chip->client);
>>       if ((reg_val & (TSL2X7X_CNTL_ADC_ENBL | TSL2X7X_CNTL_PWR_ON))
>>               != (TSL2X7X_CNTL_ADC_ENBL | TSL2X7X_CNTL_PWR_ON)) {
>> -             dev_err(&chip->client->dev,
>> -                     "%s: failed: ADC not enabled\n", __func__);
>> +             dev_err(&chip->client->dev, "failed: ADC not enabled\n");
>>               return -1;
>>       }
>>
>> @@ -602,14 +597,13 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
>>       reg_val = i2c_smbus_read_byte(chip->client);
>>       if ((reg_val & TSL2X7X_STA_ADC_VALID) != TSL2X7X_STA_ADC_VALID) {
>>               dev_err(&chip->client->dev,
>> -                     "%s: failed: STATUS - ADC not valid.\n", __func__);
>> +                     "failed: STATUS - ADC not valid.\n");
>>               return -ENODATA;
>>       }
>>
>>       lux_val = tsl2x7x_get_lux(indio_dev);
>>       if (lux_val < 0) {
>> -             dev_err(&chip->client->dev,
>> -             "%s: failed to get lux\n", __func__);
>> +             dev_err(&chip->client->dev, "failed to get lux\n");
>>               return lux_val;
>>       }
>>
>> @@ -701,8 +695,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>>       ret = i2c_smbus_write_byte_data(chip->client,
>>               TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
>>       if (ret < 0) {
>> -             dev_err(&chip->client->dev,
>> -                     "%s: failed on CNTRL reg.\n", __func__);
>> +             dev_err(&chip->client->dev, "failed on CNTRL reg.\n");
>>               return ret;
>>       }
>>
>> @@ -729,8 +722,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>>       ret = i2c_smbus_write_byte_data(chip->client,
>>                       TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
>>       if (ret < 0) {
>> -             dev_err(&chip->client->dev,
>> -                     "%s: failed on 2nd CTRL reg.\n", __func__);
>> +             dev_err(&chip->client->dev, "failed on 2nd CTRL reg.\n");
>>               return ret;
>>       }
>>
>> @@ -749,8 +741,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>>                       (TSL2X7X_CMD_REG | TSL2X7X_CNTRL), reg_val);
>>               if (ret < 0)
>>                       dev_err(&chip->client->dev,
>> -                             "%s: failed in tsl2x7x_IOCTL_INT_SET.\n",
>> -                             __func__);
>> +                             "failed in tsl2x7x_IOCTL_INT_SET.\n");
>>
>>               /* Clear out any initial interrupts  */
>>               ret = i2c_smbus_write_byte(chip->client,
>> @@ -758,8 +749,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>>                       TSL2X7X_CMD_PROXALS_INT_CLR);
>>               if (ret < 0) {
>>                       dev_err(&chip->client->dev,
>> -                             "%s: Failed to clear Int status\n",
>> -                             __func__);
>> +                             "Failed to clear Int status\n");
>>               return ret;
>>               }
>>       }
>> @@ -1919,8 +1909,7 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
>>                                               "TSL2X7X_event",
>>                                               indio_dev);
>>               if (ret) {
>> -                     dev_err(&clientp->dev,
>> -                             "%s: irq request failed", __func__);
>> +                     dev_err(&clientp->dev, "irq request failed");
>>                       return ret;
>>               }
>>       }
>> @@ -1932,8 +1921,7 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
>>
>>       ret = iio_device_register(indio_dev);
>>       if (ret) {
>> -             dev_err(&clientp->dev,
>> -                     "%s: iio registration failed\n", __func__);
>> +             dev_err(&clientp->dev, "iio registration failed\n");
>>               return ret;
>>       }
>>
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455980111-15231-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

