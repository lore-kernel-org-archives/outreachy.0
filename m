X-GM-THRID: 6202772083227754496
X-Received: by 10.182.117.194 with SMTP id kg2mr13050541obb.49.1444419733517;
        Fri, 09 Oct 2015 12:42:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.28.17 with SMTP id c17ls884310ioc.47.gmail; Fri, 09 Oct
 2015 12:42:13 -0700 (PDT)
X-Received: by 10.50.17.35 with SMTP id l3mr937695igd.11.1444419733151;
        Fri, 09 Oct 2015 12:42:13 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by gmr-mx.google.com with ESMTPS id o73si233916ywd.6.2015.10.09.12.42.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:42:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x230.google.com with SMTP id s79so37055983qka.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=6xvld/xn5pe0JvSGHrpWcmR2EgG5Yb6Bquq5lk60HM8=;
        b=E4J+QE3aAwWqAFdtGy9y8++O7S4tFgcycpBWd+pDnVuraECyoq2du7vV1k3GVbUX22
         hQXC3zosp6qQRGcB0naClcODXSCRoVjh0r6/VenYwrbt17d7Sz/m9D5OBn2/BM1b3YNI
         FGQnQsdsty5FkQD2oE2qY+0t27WiPfJQXIihqrzjMEBCo02cdAEKMmadp12coEnSutFe
         3p5yzpGgd53aPnjn+eEaAD4N1XTRH75rMd3lzGGPacvHlVz/+LXVrlVSJmssPbpumiGP
         R+nrggzNyms7kl1To2xZj6dmpisqJNgKMSTNf+08Fp0Na6QeQtXz3wHcHT6mLFBm6LtN
         qaMw==
MIME-Version: 1.0
X-Received: by 10.55.48.67 with SMTP id w64mr17285380qkw.32.1444419732936;
 Fri, 09 Oct 2015 12:42:12 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 9 Oct 2015 12:42:12 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510092135460.2001@localhost6.localdomain6>
References: <cover.1444194896.git.amitoj1606@gmail.com>
	<e9962700480ca8590bb9386ab0217b449fc4b8db.1444194896.git.amitoj1606@gmail.com>
	<alpine.DEB.2.10.1510080810460.2559@hadrien>
	<CA+5yK5EEqAUCCBskLK2ne2B4zh03SV=hOsR3gBo5cTXx_JCXzg@mail.gmail.com>
	<alpine.DEB.2.02.1510092135460.2001@localhost6.localdomain6>
Date: Sat, 10 Oct 2015 01:12:12 +0530
Message-ID: <CA+5yK5ErsZs0iMUOh369q2HBG_nTZWbvQjPpKFLm=gdfWjjFjA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: rtl8712: Remove NULL comparison
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 10, 2015 at 1:07 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 10 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> On Thu, Oct 8, 2015 at 12:41 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Wed, 7 Oct 2015, Amitoj Kaur Chawla wrote:
>> >
>> >> Remove NULL comparison by using '!' operator. Problem found using
>> >> checkpatch.pl
>> >> CHECK: Comparison to NULL could be written "!padapter->halpriv.hal_bus_init"
>> >>
>> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> >> ---
>> >>  drivers/staging/rtl8712/hal_init.c | 2 +-
>> >>  1 file changed, 1 insertion(+), 1 deletion(-)
>> >>
>> >> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
>> >> index 957f033..081f361 100644
>> >> --- a/drivers/staging/rtl8712/hal_init.c
>> >> +++ b/drivers/staging/rtl8712/hal_init.c
>> >> @@ -382,7 +382,7 @@ uint rtl8712_hal_deinit(struct _adapter *padapter)
>> >>  uint rtl871x_hal_init(struct _adapter *padapter)
>> >>  {
>> >>       padapter->hw_init_completed = false;
>> >> -     if (padapter->halpriv.hal_bus_init == NULL)
>> >> +     if (!padapter->halpriv.hal_bus_init)
>> >>               return _FAIL;
>> >>       if (padapter->halpriv.hal_bus_init(padapter) != _SUCCESS)
>> >>               return _FAIL;
>> >
>> > Nothing to do with the patch, but _FAIL and _SUCCESS don't look like
>> > standard kernel return values.  Maybe it is possible to improve this.
>> >
>> I've been checking about this but _FAIL and _SUCCESS are used in a lot
>> of places as return values.
>> What do you suggest?
>
> _FAIL is 0 and _SUCCESS is 1.  In most of the kernel, failure is indicated
> by a descriptive error code, like -ENOMEM when some kind of memory
> allocation fails.  It's probably not practical to change the whole driver
> at once.  But perhaps you could find some functions that are only called
> from a few places, and make the change gradually.
>

Okay, I'll look into this.

Thanks,


Amitoj

