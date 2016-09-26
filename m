X-GM-THRID: 6334501758545428480
X-Received: by 10.46.9.202 with SMTP id 193mr998508ljj.30.1474884208321;
        Mon, 26 Sep 2016 03:03:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.67 with SMTP id 64ls1420167ljj.50.gmail; Mon, 26 Sep 2016
 03:03:27 -0700 (PDT)
X-Received: by 10.25.190.137 with SMTP id o131mr984413lff.17.1474884207329;
        Mon, 26 Sep 2016 03:03:27 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id e21si513840wmc.2.2016.09.26.03.03.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 03:03:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id b71so8445498lfg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 03:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=WsmmDi97po7X7rweVvZA9VUFpzHodlmxpC/X/D+gtMw=;
        b=TmZTJduK6d7Z8VlK9DEsLEPg5fK9D7Y4hVAAjpJD8cTnULt3AV3XasCWDh/ZYr5bmC
         JJ0Av1PCPB7gkks4KugwX1TmzrjOjKtHn5KUacd6LMON30gbIbJ1WZArE9c+wwI9BL3e
         4OmCV5Ko4RX6KIeHE6dv93ZvdpwgxK1X7PGGUhzCp5ofJs1UJYo+3QHHVIgHRX8dM59l
         xg0ppkjKD01xxWY0kVL6TTN96vRjV7uGcBWIzB7wVKUQM7i3ihbh5LsL1RnmOlQAmcLn
         hQzKX6MrFuOnaX+1umZ97FkEJ9ShG47j23LHCW2m5PtSNM69mt7pxzjzRK3ic1Cw4wri
         10lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=WsmmDi97po7X7rweVvZA9VUFpzHodlmxpC/X/D+gtMw=;
        b=i528it/62zgqhwR4lZ/TVT/i70YV78RDfVOHYLeX/V7zIDz0kZze75z58ZWX0e9Uve
         15QAEvxTxpZaO/d3ewQbVEHwyhaZmKl2Sz4ESI2o1ujsGvg/6GXHgFn0u0BtqC5zLRrV
         j5PQkqRJ/c66rvz13BZTKfc3mrrhYOgsJJ5XY/jvmyuBkZ3KRGBQLyXZ2/318h/fXQD+
         89oKM5oIjaotLzxghzhN+0Nwj+grfbYa3yCvrF8P/9Vhk9HCoAvk+nfc37H1O9gFsvwd
         dBOdLtFYnPs/dpaOpCByE3TSqRb7yndiSHNEjvCDsVf4xDqZ2yFN+TBThc76z9ynYMxr
         LBbg==
X-Gm-Message-State: AE9vXwOgH9WmCyOvB+6xW+XfVVPwQW4Hkn70k+mSqLrfsDUtmrLqh4epXjQt21L3+e0NiXIDZs/wxAzZ0v40zQ==
X-Received: by 10.25.158.143 with SMTP id h137mr7613569lfe.83.1474884206905;
 Mon, 26 Sep 2016 03:03:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Mon, 26 Sep 2016 03:03:26 -0700 (PDT)
In-Reply-To: <10137f4a-6794-e043-1525-e4152b568ec1@metafoo.de>
References: <1474866099-12282-1-git-send-email-bhumirks@gmail.com>
 <1474866099-12282-2-git-send-email-bhumirks@gmail.com> <10137f4a-6794-e043-1525-e4152b568ec1@metafoo.de>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Mon, 26 Sep 2016 15:33:26 +0530
Message-ID: <CAOH+1jHJNZ9H-Cr05cjVtkn=5Gyf=7JbPGxWDr=HZAoKChv+1w@mail.gmail.com>
Subject: Re: [PATCH 1/2] Staging: iio: adc: constify attribute_group structures
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org, knaack.h@gmx.de, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 26, 2016 at 2:54 PM, Lars-Peter Clausen <lars@metafoo.de> wrote:
> On 09/26/2016 07:01 AM, Bhumika Goyal wrote:
>> Check for attribute_group structures that are only stored in the
>> attrs filed of iio_info structure. As the attrs field of iio_info
>> structures is constant, so these attribute_group structures can also be
>> declared constant.
>> Done using coccinelle:
>>
>> @r1 disable optional_qualifier @
>> identifier i;
>> position p;
>> @@
>> static struct attribute_group i@p = {...};
>>
>> @ok1@
>> identifier r1.i;
>> position p;
>> struct iio_info x;
>> @@
>> x.attrs=&i@p;
>>
>> @bad@
>> position p!={r1.p,ok1.p};
>> identifier r1.i;
>> @@
>> i@p
>>
>> @depends on !bad disable optional_qualifier@
>> identifier r1.i;
>> @@
>> static
>> +const
>> struct attribute_group i={...};
>>
>> @depends on !bad disable optional_qualifier@
>> identifier r1.i;
>> @@
>> +const
>> struct attribute_group i;
>>
>> File size before: drivers/staging/iio/adc/ad7280a.o
>>    text          data     bss     dec     hex filename
>>    6487           584     776    7847    1ea7
>> drivers/staging/iio/adc/ad7280a.o
>>
>> File size after: drivers/staging/iio/adc/ad7280a.o
>>    text          data     bss     dec     hex filename
>>    6551           544     776    7871    1ebf
>> drivers/staging/iio/adc/ad7280a.o
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>
> Looks good, thanks. Just as something to remember for future patches, if you
> send a patch for a single driver it is best to mention the driver in the
> subject. Usually you can also leave out the sub-subsystem. So in this case
> something like "staging:iio:ad7280a: ..."
>
OK, i will keep this is mind.
> Acked-by: Lars-Peter Clausen <lars@metafoo.de>
>
> This patch also raises another issue. In this driver we have two
> attribute_groups, one for the device attributes, one for the event
> attributes. The device attribute group has now been made const, but the
> event struct has not.
>
> For some reason the event_attrs field in the iio_info struct is not a const
> struct attribute_group. Even though there is no reason why it shouldn't be.
> Let me know if this is something you want to fix, once that is done there
> are a few more attribute_group structs in the drivers that can be made const.
>

Well, I thought of constifying the attribute_groups structures for
event attributes but then as you said the event_attrs filed of
iio_info is not constant so left it. But I would definitely like to
work on this further. So, firstly I need to find why the event_attrs
field can be made constant in the iio_info structure definition?

Thanks,
Bhumika
>> ---
>>  drivers/staging/iio/adc/ad7280a.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
>> index 253a7f1..977241e 100644
>> --- a/drivers/staging/iio/adc/ad7280a.c
>> +++ b/drivers/staging/iio/adc/ad7280a.c
>> @@ -478,7 +478,7 @@ static ssize_t ad7280_store_balance_timer(struct device *dev,
>>  static struct attribute *ad7280_attributes[AD7280A_MAX_CHAIN *
>>                                          AD7280A_CELLS_PER_DEV * 2 + 1];
>>
>> -static struct attribute_group ad7280_attrs_group = {
>> +static const struct attribute_group ad7280_attrs_group = {
>>       .attrs = ad7280_attributes,
>>  };
>>
>>
>

