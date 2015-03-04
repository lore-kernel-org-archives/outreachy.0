X-GM-THRID: 6598140362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,230d94accd1f422f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.31.97 with SMTP id l61mr4523110yha.10.1425475447993;
        Wed, 04 Mar 2015 05:24:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.131 with SMTP id f3ls509696ioi.13.gmail; Wed, 04 Mar
 2015 05:24:07 -0800 (PST)
X-Received: by 10.50.57.47 with SMTP id f15mr6666662igq.1.1425475447670;
        Wed, 04 Mar 2015 05:24:07 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id bo1si522216pbc.0.2015.03.04.05.24.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 05:24:07 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfa1 with SMTP id fa1so27324118pad.3
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 05:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=UQPX0I3XTYFE2Tv5OP9Fssi4VaAD9FraXpZWRIEzaxI=;
        b=uzdvMHudLj8PILkjYAw7DC1eREDn36lbbRPtuczTFX4IYi7tUuhdFP/LVNA4z5ClmK
         fBkJIkM3n1IiM7ToHLL9IJIR8jSbF4alkAeMs+fzV7Dxf6D0HBMacIE/+M2GchP358xe
         7DOYsqqahnwHGR3sKk2AVvs08zwJyWck5S4MZqMtta+IGWkhVPFzKRWh+1O9uUj+EjMF
         qTa3ye2qCFJOwFf5quSa7Rm+tTAvMuE7DbaxI371nCmf/lITlT0c9/ZaUXeSNBZ5g355
         tsqLAGVNkyzn4x6nmbXPoAJIPW+IkPpg9tt70eQBnWbhcIeKcyFiKnyDkhoIAqsIBc8x
         uKHQ==
X-Received: by 10.66.148.196 with SMTP id tu4mr6466254pab.125.1425475447486;
        Wed, 04 Mar 2015 05:24:07 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.168])
        by mx.google.com with ESMTPSA id n5sm4105227pdh.27.2015.03.04.05.24.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 05:24:06 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2 0/5] coccinelle and checkpatch.pl issues
Date: Wed,  4 Mar 2015 18:53:00 +0530
Message-Id: <1425475385-2360-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch-set contains bug-fixes suggested by coccinelle and
checkpatch.pl
The coccinelle script used here is:
@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
-return ret;
Changes since v1:
 1. Reword commit message.
 2. Added the commit into this patch-set
 3. Merged three patches together of same driver.
 4. Reword the commit message.
 5. Merged two patches together of same driver.

Somya Anand (5):
  Staging: rtl8188eu: Remove useless local variable
  Staging: rtl8188eu: Add blank line after declaration
  Staging: rtl8188eu: Remove unneeded return statement
  staging: rtl8188eu: Remove unneeded parentheses
  Staging: rtl8188eu: Remove redundant local variable

 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 114 +++++++++----------------
 1 file changed, 39 insertions(+), 75 deletions(-)

-- 
1.9.1


