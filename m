X-GM-THRID: 6201947249365221376
X-Received: by 10.107.134.90 with SMTP id i87mr4499887iod.31.1444410617495;
        Fri, 09 Oct 2015 10:10:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.178.175 with SMTP id cz15ls84339igc.0.gmail; Fri, 09 Oct
 2015 10:10:17 -0700 (PDT)
X-Received: by 10.68.231.66 with SMTP id te2mr11812170pbc.5.1444410617050;
        Fri, 09 Oct 2015 10:10:17 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id zg1si230922pbb.2.2015.10.09.10.10.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 10:10:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hy16so91546020pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 10:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=2IjDWX1inYpgRZo0OiPk0uvokXbcEFHO9PSgSmKDBvc=;
        b=Rswx2ocW+BKWYSgPuaLTzLBPwHlErGKxzX7rNOuJERVjaFYp6FbHcCmHimAE/HqLWr
         ps2TvtwHATY83NVNX/XenkvI5iqFhMTl8GA/H6uDRoyv5UE7Vg4k+BuUBMu0LlySbuik
         tFFrmPBd5PQYd7iqWrqZMFc0+2vJzETQrQE9g6X8Jkz7qjz828tymelHIQ3fhhW/mml9
         sHj/qTTNpZAK08P/S5XZihb+AfG7fxSG+LKh8r2ZGKg1WRdwEFFbHBddvNvfHW8uK78A
         EBVpzaoGuewtFd3pBw0FwNuidMQMxKKKQOwU/XSHeNGhF1mReLDDq7ODL7SFoQO1SAD5
         ZTDw==
X-Received: by 10.66.165.106 with SMTP id yx10mr16657515pab.102.1444410616966;
        Fri, 09 Oct 2015 10:10:16 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sn9sm3509950pac.16.2015.10.09.10.10.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 10:10:16 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] Declare local functions as static
Date: Fri,  9 Oct 2015 22:40:05 +0530
Message-Id: <1444410607-5068-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5617F4F7.00B3,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare functions as static since they are used only in a particular file. 

Shraddha Barke (2):
  Staging: lustre: obdclass: lu_object: Declare local functions as
    static
  Staging: lustre: obdclass: lprocfs_status: Declare local functions as
    static

 drivers/staging/lustre/lustre/include/lprocfs_status.h  |  5 -----
 drivers/staging/lustre/lustre/include/lu_object.h       |  5 -----
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 10 ++++------
 drivers/staging/lustre/lustre/obdclass/lu_object.c      | 11 +++++------
 4 files changed, 9 insertions(+), 22 deletions(-)

-- 
2.1.4


