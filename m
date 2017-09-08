X-GM-THRID: 6463264709450661888
X-Received: by 10.36.92.144 with SMTP id q138mr1055858itb.56.1504863493629;
        Fri, 08 Sep 2017 02:38:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.143.203 with SMTP id r194ls2924545iod.8.gmail; Fri, 08 Sep
 2017 02:38:12 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCkJwMg7v1z67XfIKfjDQ36DT+4r9GTynS0PDzMa92Dn+9qrR9GR0Nd+opEilIcDaJI8rRX
X-Received: by 10.200.11.71 with SMTP id m7mr1217719qti.35.1504863492866;
        Fri, 08 Sep 2017 02:38:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504863492; cv=none;
        d=google.com; s=arc-20160816;
        b=guyVAiq8QqfRiCNKI+J8mAWIXou9OIF5/3RJaMZQAeFIOKx2Qf04bT+MbtdwHjv4J7
         7ussUsw+NzVrmTqkEbC9KvNnVNeJkrjxbbK8HVKEcbmo1TnZrRzbT0vOw8yHCiGuIO8U
         M/Ffv2deNlpZ86kLkPU0h+Vg7ikGXEzh2hYaYRRAAo39qgYaw+SusnMhbZvYcqZkovK+
         TfJv004vCtS5d3Q8uXa20hdEckIaPFWeho09eoBupKisOOrnAET+W05uPPKmgeg2oERN
         L9iA5ATXxfu41NG6IBGrnT8rYCzFHRi0vQe4FzvkdM2XZeOpIQTHqjgbJKa6wWjWqvSw
         eUlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=9Zlq6bzJHb4CwGHwtXimhGKS5FBGV5/saEWyMjWjZJw=;
        b=SCCSU7rCMbeIX/OBenVAJU7xOjH0mIe/PKl2HSmz4ZL/IJBJADpD3IO1Az6r2qhUYO
         6jueG4yn+C+lhpkuhXerb2j+cL/Ur188MIz+VtKQgEKX4XP2dTDHcTlzx3JfgY89Bvp+
         Lp8GmFvqpC7M9gpyARzzBvNF0KFVZBiS7tjqj0qAmJQ/R65wVuohaLm9WrwZfumQ1Xcn
         atIlj2Pw+Nh3ubtADkTv2mc3KyNJQQU9Mv5jh6GSSM6ugykmOAqzFBHykZ9jO6tzEC7e
         aRY6NtKC2iM0EgJ1+S+e1HYqoIbfR7/VuBkq+Fr81O7u7gx4RgW9mA+hJv7D9g9XSUKl
         gvcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id p144si60342itc.0.2017.09.08.02.38.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 02:38:12 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [78.47.166.52] (helo=sslproxy04.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1dqFja-0004sh-5T; Fri, 08 Sep 2017 11:37:58 +0200
Received: from [2003:86:2c30:3400:8200:bff:fe9b:6612]
	by sslproxy04.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1dqFjZ-0001DZ-VD; Fri, 08 Sep 2017 11:37:58 +0200
Subject: Re: [PATCH] Staging: iio: adc: Added Space around binary op.
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Cc: Himanshi Jain <himshijain.hj@gmail.com>,
 outreachy-kernel@googlegroups.com, Michael.Hennerich@analog.com,
 jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20170908044752.GA6199@himanshi-Inspiron-5558>
 <DEB4AC67-43D5-40F9-9495-DB4966A07661@jic23.retrosnub.co.uk>
 <20170908103257.00002165@huawei.com>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <2e3476f0-9e7e-2701-220a-5fb178d68d2e@metafoo.de>
Date: Fri, 8 Sep 2017 11:37:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170908103257.00002165@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23792/Fri Sep  8 06:37:59 2017)

On 09/08/2017 11:32 AM, Jonathan Cameron wrote:
> On Fri, 8 Sep 2017 07:29:06 +0100
> Jonathan Cameron <jic23@jic23.retrosnub.co.uk> wrote:
> 
>> On 8 September 2017 05:47:52 BST, Himanshi Jain <himshijain.hj@gmail.com> wrote:
>>> Added space around(one on each side of) binary
>>> operator(-) as preferred according to kernel
>>> coding style.
>>>
>>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>  
>>
>> Take a closer look at that macro. It isn't doing what you think...  
>> To give a hint, changing this breaks userspace.
> 
> Ok, I'm bored of this particular one coming up. When you have
> worked out what is going on Himanshi, would you mind putting
> together a patch adding a comment describing why it is a bad
> idea to 'fix' this?  That would be a very useful patch as
> far as I'm concerned :)
> 
> There aren't that many cases of this in IIO so adding a comment
> on each of them is probably reasonable just to avoid wasting
> people's time on fixing them! (I think we have had more than
> 5 such goes this year so far...)
> 

I'd much rather fix this API so that you have to put "" around the name so
that it is clear that it is a string, rather than doing the implicit
conversion to string using preprocessor magic. Better to have a
self-documenting API then having to add a comment to each user of the API.

> Jonathan
> 
>>
>> Jonathan
>>
>>
>>> ---
>>> drivers/staging/iio/adc/ad7192.c | 2 +-
>>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/staging/iio/adc/ad7192.c
>>> b/drivers/staging/iio/adc/ad7192.c
>>> index d11c6de..1aee662 100644
>>> --- a/drivers/staging/iio/adc/ad7192.c
>>> +++ b/drivers/staging/iio/adc/ad7192.c
>>> @@ -341,7 +341,7 @@ static int ad7192_setup(struct ad7192_state *st,
>>> }
>>>
>>> static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
>>> -			     in_voltage-voltage_scale_available,
>>> +			     in_voltage - voltage_scale_available,
>>> 			     0444, ad7192_show_scale_available, NULL, 0);
>>>
>>> static IIO_DEVICE_ATTR(in_voltage_scale_available, 0444,  
>>
> 


