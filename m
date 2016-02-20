X-GM-THRID: 6253387026836488192
X-Received: by 10.182.92.226 with SMTP id cp2mr18981046obb.19.1455994473964;
        Sat, 20 Feb 2016 10:54:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.15 with SMTP id g15ls446605iod.50.gmail; Sat, 20 Feb
 2016 10:54:33 -0800 (PST)
X-Received: by 10.66.136.71 with SMTP id py7mr19084710pab.7.1455994473401;
        Sat, 20 Feb 2016 10:54:33 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-ob0-x22a.google.com (mail-ob0-x22a.google.com. [2607:f8b0:4003:c01::22a])
        by gmr-mx.google.com with ESMTPS id ug8si1170822igb.3.2016.02.20.10.54.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 10:54:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) client-ip=2607:f8b0:4003:c01::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22a.google.com with SMTP id gc3so133919116obb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 10:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=W14X6SWRPrsZVt6lr/s7oT9X5Oy8fEXpwtHohBP4cUk=;
        b=vNzbTEt0yZYJ1f3j+sCc3wXPj0vZmpBMnZifJCPs3DaEAYhxBQIVD4tOaC/+HsXQ6E
         c1ZfXpyQ556UOiENzgKVZcx6EJqKkKEkvMGaiRjokemHlfE6EvW4qQzBmQR9lnQ0nET+
         JgcXeNJUqb0pu86v98MxRKYYWE72py9KIAoRbWXEKK9ULMnh68xa1I+eKGC4mrBhIZ8P
         /babfcQAhtUpdiItreRIj6raGqrRUNp7BYx+6+hpHRE62tYbjrGH4xxtjZnKM9jJfxcp
         wbRW51U2Hd76pvqrYSPTJZ9qHsuzGFaRzJNZu5RINhC0+0Pf+/2V1+WAKmoPi4mBc32D
         aiEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=W14X6SWRPrsZVt6lr/s7oT9X5Oy8fEXpwtHohBP4cUk=;
        b=bL9fSAA7tjB/cAlvZmPdjYO7IoHuexVoBzF6OVc6LJobUFlS/lCrFW2C3CxbV5DarE
         jzxgksQKX18OJ+VWfjawBDpm9dOJdh+qO/jSn3nInfzwuI3a7ynoQqPFJpDm2mvv6gU4
         Ht0NPx1QBVsiwWH4v2t5GVJ1FynUq16/3UUcL4Q2ZJz3V12yFJJsLJVGg1A/LgxlCEY0
         AJxOCjwaYXqZyY2atceBc/SwxM3eBTlByyEe9tQR0jzpNh/LIDBIhHP9ezEU/evSaCnu
         mq6lRBrFu16rKifjj46DSWkVAognMmo6nK9jWozzKtG08HaKjf6gPRhYrGGQRmXRBVZE
         UH5A==
X-Gm-Message-State: AG10YOQQi+9PaWl8CLUR16B9csmS5aowaj8x2muI6OktTYuYJgGeyB2GZMHKk+VXJNEkCuUo0Qrv7pQW33Dong==
MIME-Version: 1.0
X-Received: by 10.182.186.105 with SMTP id fj9mr16618018obc.17.1455994473173;
 Sat, 20 Feb 2016 10:54:33 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Sat, 20 Feb 2016 10:54:33 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602201344120.2711@hadrien>
References: <1455980111-15231-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.10.1602201014150.2706@hadrien>
	<CAOH+1jEOeWM7pR2bsX3xPxJJUNueUo8T29ODXSkzmqo0n5PLbQ@mail.gmail.com>
	<alpine.DEB.2.10.1602201344120.2711@hadrien>
Date: Sun, 21 Feb 2016 00:24:33 +0530
Message-ID: <CAOH+1jF6jkLkEG-ctiALhHShv1TKvctrrUZTdSsoANhu32Tcbg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: light: Remove __func__
 from dev_err
From: Bhumika Goyal <bhumirks@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 21, 2016 at 12:15 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 20 Feb 2016, Bhumika Goyal wrote:
>
>> On Sat, Feb 20, 2016 at 8:44 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Sat, 20 Feb 2016, Bhumika Goyal wrote:
>> >
>> >> This patch removes __func__ argument from dev_err as dev_err includes
>> >> the function name in the log printout, so there is no need to
>> >> include it manually.
>> >
>> > No, it doesn't.  The function name should be left there if it is useful.
>> >
>> > julia
>> >
>>
>> Ok Julia and thanks for the feedback . I thought that the function
>> name is only useful for debugging and should not be
>> displayed in normal module message.
>> Also I have a doubt because I saw some of the patches sent by other
>> developers where they have removed __func__ from dev_err so why is
>> removing __func__ not helping here?
>
> Because those patches were actually not so desirable.  Sorry about it.
>
> If you think that the function name is not useful in this particular case,
> then it's fine to drop it, but it's not a general pricuple that it is
> never useful.
>
> julia
>

Thanks for the feedback and I got your point now. Dropping the
function name is not a good idea here .

Thanks
Bhumika

>>
>> Thanks
>> Bhumika
>>
>> >> Found using coccinelle:
>> >>
>> >> @a@
>> >> expression E;
>> >> expression  msg;
>> >> @@
>> >>
>> >> dev_err(E, msg, __func__);
>> >>
>> >> @script:python b@
>> >> e << a.msg;
>> >> y;
>> >> @@
>> >>
>> >> if(e.find("%s: ") == True):
>> >>         m = e.replace("%s: ", "");
>> >>         coccinelle.y = m;
>> >> elif(e.find("%s ") == True):
>> >>         m = e.replace("%s ", "");
>> >>         coccinelle.y = m;
>> >> else:
>> >>         m = e.replace("%s", "");
>> >>
>> >> @c@
>> >> expression a.E, a.msg;
>> >> identifier  b.y;
>> >> @@
>> >>
>> >> - dev_err(E, msg, __func__);
>> >> + dev_err(E, y);
>> >>
>> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> >> ---
>> >>  drivers/staging/iio/light/tsl2x7x_core.c | 38 +++++++++++---------------------
>> >>  1 file changed, 13 insertions(+), 25 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
>> >> index 2a62718..348c9c2 100644
>> >> --- a/drivers/staging/iio/light/tsl2x7x_core.c
>> >> +++ b/drivers/staging/iio/light/tsl2x7x_core.c
>> >> @@ -348,8 +348,7 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
>> >>
>> >>       if (chip->tsl2x7x_chip_status != TSL2X7X_CHIP_WORKING) {
>> >>               /* device is not enabled */
>> >> -             dev_err(&chip->client->dev, "%s: device is not enabled\n",
>> >> -                             __func__);
>> >> +             dev_err(&chip->client->dev, "device is not enabled\n");
>> >>               ret = -EBUSY;
>> >>               goto out_unlock;
>> >>       }
>> >> @@ -357,14 +356,12 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
>> >>       ret = tsl2x7x_i2c_read(chip->client,
>> >>               (TSL2X7X_CMD_REG | TSL2X7X_STATUS), &buf[0]);
>> >>       if (ret < 0) {
>> >> -             dev_err(&chip->client->dev,
>> >> -                     "%s: Failed to read STATUS Reg\n", __func__);
>> >> +             dev_err(&chip->client->dev, "Failed to read STATUS Reg\n");
>> >>               goto out_unlock;
>> >>       }
>> >>       /* is data new & valid */
>> >>       if (!(buf[0] & TSL2X7X_STA_ADC_VALID)) {
>> >> -             dev_err(&chip->client->dev,
>> >> -                     "%s: data not valid yet\n", __func__);
>> >> +             dev_err(&chip->client->dev, "data not valid yet\n");
>> >>               ret = chip->als_cur_info.lux; /* return LAST VALUE */
>> >>               goto out_unlock;
>> >>       }
>> >> @@ -482,8 +479,7 @@ static int tsl2x7x_get_prox(struct iio_dev *indio_dev)
>> >>       struct tsl2X7X_chip *chip = iio_priv(indio_dev);
>> >>
>> >>       if (mutex_trylock(&chip->prox_mutex) == 0) {
>> >> -             dev_err(&chip->client->dev,
>> >> -                     "%s: Can't get prox mutex\n", __func__);
>> >> +             dev_err(&chip->client->dev, "Can't get prox mutex\n");
>> >>               return -EBUSY;
>> >>       }
>> >>
>> >> @@ -586,8 +582,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
>> >>       reg_val = i2c_smbus_read_byte(chip->client);
>> >>       if ((reg_val & (TSL2X7X_CNTL_ADC_ENBL | TSL2X7X_CNTL_PWR_ON))
>> >>               != (TSL2X7X_CNTL_ADC_ENBL | TSL2X7X_CNTL_PWR_ON)) {
>> >> -             dev_err(&chip->client->dev,
>> >> -                     "%s: failed: ADC not enabled\n", __func__);
>> >> +             dev_err(&chip->client->dev, "failed: ADC not enabled\n");
>> >>               return -1;
>> >>       }
>> >>
>> >> @@ -602,14 +597,13 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
>> >>       reg_val = i2c_smbus_read_byte(chip->client);
>> >>       if ((reg_val & TSL2X7X_STA_ADC_VALID) != TSL2X7X_STA_ADC_VALID) {
>> >>               dev_err(&chip->client->dev,
>> >> -                     "%s: failed: STATUS - ADC not valid.\n", __func__);
>> >> +                     "failed: STATUS - ADC not valid.\n");
>> >>               return -ENODATA;
>> >>       }
>> >>
>> >>       lux_val = tsl2x7x_get_lux(indio_dev);
>> >>       if (lux_val < 0) {
>> >> -             dev_err(&chip->client->dev,
>> >> -             "%s: failed to get lux\n", __func__);
>> >> +             dev_err(&chip->client->dev, "failed to get lux\n");
>> >>               return lux_val;
>> >>       }
>> >>
>> >> @@ -701,8 +695,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>> >>       ret = i2c_smbus_write_byte_data(chip->client,
>> >>               TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
>> >>       if (ret < 0) {
>> >> -             dev_err(&chip->client->dev,
>> >> -                     "%s: failed on CNTRL reg.\n", __func__);
>> >> +             dev_err(&chip->client->dev, "failed on CNTRL reg.\n");
>> >>               return ret;
>> >>       }
>> >>
>> >> @@ -729,8 +722,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>> >>       ret = i2c_smbus_write_byte_data(chip->client,
>> >>                       TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
>> >>       if (ret < 0) {
>> >> -             dev_err(&chip->client->dev,
>> >> -                     "%s: failed on 2nd CTRL reg.\n", __func__);
>> >> +             dev_err(&chip->client->dev, "failed on 2nd CTRL reg.\n");
>> >>               return ret;
>> >>       }
>> >>
>> >> @@ -749,8 +741,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>> >>                       (TSL2X7X_CMD_REG | TSL2X7X_CNTRL), reg_val);
>> >>               if (ret < 0)
>> >>                       dev_err(&chip->client->dev,
>> >> -                             "%s: failed in tsl2x7x_IOCTL_INT_SET.\n",
>> >> -                             __func__);
>> >> +                             "failed in tsl2x7x_IOCTL_INT_SET.\n");
>> >>
>> >>               /* Clear out any initial interrupts  */
>> >>               ret = i2c_smbus_write_byte(chip->client,
>> >> @@ -758,8 +749,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
>> >>                       TSL2X7X_CMD_PROXALS_INT_CLR);
>> >>               if (ret < 0) {
>> >>                       dev_err(&chip->client->dev,
>> >> -                             "%s: Failed to clear Int status\n",
>> >> -                             __func__);
>> >> +                             "Failed to clear Int status\n");
>> >>               return ret;
>> >>               }
>> >>       }
>> >> @@ -1919,8 +1909,7 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
>> >>                                               "TSL2X7X_event",
>> >>                                               indio_dev);
>> >>               if (ret) {
>> >> -                     dev_err(&clientp->dev,
>> >> -                             "%s: irq request failed", __func__);
>> >> +                     dev_err(&clientp->dev, "irq request failed");
>> >>                       return ret;
>> >>               }
>> >>       }
>> >> @@ -1932,8 +1921,7 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
>> >>
>> >>       ret = iio_device_register(indio_dev);
>> >>       if (ret) {
>> >> -             dev_err(&clientp->dev,
>> >> -                     "%s: iio registration failed\n", __func__);
>> >> +             dev_err(&clientp->dev, "iio registration failed\n");
>> >>               return ret;
>> >>       }
>> >>
>> >> --
>> >> 1.9.1
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455980111-15231-1-git-send-email-bhumirks%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jEOeWM7pR2bsX3xPxJJUNueUo8T29ODXSkzmqo0n5PLbQ%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

