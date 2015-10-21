X-GM-THRID: 6208217817238470656
X-Received: by 10.50.152.102 with SMTP id ux6mr3607353igb.3.1445464583505;
        Wed, 21 Oct 2015 14:56:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.134 with SMTP id w6ls1603575igl.33.canary; Wed, 21 Oct
 2015 14:56:23 -0700 (PDT)
X-Received: by 10.67.23.163 with SMTP id ib3mr9701453pad.45.1445464583033;
        Wed, 21 Oct 2015 14:56:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x234.google.com (mail-qk0-x234.google.com. [2607:f8b0:400d:c09::234])
        by gmr-mx.google.com with ESMTPS id d207si825355ywb.4.2015.10.21.14.56.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 14:56:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) client-ip=2607:f8b0:400d:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x234.google.com with SMTP id y65so45607530qkc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 14:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=1lNgoOwtmTkFvG1ayAbqToVZMoFpI9X8DFi5kmHS6TQ=;
        b=BrwuG7Y0duf2CNM1nrIz+uFq14QQOGyJ42108jXrdgAT2uVfD10BFmi5xDDfL7iYB6
         hao2xpF8epZZbEPPU/cz74/dL4jZcPOQT55Xvj6hyPib4yhVuxqwpzxTQjY1+SEpmMiI
         cFrUoo/pJ6Y1O3PPbB3LpgqWHdoEsq645HrznNAHWZ1zXAlZaN/zZuUzGALZY39P6Nsh
         Da2t520fBqlKf3sW/alpusFORq27IzAqiwfA3QfA7nZsCPW1LqskqkxVh7Jv4CtlPVwI
         nXLx20+7W0v6qYTd/ELsJNMMZsmfFG+Lheuauflrmo0h5gvSp8LLsME8BrN40gpa1npb
         VLQg==
MIME-Version: 1.0
X-Received: by 10.55.207.3 with SMTP id e3mr14228803qkj.32.1445464582802; Wed,
 21 Oct 2015 14:56:22 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Wed, 21 Oct 2015 14:56:22 -0700 (PDT)
In-Reply-To: <6860460.1I4Oque96X@wuerfel>
References: <20151021213544.GA2468@amitoj-Inspiron-3542>
	<6860460.1I4Oque96X@wuerfel>
Date: Thu, 22 Oct 2015 03:26:22 +0530
Message-ID: <CA+5yK5Ev7qBUW4Rk0ANo2UxbM5S_Dxfyy_ddKT8NXKyzgco22g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] firewire: Replace timeval with timespec64
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 3:18 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Thursday 22 October 2015 03:05:44 Amitoj Kaur Chawla wrote:
>> 32 bit systems using 'struct timeval' will break in the year 2038, so
>> we replace the code appropriately.
>>
>> This patch replaces timeval with timespec64.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>
> The patch looks correct to me, nice work.
>
> A few small points:
>
> - It would help to be clearer about the fact that this driver
>   is not broken in 2038, because we only use the microsecond
>   portion of the current time.
>
>> @@ -413,17 +414,18 @@ static void
>>  packet_irq_handler(struct pcilynx *lynx)
>>  {
>>         struct client *client;
>> -       u32 tcode_mask, tcode;
>> +       u32 tcode_mask, tcode, tv_usec;
>
> The naming of the new local variable doesn't make sense in the
> absence of struct timeval. Either rename it to something like
> 'timestamp' or remove the variable and do the /NSEC_PER_USEC
> computation in place.
>
>> -       do_gettimeofday(&tv);
>> -       lynx->rcv_buffer[0] = (__force __le32)tv.tv_usec;
>> +       getnstimeofday64(&ts64);
>> +       tv_usec = ts64.tv_nsec / NSEC_PER_USEC;
>> +       lynx->rcv_buffer[0] = (__force __le32)tv_usec;
>
> I have a small preference for ktime_get_real_ts64() over getnstimeofday64(),
> though the two are functionally identical.
>
> When you have addressed these, please send the patch again, and
> Cc the maintainers according to scripts/get_maintainer.pl.

Okay. I'll do all of this. One question, I've replaced timeval with
timespec. It should be timespec64 right? I caught it after sending the
patch.

-- 
Amitoj

