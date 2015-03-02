X-GM-THRID: 4691261915136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,819e770589803338
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr3453511lbb.11.1425266612971;
        Sun, 01 Mar 2015 19:23:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.102 with SMTP id q6ls386190laa.24.gmail; Sun, 01 Mar
 2015 19:23:31 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr3411610lan.1.1425266611347;
        Sun, 01 Mar 2015 19:23:31 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id o3si575782wib.2.2015.03.01.19.23.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 19:23:31 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x231.google.com with SMTP id k48so30737146wev.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 19:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=YiuWiE73OcaHS+ceEZhDUtA9NbmyB/PkvA+IsyzIxrY=;
        b=UJu8IQPVONaXEP2n9Vh0244eSCKfHcUFBZf6aJMgyuFn+2dp7sXFqTQkPR9bnQfDIM
         MtSxBiXX+O2KWvpRQVeVhKMxFXn0fkFiyV3dPkqrh28rCXa2vC9i+Y57ATojz6gHni/c
         v7aOvwsYoi6DTc5GZht+qhJElTh6OC6mP0jK1Tpa1ST89j9P+3Dw/0UvSIhsjssaibJu
         u0WNqb0ofw+D7poR0FpihpWs2aAE+m0x5Yiv7KXJBv9UWKw6aMw9rPwGaQS4jTYC1CMc
         DAyNiuVQp6FrVIAql7sFARgOcs/HuUVPvsUkB2DntlSwxelFT0eqW6wSV0zB7sVchd9o
         V9Fg==
MIME-Version: 1.0
X-Received: by 10.194.110.38 with SMTP id hx6mr53022592wjb.128.1425266611273;
 Sun, 01 Mar 2015 19:23:31 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Sun, 1 Mar 2015 19:23:31 -0800 (PST)
In-Reply-To: <20150302010313.GA6918@kroah.com>
References: <cover.1425058745.git.vthakkar1994@gmail.com>
	<043ec4bb089d339de22164416866e2fce2a5bb6a.1425058745.git.vthakkar1994@gmail.com>
	<20150302010313.GA6918@kroah.com>
Date: Mon, 2 Mar 2015 08:53:31 +0530
Message-ID: <CAK-LDbJHs2APvwEQcBROq49V9ymQqzA-pyDMWf+J4EZXtfHLnQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8712: Eliminate use of _init_timer
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 2, 2015 at 6:33 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Fri, Feb 27, 2015 at 11:26:22PM +0530, Vaishali Thakkar wrote:
>> This patch introduces the use of API function setup_timer
>> instead of driver specific function _init_timer as it is
>> the preferred and standard way to setup and set the timer.
>> Also, definition of function _init_timer is removed as it
>> is no longer needed after this change.
>>
>> This is done using Coccinelle and semantic patch used for
>> this is as follows:
>>
>> @@ expression x, y; identifier a, b;@@
>>
>> - _init_timer (&x, y, a, b);
>> + setup_timer (&x, a, (unsigned long)b);
>>
>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> ---
>>  drivers/staging/rtl8712/mlme_linux.c      | 27 +++++++++++++--------------
>>  drivers/staging/rtl8712/os_intfs.c        |  4 ++--
>>  drivers/staging/rtl8712/osdep_service.h   |  9 ---------
>>  drivers/staging/rtl8712/recv_linux.c      |  5 +++--
>>  drivers/staging/rtl8712/rtl8712_led.c     |  3 ++-
>>  drivers/staging/rtl8712/rtl871x_pwrctrl.c |  4 ++--
>>  6 files changed, 22 insertions(+), 30 deletions(-)
>
> This patch adds a bunch of compiler warnings, so I can't take it :(
>
> Please fix up and resend, and be more careful in the future.

Here, again because of same gcc problem it didn't show me any
errors.

Yes. I will be more careful in the future. I am sorry for this one.

Thank You.

> thanks,
>
> greg k-h



-- 
Vaishali

