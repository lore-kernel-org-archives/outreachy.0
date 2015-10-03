X-GM-THRID: 6200357690588266496
X-Received: by 10.50.114.2 with SMTP id jc2mr2396722igb.5.1443852316734;
        Fri, 02 Oct 2015 23:05:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.136.196 with SMTP id qc4ls750197igb.25.gmail; Fri, 02 Oct
 2015 23:05:16 -0700 (PDT)
X-Received: by 10.107.150.66 with SMTP id y63mr16899306iod.11.1443852316496;
        Fri, 02 Oct 2015 23:05:16 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x22d.google.com (mail-ig0-x22d.google.com. [2607:f8b0:4001:c05::22d])
        by gmr-mx.google.com with ESMTPS id j7si503660igu.1.2015.10.02.23.05.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 23:05:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22d as permitted sender) client-ip=2607:f8b0:4001:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22d as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x22d.google.com with SMTP id rk20so31137211igc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 23:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=4RYIgYJiIR5rMktyWY8coaLFYuCuqWzEIiy99I5Wro4=;
        b=bez6znujVAl00dx93me+FBi2O2+oraYDRAMxMkZkde0ZNMRyZD2ZmvjtxlwUVRCUUf
         8YJgiBEO3yBSY6mnruB00zdN+19lQOPwFRnJ6x0+VGUuB2NnJhQQLQQzhvk9Nd8YMaOp
         nctcRFQ2HjDVvNfjx3przLHqNIa6RbDyy8Ow9zJ1VRfnkWFCBs3y2hrl9lSiBUzbmFt5
         G7AqiEvXN/ps1FTOSvyWR+sthAS8zhEY4XnXA0+7QSAfTQezTXIgl92aBKgpqUaTk333
         nKVIOyhdV9s/c+QmK0ObC3HmZw5caL1BA3PgotMqEBha7ccmgosV2fjmiRDWAhF/OUL9
         L4TQ==
MIME-Version: 1.0
X-Received: by 10.50.66.197 with SMTP id h5mr723127igt.82.1443852316393; Fri,
 02 Oct 2015 23:05:16 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Fri, 2 Oct 2015 23:05:16 -0700 (PDT)
In-Reply-To: <20151003055909.GC4428@sudip-pc>
References: <1443806645-16504-1-git-send-email-ksenija.stanojevic@gmail.com>
	<20151003055909.GC4428@sudip-pc>
Date: Sat, 3 Oct 2015 08:05:16 +0200
Message-ID: <CAL7P5jKVpNLPA318dgyw=wnA0kBxaXkVjgBsRU+-cV2dq00K2Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: olpc_dcon: Replace
 timespec with ktime_t
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Content-Type: text/plain; charset=UTF-8

Hi Sudip,

On Sat, Oct 3, 2015 at 7:59 AM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Fri, Oct 02, 2015 at 07:24:05PM +0200, Ksenija Stanojevic wrote:
>> Struct timespec will overflow in year 2038, here it will not cause an
>> overflow because it is used with timespec_sub, but still has to be
>> removed as part of y2038 changes. Replace it with ktime_t. Also use
>> monotonic instead of real-time by replacing functions getnstimeofday
>> with ktime_get.
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
>> ---
>> Changes in v4:
>>       -fix checkpatch.pl errors/warnings introduced by changes made
> You missed one more checkpatch warning.
>>        in v3.
> <snip>
>> +             delta_t = ktime_sub(now, dcon->load_time);
>> +             if (ktime_to_ns(delta_t) > NSEC_PER_MSEC * 20) {
>>                       break;
>>               }
> braces are not required for single statement if block.

I didn't know whether snould I change that or not, because that change is maybe
for another  patch?
Should I fix it  and resend?

Thanks,
Ksenija

> regards
> sudip

