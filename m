X-GM-THRID: 6388359593872850944
X-Received: by 10.36.19.19 with SMTP id 19mr8271752itz.39.1487607727458;
        Mon, 20 Feb 2017 08:22:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.121 with SMTP id t54ls10714938ott.28.gmail; Mon, 20 Feb
 2017 08:22:07 -0800 (PST)
X-Received: by 10.31.120.137 with SMTP id t131mr5855311vkc.6.1487607727005;
        Mon, 20 Feb 2017 08:22:07 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x242.google.com (mail-yb0-x242.google.com. [2607:f8b0:4002:c09::242])
        by gmr-mx.google.com with ESMTPS id u30si2294829ywh.7.2017.02.20.08.22.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2017 08:22:06 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) client-ip=2607:f8b0:4002:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x242.google.com with SMTP id n76so1177358ybg.0
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Feb 2017 08:22:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=uCQp4ifdieelmUGawrrtqRFF1USzv8F9Q5ywnVlmw8Y=;
        b=Wl455oy8kzWyIWAG/p+Nsy+HfEl1+Kxjj7SBTueBEUg70mR6E9z1BQ7engyK/8FlY5
         5KVEncc3WEDG1X4f1SJjA+yrEVXBM4wYM+gf6Kdhwia73F+9u1AbHWng9heAVqHrllqr
         1UPU/Chhq04kmxqLYHIvkmg8Q5ALgLW7qDaBEewCW/HL7886pGRp1AnxwA5W7vhs+0w/
         KUGD/Jz8WMwJBFpZVBmpZ56b9pyip9afnQ6btBYxMhuAIPXOCv8PxEeZPAeT6a21WOqG
         aSSvNkIpVkHoO7t/fbmgdYsQoUbyVuNMlTrn9Qth6GntDubu7gpsrU/BiCVeFn/PhZ+8
         EW0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=uCQp4ifdieelmUGawrrtqRFF1USzv8F9Q5ywnVlmw8Y=;
        b=B3oMnkkBOUqb6e7QZHMhYWxdavsvfWPI5GOHEm9G/58+l3xLFSUDpmMQu7bKHplTR+
         br0WxWOSGZcnvDYYXCTUHioghYG/bsens/29jCMt2+o6QFSSKcDb7fwoSlQXWKCkAWgz
         frmPIx6nPo40KXf/gfcYQngPlw1bMZ5gP0HHfAXWh/PfkvCM5CIhOieL8ZEKl38lwZqv
         ai5CY2tiVPLbEzud+w1FkPZ1kITirMCuLtU/Vci8DKUTjwKo7T0ktk0mucp0rBTwxTnS
         zZOizuY3yYQO3WQv5xSauPyaztHLvX+vz2UHiPUWws7OSjo12RSBpW05KlOvlL+TVnpD
         sNIA==
X-Gm-Message-State: AMke39nOwEP2D0wKyWxgbTgLEFcuSakxBVrlQdwMJpP81pZQU1Ls5GPpr/9uZMIm8Jn6Fe+FBzUz70gtBTS3gw==
X-Received: by 10.37.173.166 with SMTP id z38mr16983039ybi.151.1487607726569;
 Mon, 20 Feb 2017 08:22:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.163.196 with HTTP; Mon, 20 Feb 2017 08:21:26 -0800 (PST)
In-Reply-To: <20170220120032.GC479@localhost>
References: <20170218081738.GA28504@sayli-HP-15-Notebook-PC> <20170220120032.GC479@localhost>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Mon, 20 Feb 2017 21:51:26 +0530
Message-ID: <CAKG5xWg=tg25KOANyCneRP7J+jwN1VxURbanyAncu3sQn22-Wg@mail.gmail.com>
Subject: Re: [PATCH] staging: greybus: loopback_test: Change array index from
 loop bound to loop index
To: Johan Hovold <johan@kernel.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Alex Elder <elder@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, greybus-dev@lists.linaro.org, 
	devel@driverdev.osuosl.org
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 20, 2017 at 5:30 PM, Johan Hovold <johan@kernel.org> wrote:
> [+CC: greybus and staging lists]
>
> On Sat, Feb 18, 2017 at 01:47:38PM +0530, sayli karnik wrote:
>> Change array index from the loop bound variable to loop index.
>> The open_poll_files() functions attempts to open poll files of devices
>> numbered from 0 to device_count. If the open() function inside it is
>> unsuccessful for any intermediate device, all files with fds of devices from 0
>> upto that device must be closed and open_poll_files() should return -1.
>> The current code only closes the poll file with the most recent fd allocated,
>> and in most cases tries to close the same file multiple times.
>
> Nice catch!
>
> You forgot to CC the relevant mailings lists however (use
> scripts/get_maintainer.pl).

Yes I'll do that!
>
> Also your patch summary is a bit too detailed, something like
>
>         staging: greybus: loopback_test: fix open error path
>
> would be better.
>
> Care to resend as a v2 with a shorter summary and lists on CC?
>
Yes sure I'm sending a v2.

thanks,
sayli
>> Detected by coccinelle:
>>
>> @@
>> expression arr,ex1,ex2;
>> @@
>>
>> for(ex1 = 0; ex1 < ex2; ex1++) { <...
>>   arr[
>> - ex2
>> + ex1
>>   ]
>>   ...> }
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/greybus/tools/loopback_test.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
>> index 18d7a3d..2ee9a22 100644
>> --- a/drivers/staging/greybus/tools/loopback_test.c
>> +++ b/drivers/staging/greybus/tools/loopback_test.c
>> @@ -674,7 +674,7 @@ static int open_poll_files(struct loopback_test *t)
>>
>>  err:
>>       for (i = 0; i < fds_idx; i++)
>> -             close(t->fds[fds_idx].fd);
>> +             close(t->fds[i].fd);
>>
>>       return -1;
>>  }
>
> Thanks,
> Johan

