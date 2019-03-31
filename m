X-GM-THRID: 6674542859228545024
X-Received: by 2002:a6b:6e0a:: with SMTP id d10mr6529926ioh.24.1554038110485;
        Sun, 31 Mar 2019 06:15:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:3553:: with SMTP id k80ls2033262ita.4.gmail; Sun, 31 Mar
 2019 06:15:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxyX0hoke4B783DVFQO9rRE+ttBrz9DBteExRhkHbFhz7garFUfTeMVlUYD3lzB3hzYySQA
X-Received: by 2002:a24:3ccb:: with SMTP id m194mr5281415ita.40.1554038109357;
        Sun, 31 Mar 2019 06:15:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554038109; cv=none;
        d=google.com; s=arc-20160816;
        b=vnSyhliM4z9l0amwp8HA++vOApNl91iiGt3TXImDv9psbMpp4WrWXneYRoFU3D3/yn
         8HjiEB7vfc2CvROhgBckL4n2xXuisr49H3NetXZat1CyXfOjffoJ7ITQRsCPnx/GBGPX
         J/cL4gjQBnquJerSnND7sWqchVxLWk7KZp1xwylraNWAoYSWVN4O0jWEh/hm9uyaIFqp
         4zPd8x2TZXYyMIjd5hR+dxr2a3Wsqf22hSr0Ej2GzZeoQTGeWdcD7OylgVdslogqshql
         NE9Q4Ae4rOez6rwB4e8NM6so7HDahmPzJBjkM9/JrxqPhr/pFXiwijmbl8JihG9SbGWA
         mL7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=aq5iouM1jE6+yX4YDz9yUhlwaeqXE0eKGzOkFKwUIuM=;
        b=CnGW03fn1bYTBuNhJuUwYqEuc+aaDVsIhAmJAXoNJlok0GJzZhJLP7xTcFoqcfv8GK
         yFEcr1hHNulHUpAqGxUZsHkpdElfaNvyDIrRSj0xy2RYqS5lUIKfptKMOlkgSvinGg/o
         ALrWROA2cuC66csymv26Ho+dzjuZoRWMvLsSUxCoojaKnaTXLLl4nskj5wjQvGZ85c2S
         yr5Mp/RMoYCqdYabjlleEK9asF8uGJ9SKMzz2unai3TknoR9Gg5O3zqOCbLaunuhsPlV
         X+LI+ZaeTN/z3XLEKu4H3n//Om5oa3VG6IRX5Jn8xzoJaEOwgpuZbmAV2GkSZRzyWsOa
         x4ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jxFmSl9r;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id 65si965443itx.1.2019.03.31.06.15.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:15:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jxFmSl9r;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x634.google.com with SMTP id y6so3140417pll.13
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 06:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=aq5iouM1jE6+yX4YDz9yUhlwaeqXE0eKGzOkFKwUIuM=;
        b=jxFmSl9rzjqSWGYr1vxvdCWPAG/PtEtpp4TMliS1C23Uzpn2g22s6Qp9oka+r7mPo6
         i7v3+zp171tCw4O6+TpnHmMGnU0NQA+KTVO1O0Wqm0Uo0GnkRz1c5cHKUNbzRcotEOMQ
         xnd4CuLyk+ww6t7rKpFB1k+hf7xbMv86N5xXOtn0DawEbjvkwYbgDpm+tndFQJxA9piG
         rRD9RlJ0sc4DxSXiPww381yvO7Y3j8luKxuKH9n9I1WJmJdmWGxRRTsnFJP/8SMiLFor
         VKZJFwMqJ4r18mby/x3RFbVHaUfolsYLZ+iNtI0yCBsz9sQEal0QL+xM6ktBDKMEaH9S
         rQdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=aq5iouM1jE6+yX4YDz9yUhlwaeqXE0eKGzOkFKwUIuM=;
        b=Q6TcpWWFZuQCtdat4BDGg/VO25TrIWp+Tu1bIGrZ5MsPO0UsgVLFJZuj5oKkEaYw98
         elDgjBw05S9IfZlGS9NIvevo1zN+MobPui/YAjHCYgXnAK7PFHdwMS9/iU8eFz+gPccD
         2IYnXMvD9i5cIvQ6GUtXnK1iNZcBh/Vz0EXw1SH2DyUxs4vyMYCl8gLtr9W47+qml2L6
         oyad7n8oGqnfwG+/E0uRs+BG+nsl7I/eYsWfFaw+mq52dLUvOhuubu35LrUOTB7fUQvY
         BN9rlb+IV9CkzEKmzDttAQMaFtHvUNF5jdBFVvCFu3L2X0sjAEMROjZ2QOZAxe9OFxer
         vl+w==
X-Gm-Message-State: APjAAAXEmDDtWesfB+j7xc7WZxOXoWLLhGIcd33Dyk7uYG2tBceVTXyO
	7wpgVv5Mtu2MCcxBAkv5stvOvRWu
X-Received: by 2002:a17:902:e3:: with SMTP id a90mr57490907pla.45.1554038108425;
        Sun, 31 Mar 2019 06:15:08 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id v6sm10085946pgv.92.2019.03.31.06.15.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 06:15:07 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 0/7] staging: rtlwifi: Compress two lines
Date: Sun, 31 Mar 2019 18:44:46 +0530
Message-Id: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

This patchset:
	-Compresses two lines into one line that is to return a value sometimes it need not be stored in temporary return variable and removes unnecessary variables.

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


