X-GM-THRID: 3543146692608
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3ec6524604eff670
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.222.131 with SMTP id qm3mr1692427lbc.1.1425008073215;
        Thu, 26 Feb 2015 19:34:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.76.238 with SMTP id n14ls30667wiw.47.canary; Thu, 26 Feb
 2015 19:34:32 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr128631wib.7.1425008072758;
        Thu, 26 Feb 2015 19:34:32 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id ta1si32928wic.1.2015.02.26.19.34.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 19:34:32 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x231.google.com with SMTP id x3so16808883wes.6
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 19:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=kQMeRRc3ub9ns1VaIF+tayvVGyAxx4pYJuLIAyQfQxE=;
        b=letp5/+gnq0260Osfks57yINvALWly/cUJ0K9z3r9v3UZWQNifePuElLJts4NVmq+a
         TnHMYXVu2s0Uj3vmnrGAItTtSz735p0llYQVSlbdPErUJ9ja69bUdfZu6fh13LmdBn71
         WtmmRtjWb2RvS9klWKVkbkoBdLr/5LKEGbCrVFELgIQl754pF5986p2c+sCfX9xn8Cjy
         eX7na/SEZFLs+HsAhaeaO+hNrrdr3iMvooB+uDi9+gPBm6oiW6cYZ50XYRZHylqPhEhw
         XyGmYgekKJmYpdZ8N3ZGaMVstPSHjIroWFP7b0MKwrXGNngbQNl3tAWdZsMQ6HhVXojq
         Hjng==
MIME-Version: 1.0
X-Received: by 10.180.85.70 with SMTP id f6mr2292192wiz.22.1425008072703; Thu,
 26 Feb 2015 19:34:32 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Thu, 26 Feb 2015 19:34:32 -0800 (PST)
In-Reply-To: <20150226205638.GA16080@kroah.com>
References: <cover.1424930708.git.vthakkar1994@gmail.com>
	<a9e63f796f9f54a286ef73830c09c33e0f2d316d.1424930708.git.vthakkar1994@gmail.com>
	<20150226205638.GA16080@kroah.com>
Date: Fri, 27 Feb 2015 09:04:32 +0530
Message-ID: <CAK-LDbLizxW01bu-n_dJ_pJY6k-5Fdw+LWuCxYm22D=apCYQCQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8188eu: Eliminate use
 of _init_timer
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 27, 2015 at 2:26 AM, Greg KH <greg@kroah.com> wrote:
> On Thu, Feb 26, 2015 at 11:42:34AM +0530, Vaishali Thakkar wrote:
>> This patch introduces the use of API function setup_timer
>> instead of driver specific function _init_timer as it is
>> the preferred and standard way to setup and set the timer.
>> Also, definition of function _init_timer is removed as it
>> is no longer needed after this change.
>>
>> Here, some of cases are handled using Coccinelle and
>> semantic patch used for this is as follows:
>>
>> @@ expression x, y; identifier a, b;@@
>>
>> - _init_timer (&x, y, a, b);
>> + setup_timer (&x, a, (unsigned long)b);
>>
>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> ---
>> v1: Here, this patch has two line over 80 characters as
>>     limiting them to 80 characters does not make code look
>>     good and readable.
>>
>>  drivers/staging/rtl8188eu/core/rtw_led.c          |  3 ++-
>>  drivers/staging/rtl8188eu/core/rtw_pwrctrl.c      |  2 +-
>>  drivers/staging/rtl8188eu/core/rtw_recv.c         |  2 +-
>>  drivers/staging/rtl8188eu/include/osdep_service.h |  9 ---------
>>  drivers/staging/rtl8188eu/os_dep/mlme_linux.c     | 18 ++++++++++++------
>>  drivers/staging/rtl8188eu/os_dep/recv_linux.c     |  4 +++-
>>  6 files changed, 19 insertions(+), 19 deletions(-)
>
> Due to other changes in my tree, this patch no longer applies.  Can you
> please redo it against my staging-testing branch of staging.git and
> resend?

Yes. Ok. I will send them after refreshing against staging-testing.

Thank You

> thanks,
>
> greg k-h



-- 
Vaishali

