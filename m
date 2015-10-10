X-GM-THRID: 6203980538126008320
X-Received: by 10.129.78.205 with SMTP id c196mr14898115ywb.21.1444476781035;
        Sat, 10 Oct 2015 04:33:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.74 with SMTP id p10ls692932igi.3.gmail; Sat, 10 Oct 2015
 04:33:00 -0700 (PDT)
X-Received: by 10.107.157.82 with SMTP id g79mr7770580ioe.29.1444476780557;
        Sat, 10 Oct 2015 04:33:00 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id wl2si587865pab.1.2015.10.10.04.33.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 04:33:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabve7 with SMTP id ve7so52328867pab.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 04:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=izunS2FNO7ztZ9kmJ9/O6+qaM8opfsH03wHAen0Tupw=;
        b=WLngEwctT3RPHf1f7YckR99M5TEJs+FVQDYv+8KzduyiCKc7ukxf420rGHl/F1/ocA
         JrXxFa22aWaRmcyx1wFVP7Qjzg5z5w+DkjJiremD6HIT4ah8iE0RCWzH5u1wWXjxZZ2e
         6yX+/PCHE9duOxEDiMuVBym+3rHCyRtfXBEvYFnPWJtQjFzpx2h3sW4BKBdQ9oGA9wAg
         5n/0tL1k6g0vkn3HF4HX9ip20XNdxPKLA2TBteiZrL7WSdOIw0ucdSoKK56vyVFBGVF8
         8+6betGgm5GXtXfQW6f4+MDwRBGI/HHrssTF4LodZrHZJcOk13xW7KzhPi2Z91i6dm7K
         qdeA==
X-Received: by 10.66.253.199 with SMTP id ac7mr21686125pad.56.1444476780429;
        Sat, 10 Oct 2015 04:33:00 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id gi4sm7787792pbc.4.2015.10.10.04.32.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 04:32:59 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/3] Remove uncommented printk
Date: Sat, 10 Oct 2015 17:02:47 +0530
Message-Id: <1444476770-14129-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5618F76B.00E7,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove the printk messages which are not
needed.

Shraddha Barke (3):
  Staging: rtl8192u: ieee80211: Remove commented printk
  Staging: rtl8192u: ieee80211: Remove commented printk messages
  Staging: rtl8192u: ieee80211: Remove commented printk messages

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c      | 10 ----------
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c |  3 ---
 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c      |  8 --------
 3 files changed, 21 deletions(-)

-- 
2.1.4


