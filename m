X-GM-THRID: 6208527977579282432
X-Received: by 10.68.88.196 with SMTP id bi4mr3571088pbb.6.1445609133598;
        Fri, 23 Oct 2015 07:05:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.48 with SMTP id i45ls2262154qgd.21.gmail; Fri, 23 Oct
 2015 07:05:32 -0700 (PDT)
X-Received: by 10.129.79.87 with SMTP id d84mr17996288ywb.4.1445609132859;
        Fri, 23 Oct 2015 07:05:32 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22b.google.com (mail-qk0-x22b.google.com. [2607:f8b0:400d:c09::22b])
        by gmr-mx.google.com with ESMTPS id d207si1368710ywb.4.2015.10.23.07.05.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 07:05:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) client-ip=2607:f8b0:400d:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x22b.google.com with SMTP id y65so75134754qkc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 07:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=LQp9oVP6jkcSE5IWJi1TiBz8MAlD7UFsPL03pYl8nqQ=;
        b=B1A/xP24Gsb+y0mefLWkcaQuzsZaJHzK41Jxu6bhrJxbt0tfnlsx4Y/HiSinPkiEei
         1WguKkMLtNnCMAUR5WB+UuBcUFSQHgdh6H1tAuEpIefTFp/A+qvjtbeRthLZjhsx4jIA
         7ZztNXtIARc2EbczUZpKJ7HeAwzvuA++crzrPronh7zifv5GgrkbM9KVZqKnWp/ecwUn
         PU5YNmmrfrrB6nsUFXACCfu8lIHE6ATJTA8uKyJDNmaL6msj4/9HChjTwsMf2/abuyp1
         9Fm/dHycT25cRRcln1iy1bg3PZ8VNiAOtZvweJEI1/uKC4fMNJ/E7Q/npmymC+hA5xvX
         8/pA==
MIME-Version: 1.0
X-Received: by 10.140.34.75 with SMTP id k69mr18893601qgk.64.1445609132515;
 Fri, 23 Oct 2015 07:05:32 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 23 Oct 2015 07:05:32 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510231424110.2437@hadrien>
References: <20151022173920.GA32329@amitoj-Inspiron-3542>
	<8980519.8CTrMHEHrD@wuerfel>
	<CA+5yK5HER69sFe9PuCisL-GNdOcKk686WDy956U8hzasO=1ZqQ@mail.gmail.com>
	<CAL7P5jK37Y7F81P23OsBE6cckNSBWBiDVxmMc5kUhv+43sS7xw@mail.gmail.com>
	<CA+5yK5E-ZP4txCn8WSYemwgO6aB4YRDE7s+aGqmJMboCLUxHOA@mail.gmail.com>
	<alpine.DEB.2.10.1510231424110.2437@hadrien>
Date: Fri, 23 Oct 2015 19:35:32 +0530
Message-ID: <CA+5yK5EfqA5jD20FYFw940_V6d4zvMGPkPzxSCgN2rBf0fi+HQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH] misc: ibmasm: Replace
 timeval with timespec64
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, y2038@lists.linaro.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a11c0d406d3e7550522c61ad6

--001a11c0d406d3e7550522c61ad6
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 23, 2015 at 5:55 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 23 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> >> Okay! Next patches will be the simple tasks. Also, I couldn't find the
>> >> tutorial you mentioned for compiling, can you help me out some there?
>> >
>> > I think the tutorial mentioned is kernel newbies First patch tutorial
and under
>> > section Make a driver change:
>> >
http://kernelnewbies.org/Outreachyfirstpatch#head-816e6eef0008340eab7d542c3f6923a1f896478d
>> > there is instruction how to compile your changes:
>> >
>> > Compile your changes:
>> >
>> > Recompile your kernel, by running make (with an optional -jN flag):
>> > make -j2
>>
>> Hi Ksenija,
>>
>> Thanks for the help. I'm already doing this, I was under the
>> impression that Arnd was mentioning something other than this. I could
>> be wrong.
>
> Are you sure that you have a .o file for the code you are working on?  And
> if you do, are you compiling the whole kernel?  Maybe the problem is
> related to linking?
>
> julia

Yep, found the issue.

For reference of other applicants in case they get stuck in a similar
issue, I'll clarify what happened.

I had initially modified only staging drivers to be compilable as a module.
But here I was working on other drivers. Hence the issue.

The Outreachyfirstpatch <http://kernelnewbies.org/Outreachyfirstpatch> page
specifies the process for staging drivers. For other drivers, the Kconfig
file can be referred to for finding the driver to make it compilable as a
module.


Thank you Julia for helping out!


-- 
Amitoj

--001a11c0d406d3e7550522c61ad6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Fri, Oct 23, 2015 at 5:55 PM, Julia Lawall &lt;=
<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:=
<br>&gt;<br>&gt;<br>&gt; On Fri, 23 Oct 2015, Amitoj Kaur Chawla wrote:<br>=
&gt;<br>&gt;&gt; &gt;&gt; Okay! Next patches will be the simple tasks. Also=
, I couldn&#39;t find the<br>&gt;&gt; &gt;&gt; tutorial you mentioned for c=
ompiling, can you help me out some there?<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;=
 I think the tutorial mentioned is kernel newbies First patch tutorial and =
under<br>&gt;&gt; &gt; section Make a driver change:<br>&gt;&gt; &gt; <a hr=
ef=3D"http://kernelnewbies.org/Outreachyfirstpatch#head-816e6eef0008340eab7=
d542c3f6923a1f896478d">http://kernelnewbies.org/Outreachyfirstpatch#head-81=
6e6eef0008340eab7d542c3f6923a1f896478d</a><br>&gt;&gt; &gt; there is instru=
ction how to compile your changes:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Compil=
e your changes:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Recompile your kernel, by=
 running make (with an optional -jN flag):<br>&gt;&gt; &gt; make -j2<br>&gt=
;&gt;<br>&gt;&gt; Hi Ksenija,<br>&gt;&gt;<br>&gt;&gt; Thanks for the help. =
I&#39;m already doing this, I was under the<br>&gt;&gt; impression that Arn=
d was mentioning something other than this. I could<br>&gt;&gt; be wrong.<b=
r>&gt;<br>&gt; Are you sure that you have a .o file for the code you are wo=
rking on?=C2=A0 And<br>&gt; if you do, are you compiling the whole kernel?=
=C2=A0 Maybe the problem is<br>&gt; related to linking?<br>&gt;<br>&gt; jul=
ia<br><br>Yep, found the issue.<br><br>For reference of other applicants in=
 case they get stuck in a similar issue, I&#39;ll clarify what happened.<br=
><br>I had initially modified only staging drivers to be compilable as a mo=
dule. But here I was working on other drivers. Hence the issue.<br><br>The =
<a href=3D"http://kernelnewbies.org/Outreachyfirstpatch">Outreachyfirstpatc=
h</a>=C2=A0page specifies the process for staging drivers. For other driver=
s, the Kconfig file can be referred to for finding the driver to make it co=
mpilable as a module.<br><br><br>Thank you Julia for helping out!<div><br><=
/div><div><br>-- <br>Amitoj</div></div>

--001a11c0d406d3e7550522c61ad6--

