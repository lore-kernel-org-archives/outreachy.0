X-GM-THRID: 6207359559095287808
X-Received: by 10.129.85.80 with SMTP id j77mr11370759ywb.31.1445263521285;
        Mon, 19 Oct 2015 07:05:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.164 with SMTP id t36ls880929ioi.34.gmail; Mon, 19 Oct
 2015 07:05:20 -0700 (PDT)
X-Received: by 10.107.27.7 with SMTP id b7mr26625290iob.30.1445263520776;
        Mon, 19 Oct 2015 07:05:20 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id u67si2165263ywf.5.2015.10.19.07.05.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 07:05:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id m9so8918982qge.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 07:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type
         :content-transfer-encoding;
        bh=asyNnKBYa5tW1+DRq9nVUPeTmuv/jU00/VOmpjMnk8E=;
        b=BG/XDmhHM8YUi5sxLoFxGbRSg5uneUmtiehub/YceAiIx18MTR+VvuZlgg36XvbF0y
         vkpX4Z/In5QYvSoVWwjlzppBqD4/LtzNZsgyAe1hjRPc3qM0eEYIH780KQADzS8H/xqc
         mTHoEr43odN8EknmGQDqqbaB/KiAoJLgBZYV6xg9MEBNLWemMTwqMocFTWNseB36LtUK
         aaRnO9pdFP4f4HDKes7kfMwr+SZx6ubbbriw4sgTv2SZqrF0MpLol2a/JuwJT2YaOBQx
         S+tXzCD2Cbxfuo6H7tmK7mvUGiO8SHkIM2OkWL6yU5L2vswJAMTEeoBCZrmbAuR3EkGA
         dEmw==
MIME-Version: 1.0
X-Received: by 10.140.42.136 with SMTP id c8mr35753855qga.64.1445263520548;
 Mon, 19 Oct 2015 07:05:20 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Mon, 19 Oct 2015 07:05:20 -0700 (PDT)
Date: Mon, 19 Oct 2015 19:35:20 +0530
Message-ID: <CA+5yK5FETr5jLSvt=Zk1hr-UsCbc-FOs2XuVvCisS6v_nNm2MA@mail.gmail.com>
Subject: Not able to build test module
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I was working on a patch in staging/media/omap4iss and after making my
changes wanted to build test it.

But I can't find it to make it configurable as a module. This is what
I see when I run
$ make menuconfig command

--- Media staging drivers
  =E2=94=82 =E2=94=82    <M>   Broadcom BCM2048 FM Radio Receiver support
  =E2=94=82 =E2=94=82    <M>   CXD2099AR Common Interface driver
  =E2=94=82 =E2=94=82    <M>   Panasonic MN88472
  =E2=94=82 =E2=94=82    <M>   Panasonic MN88473
  =E2=94=82 =E2=94=82    [*]   Linux Infrared Remote Control IR receiver/tr=
ansmitter drive
  =E2=94=82 =E2=94=82

--=20
Amitoj

