X-GM-THRID: 6393575339315953664
X-Received: by 10.46.76.17 with SMTP id z17mr1090622lja.13.1488621957202;
        Sat, 04 Mar 2017 02:05:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.15 with SMTP id h15ls1161512ljb.14.gmail; Sat, 04 Mar
 2017 02:05:55 -0800 (PST)
X-Received: by 10.46.81.66 with SMTP id b2mr1081249lje.3.1488621955731;
        Sat, 04 Mar 2017 02:05:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v70si448010wmf.0.2017.03.04.02.05.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 02:05:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,240,1484002800"; 
   d="scan'208";a="215547061"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2017 11:05:55 +0100
Date: Sat, 4 Mar 2017 11:05:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Building android staging driver
In-Reply-To: <CAOCi2DFgoEXYZpf3s9-9MV37nvZZn0U3G2SiWcc21nta-VwzgA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703041104560.2122@hadrien>
References: <CAOCi2DFgoEXYZpf3s9-9MV37nvZZn0U3G2SiWcc21nta-VwzgA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1168260160-1488621955=:2122"

--8323329-1168260160-1488621955=:2122
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 4 Mar 2017, Gargi Sharma wrote:

> Hi,
>
> When running the Makefile for the android ion in staging driver, I get the
> following error:
>
> make: *** No targets.  Stop.

What command did you run?

make drivers/staging/android/ works for me.

julia

>
> These are the contents of the Makefile:
>
> obj-$(CONFIG_ION) += ion.o ion-ioctl.o ion_heap.o \
> ion_page_pool.o ion_system_heap.o \
> ion_carveout_heap.o ion_chunk_heap.o ion_cma_heap.o
> obj-$(CONFIG_ION_TEST) += ion_test.o
> ifdef CONFIG_COMPAT
> obj-$(CONFIG_ION) += compat_ion.o
> endif
>
> obj-$(CONFIG_ION_DUMMY) += ion_dummy_driver.o
> obj-$(CONFIG_ION_TEGRA) += tegra/
> obj-$(CONFIG_ION_HISI) += hisilicon/
> obj-$(CONFIG_ION_OF) += ion_of.o
>
> How do I generate binaries for the c files in this driver?
>
> Thanks,
> Gargi
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFgoEXYZpf3s9-9MV3
> 7nvZZn0U3G2SiWcc21nta-VwzgA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1168260160-1488621955=:2122--

