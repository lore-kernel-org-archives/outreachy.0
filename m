X-GM-THRID: 6254162869495005184
X-Received: by 10.129.117.11 with SMTP id q11mr11144140ywc.3.1456160766120;
        Mon, 22 Feb 2016 09:06:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.226 with SMTP id z2ls681610igl.9.canary; Mon, 22 Feb
 2016 09:06:05 -0800 (PST)
X-Received: by 10.107.134.68 with SMTP id i65mr28854755iod.33.1456160765727;
        Mon, 22 Feb 2016 09:06:05 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id t198si1349402ywe.3.2016.02.22.09.06.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 09:06:05 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id b67so115920352qgb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 09:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=0um2LZg2Rrvwz0X9W3UgkNj/2yX12OtDbaaxc6v9zoU=;
        b=m6g0xCWSZ5r1GC55CCLfhMbtDA7d/t38jqQT3pe7wVsE9rWsukgvBDsFzF2nW87rJX
         /Mitnsd1m9MLkgc/oHlrnt+nvw3VlzWyhqRtwu+Eo4DvFv2KAztcDMVAyY4+R2q9QoXg
         kGAn0snCy274fWFVkw6w40I5mTLfVfz+9XZIypka5wtmnh+y4awLH9g69xaJWJowidqE
         PKshLElkAL8e3CSk+ue8e2Ku4mPN+9tdKKO35mD2bdBxCLQyrT0nh/76la6Tl9BzpgAt
         JarKHRdwMgB8eYILjm7WqZCDkssbhvZ7j3eLLUfrcASXNjvFthqtg/p/e71mNhJJXJez
         1P4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=0um2LZg2Rrvwz0X9W3UgkNj/2yX12OtDbaaxc6v9zoU=;
        b=EtGmL/xFNwvCU8MNwszHjI9dgJyOY4mqHlb7D1vZ3UnTxR5B+7f51f/HQgAF9KQY31
         C9MCNlV6yrLI+/VkIXy/VuNVy+PMr46UqB+TgrUVfJYHlYa0wD7d7dZoTjg4ujJBL2h4
         STVZ92gul/mM3++7QsAOwNBLEkw+BzguvFJiMA3/C62OimoOkMEEMhWNfKveDqzIR7dz
         ax5pj3zO/T82UvJ1WbWR1Gyrn8xyzVkmpj9tUTY9074EcIilrpLBCb3bUwfRX23cHSND
         gHiL7M6Lmep9gRNGvrg793VM2/smEX9G0R6MQKXcko8uVTXt0sZtb8ZFOGp6RE/mPOWe
         cDCg==
X-Gm-Message-State: AG10YOTFTEv4paGTa9t9JrqJ89ZlhW1ieWudWoQvuhhIfw02dgA7MIyhoUZG8R3NzSJr459U0MC4DzsrFxyYLw==
X-Received: by 10.140.44.5 with SMTP id f5mr36486443qga.37.1456160765581; Mon,
 22 Feb 2016 09:06:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.209.65 with HTTP; Mon, 22 Feb 2016 09:05:26 -0800 (PST)
In-Reply-To: <20160219162922.GL13177@mtj.duckdns.org>
References: <CAFNHFT8jZUnTth5m27sW-QxkVwfuC6GRJNKzrW2x=TsVPg4now@mail.gmail.com>
 <20160219162922.GL13177@mtj.duckdns.org>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Mon, 22 Feb 2016 22:35:26 +0530
Message-ID: <CAFNHFT8WD3qrNazGg5XmEFnK7L_9qh0Zmpg5P69x+nYQX+-ZTA@mail.gmail.com>
Subject: Re: Reg: Outreachy workqueue tasks
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1139fd582b3fc0052c5ed94a

--001a1139fd582b3fc0052c5ed94a
Content-Type: text/plain; charset=UTF-8

Hello Tejun,

Thank you very much for your reply.  It really helped.
I have completed the conversion of  create_workqueue() usages in
drivers/staging/rtl8192u. Thank you for your guidance.

I have also done the conversion of create_singlethread_workqueue() usages
in drivers/staging/octeon/ethernet.c
Please have a look.

Thanks,
Bhaktipriya

On Fri, Feb 19, 2016 at 9:59 PM, Tejun Heo <tj@kernel.org> wrote:
> Hello, Bhakti.
>
> Can you please cc the outreachy mailing list so that others can read
> the thread too?  In fact, please reply to this message without pruning
> the content w/ the ml cc'd.
>
> On Fri, Feb 19, 2016 at 05:40:08PM +0530, Bhakti Priya wrote:
>> 1. How does one decide when to use the WQ_MEM_RECLAIM flag. I read that
>> this flag needs to be used only if a wq processes work items which are
used
>> during memory reclaim. Should I look for null checks after a
>> create_workqueue() usage?
>
> Are you familiar with the concepts of virtual memory, page cache and
> swapping?  If not, I'd recommend studying the subject a bit.  Any
> textbook on modern operating systems should contain a chapter on the
> subject.  My mm friend recommends "understanding the linux kernel".
>
> In a nutshell, most of memory assigned to user applications is virtual
> and reclaimable, so when the operating system needs more memory, it
> reclaims them by ensuring that a copy of it can be recalled from
> secondary storage and freeing it.
>
> Now, if something is used during the process of reclaiming memory, it
> can't depend on further memory being available; otherwise, it wouldn't
> be able to make forward progress.
>
>  1. No memory is left.
>
>  2. Memory reclaim starts and makes use of facility X.
>
>  3. Facility X needs to allocate more memory to make forward progress.
>
>  4. Go back to 1.  Oops.
>
> So, anything which may be used during memory reclaim can't depend on
> more memory being available.  These are mostly things in the IO path
> as most of reclaim is writing out dirty memory to secondary storage -
> filesystem, block layer, device drivers for IO devices and so on.
> Network path generally isn't.
>
>> 2. I read about the flags WQ_HIGHPRI, WQ_CPU_INTENSIVE in
>> Documentation/workqueue.txt.  But I feel that more examples would help me
>> understand the usage of such flags better. Could you please direct me to
>> more examples that  would help me solve task 1.
>
> The best way to learn more about them would be grep'ing the source
> tree for usage and see how they're being used.  There aren't many use
> cases where the two flags should be used.  WQ_HIGHPRI is used for
> things like hardware monitor driver which needs low latency from
> scheduling to execution.  WQ_CPU_INTENSIVE is for things like IO
> encryption which can consume large amount of CPU cycles.  I'm quite
> doubtful that either would be needed to convert
> create[_singlethread]_workqueue().
>
> Thanks!
>
> --
> tejun

--001a1139fd582b3fc0052c5ed94a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Tejun,<br><br>Thank you very much for your reply.=C2=
=A0 It really helped.<br>I have completed the conversion of =C2=A0create_wo=
rkqueue() usages in drivers/staging/rtl8192u. Thank you for your guidance.<=
br><br>I have also done the conversion of create_singlethread_workqueue() u=
sages in drivers/staging/octeon/ethernet.c<br>Please have a look.<br>=C2=A0=
<br>Thanks,<br>Bhaktipriya<br><br>On Fri, Feb 19, 2016 at 9:59 PM, Tejun He=
o &lt;<a href=3D"mailto:tj@kernel.org">tj@kernel.org</a>&gt; wrote:<br>&gt;=
 Hello, Bhakti.<br>&gt;<br>&gt; Can you please cc the outreachy mailing lis=
t so that others can read<br>&gt; the thread too?=C2=A0 In fact, please rep=
ly to this message without pruning<br>&gt; the content w/ the ml cc&#39;d.<=
br>&gt;<br>&gt; On Fri, Feb 19, 2016 at 05:40:08PM +0530, Bhakti Priya wrot=
e:<br>&gt;&gt; 1. How does one decide when to use the WQ_MEM_RECLAIM flag. =
I read that<br>&gt;&gt; this flag needs to be used only if a wq processes w=
ork items which are used<br>&gt;&gt; during memory reclaim. Should I look f=
or null checks after a<br>&gt;&gt; create_workqueue() usage?<br>&gt;<br>&gt=
; Are you familiar with the concepts of virtual memory, page cache and<br>&=
gt; swapping?=C2=A0 If not, I&#39;d recommend studying the subject a bit.=
=C2=A0 Any<br>&gt; textbook on modern operating systems should contain a ch=
apter on the<br>&gt; subject.=C2=A0 My mm friend recommends &quot;understan=
ding the linux kernel&quot;.<br>&gt;<br>&gt; In a nutshell, most of memory =
assigned to user applications is virtual<br>&gt; and reclaimable, so when t=
he operating system needs more memory, it<br>&gt; reclaims them by ensuring=
 that a copy of it can be recalled from<br>&gt; secondary storage and freei=
ng it.<br>&gt;<br>&gt; Now, if something is used during the process of recl=
aiming memory, it<br>&gt; can&#39;t depend on further memory being availabl=
e; otherwise, it wouldn&#39;t<br>&gt; be able to make forward progress.<br>=
&gt;<br>&gt; =C2=A01. No memory is left.<br>&gt;<br>&gt; =C2=A02. Memory re=
claim starts and makes use of facility X.<br>&gt;<br>&gt; =C2=A03. Facility=
 X needs to allocate more memory to make forward progress.<br>&gt;<br>&gt; =
=C2=A04. Go back to 1.=C2=A0 Oops.<br>&gt;<br>&gt; So, anything which may b=
e used during memory reclaim can&#39;t depend on<br>&gt; more memory being =
available.=C2=A0 These are mostly things in the IO path<br>&gt; as most of =
reclaim is writing out dirty memory to secondary storage -<br>&gt; filesyst=
em, block layer, device drivers for IO devices and so on.<br>&gt; Network p=
ath generally isn&#39;t.<br>&gt;<br>&gt;&gt; 2. I read about the flags WQ_H=
IGHPRI, WQ_CPU_INTENSIVE in<br>&gt;&gt; Documentation/workqueue.txt.=C2=A0 =
But I feel that more examples would help me<br>&gt;&gt; understand the usag=
e of such flags better. Could you please direct me to<br>&gt;&gt; more exam=
ples that =C2=A0would help me solve task 1.<br>&gt;<br>&gt; The best way to=
 learn more about them would be grep&#39;ing the source<br>&gt; tree for us=
age and see how they&#39;re being used.=C2=A0 There aren&#39;t many use<br>=
&gt; cases where the two flags should be used.=C2=A0 WQ_HIGHPRI is used for=
<br>&gt; things like hardware monitor driver which needs low latency from<b=
r>&gt; scheduling to execution.=C2=A0 WQ_CPU_INTENSIVE is for things like I=
O<br>&gt; encryption which can consume large amount of CPU cycles.=C2=A0 I&=
#39;m quite<br>&gt; doubtful that either would be needed to convert<br>&gt;=
 create[_singlethread]_workqueue().<br>&gt;<br>&gt; Thanks!<br>&gt;<br>&gt;=
 --<br>&gt; tejun</div>

--001a1139fd582b3fc0052c5ed94a--

