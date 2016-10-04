X-GM-THRID: 6336577206052978688
X-Received: by 10.194.18.163 with SMTP id x3mr92357wjd.21.1475559440259;
        Mon, 03 Oct 2016 22:37:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.89.142 with SMTP id n136ls276060lfb.29.gmail; Mon, 03 Oct
 2016 22:37:19 -0700 (PDT)
X-Received: by 10.25.221.130 with SMTP id w2mr91093lfi.8.1475559439658;
        Mon, 03 Oct 2016 22:37:19 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id e21si183152wmc.2.2016.10.03.22.37.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 22:37:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id s64so9730875lfs.2
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 22:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=qVbq4l8eCYuN8Tesu5XvOt6wrG7k56bTh50Ww80+kR4=;
        b=v5ed58qnX3PKiGJKQZUj792CkpN6fghqyO8n53vaB6euthn7bT20oqHqqeYMQyKLqz
         aSBOcAIILiAmYqdLwXudETW/WfABcmq1vqRBiM2FMflnpbl7HGRbVWtxZE9Yy43okuFM
         jaOEXJXg6WasOUGkMA0QsYBu6yfMdy4xrHUqiKPqTwect1u0jFYLNNhFbfd267mnKhqK
         BT0M4lQbQu+UXzEmn48PSlObP7cHRVaoUlmNMQIpfY1z30wsIglDQehjM1+Hbq8jID4W
         H7iu2F0sxFMDC+uObS3NvFJ+kUz2UcomfUVvrAYNuk8eo/h71bHldtnpCgdkjctLpBDA
         8PHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=qVbq4l8eCYuN8Tesu5XvOt6wrG7k56bTh50Ww80+kR4=;
        b=BG0z2djFIslICurJ7ejJGFUcpR8RQsphzDZsOi2VD/zrksYYZ6wcCPZTbrNMRc6q+T
         OWKTLIOiD3u0+4fAypYfQHjaOV6MjyHGDkFTWHToAj0bFRG5ENFDUkJSIqfaCEqu4JIc
         UgaQa6oaPO5N+9Q57JQZPWSNd90LVbNLAmUm5Tg0QYkZAzyp7u/Fw4Vzna4rI0VTv/WR
         G5v553yRA3G7nnyJZc9roMFJGnNuBauFpfwGoEJsfRZ1m0Z/ZIHnrAtxxPSIEONNgRBG
         FDd4JAiM7Wc4SNmcomCSaf230naIfsJNu8JW19P+Z8FyzPNWUrqRoYajLcXVX70Kx0TT
         TEWg==
X-Gm-Message-State: AA6/9RkooaKtIJV+s3zRTS+u7bHi3bOwK3obPEASxqEkDPvBtiqBnS1qAFMiUjsbLlUM8lgLY+eWCaueqLRGww==
X-Received: by 10.25.17.219 with SMTP id 88mr628927lfr.182.1475559439324; Mon,
 03 Oct 2016 22:37:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Mon, 3 Oct 2016 22:37:18 -0700 (PDT)
In-Reply-To: <275148d6-8eb3-7e8b-be02-9d6f1a48eeed@kernel.org>
References: <1475349315-6155-1-git-send-email-bhumirks@gmail.com>
 <1475349315-6155-6-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1610012124120.3445@hadrien>
 <275148d6-8eb3-7e8b-be02-9d6f1a48eeed@kernel.org>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Tue, 4 Oct 2016 11:07:18 +0530
Message-ID: <CAOH+1jFRKZqqQDQcSYcA8g9ZX6uRfS3uObBsq85pg5vH-B8TWA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/5] Staging: iio: ad7150: constify
 attribute_group structures
To: Jonathan Cameron <jic23@kernel.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com, 
	knaack.h@gmx.de, Lars-Peter Clausen <lars@metafoo.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, Joe Perches <joe@perches.com>, 
	Robo Bot <apw@canonical.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 4, 2016 at 1:41 AM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 01/10/16 20:24, Julia Lawall wrote:
>>
>>
>> On Sun, 2 Oct 2016, Bhumika Goyal wrote:
>>
>>> Check for attribute_group structures that are only stored in the
>>> event_attrs filed of iio_info structure. As the event_attrs field
>>> of iio_info structures is constant, so these attribute_group
>>> structures can also be declared constant.
>>> Done using coccinelle:
>>>
>>> @r1 disable optional_qualifier @
>>> identifier i;
>>> position p;
>>> @@
>>> static struct attribute_group i@p = {...};
>>>
>>> @ok1@
>>> identifier r1.i;
>>> position p;
>>> struct iio_info x;
>>> @@
>>> x.event_attrs=&i@p;
>>>
>>> @bad@
>>> position p!={r1.p,ok1.p};
>>> identifier r1.i;
>>> @@
>>> i@p
>>>
>>> @depends on !bad disable optional_qualifier@
>>> identifier r1.i;
>>> @@
>>> static
>>> +const
>>> struct attribute_group i={...};
>>>
>>> @depends on !bad disable optional_qualifier@
>>> identifier r1.i;
>>> @@
>>> +const
>>> struct attribute_group i;
>>>
>>> File size before:
>>>    text         data     bss     dec     hex filename
>>>    3561         1152       8    4721    1271 drivers/staging/iio/cdc/ad7150.o
>>>
>>> File size after:
>>>    text         data     bss     dec     hex filename
>>>    3625         1088       8    4721    1271 drivers/staging/iio/cdc/ad7150.o
>>>
>>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>>
>> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> Applied and pushed out as testing for the autobuilders to play with it.
>
> Thanks for this nice little series.  Only comment is don't forget
> that there are drivers that could do with this fix outside of staging!
> (grep suggests 5 drivers in drivers/iio)
>
> If you would like to fix those up as well, that would be great.
>

I will fix up those as well :)

Thanks,
Bhumika

> Jonathan
>
>>
>>> ---
>>>  drivers/staging/iio/cdc/ad7150.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
>>> index 5578a07..6998c3d 100644
>>> --- a/drivers/staging/iio/cdc/ad7150.c
>>> +++ b/drivers/staging/iio/cdc/ad7150.c
>>> @@ -562,7 +562,7 @@ static struct attribute *ad7150_event_attributes[] = {
>>>      NULL,
>>>  };
>>>
>>> -static struct attribute_group ad7150_event_attribute_group = {
>>> +static const struct attribute_group ad7150_event_attribute_group = {
>>>      .attrs = ad7150_event_attributes,
>>>      .name = "events",
>>>  };
>>> --
>>> 1.9.1
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1475349315-6155-6-git-send-email-bhumirks%40gmail.com.
>>> For more options, visit https://groups.google.com/d/optout.
>>>
>

