X-GM-THRID: 6253602650868154368
X-Received: by 10.129.80.3 with SMTP id e3mr20275672ywb.23.1456030330242;
        Sat, 20 Feb 2016 20:52:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.111.234 with SMTP id il10ls108535igb.21.canary; Sat, 20 Feb
 2016 20:52:09 -0800 (PST)
X-Received: by 10.66.220.67 with SMTP id pu3mr20769244pac.19.1456030329954;
        Sat, 20 Feb 2016 20:52:09 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id 79si2447134pft.0.2016.02.20.20.52.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 20:52:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id e127so73988953pfe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 20:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jbYE2W7ebx6klrq4shLYOPF4ZAnQOtTNYTNmpH5WvpQ=;
        b=S/Z0Zbev6B6hCv5hEaxWmDMmDWXzXHFHVPvKwEufiYWfzskGixxr/HKEC4lZEmmmNe
         4DPNBl1VhVqSem0Q86gi9wrAZNa9vSzcq4A6+0932SeMOusDJs0OnZ4TW9Yc7nife2Xb
         cXvHswjOboHShZLjGn2VxEonMOuDnnRLAoPN1WNjUEgZ74pl23q2DuHVhL4l8ngnruoP
         MeJuwWmk4RPoSPhAF2d+Rc7q8M6m63Ps3w2RDMmtcZwccf280YkHyWSUQP08JwtSMKQk
         Er78KyY5Pdou8Xvgh3p9JKxxxvJPfT/lL8Q2bb7uv0g8bcPAO/VaEO+BhRkyzwR/tO2O
         tHdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=jbYE2W7ebx6klrq4shLYOPF4ZAnQOtTNYTNmpH5WvpQ=;
        b=UDlmUtVOl7zU7IDs0BNpHeXAHsHTF9vV4ozfq2CKqQCOUjdBR6nfLjr084YiZlrVGi
         CDn68tA/QJzJT5srBLEl6i/iG74YjFCowCmVRpDYi9psdygkjaQ7SiAS9zoFwBuNFe1x
         kDcBAJ1eh7hyEM7wPe/OV9aM3g92NzBL4ypon18LBeJfH0CxufL5sq5FxHeFIKO/kpey
         kCIXR/TZtTTn5Fth5qxV2VdMmbtsAjRciO3hwB6995V6/1c/RFJZGzOFcy4LK7LEnRUy
         W6aqj1G6Odf/067lqesVxv4+/I9B052ZaWb/jja1GiwhV1lMPr/zXmmuGerxYTHquszX
         nWpQ==
X-Gm-Message-State: AG10YOQ5+9vzfkGQlwngMzo64jwRv2bKjWdNqXCl+shq0SmSDEBzQGaCOZZyUpiCBym7DQ==
X-Received: by 10.98.32.5 with SMTP id g5mr29237850pfg.74.1456030329853;
        Sat, 20 Feb 2016 20:52:09 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q85sm27597790pfq.81.2016.02.20.20.52.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 20:52:09 -0800 (PST)
Date: Sun, 21 Feb 2016 10:22:41 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/2] staging: rtl8192u: Replace dedicated wq with system_wq
Message-ID: <20160221045241.GA10802@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset removes create_workqueue() usages in rtl8192u.
With conccurency managed workqueues, use of dedicated workqueues can
be replaced with system_wq.

Bhaktipriya Shridhar (2):
  staging: rtl8192u: Use system_wq instead of dedicated priv_wq
  staging: rtl8192u: Use system_wq and replace dedicated wq

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


