X-GM-THRID: 6674542859228545024
X-Received: by 2002:a6b:e413:: with SMTP id u19mr8740189iog.34.1554043311562;
        Sun, 31 Mar 2019 07:41:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:90d:: with SMTP id 13ls2071196itm.2.canary-gmail; Sun,
 31 Mar 2019 07:41:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzqwyCgjIdUPZtzuB6gVTLXayZ47lwlvxIV58ZtmXieWgI6nfmGYJJiZeeSLr38trXqZHIQ
X-Received: by 2002:a24:434f:: with SMTP id s76mr4856172itb.8.1554043310499;
        Sun, 31 Mar 2019 07:41:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554043310; cv=none;
        d=google.com; s=arc-20160816;
        b=TC2NVR6X6tJmOw/AHCqYOlvEFiBx0QiTmvOmkIpNzHKy3S9E74w8SI5d9XgI2M6mO8
         r29Yj99KprWiw7922KAQKQpHlNnBegho6Ssyd7Dr9pmMa04q+unhSepxPcxoadt0M3U/
         WJflktS4uWo/Xesl4CbZQeZ3h0TYGdvt/Bwc3hbQBqvBCoeBWUNUdB48dy3iGd62q+v8
         59IobmlFclzVHjM2vnnhYDeZ6ZCKRwgV6ek6uP101VbgjU6Rqm01YlLO9gSsU8cMPgsa
         W1i8fZNbjjZqGr3bGo8Ust/cVbHLtjizPxn5XSFBGWOGo5p7F5Xe5Ra6jWgJEoyWL/+f
         RI6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Am1QhnNt3XY6An9GYjqqbz0hrp76omIZ3TMaZc5BxLM=;
        b=VuLK4F/PrQnUSv4SohIlrsF4ItoTrclawT5a6EwUj9GEvdaDIpkzCuGtN7iO2HJQXY
         1a9ea3QTTcYRwO1CDF/kgZWHYBCWKnSFmnuhRBfDuX8sDaPne7Pj2Y70wcRygy/gXeyL
         9gJcGeZAS6sLFEaNePl3LfeWS5bA/cJ2C5hCGvjc5i3UdHsq4FzYdLCRs4Aao3DSe2O3
         gVKrGtWGMzXoAm9PFe/IPAfjkG0HNsZT1QGj3sDl7FVD7Tebsfb4PzKvw8gcX7zkk6/r
         SOPTUABV0NmEGfTeWbVvQzXAzU9xn/u4S/WmWyKTHjOnxyl8B5t1hfwRwOGfBufgWuCx
         n5+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kDGp+N8w;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id f13si341550iok.3.2019.03.31.07.41.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 07:41:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kDGp+N8w;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id q1so3418799pgv.13
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 07:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Am1QhnNt3XY6An9GYjqqbz0hrp76omIZ3TMaZc5BxLM=;
        b=kDGp+N8wkPK2Pku/RuoklyhNlguQJAwvFgDfioNHlwzyo9ML5pdN1eIpBETASjcRIE
         CuSRnWDet4DFO2oKXgzLe2BRx45GDl8jsV4Qogi4cws07P4FBCaKZXCGdYlvvM6rsIJq
         xTC4RORu0FbCuBcTaOJDmFHC3YiHMhgVKaXvwGwuzTtafyDUmg/+XgvmOVcID7PT0G9c
         8CPFJ+9HYPzo5xMggoU3pu/6OBxt03HH4skV5DP92+5jUGWmBnHKSSO29zO3Y4IADClu
         qNIF0g93CGB9CkHBMf1UvDlTho59msmuAPtrgMzxUOr0MP6ak51I6SypqTsd29/mMxu0
         2QxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Am1QhnNt3XY6An9GYjqqbz0hrp76omIZ3TMaZc5BxLM=;
        b=dVBazI9KMujAsgDh/Kq/TC8Sy2QrX4DTTNNwTz7Av0re75HK6E5UjQgLZtS4OZ2vhG
         NU7L/wm5xDaNQeuEM13egtutpDnk0nvFBo8FapojBJypOnIbkQ4fJVVqDGJWelT83N7n
         miDGmVA2KalTp0gMeqXScboc6L2vcShgygImnIKTZY3T0uCaiGBepxGNSCpc2xUgDVXl
         RlHSK32Oh3GxbkOKzH6Sn7V3tYnbjTKGD6f4X0qxLK3khp+Bs2Oms3+aBn/QU6WLPODa
         f/VKKz6SGAftcWyp0v2nFSn0F/YGJ8iGwLUIFGbEXSavui6ZFRhHgFXCgwlx7L5CVU+w
         z44w==
X-Gm-Message-State: APjAAAUvuZDV1KB2dZsWhLa2+Cg+zAmZyrURllOppNafEasZXrcK4BJd
	yPIhj/LbI599w1vue89SbSPRisbr
X-Received: by 2002:a65:51c8:: with SMTP id i8mr5896214pgq.175.1554043309628;
        Sun, 31 Mar 2019 07:41:49 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g67sm12397858pfg.94.2019.03.31.07.41.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 07:41:49 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 0/7] staging: rtlwifi: Compress two lines
Date: Sun, 31 Mar 2019 20:11:27 +0530
Message-Id: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

This patchset:
        -Compresses two lines into one line that is to return a value sometimes it need not be stored in temporary return variable and removes unnecessary variables.

Changes in v2:
	-Subject line for patch number 6 and 7 made different.

Payal Kshirsagar (7):
  staging: rtlwifi: Compress two lines into one line
  staging: rtlwifi: phydm: phydm.c: Compress two lines into one line
  staging: rtlwifi: phydm: phydm_rainfo.c: Compress two lines into one
    line
  staging: rtlwifi: btcoexist: Compress two lines into one line
  staging: rtlwifi: halmac: halmac_88xx: Compress two lines into one
    line
  staging: rtlwifi: halmac: Compress two lines into one line
  staging: rtlwifi: halmac: halmac_api.c: Compress two lines into one
    line

 drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c         |  5 +----
 .../rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c    |  5 +----
 .../rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c     |  5 +----
 drivers/staging/rtlwifi/halmac/halmac_api.c              |  7 ++-----
 drivers/staging/rtlwifi/phydm/phydm.c                    | 16 ++++------------
 drivers/staging/rtlwifi/phydm/phydm_rainfo.c             |  5 +----
 drivers/staging/rtlwifi/rtl8822be/phy.c                  | 12 ++++--------
 7 files changed, 14 insertions(+), 41 deletions(-)

-- 
2.7.4


