X-GM-THRID: 6203986156822986752
X-Received: by 10.182.227.136 with SMTP id sa8mr5765371obc.0.1444478090014;
        Sat, 10 Oct 2015 04:54:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.137 with SMTP id f9ls901324obe.55.gmail; Sat, 10 Oct
 2015 04:54:49 -0700 (PDT)
X-Received: by 10.182.65.134 with SMTP id x6mr15404617obs.14.1444478089566;
        Sat, 10 Oct 2015 04:54:49 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id zg1si652110pbb.2.2015.10.10.04.54.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 04:54:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id lk4so111088298pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 04:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=kBm7dpyI1oc1fkJVSXWxMIsZgQg5FdyeIHxLqVdOF9w=;
        b=fwAbg4jlTbA+F1mn5UC4FMyap1/IWOs+iqP1ZS1Xs/udwXAuzA7/HMljBJnMzYyQus
         feB3Ry8zAjasSpdNXf0Zema8wf7Ax7qDfq/MmhQ7dZG9OEmg5uPgA/ZIcKw2JV3QZ4vb
         PTkM7V/g//6j9B/qr23zFLjztigYkkMSQ6U2YqUo++wmhrnTX4vev94MG9F7Mw9r9JU/
         NAlEk+Sf/I+x1kbe6ZCdSQ1FVar48hOiXJGlr5jn4j86ctVBPgsK6c/2p1iDtU+e5UDF
         b2WVxl3m5EwhNCGsAUpGf/erdIGNs1XinYYnVADsMA9yoULyGLvrHLxwb3tBqD+AsCar
         Wr5Q==
X-Received: by 10.68.129.6 with SMTP id ns6mr22170988pbb.77.1444478089442;
        Sat, 10 Oct 2015 04:54:49 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ih4sm7870733pbc.28.2015.10.10.04.54.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 04:54:49 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/3] Remove commented printk
Date: Sat, 10 Oct 2015 17:24:37 +0530
Message-Id: <1444478080-3348-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150205.5618FC88.0101,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove the printk messages which are not
needed. 

Changes in v2-
 Fixed subject line.

Shraddha Barke (3):
  Staging: rtl8192u: ieee80211: ieee80211_softmac: Remove commented printk messages
  Staging: rtl8192u: ieee80211: ieee80211_wx: Remove commented printk messages
  Staging: rtl8192u: ieee80211: ieee80211_rx: Remove commented printk messages

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c      | 10 ----------
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c |  3 ---
 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c      |  8 --------
 3 files changed, 21 deletions(-)

-- 
2.1.4


