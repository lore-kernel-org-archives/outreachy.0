X-GM-THRID: 6203986156822986752
X-Received: by 10.13.203.76 with SMTP id n73mr16140846ywd.15.1444495738669;
        Sat, 10 Oct 2015 09:48:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.138 with SMTP id i132ls1174212ioi.42.gmail; Sat, 10 Oct
 2015 09:48:58 -0700 (PDT)
X-Received: by 10.50.3.97 with SMTP id b1mr4738296igb.3.1444495738327;
        Sat, 10 Oct 2015 09:48:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id w5si768363pbt.1.2015.10.10.09.48.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 09:48:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hy16so114650378pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 09:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=OS2UkeQkRyZnqVeFDPdAbbQVIoMZT8GRs6kOVkyggDc=;
        b=p+uqzTyPXHS6T0hM2jO6yZOmxdn1x7tjSjlzLmCRkWJkxgqBS6U/ZMHMFQ3ps+mgb8
         /GOQ7Er2dWSvxYN4/0zBRbFsDH2RSZYvE2KHVXAEO7+VJRR8S1qRiwIWtYHvs/rWTVed
         OGNqV68O010ed4SZDeeTjmfWUnGQBF8cRy0YnbSLIIygVUiOUn8x0QXWRUljSIFCF1v4
         bbsnBRNmUsOTY22cX9I0nRZxeEZ/HIFO3O88vL/tUiauYFi09Dmnc5/uBMht6CcSau3I
         ccvqaTS+Hh3beEmXsdKQ8cvwPKq3BryQoffIl2C+EOpYzLabrZBzCAr5DykJJ6K/Ervu
         +atw==
X-Received: by 10.66.90.233 with SMTP id bz9mr7001759pab.14.1444495738203;
        Sat, 10 Oct 2015 09:48:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id kv9sm9127996pab.39.2015.10.10.09.48.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 09:48:57 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 0/3] Remove commented printk
Date: Sat, 10 Oct 2015 22:18:45 +0530
Message-Id: <1444495728-9945-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.56194178.00CC,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove the printk messages which are not
needed.

Changes in v3-
 Removed braces and blank line in patch 3 of the series
Changes in v2-
 Fixed subject line. 

Shraddha Barke (3):
  Staging: rtl8192u: ieee80211: ieee80211_softmac: Remove commented
    printk messages
  Staging: rtl8192u: ieee80211: ieee80211_wx: Remove commented printk
    messages
  Staging: rtl8192u: ieee80211: ieee80211_rx: Remove commented printk
    messages

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c      | 15 +--------------
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c |  3 ---
 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c      |  8 --------
 3 files changed, 1 insertion(+), 25 deletions(-)

-- 
2.1.4


