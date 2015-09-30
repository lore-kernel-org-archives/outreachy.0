X-GM-THRID: 6200095553040154624
X-Received: by 10.68.248.137 with SMTP id ym9mr4710316pbc.14.1443641830104;
        Wed, 30 Sep 2015 12:37:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.112.169 with SMTP id ir9ls1608459igb.28.canary; Wed, 30 Sep
 2015 12:37:09 -0700 (PDT)
X-Received: by 10.107.131.73 with SMTP id f70mr5432261iod.18.1443641829653;
        Wed, 30 Sep 2015 12:37:09 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x229.google.com (mail-yk0-x229.google.com. [2607:f8b0:4002:c07::229])
        by gmr-mx.google.com with ESMTPS id q133si288086ywb.1.2015.09.30.12.37.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 12:37:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::229 as permitted sender) client-ip=2607:f8b0:4002:c07::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::229 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x229.google.com with SMTP id t18so54994520ykd.3
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 12:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Q3oZn0XYpJ5/otkSISw5qS4nixvDeyWvWrEELnP9yN8=;
        b=UoqN826Ic3o3EANjY+AA2icL+4dgQzNjrOZ8zZCv+Jh/idi75nveOv//6bVADNEG4j
         5TQBNzZYUYiLMB9jvXCBSc7MIuQNj8sHkdUR+6oVQTVpE3d/koGXtKwCyPwBihRVT7Mo
         nF5nB8AVhodasBuYt4NS1G2bNtwmswuqqX2Rd+8s7VNOYB1D2QQT1OQZldY53VE7Jdxh
         kl4TdcjWrKs1+U9m02+eK1t87+YHtkZi9tpVj+vIm9qEMySRCCYcH7qxS0nA3VqBmUWL
         n3I/9BzWaDL/2K2dA4uBqF6JnV+4Vlq5WSz2scCXddbhh2RCo/xjQ67dNrybXTfOnyw7
         +RSg==
MIME-Version: 1.0
X-Received: by 10.13.206.7 with SMTP id q7mr4842881ywd.47.1443641829467; Wed,
 30 Sep 2015 12:37:09 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 30 Sep 2015 12:37:09 -0700 (PDT)
In-Reply-To: <20150930102949.GA15101@kroah.com>
References: <1443572226-27318-1-git-send-email-ciorneiioana@gmail.com>
	<20150930020039.GA14724@kroah.com>
	<CAHWJYFkFhEBVCKFBm6rmtd0j4077QewS8mj-txCxowp5RTHa_w@mail.gmail.com>
	<20150930102949.GA15101@kroah.com>
Date: Wed, 30 Sep 2015 22:37:09 +0300
Message-ID: <CAHWJYFmqjKMOT0TX=LoKpU=Lg5NG8iDmKAihU7wKHYO-dRaVpg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wil1000: fix misspelled words
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114da68a6db04c0520fc0e1b

--001a114da68a6db04c0520fc0e1b
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 30, 2015 at 1:29 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Wed, Sep 30, 2015 at 01:21:53PM +0300, Ioana Ciornei wrote:
>> On Wed, Sep 30, 2015 at 5:00 AM, Greg KH <gregkh@linuxfoundation.org>
wrote:
>> >
>> > On Wed, Sep 30, 2015 at 03:17:06AM +0300, Ioana Ciornei wrote:
>> > > Fix misspelled words throughout the entire subsystem
>> > >
>> > > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> > > ---
>> > >  drivers/staging/wilc1000/coreconfigurator.c       |  2 +-
>> > >  drivers/staging/wilc1000/host_interface.c         | 26
+++++++++++------------
>> > >  drivers/staging/wilc1000/host_interface.h         |  8 +++----
>> > >  drivers/staging/wilc1000/linux_mon.c              |  2 +-
>> > >  drivers/staging/wilc1000/linux_wlan.c             | 18
++++++++--------
>> > >  drivers/staging/wilc1000/wilc_msgqueue.c          |  2 +-
>> > >  drivers/staging/wilc1000/wilc_msgqueue.h          |  8 +++----
>> > >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 22
+++++++++----------
>> > >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.h |  4 ++--
>> > >  drivers/staging/wilc1000/wilc_wlan.c              |  4 ++--
>> > >  10 files changed, 48 insertions(+), 48 deletions(-)
>> >
>> > This patch doesn't apply to my staging-testing branch at all, due to
>> > other changes that happened in the past few days with this driver.
>> > Please refresh your tree and rebase your patch and resend it so that I
>> > can apply it.
>>
>> Just to be sure.. are we supposed to keep track and apply patches on
>> top of the staging-testing or staging-next branch?
>> In the tutorials it appears staging-next to be the one to follow.
>
> staging-testing usually only diverges from staging-next for less than 24
> hours, so usually working on staging-next is fine to do.  Except when
> you are working on a driver, like this one, that is also being worked on
> by other developers.  For that, I recommend using staging-testing.
>
> But note, this driver is averaging 10-20 patches every few days from
> other developers, things are changing quickly in it, keeping up to date
> and slip your patch in while that happens is going to be tricky.  Expect
> to have to rebase it a few times because of this, sorry.
>
> thanks,
>
> greg k-h

After rebasing on top of staging-testing I found out that the changes from
this patch are not needed anymore.
In this case, I will not send a revised patch on this specific topic.

Ioana

--001a114da68a6db04c0520fc0e1b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wed, Sep 30, 2015 at 1:29 PM, Greg KH &lt;<a hr=
ef=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfoun=
dation.org</a>&gt; wrote:<br>&gt; On Wed, Sep 30, 2015 at 01:21:53PM +0300,=
 Ioana Ciornei wrote:<br>&gt;&gt; On Wed, Sep 30, 2015 at 5:00 AM, Greg KH =
&lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@=
linuxfoundation.org</a>&gt; wrote:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; On Wed=
, Sep 30, 2015 at 03:17:06AM +0300, Ioana Ciornei wrote:<br>&gt;&gt; &gt; &=
gt; Fix misspelled words throughout the entire subsystem<br>&gt;&gt; &gt; &=
gt;<br>&gt;&gt; &gt; &gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailt=
o:ciorneiioana@gmail.com" target=3D"_blank">ciorneiioana@gmail.com</a>&gt;<=
br>&gt;&gt; &gt; &gt; ---<br>&gt;&gt; &gt; &gt; =C2=A0drivers/staging/wilc1=
000/coreconfigurator.c =C2=A0 =C2=A0 =C2=A0 | =C2=A02 +-<br>&gt;&gt; &gt; &=
gt; =C2=A0drivers/staging/wilc1000/host_interface.c =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | 26 +++++++++++------------<br>&gt;&gt; &gt; &gt; =C2=A0drivers/sta=
ging/wilc1000/host_interface.h =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A08 +++---=
-<br>&gt;&gt; &gt; &gt; =C2=A0drivers/staging/wilc1000/linux_mon.c =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A02 +-<br>&gt;&gt; &gt; &gt;=
 =C2=A0drivers/staging/wilc1000/linux_wlan.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 18 ++++++++--------<br>&gt;&gt; &gt; &gt; =C2=A0drivers/sta=
ging/wilc1000/wilc_msgqueue.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A02 +=
-<br>&gt;&gt; &gt; &gt; =C2=A0drivers/staging/wilc1000/wilc_msgqueue.h =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A08 +++----<br>&gt;&gt; &gt; &gt; =C2=
=A0drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 22 +++++++++--------=
--<br>&gt;&gt; &gt; &gt; =C2=A0drivers/staging/wilc1000/wilc_wfi_cfgoperati=
ons.h | =C2=A04 ++--<br>&gt;&gt; &gt; &gt; =C2=A0drivers/staging/wilc1000/w=
ilc_wlan.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A04 ++--<b=
r>&gt;&gt; &gt; &gt; =C2=A010 files changed, 48 insertions(+), 48 deletions=
(-)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; This patch doesn&#39;t apply to my st=
aging-testing branch at all, due to<br>&gt;&gt; &gt; other changes that hap=
pened in the past few days with this driver.<br>&gt;&gt; &gt; Please refres=
h your tree and rebase your patch and resend it so that I<br>&gt;&gt; &gt; =
can apply it.<br>&gt;&gt;<br>&gt;&gt; Just to be sure.. are we supposed to =
keep track and apply patches on<br>&gt;&gt; top of the staging-testing or s=
taging-next branch?<br>&gt;&gt; In the tutorials it appears staging-next to=
 be the one to follow.<br>&gt;<br>&gt; staging-testing usually only diverge=
s from staging-next for less than 24<br>&gt; hours, so usually working on s=
taging-next is fine to do.=C2=A0 Except when<br>&gt; you are working on a d=
river, like this one, that is also being worked on<br>&gt; by other develop=
ers.=C2=A0 For that, I recommend using staging-testing.<br>&gt;<br>&gt; But=
 note, this driver is averaging 10-20 patches every few days from<br>&gt; o=
ther developers, things are changing quickly in it, keeping up to date<br>&=
gt; and slip your patch in while that happens is going to be tricky.=C2=A0 =
Expect<br>&gt; to have to rebase it a few times because of this, sorry.<br>=
&gt;<br>&gt; thanks,<br>&gt;<br>&gt; greg k-h<br><br>After rebasing on top =
of staging-testing=C2=A0I found out that=C2=A0the changes from this patch a=
re not needed anymore.<div>In this case, I will not send a revised patch on=
 this specific topic.</div><div><br></div><div>Ioana<br><div><br></div></di=
v></div>

--001a114da68a6db04c0520fc0e1b--

