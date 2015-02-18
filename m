X-GM-THRID: 80310435840
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,532940753aaf6731
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.13.236 with SMTP id fb12mr6966wid.1.1424224109599;
        Tue, 17 Feb 2015 17:48:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.167 with SMTP id b7ls1084213wiy.41.canary; Tue, 17 Feb
 2015 17:48:29 -0800 (PST)
X-Received: by 10.180.186.101 with SMTP id fj5mr19906wic.1.1424224109231;
        Tue, 17 Feb 2015 17:48:29 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com. [74.125.82.179])
        by gmr-mx.google.com with ESMTPS id el6si537289wib.2.2015.02.17.17.48.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 17:48:29 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 74.125.82.179 as permitted sender) client-ip=74.125.82.179;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 74.125.82.179 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so1875391wes.7
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 17:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=YahEOci10mPziD9BtBu6FakjqZKvoXqAV3CucnJktVE=;
        b=P+ACWW5lDxcp9SRfkNKcM0iFLdpRY/gtQFGjFMqQg8BYRXWX+JcUAxjztrjjTdG+wc
         MAT59xd9VFqPxFwsTSP47FWbhvdMMg4DSV+73DItzYnD6OKOKQsQwrF3oPn3HlRGG0al
         4dvxODbgfUCc2aVwHfpENFpUtLdEdG0CysOxT+OtVDwqHVJvQWPlQOY53RzFll3FK8s4
         BjbI02UOpXiPqyGCJJOXfMHIGzkSBRZjmZkyKHDO12ulxOmCL2xLqLupuVfm/Qsfa633
         tSiucZ0QIBuBmGTdfX9Rx9LFb8ksoycGyPniEG2269kGqmPV1q2LkLsUgZ7x4ZmmkjKX
         HLCA==
MIME-Version: 1.0
X-Received: by 10.194.77.99 with SMTP id r3mr66430703wjw.149.1424224109145;
 Tue, 17 Feb 2015 17:48:29 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Tue, 17 Feb 2015 17:48:29 -0800 (PST)
In-Reply-To: <3628018.XUKI9KUs7d@wuerfel>
References: <20150217045149.GA3532@vaishali-Ideapad-Z570>
	<3457005.LTXKFus5ps@wuerfel>
	<alpine.DEB.2.10.1502171001270.3396@hadrien>
	<3628018.XUKI9KUs7d@wuerfel>
Date: Wed, 18 Feb 2015 07:18:29 +0530
Message-ID: <CAK-LDb+DNVi2+xeJnnjs8kS7ghWTi0w6w7mfxvR6+2EY9=Qt7A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: lirc: Use setup_timer
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 17, 2015 at 3:20 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Tuesday 17 February 2015 10:02:53 Julia Lawall wrote:
>> On Tue, 17 Feb 2015, Arnd Bergmann wrote:
>>
>> > On Tuesday 17 February 2015 10:21:49 Vaishali Thakkar wrote:
>> > > This patch introduces the use of function setup_timer.
>> > >
>> > > This is done using Coccinelle and semantic patch used is
>> > > as follows:
>> > >
>> > > @@
>> > > expression x,y,z;
>> > > @@
>> > >
>> > > - init_timer (&x);
>> > > + setup_timer (&x, y, z);
>> > > - x.function = y;
>> > > - x.data = z;
>> > >
>> > > Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> >
>> > The patch looks great to me, but try to be more explicit about
>> > why this change is done in the description. Rather than just
>> > repeating the subject in the patch description here, explain
>> > why this is useful. In particular, is the only benefit to shorten
>> > the function by two lines and make it more readable, or is there
>> > also a functional change where the new code avoid a potential
>> > problem?
>>
>> Another question is that the data value is 0xabadcafe.  This looks at
>> least sort of like a nonsense value, and indeed the timer handler function
>> doesn't use it.  Would 0 be a better choice?
>>
>
> I guess ideally we'd use the data to pass a pointer to a per-device
> structure and remove the global variables such as 'io', 'irq',
> 'hardware_lock', etc. At this point it is of course no longer a
> trivial task to change.

Oh. Then what can be done with this case?? I thought may be using NULL or 0
could be good choice.

>         Arnd



-- 
Vaishali

