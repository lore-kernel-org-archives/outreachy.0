X-GM-THRID: 6402643767138975744
X-Received: by 10.99.222.21 with SMTP id f21mr1070121pgg.23.1490822931654;
        Wed, 29 Mar 2017 14:28:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.184.8 with SMTP id i8ls5826721iof.24.gmail; Wed, 29 Mar
 2017 14:28:50 -0700 (PDT)
X-Received: by 10.98.42.79 with SMTP id q76mr859283pfq.10.1490822930706;
        Wed, 29 Mar 2017 14:28:50 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id x202si17083vkx.0.2017.03.29.14.28.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 14:28:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id j137so4185677vke.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 14:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=GVCp9D3hwbv8bBAc14bz1amwgNq/SrXDVZPkBUWgm6E=;
        b=LLfQkSErUmFUJv593DPeB9z5NULYY9gcQUdSEEGgKUMrUDuXUg+HRUsqPxzouwRU2r
         lqHdXZfz+9UHLMtkmtSOCIiLfWybTv9hY7pnLpjYfK9TCu3iX/98YOkhchujZYcRlDgv
         o4suiqZaNb3r9jNWPYDNyUQxQwmyYfq1uM8ai31dYpRRNKnxy2P6ABCX6DxPeEX1Kj07
         Lx1wxgwoNihgKvAqIXY5VhxmoJ4V19k947UdznT5v6eaduee0IGadOcjPPz4mIGYEhWP
         jj8ORwHMubUmyFsP8CNepxvUaKEnduByhC/qmB/ghsscuAiwyV7lSbPAuEONa8vM0Bx3
         fQtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=GVCp9D3hwbv8bBAc14bz1amwgNq/SrXDVZPkBUWgm6E=;
        b=I4jxU9N4BpX/+Fl5BGifYWuh+kn2Vm28OcML4OkeV0eter55DhxEuM+hctBh+jn0IU
         f+25SFeE4LSvQYo2C6rfl+lv01z8By4JyGc5qGygmDb+ZrvS9e0c6otefIKeiH45NYeF
         jOuZFr+lHLvZfcXO2n+N+N1t+yiGrWyZxH1PYyzsMYdz+LRN8/8K6tCdMPOPyAU0vE2G
         o1Ka5ajnGBs+099PIjLqO44RWfOVHZva01CrAM7hj3iGGHmNM7Tb1/48fTfPjUb1BZYk
         x84foDvaWbFHj+L88j3EeeO+CIcCX4ffqd0l/6p4c5rZGTkFiax8PpO9D2+jwvKFNXMk
         4L4g==
X-Gm-Message-State: AFeK/H0wiXil28Vy49pBvwffwY/r59Ee5ATAVL2bXq3oJiYmTs1O9qirRSb/SOeFxgyeH3YxpulgwJRF0YvePQ==
X-Received: by 10.159.38.193 with SMTP id 59mr1526022uay.142.1490822930385;
 Wed, 29 Mar 2017 14:28:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.212 with HTTP; Wed, 29 Mar 2017 14:28:50 -0700 (PDT)
In-Reply-To: <6eb0038d-ac22-99be-2aee-b29284bdadf3@kernel.org>
References: <20170328200745.GA8033@singhal-Inspiron-5558> <6eb0038d-ac22-99be-2aee-b29284bdadf3@kernel.org>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Thu, 30 Mar 2017 02:58:50 +0530
Message-ID: <CALrZqyPEoNOQvaXmLHfk7bmNAdDyosZsjCnGnXuttsAvQsAm3w@mail.gmail.com>
Subject: Re: [PATCH] iio: adc: ad799x: constify attribute_group structures
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 30, 2017 at 2:43 AM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 28/03/17 21:07, simran singhal wrote:
>> Check for attribute_group structures that are only stored in the
>> event_attrs filed of iio_info structure. As the event_attrs field of
>> iio_info structures is constant, so these attribute_group structures can
>> also be declared constant.
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
>> x.event_attrs=&i@p;
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
>> File size before:
>>    text    data     bss     dec     hex filename
>>   26051     464       0   26515    6793 drivers/iio/adc/ad799x.o
>>
>> File size after:
>>    text          data     bss     dec     hex filename
>>   26115           400       0   26515    6793 drivers/iio/adc/ad799x.o
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> Applied to the togreg branch of iio.git and pushed out as testing
> for the autobuilders to play with it.
>

But my tree is up-to-date and I also test it before sending.

> Thanks,
>
> Jonathan
>> ---
>>  drivers/iio/adc/ad799x.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/iio/adc/ad799x.c b/drivers/iio/adc/ad799x.c
>> index 9704090..22426ae 100644
>> --- a/drivers/iio/adc/ad799x.c
>> +++ b/drivers/iio/adc/ad799x.c
>> @@ -520,7 +520,7 @@ static struct attribute *ad799x_event_attributes[] = {
>>       NULL,
>>  };
>>
>> -static struct attribute_group ad799x_event_attrs_group = {
>> +static const struct attribute_group ad799x_event_attrs_group = {
>>       .attrs = ad799x_event_attributes,
>>  };
>>
>>
>

