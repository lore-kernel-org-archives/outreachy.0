X-GM-THRID: 6253356994381479936
X-Received: by 10.98.89.132 with SMTP id k4mr17379189pfj.4.1455973133202;
        Sat, 20 Feb 2016 04:58:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.8.65 with SMTP id p1ls163651iga.4.canary; Sat, 20 Feb 2016
 04:58:52 -0800 (PST)
X-Received: by 10.107.15.143 with SMTP id 15mr19345458iop.15.1455973132838;
        Sat, 20 Feb 2016 04:58:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id yd9si2174841pab.1.2016.02.20.04.58.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 04:58:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id yy13so65389516pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 04:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=FNshAJgACmxd5OstfCvwTIdBeVjAy8jNUozjnkKWNFY=;
        b=PDpAEpK9geNFfxbS2RQ5GwMv5Y6frxdnS1pfcCKjCPySn8jndWtkwtQYjiBxVXk3Qf
         wgTQ+uGfXVK1fsDvOzUvNRvesNTtwPuqJ91EC/NYNAP1V41Saxy547DX+2LFbS98gQgA
         6e7MNY4gMZQ4mF86OeNLwf0AHHxLyjJxtnTN3MqAE3OoV7+0bFKC6yt0OZ44h2ffrxZC
         cWTClAGwP3LqDR9Sa7eY/+U0liAmA9/Dv6Ps9xLCGK+T7MiIIOAklB4eMnpB/oA64h9f
         4MKuOSwQgqBst6Adt1s6Zxlw4A5R90sOHZObCvpYO4vuKCy2iYX+nL71KF41zKalQRgz
         aVwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=FNshAJgACmxd5OstfCvwTIdBeVjAy8jNUozjnkKWNFY=;
        b=HH9PmJJsdpGrV3fuovs/yZPlyaaJlNGIavdwHThycSTFUgI+s8tc8ngGzvYGR7TrhW
         Y25PmFbS2/OQP6sXxI587cpE7+pXY5KbduxFvGot62Z9DKnDjes86DoW2dC84xqLwhOv
         zW6CfKAv4nIaH3SucDPMZCl0sXbMQrXHc/eMIdigtaokjE2YZeCkqknwEWHWRF4ANKX0
         gEjWnyqz9J1mysaHdx5bwaU9jVIJ9E2X9YDzUdZWIpHrf+2M0Af/EHlvGKJLUFC/G6/j
         ZCUGABL3ilXVDxEQbGJc7XZBOm6G1Qsjj/tpqkyr6uPc5PUnO46Is6nG8ZI7F7rsO00J
         LHag==
X-Gm-Message-State: AG10YOR2DVSyCWUA8IgP2wk7EgCk6j/+zHA/3S18vKILT2uwXcYL9YM9EZkTH5o+mfxzEg==
X-Received: by 10.66.145.194 with SMTP id sw2mr24990945pab.69.1455973132682;
        Sat, 20 Feb 2016 04:58:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x13sm24507233pfa.72.2016.02.20.04.58.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 04:58:52 -0800 (PST)
Date: Sat, 20 Feb 2016 18:29:24 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH 0/2] Use system_wq
Message-ID: <20160220125924.GA3389@Karyakshetra>
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


