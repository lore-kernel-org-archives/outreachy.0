X-GM-THRID: 6202672545102036992
X-Received: by 10.31.161.201 with SMTP id k192mr25376451vke.12.1444676431745;
        Mon, 12 Oct 2015 12:00:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.54 with SMTP id e51ls2610009qge.6.gmail; Mon, 12 Oct
 2015 12:00:31 -0700 (PDT)
X-Received: by 10.129.70.6 with SMTP id t6mr27393397ywa.5.1444676431083;
        Mon, 12 Oct 2015 12:00:31 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x231.google.com (mail-yk0-x231.google.com. [2607:f8b0:4002:c07::231])
        by gmr-mx.google.com with ESMTPS id y11si1273927ywd.7.2015.10.12.12.00.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 12:00:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::231 as permitted sender) client-ip=2607:f8b0:4002:c07::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::231 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x231.google.com with SMTP id c126so105132568yke.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 12:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=uJ1aVOfdpePoTf2Ga3oY8BPZ6egTIYOYI8g5+VdHva8=;
        b=kaL6ZByWHXbPj117at9PEHbgGj+dnrLZ0T3LDpRsz2FQ9M2YqWnDBBD1vlo1ld9hfs
         4xap/BIuxfdzaR+W57UVS5I00cp0cklEPj2AJjuBxQKBRrSDX3z08kHfum2TM/uoTXfB
         CQ/mM7ZsHt5q7S58d7VqSAo9x4JdJo3cEYC9orEyNt673OE1h3nKFSEiIoSO1LPBOh3G
         WzuIh84itqqAET88/3jY8bmYemhwLTuPEAH2Apk5D+b83IYmkT/weSxSk/N7HH2NcjjP
         ebJTk3we30GandtqKAQZvwa9wBFM/QrknAo5zPntjDHpTeX1FbOn1uEbI2pzMDku9vZe
         hgcA==
MIME-Version: 1.0
X-Received: by 10.129.157.129 with SMTP id u123mr23391875ywg.11.1444676430997;
 Mon, 12 Oct 2015 12:00:30 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Mon, 12 Oct 2015 12:00:30 -0700 (PDT)
In-Reply-To: <CAEnQRZAZ0f5p3myoNWSdzF=WhxoPWMxNLYn+wcHThYz_YrqKzg@mail.gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<d94402f948a0d2561ee046fd5fcb56ea562ab1bf.1444419393.git.ciorneiioana@gmail.com>
	<CAEnQRZAZ0f5p3myoNWSdzF=WhxoPWMxNLYn+wcHThYz_YrqKzg@mail.gmail.com>
Date: Mon, 12 Oct 2015 22:00:30 +0300
Message-ID: <CAHWJYFm8t+=JB7RGOb1xVtFVrn8fDvT0eVyH5jxio2yojcohpQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 5/9] staging: iio: adc: add spaces
 around binary operators
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 7:38 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
>> Add spaces around binary operators like -, +, * etc
>> in order to improve readability
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> ---
>>
>> Changes in v2:
>>     - nothing
>> Changes in v3:
>>     - nothing
>>
>>  drivers/staging/iio/adc/ad7192.c  | 2 +-
>>  drivers/staging/iio/adc/ad7280a.c | 4 ++--
>>  drivers/staging/iio/adc/ad7816.c  | 2 +-
>>  3 files changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
>> index e7212c8..1bae258 100644
>> --- a/drivers/staging/iio/adc/ad7192.c
>> +++ b/drivers/staging/iio/adc/ad7192.c
>> @@ -377,7 +377,7 @@ ad7192_show_scale_available(struct device *dev,
>>  }
>>
>>  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
>> -                            in_voltage-voltage_scale_available,
>> +                            in_voltage - voltage_scale_available,
>
> This is not ok :). in_voltage-voltage_scale_available is the name of
> an IIO sysfs
> attribute exposed to user space. '-' is a part of the name, there is
> no binary operator
> here.
>
> If checkpatch complains about this then it's a false positive.


Yes, checkpatch generated a warning and also there were no build errors.
Sorry about this. I will send a v2.

Ioana

>
>
>>                              S_IRUGO, ad7192_show_scale_available, NULL, 0);
>>
>>  static IIO_DEVICE_ATTR(in_voltage_scale_available, S_IRUGO,
>> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
>> index 2c07198..e8e1eb1 100644
>> --- a/drivers/staging/iio/adc/ad7280a.c
>> +++ b/drivers/staging/iio/adc/ad7280a.c
>> @@ -748,14 +748,14 @@ out:
>>  }
>>
>>  static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
>> -               in_voltage-voltage_thresh_low_value,
>> +               in_voltage - voltage_thresh_low_value,
>>                 S_IRUGO | S_IWUSR,
>>                 ad7280_read_channel_config,
>>                 ad7280_write_channel_config,
>>                 AD7280A_CELL_UNDERVOLTAGE);
>
> Ditto.
>
>>
>>  static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
>> -               in_voltage-voltage_thresh_high_value,
>> +               in_voltage - voltage_thresh_high_value,
>
> Ditto.
>
>>                 S_IRUGO | S_IWUSR,
>>                 ad7280_read_channel_config,
>>                 ad7280_write_channel_config,
>> diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
>> index 4e954d2..6636087 100644
>> --- a/drivers/staging/iio/adc/ad7816.c
>> +++ b/drivers/staging/iio/adc/ad7816.c
>> @@ -48,7 +48,7 @@ struct ad7816_chip_info {
>>         u16 rdwr_pin;
>>         u16 convert_pin;
>>         u16 busy_pin;
>> -       u8  oti_data[AD7816_CS_MAX+1];
>> +       u8  oti_data[AD7816_CS_MAX + 1];
>
> This is ok.
>
>>         u8  channel_id; /* 0 always be temperature */
>>         u8  mode;
>>  };
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d94402f948a0d2561ee046fd5fcb56ea562ab1bf.1444419393.git.ciorneiioana%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.

