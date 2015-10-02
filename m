X-GM-THRID: 6201143102107811840
X-Received: by 10.180.160.146 with SMTP id xk18mr145897wib.3.1443816139896;
        Fri, 02 Oct 2015 13:02:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.76.230 with SMTP id n6ls437564wiw.40.gmail; Fri, 02 Oct
 2015 13:02:19 -0700 (PDT)
X-Received: by 10.180.107.167 with SMTP id hd7mr148579wib.6.1443816139531;
        Fri, 02 Oct 2015 13:02:19 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id o5si17953wib.0.2015.10.02.13.02.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:02:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id lk2so48178638wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 13:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZXnN76th+ksGn3gR/bAamfqlnxJIdpJouJ/f71imB4A=;
        b=togo1qeDnFNVMqUcOgEnF1/JYCOj+/jZCN8E8ur9gVjFPoUcTVXm4FPJAqNCevcNCw
         A5uxW43o0QmzBv99rX+6HF5hI4rnxYK+XDjRoBVDIaiQGkxfvr4Id1roWMQ5xk1AUOxg
         iyBmtsdHD/K5BTCnb2uNQ0xaiF0HbrvYmtnw3eSCdwuoKQAdGWJp2VVlkdzGdBOD/t1z
         G9+jfChDsmHLfn4DKhUTzn3icuMpOJNjORnZ7tsV6OJwCtwPVWkMI6aqCbwjNF6M52Pg
         xbm5ZMc2Z2XyYMK9f5DUVD6ktuG1o/KkLgs6FN5Z73cflS14UFO1DddJ14xIdmU3FrNm
         iKxQ==
X-Received: by 10.194.8.227 with SMTP id u3mr18097593wja.38.1443816139429;
        Fri, 02 Oct 2015 13:02:19 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id uq5sm12929975wjc.3.2015.10.02.13.02.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 13:02:18 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 0/4] Use mutex insted of semaphore
Date: Fri,  2 Oct 2015 22:02:10 +0200
Message-Id: <cover.1443815181.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset replaces binary semaphore with mutex in comedi drivers.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (4):
  Staging: comedi: Use mutex instead of semaphore
  Staging: comedi: Use mutex instead of semaphore
  Staging: comedi: Use mutex instead of semaphore
  Staging: comedi: Use mutex instead of semaphore

 drivers/staging/comedi/drivers/ni_usb6501.c  | 16 +++----
 drivers/staging/comedi/drivers/usbdux.c      | 64 ++++++++++++-------------
 drivers/staging/comedi/drivers/usbduxfast.c  | 36 +++++++-------
 drivers/staging/comedi/drivers/usbduxsigma.c | 70 ++++++++++++++--------------
 4 files changed, 93 insertions(+), 93 deletions(-)

-- 
1.9.1


