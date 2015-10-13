X-GM-THRID: 6205040264708358144
X-Received: by 10.182.252.200 with SMTP id zu8mr27322702obc.30.1444723518265;
        Tue, 13 Oct 2015 01:05:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.71 with SMTP id g7ls1402184igq.21.canary; Tue, 13 Oct
 2015 01:05:18 -0700 (PDT)
X-Received: by 10.50.30.37 with SMTP id p5mr8894452igh.11.1444723518007;
        Tue, 13 Oct 2015 01:05:18 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pe1si150658pac.2.2015.10.13.01.05.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 01:05:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hy16so14092008pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 01:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8z6tjU3yxpuWWi+zDlGTYSLWeElzq08ftIzrCC80C4E=;
        b=UagZHPoAHm9dVyDmKHk3pUsc7C+yKfLm4oPW8x0rz2QktuZJIR7nLgZPWWH4eteOR+
         GEa+67cCtMIZ/etutDReRiMs2BD9cceg3juAsgnGvoFOdwUSCafmKWZTSkoH/8XorHQr
         hcHDPVTA0hNfuNlwfxLpBns26F36203jIZn8ZWXvBiS9l4iaVJo70tY+2Gpi4xtPlJX8
         bqQZ8KeCW2Qpfmn+JNcXnnbRI/Lis1uLclrWpYlwsrpryCyJFkHNWHacCNCN4EYqepCF
         5hyPqsQtrwRBUvOZk9M7BukkxoBkGww1lKHKWIArVD2vJYoRvO9LHzMnCDpo9TBUF1ea
         zOEw==
X-Received: by 10.68.69.40 with SMTP id b8mr39617751pbu.84.1444723517836;
        Tue, 13 Oct 2015 01:05:17 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.82.229])
        by smtp.gmail.com with ESMTPSA id ch3sm2227016pbb.18.2015.10.13.01.05.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 13 Oct 2015 01:05:17 -0700 (PDT)
Date: Tue, 13 Oct 2015 13:35:13 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Remove useless cast on void pointer
Message-ID: <cover.1444723375.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes multiple useless cast on void pointer.

Amitoj Kaur Chawla (3):
  staging: rtl8712: Remove useless cast on void pointer
  staging: rtl8712: Remove useless cast on void pointer
  staging: rtl8712: Remove useless cast on void pointer

 drivers/staging/rtl8712/rtl8712_cmd.c      |   2 +-
 drivers/staging/rtl8712/rtl8712_recv.c     |   9 ++-
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 105 ++++++++++-------------------
 3 files changed, 40 insertions(+), 76 deletions(-)

-- 
1.9.1


