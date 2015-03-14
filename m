X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.182.201 with SMTP id eg9mr3997030wic.3.1426319401418;
        Sat, 14 Mar 2015 00:50:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.9 with SMTP id bc9ls293846wib.12.canary; Sat, 14 Mar
 2015 00:50:01 -0700 (PDT)
X-Received: by 10.180.80.35 with SMTP id o3mr981591wix.0.1426319401097;
        Sat, 14 Mar 2015 00:50:01 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id l8si72544wia.0.2015.03.14.00.50.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 00:50:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by wibdy8 with SMTP id dy8so3456159wib.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 00:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=VpDh5qzpctW5bYgXTevxUpkVIaW7z2ehxePXa0pfsPY=;
        b=psKhK6AZNv2fmW+6CpI2cyrGCQjp2IqybuJQkAUFpDT4N9XjpHz7dNjJeNvcM5m7QK
         uBZQIABm3k32o1sdxjOKFIER/bzdcMMlG9cWMos2GBsJ9yb9Zoylng0F2oocIzmRH3Fm
         UFLUAXN8YVgmIdxVzx0NiZLxWihSOV4ob58RyxIGW4bl9Z022n55SPwD9e9AcMSYDRuX
         og032d4xnhabJsYWHf8bCS5y07IBCQftzkRDBBs6pG26X9dg9KkHl/CwSOWNAozF9I/m
         PcJrOd7XOIbeq/JRwlVjSqFOpAP/ciyPh6C1rI2SAne0jK5YZs6UVZ3pWXp9DnjbZ6v2
         N8iA==
MIME-Version: 1.0
X-Received: by 10.180.74.170 with SMTP id u10mr28608079wiv.46.1426319400895;
 Sat, 14 Mar 2015 00:50:00 -0700 (PDT)
Sender: daniel.baluta@gmail.com
Received: by 10.28.139.211 with HTTP; Sat, 14 Mar 2015 00:50:00 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1503140733520.2075@localhost6.localdomain6>
References: <cover.1426296329.git.cristina.opriceana@gmail.com>
	<62ccda665be354990b06a5d12ccf410ce9e1013f.1426296329.git.cristina.opriceana@gmail.com>
	<alpine.DEB.2.02.1503140733520.2075@localhost6.localdomain6>
Date: Sat, 14 Mar 2015 09:50:00 +0200
X-Google-Sender-Auth: dMzruNK2v58CH-9J6kuZs_4wZk4
Message-ID: <CAEnQRZAMAj7OquWzwAutp7NVoHs15bkcgUE3wSoO49YcpEKFuA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/6] Staging: iio: Alignment should
 match open parenthesis
From: Daniel Baluta <daniel.baluta@intel.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 14, 2015 at 8:34 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 14 Mar 2015, Cristina Opriceana wrote:
>
>> This patch arranges multiple-line parameters in accordance with
>> the left side parenthesis to improve coding style.
>> Found by checkpatch.pl.
>
> Why the left side of the (?  The right side, ie lined up with the
> parameter above, would look nicer.
>
> julia
>
>> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
>> ---
>>  drivers/staging/iio/frequency/ad9834.c | 16 ++++++++--------
>>  1 file changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
>> index f06b14d..cc465d5 100644
>> --- a/drivers/staging/iio/frequency/ad9834.c
>> +++ b/drivers/staging/iio/frequency/ad9834.c
>> @@ -53,7 +53,7 @@ static int ad9834_write_frequency(struct ad9834_state *st,
>>  }
>>
>>  static int ad9834_write_phase(struct ad9834_state *st,
>> -                               unsigned long addr, unsigned long phase)
>> +                           unsigned long addr, unsigned long phase)
>>  {
>>       if (phase > BIT(AD9834_PHASE_BITS))
>>               return -EINVAL;
>> @@ -63,9 +63,9 @@ static int ad9834_write_phase(struct ad9834_state *st,
>>  }
>>
>>  static ssize_t ad9834_write(struct device *dev,
>> -             struct device_attribute *attr,
>> -             const char *buf,
>> -             size_t len)
>> +                         struct device_attribute *attr,
>> +                         const char *buf,
>> +                         size_t len)
>>  {
>>       struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>>       struct ad9834_state *st = iio_priv(indio_dev);
>> @@ -142,9 +142,9 @@ error_ret:
>>  }
>>
>>  static ssize_t ad9834_store_wavetype(struct device *dev,
>> -                              struct device_attribute *attr,
>> -                              const char *buf,
>> -                              size_t len)
>> +                                  struct device_attribute *attr,
>> +                                  const char *buf,
>> +                                  size_t len)
>>  {
>>       struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>>       struct ad9834_state *st = iio_priv(indio_dev);
>> @@ -179,7 +179,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
>>               break;
>>       case 1:
>>               if (sysfs_streq(buf, "square") &&
>> -                     !(st->control & AD9834_MODE)) {
>> +                 !(st->control & AD9834_MODE)) {
>>                       st->control &= ~AD9834_MODE;
>>                       st->control |= AD9834_OPBITEN;
>>               } else {

There are still few places to be fixed:
* ad9834_show_out0_wavetype_available
* ad9834_show_out1_wavetype_available

thanks,
Daniel.

