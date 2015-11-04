X-GM-THRID: 6210894171417346048
X-Received: by 10.182.181.3 with SMTP id ds3mr2706928obc.5.1446664495704;
        Wed, 04 Nov 2015 11:14:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.138 with SMTP id z10ls952462qgd.17.gmail; Wed, 04 Nov
 2015 11:14:55 -0800 (PST)
X-Received: by 10.129.39.65 with SMTP id n62mr2662373ywn.13.1446664495105;
        Wed, 04 Nov 2015 11:14:55 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x22d.google.com (mail-ig0-x22d.google.com. [2607:f8b0:4001:c05::22d])
        by gmr-mx.google.com with ESMTPS id mh4si180544igb.0.2015.11.04.11.14.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 11:14:55 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22d as permitted sender) client-ip=2607:f8b0:4001:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22d as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x22d.google.com with SMTP id g1so112774887igd.1
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Nov 2015 11:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=wrGhHSE8tpS5JbPWTTqHMIDYacDIOot1KQi3c+oPBNc=;
        b=Bmcq13A5l9eJXOCYpSPTvJviflCVYxRk9RsTky5vf/ISTqCe56tUB4dMVTCoSb12NW
         nk8XgR/FDvRP+FOe5nVl/U2hGl/9gDrVIlpkJ1WMnhwk6HIxs5AyQ4p05ZppKStL9Wdo
         GUf+Fw3YiPmAngH5mjON/mTSNogYWaNcshSIKlc6R4W6FenJTc87L2VZvVTSkZ3bm6XU
         XwrfxErKZsefWwFql2wUHtUmnrs/O5qKr13XBfNG3Q3WYxeD8prFXxaS1eGEBdtDkg/U
         M/mNXDD15XzQhUUYs6RaawKT2AWlhfmNdta8XLRvi8hXGNDSRiUuxsGQHwz2gyx4H7uM
         Rrhw==
MIME-Version: 1.0
X-Received: by 10.50.103.99 with SMTP id fv3mr25714203igb.69.1446664494986;
 Wed, 04 Nov 2015 11:14:54 -0800 (PST)
Received: by 10.107.149.205 with HTTP; Wed, 4 Nov 2015 11:14:54 -0800 (PST)
In-Reply-To: <20151104190637.GA6140@kroah.com>
References: <1446086478-14386-1-git-send-email-ksenija.stanojevic@gmail.com>
	<20151104190637.GA6140@kroah.com>
Date: Wed, 4 Nov 2015 11:14:54 -0800
Message-ID: <CAL7P5jLS2rjMvAwN68=+A1MfSLhJuk_0PRavJ7j+B-xGqkiXNQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: gdm72xx: Fix sparse warning
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 4, 2015 at 11:06 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Wed, Oct 28, 2015 at 07:41:18PM -0700, Ksenija Stanojevic wrote:
>> Calls copy_{to,from}_user() do not use '__user' annotation
>> while refrencing user space pointers.
>>
>> Fix following sparse warnings by passing missing __user annotation:
>>
>> drivers/staging/gdm72xx/gdm_wimax.c:381:37: warning: incorrect type in
>> argument 1 (different address spaces)
>> drivers/staging/gdm72xx/gdm_wimax.c:381:37:    expected void [noderef]
>> <asn:1>*to
>> drivers/staging/gdm72xx/gdm_wimax.c:381:37:    got void *buf
>> drivers/staging/gdm72xx/gdm_wimax.c:404:41: warning: incorrect type in
>> argument 2 (different address spaces)
>> drivers/staging/gdm72xx/gdm_wimax.c:404:41:    expected void const
>> [noderef] <asn:1>*from
>> drivers/staging/gdm72xx/gdm_wimax.c:404:41:    got void *buf
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
>>  drivers/staging/gdm72xx/gdm_wimax.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
>> index d9ddced..a5b4b72 100644
>> --- a/drivers/staging/gdm72xx/gdm_wimax.c
>> +++ b/drivers/staging/gdm72xx/gdm_wimax.c
>> @@ -378,7 +378,7 @@ static int gdm_wimax_ioctl_get_data(struct data_s *dst, struct data_s *src)
>>       if (src->size) {
>>               if (!dst->buf)
>>                       return -EINVAL;
>> -             if (copy_to_user(dst->buf, src->buf, size))
>> +             if (copy_to_user((void __user *)dst->buf, src->buf, size))
>
> Shouldn't the variable be described as a __user pointer instead?  Don't
> cast away warnings, fix the root problem.

I don't think so because dst and src are both pointers to struct data_s
and dst->buf in one function used as user buffer and in the next one as
a kernel buffer. Same goes for src-buf.

struct data_s {
        int     size;
        void    *buf;
};

