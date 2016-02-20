X-GM-THRID: 6253357236964294656
X-Received: by 10.50.142.73 with SMTP id ru9mr2060523igb.8.1455974122218;
        Sat, 20 Feb 2016 05:15:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.8.65 with SMTP id p1ls165587iga.4.canary; Sat, 20 Feb 2016
 05:15:21 -0800 (PST)
X-Received: by 10.107.15.143 with SMTP id 15mr19431213iop.15.1455974121929;
        Sat, 20 Feb 2016 05:15:21 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id ui7si2214217pab.0.2016.02.20.05.15.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 05:15:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id e127so66791310pfe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 05:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fH6g9BrMLKR3oxIDuihpafokX199/lDY2i2YwbIWbuY=;
        b=lALNyUhkmh7cgTeVATbiJu3v8tkbrUVzeTQzP5VG3H8gOiJXT6j0+hOEgs6tlhVxe5
         KdXt4v4TQPS0GYcTOo7OpvvTbmQ7boYH4EVswa2Cn/HTFbG5ZkLzZcu/vd/TK0JQ7XSw
         X+PAVtiwurNRJOfNSQ2k/OgTdHl5oWMoKpFgo85juvZYEUCHoNjG70kIqmAc+NmU+MT8
         JCC/dB8s66g4p2Jo7s5v5c32n3+i6Xt8bxDn3GJWeyDDAn85su1iMaOpvrojPyFGHZ34
         dLBQbwALzxavpzlKKasU5yNdYvPXuMOmb7Nus2vNUV30B1fwVsB3rNM2oVxLDUrpSBya
         K3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=fH6g9BrMLKR3oxIDuihpafokX199/lDY2i2YwbIWbuY=;
        b=k+F4Wugsw21/kJM42XBTY5h/Q06l6D9Q/J94lU5TZsBdrxvKNSafWteFfpHEWZgvQm
         dG2Tw0PFzs4gZv85/i1Ww/XeLMtMpAk+hb2MqtINcCrGWA4n/onyRJK5K9NZzFGvuW2l
         Dwhopk2ata+Kaw0otOnSQkgl5HwS1bBknhWc2CZlXMzAmDsFIo+W5Fh7f/rq6enH6kTj
         YBsfI8wpGsLmzhitXBJQLGYK2zMP7dkh1vN2OKJwjYuQJOwdnG7zGypIS02NcB6gHTRr
         6QhoHbRuqfog5gWpNhhWqAu9jdMsGFUImqq39ylc8sCxRqa3LgmpcJy3n2ss5D/apkGR
         QbMQ==
X-Gm-Message-State: AG10YOR/GddJo0rEncLpriRCbr0zoSEO0fqdJ8ujP3Gc/+0AXT05w4C8dwKe631p8FPvYg==
X-Received: by 10.98.31.21 with SMTP id f21mr24707624pff.134.1455974121810;
        Sat, 20 Feb 2016 05:15:21 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id bx1sm24807538pab.33.2016.02.20.05.15.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 05:15:21 -0800 (PST)
Date: Sat, 20 Feb 2016 18:45:52 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: rtl8192u: Use system_wq
Message-ID: <20160220131552.GA3543@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)


This patchset removes create_workqueue() usages in rtl8192u.
With conccurency managed workqueues, use of dedicated workqueues can
be replaced with system_wq.

Bhaktipriya Shridhar (2):
  staging: rtl8192u: Use system_wq
  staging: rtl8192u: Use system_wq

 drivers/staging/rtl8192u/ieee80211/ieee80211.h      |  1 -
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c  | 21 +++++++++++----------
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c       |  2 +-
 drivers/staging/rtl8192u/r8192U.h                   |  1 -
 drivers/staging/rtl8192u/r8192U_core.c              | 17 ++++++++---------
 drivers/staging/rtl8192u/r8192U_dm.c                |  6 +++---
 drivers/staging/rtl8192u/r819xU_phy.c               |  2 +-
 7 files changed, 24 insertions(+), 26 deletions(-)

--
2.1.4


