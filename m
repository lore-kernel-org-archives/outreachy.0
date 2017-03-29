X-GM-THRID: 6402645752993021952
X-Received: by 10.31.69.81 with SMTP id s78mr846513vka.15.1490822909169;
        Wed, 29 Mar 2017 14:28:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls1290937ote.1.gmail; Wed, 29 Mar 2017
 14:28:28 -0700 (PDT)
X-Received: by 10.31.242.137 with SMTP id q131mr849301vkh.38.1490822908784;
        Wed, 29 Mar 2017 14:28:28 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id x202si17083vkx.0.2017.03.29.14.28.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 14:28:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id j137so4185677vke.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 14:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Apo04V+AEQvFCOA4C9lu6xEuMGOY1GOp3/LRouhsERU=;
        b=msjfVgWC9RUi/9EAv5vul5F8uI1EbtDx6nIbrHcWqXRfB+cxKMT+L3GVawExJcsJnV
         BQNnJiSsHWFNEYeQZB5rOPU4klhgXTwDfjAAu4DMJUD3mmKsElDWJL9G30XhbeGcgsN2
         ycBvQzIrAj0QSDCbwaAnK9qc+D6ZfkI6x5W3AuxiAGTLYxHnnJibrbPICrriy8SsY5GP
         qeGgke0lXngoLoiVCxPajAlGQx/HhbzsMAUTpw8K+5PoP8IP3FcvSvyG8D2Sho+yH4vH
         6cMPSXjU8KcQ52CFj3dPwI7n1B3Ea34aGbd/0+l75Cz28CxtocZTP33aqaSE9Kys3hOk
         5g6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Apo04V+AEQvFCOA4C9lu6xEuMGOY1GOp3/LRouhsERU=;
        b=AhI+86Bq/12nKwC4+JqxcQIF5GLe7s+X/opJkYe+t/bgL10AiJw0T6MG7eCRHh5rj6
         xEFTNOS344j6q9OFY/TLPEO+c2i9E9WgdkSXHPFyaBYvl9RJqrHKtXDDYYYfg+U1zLLk
         ym0M1jIaX5h7GDXVHESw/RSIHy1qmNlVkgw2uRKoem9X4uftOTDyhkDbgrBBFoQjs0LY
         +ec5M+Zw4cmBmrqXuMrm7lRBbP1MKE6ymIzfi+8h+qW3r8I/Ewh70HSqUrR4hXZzRIL+
         Z/GpNZO4rWDGxqVkBWiKjVA3D6F15OLdmxZA92zYzoVBDDVquLip13Pz/wz6VVDfAWsr
         8aVQ==
X-Gm-Message-State: AFeK/H2nJudN4KrlDqjfE+D4/8dwAp7WFkrc3tIsg07IkV0V3jus0fitTKXOWapJjdps4WxK8BFfBhohhKtFOQ==
X-Received: by 10.159.35.143 with SMTP id 15mr1449153uao.150.1490822908523;
 Wed, 29 Mar 2017 14:28:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.212 with HTTP; Wed, 29 Mar 2017 14:28:28 -0700 (PDT)
In-Reply-To: <2f65895f-52a8-df0f-0743-7cda5a7915dc@kernel.org>
References: <20170328201528.GA15455@singhal-Inspiron-5558> <2f65895f-52a8-df0f-0743-7cda5a7915dc@kernel.org>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Thu, 30 Mar 2017 02:58:28 +0530
Message-ID: <CALrZqyOPVDA+4n56d3c+jZRsiaQ52vYEjA+Or1j8Z2LNgi58OQ@mail.gmail.com>
Subject: Re: [PATCH] iio: adc: max1363: constify attribute_group structures
To: Jonathan Cameron <jic23@kernel.org>
Cc: Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 30, 2017 at 2:41 AM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 28/03/17 21:15, simran singhal wrote:
>> Check for attribute_group structures that are only stored in the
>> event_attrs filed of iio_info structure. As the event_attrs field of
>> iio_info structures is constant, so these attribute_group structures can
>> also be declared constant. Done using coccinelle:
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
>>   36951     448       0   37399    9217 drivers/iio/adc/max1363.o
>>
>> File size after:
>>    text          data     bss     dec     hex filename
>>   37015           384       0   37399    9217 drivers/iio/adc/max1363.o
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> Applied to the togreg branch of iio.git and pushed out as testing for
> the autobuilders to play with it.
>

But my tree is up-to-date and I also test it before sending.

> Thanks,
>
> Jonathan
>> ---
>>  drivers/iio/adc/max1363.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/iio/adc/max1363.c b/drivers/iio/adc/max1363.c
>> index c6c12fe..80eada4 100644
>> --- a/drivers/iio/adc/max1363.c
>> +++ b/drivers/iio/adc/max1363.c
>> @@ -1007,7 +1007,7 @@ static struct attribute *max1363_event_attributes[] = {
>>       NULL,
>>  };
>>
>> -static struct attribute_group max1363_event_attribute_group = {
>> +static const struct attribute_group max1363_event_attribute_group = {
>>       .attrs = max1363_event_attributes,
>>  };
>>
>>
>

