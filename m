X-GM-THRID: 6203986156822986752
X-Received: by 10.66.246.198 with SMTP id xy6mr18289767pac.36.1444540300960;
        Sat, 10 Oct 2015 22:11:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.100 with SMTP id k91ls2025470qgf.38.gmail; Sat, 10 Oct
 2015 22:11:40 -0700 (PDT)
X-Received: by 10.13.220.4 with SMTP id f4mr17979273ywe.22.1444540300316;
        Sat, 10 Oct 2015 22:11:40 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id uv4si1122759pac.0.2015.10.10.22.11.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 22:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id lk4so124082211pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 22:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=OqKBYWXTY3lfHZUQ5lXRtwxqg09G6OmcuMZDyLH+8mE=;
        b=syY1zIiQZxvh00VXoeP767CG+puL0Pbffm0GqLVFBrpz6SToagqdiuZHpGAv9jjo/X
         QSFTgH5t6lQShLBPrpQ02A0vqGPE0AYxo6JJZlz7x+zbOmBOv0oD8EClfRnY6FzbRh5C
         2KtQXMCFbqOlAX/obIYz9drvr+hDX+PWKznkXCcWyKnTdTwJUj+lA8ywiCIwnzwz9MmY
         hiJriUzl1uKy60ciyQ1N7Dd+QZLZRAmY/POlP/eHzT3PRfgasH5k0xsCFihY3CSEJvVR
         0uGvRFqMiF2hATpy1Y1+7vdF4BzYCE30Z1Jr2vsW7vm07NDnUC0srG07Z2zf1D0jqKD9
         mYNw==
X-Received: by 10.68.107.133 with SMTP id hc5mr26022456pbb.5.1444540300179;
        Sat, 10 Oct 2015 22:11:40 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id k10sm10940309pbq.78.2015.10.10.22.11.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 22:11:39 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 0/3] Remove commented printk
Date: Sun, 11 Oct 2015 10:41:20 +0530
Message-Id: <1444540283-9605-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.5619EF8A.002F,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove the printk messages which are not
needed.

Changes in v4-
 Updated commit message in patch 3 of the series
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


