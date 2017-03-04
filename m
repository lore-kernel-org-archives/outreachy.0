X-GM-THRID: 6393575339315953664
X-Received: by 10.46.80.82 with SMTP id v18mr1082557ljd.27.1488622693376;
        Sat, 04 Mar 2017 02:18:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.15 with SMTP id h15ls1163451ljb.14.gmail; Sat, 04 Mar
 2017 02:18:13 -0800 (PST)
X-Received: by 10.46.80.1 with SMTP id e1mr1103903ljb.10.1488622692987;
        Sat, 04 Mar 2017 02:18:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si459736wmh.1.2017.03.04.02.18.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 02:18:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,240,1484002800"; 
   d="scan'208";a="263099139"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2017 11:18:07 +0100
Date: Sat, 4 Mar 2017 11:18:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Building android staging driver
In-Reply-To: <CAOCi2DG-br3C9U8ChD+SV045n1auhoUrG29duFr9bLq4DN4v0w@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703041117080.2122@hadrien>
References: <CAOCi2DFgoEXYZpf3s9-9MV37nvZZn0U3G2SiWcc21nta-VwzgA@mail.gmail.com> <alpine.DEB.2.20.1703041104560.2122@hadrien> <CAOCi2DG-br3C9U8ChD+SV045n1auhoUrG29duFr9bLq4DN4v0w@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-148449308-1488622687=:2122"

--8323329-148449308-1488622687=:2122
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 4 Mar 2017, Gargi Sharma wrote:

> On Sat, Mar 4, 2017 at 3:35 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Sat, 4 Mar 2017, Gargi Sharma wrote:
> >
> > > Hi,
> > >
> > > When running the Makefile for the android ion in staging driver, I get
> the
> > > following error:
> > >
> > > make: *** No targets.  Stop.
> >
> > What command did you run?
> >
> > 
> make drivers/staging/android/ works for me.
> This commands gives me this output:
> CHK     include/config/kernel.release
> CHK     include/generated/uapi/linux/version.h
> CHK     include/generated/utsrelease.h
> CHK     include/generated/timeconst.h
> CHK     include/generated/bounds.h
> CHK     include/generated/asm-offsets.h
> CALL    scripts/checksyscalls.sh
> LD      drivers/staging/android/ion/built-in.o
> LD      drivers/staging/android/built-in.o
>
> The binaries for other c files is not being built for some reason. Hence,
> I tried the Makefile in the ion folder, which gave me the error,
>  make: *** No targets.  Stop.

Strange.  I get:

  CC      drivers/staging/android/ion/ion.o
  CC      drivers/staging/android/ion/ion-ioctl.o
  CC      drivers/staging/android/ion/ion_heap.o
  CC      drivers/staging/android/ion/ion_page_pool.o
  CC      drivers/staging/android/ion/ion_system_heap.o
  CC      drivers/staging/android/ion/ion_carveout_heap.o
  CC      drivers/staging/android/ion/ion_chunk_heap.o
  CC      drivers/staging/android/ion/ion_cma_heap.o
  CC      drivers/staging/android/ion/ion_test.o
  CC      drivers/staging/android/ion/compat_ion.o
  CC      drivers/staging/android/ion/ion_dummy_driver.o
  CC      drivers/staging/android/ion/ion_of.o
  LD      drivers/staging/android/ion/built-in.o

Did you do make allyesconfig first?

julia


>
> Thanks,
> Gargi
>
> >
> > julia
> >
> > >
> > > These are the contents of the Makefile:
> > >
> > > obj-$(CONFIG_ION) += ion.o ion-ioctl.o ion_heap.o \
> > > ion_page_pool.o ion_system_heap.o \
> > > ion_carveout_heap.o ion_chunk_heap.o ion_cma_heap.o
> > > obj-$(CONFIG_ION_TEST) += ion_test.o
> > > ifdef CONFIG_COMPAT
> > > obj-$(CONFIG_ION) += compat_ion.o
> > > endif
> > >
> > > obj-$(CONFIG_ION_DUMMY) += ion_dummy_driver.o
> > > obj-$(CONFIG_ION_TEGRA) += tegra/
> > > obj-$(CONFIG_ION_HISI) += hisilicon/
> > > obj-$(CONFIG_ION_OF) += ion_of.o
> > >
> > > How do I generate binaries for the c files in this driver?
> > >
> > > Thanks,
> > > Gargi
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFgoEXYZpf3s9
> -9MV3
> > > 7nvZZn0U3G2SiWcc21nta-VwzgA%40mail.gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> > >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DG-br3C9U8ChD%2BSV
> 045n1auhoUrG29duFr9bLq4DN4v0w%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-148449308-1488622687=:2122--

