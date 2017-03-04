X-GM-THRID: 6393575339315953664
X-Received: by 10.157.39.196 with SMTP id c62mr2605851otb.70.1488620261979;
        Sat, 04 Mar 2017 01:37:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.110 with SMTP id 101ls11590951oti.43.gmail; Sat, 04 Mar
 2017 01:37:41 -0800 (PST)
X-Received: by 10.176.83.201 with SMTP id l9mr1379579uaa.16.1488620261670;
        Sat, 04 Mar 2017 01:37:41 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x232.google.com (mail-it0-x232.google.com. [2607:f8b0:4001:c0b::232])
        by gmr-mx.google.com with ESMTPS id b188si836104ite.3.2017.03.04.01.37.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 01:37:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::232 as permitted sender) client-ip=2607:f8b0:4001:c0b::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::232 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x232.google.com with SMTP id m27so26679166iti.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 01:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=bcY09zLNIn3hhs1nwnt+iN3m9wGErzWNIylJlP+Ne50=;
        b=fvXgFOduUGtFHtGBIOAfc/n8lfZT3zXlHsS7wiawGwUpKNhNXeSsW2FJ1SSBUkCVJM
         wJjm0dG6bDIdGH2RuvN2xb04KqPpCSxW7zb6moiixnKkCyKKrnfEbfaXPwwlZmsSepIc
         PNCtAW3fQT2DkuO4qgtY/gbpeCnaIcWphxacsXe4VF4Xt6aPmQI/TKNlB3DfE+8hb1dU
         6gxWzDiF0PoGTXnY5TQPLKKd2toa7jEAF/FAs53crpU8ssEA5U2pjIM726n5jSl/lxed
         3/pj00k8I96FG0t9BvLFHHr4dGiTI3LKeQ5b9n4MilyNeYWRdeEPxwsU007RDzMdzPOR
         QqwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=bcY09zLNIn3hhs1nwnt+iN3m9wGErzWNIylJlP+Ne50=;
        b=XIz3Im4qjSZ3M/SRklNov/pse94hC9AcN0YCnyD1FZdEYNp8u58K1NmizkYkZEt6Yb
         +FLOeY5ZFnhaba0LK/2ai8X+s+JPbPZlKZ71wHVgan8GwIelphM9PYzSsnr4uz8PThRn
         K2WSexTEWx9MtjBedCPoHdv/SaCSdERA+X4L+6ZEPRV5NQ7UQnsvju93uA6F1hhD/mNm
         XPHO0nhFbJtzSW7/78Vyk67Ga6vwQF/Cclm2FgTyXuBmXjyvecj8e3AyDypSYKvjcyIn
         ef492b3klLunrhUeyH8fa5VTjE/lxZYRNnSp3rqMwl687o2H8fB1UwLPYxXaX7Q87la4
         0GUw==
X-Gm-Message-State: AMke39lQ9v01xLq1memn0IocAdBSX34ism/JIPcCUgnSiFmqGASfWkNpHLInKxbwSdI+xTUPn+8ekFVFZZA4aA==
X-Received: by 10.36.129.133 with SMTP id q127mr7545387itd.89.1488620261353;
 Sat, 04 Mar 2017 01:37:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sat, 4 Mar 2017 01:37:11 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
Date: Sat, 4 Mar 2017 15:07:11 +0530
Message-ID: <CAOCi2DFgoEXYZpf3s9-9MV37nvZZn0U3G2SiWcc21nta-VwzgA@mail.gmail.com>
Subject: Building android staging driver
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=94eb2c08a506e230120549e469a4

--94eb2c08a506e230120549e469a4
Content-Type: text/plain; charset=UTF-8

Hi,

When running the Makefile for the android ion in staging driver, I get the
following error:

make: *** No targets.  Stop.

These are the contents of the Makefile:

obj-$(CONFIG_ION) += ion.o ion-ioctl.o ion_heap.o \
ion_page_pool.o ion_system_heap.o \
ion_carveout_heap.o ion_chunk_heap.o ion_cma_heap.o
obj-$(CONFIG_ION_TEST) += ion_test.o
ifdef CONFIG_COMPAT
obj-$(CONFIG_ION) += compat_ion.o
endif

obj-$(CONFIG_ION_DUMMY) += ion_dummy_driver.o
obj-$(CONFIG_ION_TEGRA) += tegra/
obj-$(CONFIG_ION_HISI) += hisilicon/
obj-$(CONFIG_ION_OF) += ion_of.o

How do I generate binaries for the c files in this driver?

Thanks,
Gargi

--94eb2c08a506e230120549e469a4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>When running the Makefile for the android ion i=
n staging driver, I get the following error:<br><br>make: *** No targets.=
=C2=A0 Stop.<br><br>These are the contents of the Makefile:<br><br>obj-$(CO=
NFIG_ION) +=3D ion.o ion-ioctl.o ion_heap.o \<br>ion_page_pool.o ion_system=
_heap.o \<br>ion_carveout_heap.o ion_chunk_heap.o ion_cma_heap.o<br>obj-$(C=
ONFIG_ION_TEST) +=3D ion_test.o<br>ifdef CONFIG_COMPAT<br>obj-$(CONFIG_ION)=
 +=3D compat_ion.o<br>endif<br><br>obj-$(CONFIG_ION_DUMMY) +=3D ion_dummy_d=
river.o<br>obj-$(CONFIG_ION_TEGRA) +=3D tegra/<br>obj-$(CONFIG_ION_HISI) +=
=3D hisilicon/<br>obj-$(CONFIG_ION_OF) +=3D ion_of.o<br><br>How do I genera=
te binaries for the c files in this driver?<br><br>Thanks,<br>Gargi<br></di=
v>

--94eb2c08a506e230120549e469a4--

