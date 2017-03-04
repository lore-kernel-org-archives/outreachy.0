X-GM-THRID: 6393575339315953664
X-Received: by 10.107.3.10 with SMTP id 10mr2532736iod.11.1488622426465;
        Sat, 04 Mar 2017 02:13:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls11160799otj.6.gmail; Sat, 04 Mar
 2017 02:13:46 -0800 (PST)
X-Received: by 10.157.33.117 with SMTP id l50mr2831457otd.57.1488622426096;
        Sat, 04 Mar 2017 02:13:46 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id d20si868876itc.1.2017.03.04.02.13.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 02:13:46 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x243.google.com with SMTP id f103so9135492ioi.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 02:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=sVeLADZxFq+cBnhJgOh3RtETjyXejcm8ewHD5ktyobI=;
        b=rqae4/iE+c70sM6doSQKjFVmtL69cpTHWo0VU3sp/6GC3oAE5H1UDe5hfpF1mZf8+C
         kSD7eFaYbESmR350GnXSWkd955TbzJMlpcoTZ22n+e0a3Nrlc2Z5J1nqRp0Ib5/jQeSi
         o/lA+6wDBoXo7ZXeNMqUg822vNRB9qz3RHrdr3jGFor24MMVAcZIpwLlJhY6QK1pTaLn
         EPvRrr67d8D9JSz5Cq68RAcQZ90nfRIOZIEPgOEui5+UOWWouVaKGW63pmNHIf4eUosU
         hX1c1WejSZfRvr+MJGB5FmN0M0D8c3W0SBlOIhk5YFBLbHdpcwKvMXsDKigSYhmVTKsT
         h8Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=sVeLADZxFq+cBnhJgOh3RtETjyXejcm8ewHD5ktyobI=;
        b=nw4o4VgBwVbY7P5O4B0fL5PxjOOwDlq/e0xchZXVyz5yB2JZsL5ue8zeUtOis1PZ3A
         eHwxjFs1rUr0zipLjtnpQr7vhR1xxLWxaBPav2y8URULRdQnzB0e4ER8hIuyweXiAlB0
         7R5HWCKA0uQO7GN9hu7dFex+vwYscCSV+HjmNPzdH3HH170kHLfrLA87x6yD1c4ZHc+F
         xOjAbb7ta/X27prDJGoB5ofPu3LC70M35g/mxOW+EH0UkN0As5cXFRIMW3hVXxXqPLNN
         1uHFw2vGlPdAZeIauabBq1Arr+oPB0aRefeExK3pQuH+dpngWXddGazhWfWfas7VO2cB
         RcrQ==
X-Gm-Message-State: AMke39nx0lcOZdhAmcrEZebD8ycN/pQLwJGus30Qs3QBAEE2iwi/9720tFGAL2xYRQwvK6xFxHsQpmEgpWNe5w==
X-Received: by 10.107.8.90 with SMTP id 87mr7463421ioi.111.1488622425856; Sat,
 04 Mar 2017 02:13:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sat, 4 Mar 2017 02:13:15 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703041104560.2122@hadrien>
References: <CAOCi2DFgoEXYZpf3s9-9MV37nvZZn0U3G2SiWcc21nta-VwzgA@mail.gmail.com>
 <alpine.DEB.2.20.1703041104560.2122@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sat, 4 Mar 2017 15:43:15 +0530
Message-ID: <CAOCi2DG-br3C9U8ChD+SV045n1auhoUrG29duFr9bLq4DN4v0w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Building android staging driver
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113f3bb8e5e28b0549e4ead5

--001a113f3bb8e5e28b0549e4ead5
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 4, 2017 at 3:35 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Sat, 4 Mar 2017, Gargi Sharma wrote:
>
> > Hi,
> >
> > When running the Makefile for the android ion in staging driver, I get
the
> > following error:
> >
> > make: *** No targets.  Stop.
>
> What command did you run?
>
>

make drivers/staging/android/ works for me.

This commands gives me this output:
CHK     include/config/kernel.release
CHK     include/generated/uapi/linux/version.h
CHK     include/generated/utsrelease.h
CHK     include/generated/timeconst.h
CHK     include/generated/bounds.h
CHK     include/generated/asm-offsets.h
CALL    scripts/checksyscalls.sh
LD      drivers/staging/android/ion/built-in.o
LD      drivers/staging/android/built-in.o

The binaries for other c files is not being built for some reason. Hence,
I tried the Makefile in the ion folder, which gave me the error,
 make: *** No targets.  Stop.

Thanks,
Gargi

>
> julia
>
> >
> > These are the contents of the Makefile:
> >
> > obj-$(CONFIG_ION) += ion.o ion-ioctl.o ion_heap.o \
> > ion_page_pool.o ion_system_heap.o \
> > ion_carveout_heap.o ion_chunk_heap.o ion_cma_heap.o
> > obj-$(CONFIG_ION_TEST) += ion_test.o
> > ifdef CONFIG_COMPAT
> > obj-$(CONFIG_ION) += compat_ion.o
> > endif
> >
> > obj-$(CONFIG_ION_DUMMY) += ion_dummy_driver.o
> > obj-$(CONFIG_ION_TEGRA) += tegra/
> > obj-$(CONFIG_ION_HISI) += hisilicon/
> > obj-$(CONFIG_ION_OF) += ion_of.o
> >
> > How do I generate binaries for the c files in this driver?
> >
> > Thanks,
> > Gargi
> >
> > --
> > You received this message because you are subscribed to the Google
Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.
com/d/msgid/outreachy-kernel/CAOCi2DFgoEXYZpf3s9-9MV3
> > 7nvZZn0U3G2SiWcc21nta-VwzgA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--001a113f3bb8e5e28b0549e4ead5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sat, Mar 4, 2017 at 3:35 PM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt; wrote:<br>&gt;<br>&gt;<br>&gt;<br>&gt; On Sat, 4 Mar 2017, Gargi Sharm=
a wrote:<br>&gt;<br>&gt; &gt; Hi,<br>&gt; &gt;<br>&gt; &gt; When running th=
e Makefile for the android ion in staging driver, I get the<br>&gt; &gt; fo=
llowing error:<br>&gt; &gt;<br>&gt; &gt; make: *** No targets.=C2=A0 Stop.<=
br>&gt;<br>&gt; What command did you run?<br>&gt;<br>&gt;=C2=A0<div><br></d=
iv><div>make drivers/staging/android/ works for me.<div><br></div><div>This=
 commands gives me this output:</div><div><div>CHK =C2=A0 =C2=A0 include/co=
nfig/kernel.release</div><div>CHK =C2=A0 =C2=A0 include/generated/uapi/linu=
x/<wbr>version.h</div><div>CHK =C2=A0 =C2=A0 include/generated/utsrelease.h=
</div><div>CHK =C2=A0 =C2=A0 include/generated/timeconst.h</div><div>CHK =
=C2=A0 =C2=A0 include/generated/bounds.h</div><div>CHK =C2=A0 =C2=A0 includ=
e/generated/asm-offsets.<wbr>h</div><div>CALL =C2=A0 =C2=A0scripts/checksys=
calls.sh</div><div>LD =C2=A0 =C2=A0 =C2=A0drivers/staging/android/ion/<wbr>=
built-in.o</div><div>LD =C2=A0 =C2=A0 =C2=A0drivers/staging/android/<wbr>bu=
ilt-in.o</div></div><div><br></div><div>The binaries for other c files is n=
ot being built for some reason. Hence,</div><div>I tried the Makefile in th=
e ion folder, which gave me the error,</div><div>=C2=A0make: *** No targets=
.=C2=A0 Stop.<br></div><div><br></div><div>Thanks,</div><div>Gargi</div><di=
v><br></div><div>&gt;<br>&gt; julia<br>&gt;<br>&gt; &gt;<br>&gt; &gt; These=
 are the contents of the Makefile:<br>&gt; &gt;<br>&gt; &gt; obj-$(CONFIG_I=
ON) +=3D ion.o ion-ioctl.o ion_heap.o \<br>&gt; &gt; ion_page_pool.o ion_sy=
stem_heap.o \<br>&gt; &gt; ion_carveout_heap.o ion_chunk_heap.o ion_cma_hea=
p.o<br>&gt; &gt; obj-$(CONFIG_ION_TEST) +=3D ion_test.o<br>&gt; &gt; ifdef =
CONFIG_COMPAT<br>&gt; &gt; obj-$(CONFIG_ION) +=3D compat_ion.o<br>&gt; &gt;=
 endif<br>&gt; &gt;<br>&gt; &gt; obj-$(CONFIG_ION_DUMMY) +=3D ion_dummy_dri=
ver.o<br>&gt; &gt; obj-$(CONFIG_ION_TEGRA) +=3D tegra/<br>&gt; &gt; obj-$(C=
ONFIG_ION_HISI) +=3D hisilicon/<br>&gt; &gt; obj-$(CONFIG_ION_OF) +=3D ion_=
of.o<br>&gt; &gt;<br>&gt; &gt; How do I generate binaries for the c files i=
n this driver?<br>&gt; &gt;<br>&gt; &gt; Thanks,<br>&gt; &gt; Gargi<br>&gt;=
 &gt;<br>&gt; &gt; --<br>&gt; &gt; You received this message because you ar=
e subscribed to the Google Groups<br>&gt; &gt; &quot;outreachy-kernel&quot;=
 group.<br>&gt; &gt; To unsubscribe from this group and stop receiving emai=
ls from it, send an<br>&gt; &gt; email to <a href=3D"mailto:outreachy-kerne=
l%2Bunsubscribe@googlegroups.com" target=3D"_blank">outreachy-kernel+unsubs=
cribe@<wbr>googlegroups.com</a>.<br>&gt; &gt; To post to this group, send e=
mail to <a href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_bla=
nk">outreachy-kernel@googlegroups.<wbr>com</a>.<br>&gt; &gt; To view this d=
iscussion on the web visithttps://<a href=3D"http://groups.google.com/d/msg=
id/outreachy-kernel/CAOCi2DFgoEXYZpf3s9-9MV3" target=3D"_blank">groups.goog=
le.<wbr>com/d/msgid/outreachy-kernel/<wbr>CAOCi2DFgoEXYZpf3s9-9MV3</a><br>&=
gt; &gt; 7nvZZn0U3G2SiWcc21nta-VwzgA%<a href=3D"http://40mail.gmail.com" ta=
rget=3D"_blank">40<wbr>mail.gmail.com</a>.<br>&gt; &gt; For more options, v=
isit <a href=3D"https://groups.google.com/d/optout" target=3D"_blank">https=
://groups.google.com/d/<wbr>optout</a>.<br>&gt; &gt;<br>&gt; &gt;</div></di=
v></div>

--001a113f3bb8e5e28b0549e4ead5--

