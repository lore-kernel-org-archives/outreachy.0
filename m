X-GM-THRID: 6396739450609598464
X-Received: by 10.99.228.83 with SMTP id i19mr15229735pgk.57.1489389478908;
        Mon, 13 Mar 2017 00:17:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.216 with SMTP id p85ls3883177ioi.40.gmail; Mon, 13 Mar
 2017 00:17:58 -0700 (PDT)
X-Received: by 10.99.109.12 with SMTP id i12mr15124585pgc.104.1489389478045;
        Mon, 13 Mar 2017 00:17:58 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id n63si2182955ywb.7.2017.03.13.00.17.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 00:17:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id p77so8884168ywg.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 00:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=XX3rIsjv1KPaQii87b0g+xAiHYD50BXuQlxroM2INMs=;
        b=VeSjyP06jBYr3KBbUDlrAdRFusiQN96i5MVXob/7w5WzNJXi+dOusXslyX7ZvA5K/B
         E11yNTOJ87r2WJ3EibK4R1VnfGbaqgRGoFj/aclP6D/3YPJvccBibcqp+RJmVOoK33gg
         oMHGqCkhrMwfOwXKgU4QFf/P2p0MJwhcn5BulnvIjdOnljUbWA3dxPWcFiPNs7Eecvz+
         14P6MxKh1Gjb3ifZxaGLk7h0qjBOjeUtHxjLerHzRMHBVDD5Pp7Ml0Jk524BWV/O9pZk
         IMPzvpSWQriybjC0twzXlfyG5EGeqzoVIiU60ABmPpueyskq+OYm6ljou73ZYiXhdxrG
         5udA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=XX3rIsjv1KPaQii87b0g+xAiHYD50BXuQlxroM2INMs=;
        b=awWxZrdgPd8++/8OhDhXpy3W35B5yN2zATkGfH7M8uc1rz7uADItp3P9oDi9VkxZbe
         OZuiUDd9O/vfx3cuMzZjp8/Uxc+CZ33I6oaIWdNfOL4mDx8HqeW3Q4RHhU1OjtxDJCSQ
         oWlORV4Ct7SWm/GgGUPozIlxnaI6IiwRy2DDRICteVs9JkYoIvwX1l2gapKT4wx+F1O+
         VZb6LMSNhaP6jHvgKmue6xdLYqu79PCRJk58wMBMfdsp93Rt+dG24MJdfW5V3krWRpq6
         wqtNCYW/pXIuqUU7QUN+rl/vMa25AP8xCVjW9zJTlv5YX2sEV/tmdWHJ6pzlia9vk+a2
         YEeQ==
X-Gm-Message-State: AMke39lpgBd5vf2fj2uSv/Y//RfppCYtudFq71xrNjFWwNQNx2cAZWp4Z/1eWl4gG7Rnj2YVSWwrKOLGPhLKOA==
X-Received: by 10.37.204.142 with SMTP id l136mr16612792ybf.187.1489389477689;
 Mon, 13 Mar 2017 00:17:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Mon, 13 Mar 2017 00:17:17 -0700 (PDT)
In-Reply-To: <20170312222738.GB14070@d830.WORKGROUP>
References: <cover.1489356140.git.karniksayli1995@gmail.com>
 <59ddccc600cfd1594dcb4dadb44b80328fc06008.1489356140.git.karniksayli1995@gmail.com>
 <20170312222738.GB14070@d830.WORKGROUP>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Mon, 13 Mar 2017 12:47:17 +0530
Message-ID: <CAKG5xWiGGZrRJ7wDFgh7HcwJvL1--A+YBT+4yjyJ=AMH7KFqiQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: iio: ad9834: Remove
 unnecessary goto label and compress return logic
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 13, 2017 at 3:57 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Mon, Mar 13, 2017 at 03:49:13AM +0530, sayli karnik wrote:
>> The patch removes excessive goto label and compresses return logic.
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/iio/frequency/ad9834.c | 6 ++----
>>  1 file changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
>> index 60461a6..18f3e8f 100644
>> --- a/drivers/staging/iio/frequency/ad9834.c
>> +++ b/drivers/staging/iio/frequency/ad9834.c
>> @@ -147,9 +147,8 @@ static ssize_t ad9834_write(struct device *dev,
>>       int ret;
>>       unsigned long val;
>>
>> -     ret = kstrtoul(buf, 10, &val);
>> -     if (ret)
>> -             goto error_ret;
>> +     if (kstrtoul(buf, 10, &val))
>> +             return kstrtoul(buf, 10, &val);
>
> Will a smaller change suffice?
>
Yes, sending a solution without having to call the function twice.

> ret = kstrtoul(buf, 10, &val);
> if (ret)
> -       goto error_ret;
> +       return ret;
>
> alisons
>
>>
>>       mutex_lock(&st->lock);
>>       switch ((u32)this_attr->address) {
>> @@ -211,7 +210,6 @@ static ssize_t ad9834_write(struct device *dev,
>>       }
>>       mutex_unlock(&st->lock);
>>
>> -error_ret:
>>       return ret ? ret : len;
>>  }
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/59ddccc600cfd1594dcb4dadb44b80328fc06008.1489356140.git.karniksayli1995%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312222738.GB14070%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

