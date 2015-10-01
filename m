X-GM-THRID: 6200711161331056640
X-Received: by 10.180.81.165 with SMTP id b5mr636150wiy.1.1443715570334;
        Thu, 01 Oct 2015 09:06:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.161 with SMTP id ez1ls197059wib.12.gmail; Thu, 01 Oct
 2015 09:06:09 -0700 (PDT)
X-Received: by 10.180.105.98 with SMTP id gl2mr637592wib.0.1443715569523;
        Thu, 01 Oct 2015 09:06:09 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id c7si97409wiy.3.2015.10.01.09.06.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 09:06:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id gb1so36713662wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 09:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZXnN76th+ksGn3gR/bAamfqlnxJIdpJouJ/f71imB4A=;
        b=tuPJzkjfmh7l8Kh8sSW/GBTX4YpEOiqQmIHwD9ihSejB5NA06eslC6WStJ8Gfvs1hO
         AzOMv0FJyeUz+zzP2mkQ7zhoVsc6Sz8GUH/yap403HfFBKwTuwgb3W7eNuj7EJcXjubP
         soTF8lBvVomrKERPs/joR/a3D0X+10xjsMiam/ie9TqbTUc5OWbBdQdwuwBJ+fl8sanx
         msO733qD2+ei464yS7lKZ30lb7B2UpzE5sE4IDDCOtvrAGsXSl6z6BHslxKWZcMveugp
         m9I4tzdUx2JnGXAUTXrHoIUfVkvD28PcnAh8/lWEVvz2450UhLdSJs93JJGoekLv5f2K
         V0aA==
X-Received: by 10.180.12.145 with SMTP id y17mr4362629wib.83.1443715569417;
        Thu, 01 Oct 2015 09:06:09 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id mc20sm3874507wic.16.2015.10.01.09.06.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 09:06:08 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/4] Use mutex instead of semaphore
Date: Thu,  1 Oct 2015 18:05:57 +0200
Message-Id: <cover.1443715371.git.ksenija.stanojevic@gmail.com>
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


