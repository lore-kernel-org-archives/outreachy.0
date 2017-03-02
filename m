X-GM-THRID: 6392997475785900032
X-Received: by 10.25.210.76 with SMTP id j73mr1981505lfg.15.1488491728430;
        Thu, 02 Mar 2017 13:55:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.152 with SMTP id h24ls805002lji.53.gmail; Thu, 02 Mar
 2017 13:55:27 -0800 (PST)
X-Received: by 10.25.18.219 with SMTP id 88mr2101348lfs.29.1488491727340;
        Thu, 02 Mar 2017 13:55:27 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x236.google.com (mail-lf0-x236.google.com. [2a00:1450:4010:c07::236])
        by gmr-mx.google.com with ESMTPS id h198si31805wmg.1.2017.03.02.13.55.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:55:27 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::236 as permitted sender) client-ip=2a00:1450:4010:c07::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::236 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x236.google.com with SMTP id j90so3054626lfk.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 13:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+7A6eiNm8ucKfmzNKmN5CCLg5CGynEpWd9cr0nYNFs0=;
        b=nHwTRicGrMHKmL5Wl1ADyChZQTVFmw1Tu9xPUKHU8a89GBlgA/ETaeY6Xkfa85aJ2T
         8KxDsouN2t1O+5yfR99nVcRevbDOayDe8w2u4xFQPo4LPmtSbQfLxeLt8obz0gQfBq0a
         g5tz1HrFTbIw/lqA/lbN4QSlFMWcWT3dpGwMtNzg6m/+c2y6oaQQprr2FcsdVybOSiw4
         B0TGHcHdlPug9rBpLvkQvVz2+Krl7xKY24sBzEu8leqUlYCeZm2b6JzJp59+Z69K7lam
         G8ooaZbx/sGcU9SwMq9nlEelB1pHq91q4WiJecwU2JmnbwXcgAjC6RjZGgvDigCqzmWN
         y6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+7A6eiNm8ucKfmzNKmN5CCLg5CGynEpWd9cr0nYNFs0=;
        b=jOdcuMqLKUklwhSJJid0ea75W+jRSysWLD7jl+pUmoSCT4/B/uUFshjiwuyh3dprIJ
         O9h9+UP0PiMsSDWk+sbFuGEuvqf2fR8Px/nJIy+vVkvtnyRjbUTpg9u1cJto7ffvIrEm
         HiAgr4vMZISI/+GxJM6tgr1r9IyiTJ1323D6A0OgDAcvd1vWofRkWzOSsb36g4YLT1pZ
         eEs6qq1uOzLuRw9g/AjzhwkCkHPlbUkqo5s0rMxzHbscYwhozUzq9nDuOOjpSOc0YGHr
         kbczRVzC9e6I70HydS4zDtkobitxCNIqFqdkNzkTVIWEht30bQntpVInx1yMyNBgyYLR
         h+Lw==
X-Gm-Message-State: AMke39l4MlCiyDy9IqNf0bYTzCrdO2zq7HimS7ux6ublO4tJfML6suXArOAE2ja3mC7hEl3pJndO/BerSWpseQ==
X-Received: by 10.46.21.89 with SMTP id 25mr5855266ljv.19.1488491726839; Thu,
 02 Mar 2017 13:55:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Thu, 2 Mar 2017 13:55:26 -0800 (PST)
In-Reply-To: <1488491006.2179.14.camel@perches.com>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>
 <1488489544-25941-3-git-send-email-singhalsimran0@gmail.com> <1488491006.2179.14.camel@perches.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Fri, 3 Mar 2017 03:25:26 +0530
Message-ID: <CALrZqyN3si-5v5PLWc9ppQ7CjqZGXAXU02GrnyspsioStKTWng@mail.gmail.com>
Subject: Re: [PATCH 3/5] staging: lustre: lustre: Remove unnecessary cast on
 void pointer
To: Joe Perches <joe@perches.com>
Cc: Larry.Finger@lwfinger.net, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	oleg.drokin@intel.com, marvin24@gmx.de, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 3, 2017 at 3:13 AM, Joe Perches <joe@perches.com> wrote:
> On Fri, 2017-03-03 at 02:49 +0530, simran singhal wrote:
>> The following Coccinelle script was used to detect this:
>> @r@
>> expression x;
>> void* e;
>> type T;
>> identifier f;
>> @@
>> (
>>   *((T *)e)
>> >
>>
>>   ((T *)x)[...]
>> >
>>
>>   ((T*)x)->f
>> >
>>
>> - (T*)
>>   e
>> )
>
> NAK.
>
> Nice, but you still have to verify correctness
> before submitting these patches.
>
>> diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
> []
>> @@ -1034,7 +1034,7 @@ static int mgc_set_info_async(const struct lu_env *env, struct obd_export *exp,
>>               rc = sptlrpc_parse_flavor(val, &flvr);
>>               if (rc) {
>>                       CERROR("invalid sptlrpc flavor %s to MGS\n",
>> -                            (char *)val);
>> +                            val);
>
> Try compiling this.
>

I compiled it before sending.

