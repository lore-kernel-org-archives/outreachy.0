X-GM-THRID: 6402897717905850368
X-Received: by 10.99.110.73 with SMTP id j70mr583609pgc.143.1490808260333;
        Wed, 29 Mar 2017 10:24:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.80 with SMTP id r16ls6203409otd.15.gmail; Wed, 29 Mar
 2017 10:24:19 -0700 (PDT)
X-Received: by 10.13.227.65 with SMTP id m62mr551119ywe.27.1490808259912;
        Wed, 29 Mar 2017 10:24:19 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id u204si535615vke.5.2017.03.29.10.24.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 10:24:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id z204so3188041vkd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 10:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=o4XiTfLrTdWxsZuPAxpO5R3lgXzUJfWZg34dQhBzsZQ=;
        b=HpdxdkX9JaaAuhLh1I+evwMOk9pYAn1ZpwNyTEiLCYDWOukzOIotZRjznZIeFt4USY
         BkKhxKlHGEppAO9w8HxKfI9ErXrPFE9RjbZl65ptoPsnaktNgejnzokkH/xIasDUykkp
         Yg4OPAwoBCGofry744V+2j7xJklkS2qKwti51c8iZ9jPqXM4VbOpTSffHdNUdMew1Bs/
         QWK2Lyq5AuAYTUECQTkHl1IZj5xZ8E/K+abxY84TzIMbjv8ATHrmChcNDDcQ5o1k/H5n
         ejSs/iPCsqXqfr9CqFJFrXAHJgsRXi/HfUmV4CjiFXCnwz7T4tkAlPT0F2yalQkecvTj
         q7sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=o4XiTfLrTdWxsZuPAxpO5R3lgXzUJfWZg34dQhBzsZQ=;
        b=E3V8JyxylREytTsOZosaAqavHSCHze8c1XdQuUJ5Sts/sgii1odg0iKo2+n9Nx8w/8
         CUpdSIoeDAEuxskNRm4W+b7iRqKPzzdb0aHXW6cUXGMVHPEUAIzbCNj+evWWd3iDhmF4
         sINIfPL9aj9HH0psK76ZE6iS2Bj8vtK+bUnGubPOMbCHl3M8XY78DkRP25hlc+tBrUj4
         hWyBrIA5p+bVl0W7GPLVecl6dQze1+uaajIYc1ZMWItFKMdatbyWdrIML62ahMyJXDTj
         vfOq2wPodkpTPMqbUFIqjPFJzbFZutzP/3MQPCsK7qcZqjqgTHzOcbdqVRTFHmQrDa7C
         /8Tw==
X-Gm-Message-State: AFeK/H3TxxIkyjQTtD+9RGft1X0bN9pda9MP08CN4et1ZlWxVmt/DuHtW0ATo36w2fnyShsK0mSCSr6ncxkfIA==
X-Received: by 10.31.237.2 with SMTP id l2mr777072vkh.8.1490808259581; Wed, 29
 Mar 2017 10:24:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.212 with HTTP; Wed, 29 Mar 2017 10:24:19 -0700 (PDT)
In-Reply-To: <CAEnQRZCDO=qHY0c4-aXV12SiUTT3Jzndu=pY6qjx_=ATxrQBKg@mail.gmail.com>
References: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>
 <1490790791-5694-2-git-send-email-singhalsimran0@gmail.com> <CAEnQRZCDO=qHY0c4-aXV12SiUTT3Jzndu=pY6qjx_=ATxrQBKg@mail.gmail.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Wed, 29 Mar 2017 22:54:19 +0530
Message-ID: <CALrZqyPKGjtL-QrRi0YryaTw4q8v+10NkSwqpNd9coPstFnC6w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] iio: common: st_sensors: Replace
 ternary operator with min macro
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald <pmeerw@pmeerw.net>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 29, 2017 at 9:46 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Wed, Mar 29, 2017 at 3:33 PM, simran singhal
> <singhalsimran0@gmail.com> wrote:
>> Use macro min() to get the minimum of two values for brevity and
>> readability.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>  drivers/iio/common/st_sensors/st_sensors_i2c.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/iio/common/st_sensors/st_sensors_i2c.c b/drivers/iio/common/st_sensors/st_sensors_i2c.c
>> index c83df4d..7a68fdd 100644
>> --- a/drivers/iio/common/st_sensors/st_sensors_i2c.c
>> +++ b/drivers/iio/common/st_sensors/st_sensors_i2c.c
>> @@ -39,7 +39,7 @@ static int st_sensors_i2c_read_byte(struct st_sensor_transfer_buffer *tb,
>>         *res_byte = err & 0xff;
>>
>>  st_accel_i2c_read_byte_error:
>> -       return err < 0 ? err : 0;
>> +       return min(err, 0);
>>  }
>
> Appreciate the brevity but this certainly doesn't make code
> easier to read.
>
> In linux kernel err < 0 signifies an error and be replacing
> comparison < 0 with min() we some hide the meaning of this.
>
Yes, you are right keeping the previous one will be more
meaningful.

Thanks.

> thanks,
> Daniel.

