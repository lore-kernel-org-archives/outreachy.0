X-GM-THRID: 6393575339315953664
X-Received: by 10.99.163.10 with SMTP id s10mr3131164pge.75.1488622904507;
        Sat, 04 Mar 2017 02:21:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.89.216 with SMTP id u24ls8172988otg.40.gmail; Sat, 04 Mar
 2017 02:21:44 -0800 (PST)
X-Received: by 10.237.59.226 with SMTP id s31mr1114281qte.31.1488622904083;
        Sat, 04 Mar 2017 02:21:44 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id i189si859026iti.0.2017.03.04.02.21.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 02:21:44 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id f103so9147103ioi.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 02:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=62rbTTpmPz+1AGEvwl5MFme14CD3VJlWmeJwGW6b37I=;
        b=lKGrP5Q+ko+5HB6NcwA3L73DQh5r98QXWIM9X/vk9fKMjAuVVd9uvHc678GaQYvCvn
         HtmWkdXBuRcS25tknKfLIf8hul4YwBFM39I++P7aDIx9FpvDHCOxBGrFF8J+tGC3/Qh9
         RMEUlnio3bLwOcKpBwQCmZ5jw3XZOUhHtXRdzMH/09efBfoHy7g+yPChoqnZu3kz8wRi
         xKYkm5ihS/5VOExd9QMB9ndoQuNN81W/kd+NLuzuaPQyQt2YKWL3/hz2AJmgvIzxMimS
         F8R+xah/12Sc+9Bt78+0x4vgX5PYKvaswgOzNtOulmZ3c1LfDhSi0PUtv2+vjMup7oQc
         KXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=62rbTTpmPz+1AGEvwl5MFme14CD3VJlWmeJwGW6b37I=;
        b=QsrufnFpcN7wFDV2g3a6J02nYx1Q4KL9sUWbjins6n+J0oScRR+bfxkf1nq9Qmu+r/
         TpqYRGlyhkM0TdBazb0T7/Vp58PaGQwXO6iVCM2g5AViAR9V4Wv64tmyA/rGZ4jNdcXf
         2o7R/5fSL1Tdr+Hqc2lLAVrYGDB8FX9OVHLoAFIOESSAe+TFTNmkBMC2FMMx++8L5CdW
         RcZOX15EKorvnsxKBNvb4gJORvM67AdE4RbzvwhMkPXwQeWR6Nm9bDDxDnyBopz3iVUh
         uol4s1T8pGiQMK8FukqTVJqUD6WhCXZiCSnFxW3XfMMwvP3+effcjt+N+2uck9wk13o2
         rNSg==
X-Gm-Message-State: AMke39k0sIMLyK53xz7cE0ea0S3BT4CsuURFpZQ2qp5YOWKGycEEBkvlsqIaS9BeV6pmgk7uF+jGOx6Vtm9Ftw==
X-Received: by 10.107.137.226 with SMTP id t95mr6845588ioi.79.1488622903814;
 Sat, 04 Mar 2017 02:21:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sat, 4 Mar 2017 02:21:13 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703041117080.2122@hadrien>
References: <CAOCi2DFgoEXYZpf3s9-9MV37nvZZn0U3G2SiWcc21nta-VwzgA@mail.gmail.com>
 <alpine.DEB.2.20.1703041104560.2122@hadrien> <CAOCi2DG-br3C9U8ChD+SV045n1auhoUrG29duFr9bLq4DN4v0w@mail.gmail.com>
 <alpine.DEB.2.20.1703041117080.2122@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sat, 4 Mar 2017 15:51:13 +0530
Message-ID: <CAOCi2DGMR8ifjWG=LFY9mScmuvpLgdzaSGgmen_3Djc9krEavQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Building android staging driver
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113ec7b662f3ce0549e507f9

--001a113ec7b662f3ce0549e507f9
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 4, 2017 at 3:48 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> On Sat, 4 Mar 2017, Gargi Sharma wrote:
>
> > On Sat, Mar 4, 2017 at 3:35 PM, Julia Lawall <julia.lawall@lip6.fr>
wrote:
> > >
> > >
> > >
> > > On Sat, 4 Mar 2017, Gargi Sharma wrote:
> > >
> > > > Hi,
> > > >
> > > > When running the Makefile for the android ion in staging driver, I
get
> > the
> > > > following error:
> > > >
> > > > make: *** No targets.  Stop.
> > >
> > > What command did you run?
> > >
> > >
> > make drivers/staging/android/ works for me.
> > This commands gives me this output:
> > CHK     include/config/kernel.release
> > CHK     include/generated/uapi/linux/version.h
> > CHK     include/generated/utsrelease.h
> > CHK     include/generated/timeconst.h
> > CHK     include/generated/bounds.h
> > CHK     include/generated/asm-offsets.h
> > CALL    scripts/checksyscalls.sh
> > LD      drivers/staging/android/ion/built-in.o
> > LD      drivers/staging/android/built-in.o
> >
> > The binaries for other c files is not being built for some reason.
Hence,
> > I tried the Makefile in the ion folder, which gave me the error,
> >  make: *** No targets.  Stop.
>
> Strange.  I get:
>
>   CC      drivers/staging/android/ion/ion.o
>   CC      drivers/staging/android/ion/ion-ioctl.o
>   CC      drivers/staging/android/ion/ion_heap.o
>   CC      drivers/staging/android/ion/ion_page_pool.o
>   CC      drivers/staging/android/ion/ion_system_heap.o
>   CC      drivers/staging/android/ion/ion_carveout_heap.o
>   CC      drivers/staging/android/ion/ion_chunk_heap.o
>   CC      drivers/staging/android/ion/ion_cma_heap.o
>   CC      drivers/staging/android/ion/ion_test.o
>   CC      drivers/staging/android/ion/compat_ion.o
>   CC      drivers/staging/android/ion/ion_dummy_driver.o
>   CC      drivers/staging/android/ion/ion_of.o
>   LD      drivers/staging/android/ion/built-in.o
>
> Did you do make allyesconfig first?

Oops, I didn't. I get the other binaries now. Thanks!

Best,
Gargi
>
> julia
>
>
> >
> > Thanks,
> > Gargi
> >
> > >
> > > julia
> > >
> > > >
> > > > These are the contents of the Makefile:
> > > >
> > > > obj-$(CONFIG_ION) += ion.o ion-ioctl.o ion_heap.o \
> > > > ion_page_pool.o ion_system_heap.o \
> > > > ion_carveout_heap.o ion_chunk_heap.o ion_cma_heap.o
> > > > obj-$(CONFIG_ION_TEST) += ion_test.o
> > > > ifdef CONFIG_COMPAT
> > > > obj-$(CONFIG_ION) += compat_ion.o
> > > > endif
> > > >
> > > > obj-$(CONFIG_ION_DUMMY) += ion_dummy_driver.o
> > > > obj-$(CONFIG_ION_TEGRA) += tegra/
> > > > obj-$(CONFIG_ION_HISI) += hisilicon/
> > > > obj-$(CONFIG_ION_OF) += ion_of.o
> > > >
> > > > How do I generate binaries for the c files in this driver?
> > > >
> > > > Thanks,
> > > > Gargi
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google
> > Groups
> > > > "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it,
send
> > an
> > > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to
outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the webvisithttps://
groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFgoEXYZpf3s9
> > -9MV3
> > > > 7nvZZn0U3G2SiWcc21nta-VwzgA%40mail.gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google
Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
groups.google.com/d/msgid/outreachy-kernel/CAOCi2DG-br3C9U8ChD%2BSV
> > 045n1auhoUrG29duFr9bLq4DN4v0w%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703041117080.2122%40hadrien
.
> For more options, visit https://groups.google.com/d/optout.

--001a113ec7b662f3ce0549e507f9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sat, Mar 4, 2017 at 3:48 PM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt=
;<br>&gt; On Sat, 4 Mar 2017, Gargi Sharma wrote:<br>&gt;<br>&gt; &gt; On S=
at, Mar 4, 2017 at 3:35 PM, Julia Lawall &lt;<a href=3D"mailto:julia.lawall=
@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt; &gt; &gt;<br>&gt; &gt=
; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; On Sat, 4 Mar 2017, Gargi Sharma=
 wrote:<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Hi,<br>&gt; &gt; &gt; &gt;=
<br>&gt; &gt; &gt; &gt; When running the Makefile for the android ion in st=
aging driver, I get<br>&gt; &gt; the<br>&gt; &gt; &gt; &gt; following error=
:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; make: *** No targets.=C2=A0=
 Stop.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; What command did you run?<br>&gt=
; &gt; &gt;<br>&gt; &gt; &gt; <br>&gt; &gt; make drivers/staging/android/ w=
orks for me.<br>&gt; &gt; This commands gives me this output:<br>&gt; &gt; =
CHK =C2=A0 =C2=A0 include/config/kernel.release<br>&gt; &gt; CHK =C2=A0 =C2=
=A0 include/generated/uapi/linux/version.h<br>&gt; &gt; CHK =C2=A0 =C2=A0 i=
nclude/generated/utsrelease.h<br>&gt; &gt; CHK =C2=A0 =C2=A0 include/genera=
ted/timeconst.h<br>&gt; &gt; CHK =C2=A0 =C2=A0 include/generated/bounds.h<b=
r>&gt; &gt; CHK =C2=A0 =C2=A0 include/generated/asm-offsets.h<br>&gt; &gt; =
CALL =C2=A0 =C2=A0scripts/checksyscalls.sh<br>&gt; &gt; LD =C2=A0 =C2=A0 =
=C2=A0drivers/staging/android/ion/built-in.o<br>&gt; &gt; LD =C2=A0 =C2=A0 =
=C2=A0drivers/staging/android/built-in.o<br>&gt; &gt;<br>&gt; &gt; The bina=
ries for other c files is not being built for some reason. Hence,<br>&gt; &=
gt; I tried the Makefile in the ion folder, which gave me the error,<br>&gt=
; &gt; =C2=A0make: *** No targets.=C2=A0 Stop.<br>&gt;<br>&gt; Strange.=C2=
=A0 I get:<br>&gt;<br>&gt; =C2=A0 CC =C2=A0 =C2=A0 =C2=A0drivers/staging/an=
droid/ion/ion.o<br>&gt; =C2=A0 CC =C2=A0 =C2=A0 =C2=A0drivers/staging/andro=
id/ion/ion-ioctl.o<br>&gt; =C2=A0 CC =C2=A0 =C2=A0 =C2=A0drivers/staging/an=
droid/ion/ion_heap.o<br>&gt; =C2=A0 CC =C2=A0 =C2=A0 =C2=A0drivers/staging/=
android/ion/ion_page_pool.o<br>&gt; =C2=A0 CC =C2=A0 =C2=A0 =C2=A0drivers/s=
taging/android/ion/ion_system_heap.o<br>&gt; =C2=A0 CC =C2=A0 =C2=A0 =C2=A0=
drivers/staging/android/ion/ion_carveout_heap.o<br>&gt; =C2=A0 CC =C2=A0 =
=C2=A0 =C2=A0drivers/staging/android/ion/ion_chunk_heap.o<br>&gt; =C2=A0 CC=
 =C2=A0 =C2=A0 =C2=A0drivers/staging/android/ion/ion_cma_heap.o<br>&gt; =C2=
=A0 CC =C2=A0 =C2=A0 =C2=A0drivers/staging/android/ion/ion_test.o<br>&gt; =
=C2=A0 CC =C2=A0 =C2=A0 =C2=A0drivers/staging/android/ion/compat_ion.o<br>&=
gt; =C2=A0 CC =C2=A0 =C2=A0 =C2=A0drivers/staging/android/ion/ion_dummy_dri=
ver.o<br>&gt; =C2=A0 CC =C2=A0 =C2=A0 =C2=A0drivers/staging/android/ion/ion=
_of.o<br>&gt; =C2=A0 LD =C2=A0 =C2=A0 =C2=A0drivers/staging/android/ion/bui=
lt-in.o<br>&gt;<br>&gt; Did you do make allyesconfig first?<br><br>Oops, I =
didn&#39;t. I get the other binaries now. Thanks!<div><br></div><div>Best,<=
/div><div>Gargi<br><div><div>&gt;<br>&gt; julia<br>&gt;<br>&gt;<br>&gt; &gt=
;<br>&gt; &gt; Thanks,<br>&gt; &gt; Gargi<br>&gt; &gt;<br>&gt; &gt; &gt;<br=
>&gt; &gt; &gt; julia<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; &gt;<br>&gt; &gt;=
 &gt; &gt; These are the contents of the Makefile:<br>&gt; &gt; &gt; &gt;<b=
r>&gt; &gt; &gt; &gt; obj-$(CONFIG_ION) +=3D ion.o ion-ioctl.o ion_heap.o \=
<br>&gt; &gt; &gt; &gt; ion_page_pool.o ion_system_heap.o \<br>&gt; &gt; &g=
t; &gt; ion_carveout_heap.o ion_chunk_heap.o ion_cma_heap.o<br>&gt; &gt; &g=
t; &gt; obj-$(CONFIG_ION_TEST) +=3D ion_test.o<br>&gt; &gt; &gt; &gt; ifdef=
 CONFIG_COMPAT<br>&gt; &gt; &gt; &gt; obj-$(CONFIG_ION) +=3D compat_ion.o<b=
r>&gt; &gt; &gt; &gt; endif<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; o=
bj-$(CONFIG_ION_DUMMY) +=3D ion_dummy_driver.o<br>&gt; &gt; &gt; &gt; obj-$=
(CONFIG_ION_TEGRA) +=3D tegra/<br>&gt; &gt; &gt; &gt; obj-$(CONFIG_ION_HISI=
) +=3D hisilicon/<br>&gt; &gt; &gt; &gt; obj-$(CONFIG_ION_OF) +=3D ion_of.o=
<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; How do I generate binaries f=
or the c files in this driver?<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt=
; Thanks,<br>&gt; &gt; &gt; &gt; Gargi<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; =
&gt; &gt; --<br>&gt; &gt; &gt; &gt; You received this message because you a=
re subscribed to the Google<br>&gt; &gt; Groups<br>&gt; &gt; &gt; &gt; &quo=
t;outreachy-kernel&quot; group.<br>&gt; &gt; &gt; &gt; To unsubscribe from =
this group and stop receiving emails from it, send<br>&gt; &gt; an<br>&gt; =
&gt; &gt; &gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@go=
oglegroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>&gt; =
&gt; &gt; &gt; To post to this group, send email to <a href=3D"mailto:outre=
achy-kernel@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>&gt=
; &gt; &gt; &gt; To view this discussion on the webvisithttps://<a href=3D"=
http://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFgoEXYZpf3s9">grou=
ps.google.com/d/msgid/outreachy-kernel/CAOCi2DFgoEXYZpf3s9</a><br>&gt; &gt;=
 -9MV3<br>&gt; &gt; &gt; &gt; 7nvZZn0U3G2SiWcc21nta-VwzgA%<a href=3D"http:/=
/40mail.gmail.com">40mail.gmail.com</a>.<br>&gt; &gt; &gt; &gt; For more op=
tions, visit <a href=3D"https://groups.google.com/d/optout">https://groups.=
google.com/d/optout</a>.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt;<br>&=
gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You received this message because you=
 are subscribed to the Google Groups<br>&gt; &gt; &quot;outreachy-kernel&qu=
ot; group.<br>&gt; &gt; To unsubscribe from this group and stop receiving e=
mails from it, send an<br>&gt; &gt; email to <a href=3D"mailto:outreachy-ke=
rnel%2Bunsubscribe@googlegroups.com">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>&gt; &gt; To post to this group, send email to <a href=3D"m=
ailto:outreachy-kernel@googlegroups.com">outreachy-kernel@googlegroups.com<=
/a>.<br>&gt; &gt; To view this discussion on the web visithttps://<a href=
=3D"http://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DG-br3C9U8ChD%2=
BSV">groups.google.com/d/msgid/outreachy-kernel/CAOCi2DG-br3C9U8ChD%2BSV</a=
><br>&gt; &gt; 045n1auhoUrG29duFr9bLq4DN4v0w%<a href=3D"http://40mail.gmail=
.com">40mail.gmail.com</a>.<br>&gt; &gt; For more options, visit <a href=3D=
"https://groups.google.com/d/optout">https://groups.google.com/d/optout</a>=
.<br>&gt; &gt;<br>&gt; &gt;<br>&gt;<br>&gt; --<br>&gt; You received this me=
ssage because you are subscribed to the Google Groups &quot;outreachy-kerne=
l&quot; group.<br>&gt; To unsubscribe from this group and stop receiving em=
ails from it, send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubsc=
ribe@googlegroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>&gt; To post to this group, send email to <a href=3D"mailto:outreachy-ker=
nel@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>&gt; To vie=
w this discussion on the web visit <a href=3D"https://groups.google.com/d/m=
sgid/outreachy-kernel/alpine.DEB.2.20.1703041117080.2122%40hadrien">https:/=
/groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703041117080.2=
122%40hadrien</a>.<br>&gt; For more options, visit <a href=3D"https://group=
s.google.com/d/optout">https://groups.google.com/d/optout</a>.</div></div><=
/div></div>

--001a113ec7b662f3ce0549e507f9--

