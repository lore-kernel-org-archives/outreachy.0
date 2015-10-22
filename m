X-GM-THRID: 6208409681994448896
X-Received: by 10.13.228.133 with SMTP id n127mr12086324ywe.37.1445516614800;
        Thu, 22 Oct 2015 05:23:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.209 with SMTP id t75ls1523447qgt.73.gmail; Thu, 22 Oct
 2015 05:23:34 -0700 (PDT)
X-Received: by 10.129.99.86 with SMTP id x83mr12061474ywb.47.1445516614362;
        Thu, 22 Oct 2015 05:23:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22e.google.com (mail-qk0-x22e.google.com. [2607:f8b0:400d:c09::22e])
        by gmr-mx.google.com with ESMTPS id u67si989742ywf.5.2015.10.22.05.23.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:23:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22e as permitted sender) client-ip=2607:f8b0:400d:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x22e.google.com with SMTP id y65so52420361qkc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 05:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=3eq9RrmEuFukPzMRSRQY8xQML05m0uFam96uZ5GXA20=;
        b=Nqqe06/wx3Y+8ggeQ63Yrs6pgbTW0tqmUXL5Yl6OyNG6JAnY+KSQ3rZLXPKuGU7XQI
         vCcJzVDTEe75gYWqM6LFlrrNnNPYUgOt6kHXRTdugcsCGGH+GDf+fYR3OwNL56OMuPub
         za9xRfKg/Ub9BtEwjHB/1wU+/1L30yr7YuGAl28yqiYEzPGzZImZhE1nQn81wA//WSCZ
         7ic02g7Zt9dTkWEBMTUeYaUf0vlsYbqe56rOKXH0/nitYRA62+cBeKt57Xozhi6ZCTgG
         KOOqgLCpbKviD21qGdqeV9aX4d7HQVG0u7Gfpy8vz7RUp1hMNhRzl3ENiPCOR67HwgDG
         zeew==
MIME-Version: 1.0
X-Received: by 10.55.16.221 with SMTP id 90mr18068534qkq.81.1445516614163;
 Thu, 22 Oct 2015 05:23:34 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Thu, 22 Oct 2015 05:23:34 -0700 (PDT)
In-Reply-To: <6283563.jJXPJxPvGx@wuerfel>
References: <20151022100014.GA13736@amitoj-Inspiron-3542>
	<6283563.jJXPJxPvGx@wuerfel>
Date: Thu, 22 Oct 2015 17:53:34 +0530
Message-ID: <CA+5yK5Fw8VKJorr5PoZbOwRkWVE-K7w0NDGaCr6APxT1nFBXXw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] ide: Replace timeval with ktime_t
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 4:08 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Thursday 22 October 2015 15:30:14 Amitoj Kaur Chawla wrote:
>> This driver uses 'struct timeval' which we are trying to remove since
>> 32 bit time types will break in the year 2038 by replacing it with
>> ktime_t.
>>
>> This patch changes do_gettimeofday() to ktime_get() because
>> ktime_get() returns a ktime_t while do_gettimeofday() returns struct
>> timeval.
>>
>> This patch also uses ktime_us_delta() to get the elapsed time.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>>
>
> Very good,
>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
>
> In the subject line, I would like to see the name of the driver you
> are patching, like '[PATCH] ide: pdc202xx: replace timeval with ktime_t'.
>

Will do.

> Please always add y2038@lists.linaro.org to Cc with these patches. If
> you want to send more of the same, you can also subscribe to the list
> at https://lists.linaro.org/mailman/listinfo/y2038.
>

I thought that ccing would be done after your review. Should I do it
from the first version only in the future?

> As the patch looks good, please send it again with the ide maintainers
> on Cc.
>
>         Arnd

Will do.

-- 
Amitoj

