X-GM-THRID: 6675276130832875520
X-Received: by 2002:a65:51c1:: with SMTP id i1mr551128pgq.144.1554212866160;
        Tue, 02 Apr 2019 06:47:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:ff54:: with SMTP id s20ls221550pgk.14.gmail; Tue, 02 Apr
 2019 06:47:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy2Wiih6NO8SV8VG/idM6Fp9Sxf6KMyq7Knf55dxVDt4Uh+nOZP/+GcbK8jxzibbtnDWfPi
X-Received: by 2002:a63:591e:: with SMTP id n30mr1062981pgb.55.1554212865224;
        Tue, 02 Apr 2019 06:47:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554212865; cv=none;
        d=google.com; s=arc-20160816;
        b=EVgfG3NX8i5JoVtPcGrYyWeEC5xVhDYFwi560CD0UZfYJkseUeS6hMvR7tblzWgaLu
         Hm/Gl3QsWH+/wT+S8d5BGi9ZNMdRAiCzqCi9WeThYKcs68MEUnBD7Bb6rPUvE00b1NL0
         Ol3M/1jQNUjy+tJGhNRoZDNLFj/LH0y0uAlVeoe4kjtHn5CC78NWh/SdG9DJnpcLMIV2
         LLeDz88iRpJZbgwYneTooc8Q5oXqiE6q5KIXnyQzEP92PZE2PEM6ARMyY2NK1J077J0+
         mJv1gOVrInS6z1aD6+6UtXfc64zxjIoITvBVmtCa6KAcQiggCyhAQ1Q7FC7sWUHDlw02
         myKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=cWcuWXlio33NXTEjM4Sgr9afnHrFpmzUHiADys06aC8=;
        b=KT598cUBYa7K2OegvAhvtv8wYpbKgqG6h9DLph6hwc94sA7OnkIcuSKS3b8kRmwW4v
         1I+oJPnbLAeiFjIXk+jtDUuWDXxMYDm5/PTawiuAIWE3KTSNwlxVmBD9ZDI4oGCHdbDV
         VJPmMyBuLN0xYrX03/0R27852LsTaH+pRS7sR+B9RBXXTvr+UUHc3li61RsRnUD4+BMn
         NkoO8XkMwuZ2ioUOqz9Z/xo1XV/OjGT2zNC9eYiAKH3PcdIvMlONRCq8prtJ6gGZ0PRm
         szDAmW3rn6BT6vMQEDKya3MoNaY3dyb7ABsX43oginqLYCYSQNydsydos2OafSg+PLnX
         bYgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AuL681In;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id g13si777665pfm.1.2019.04.02.06.47.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 06:47:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AuL681In;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id y13so6409770pfm.11
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 06:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cWcuWXlio33NXTEjM4Sgr9afnHrFpmzUHiADys06aC8=;
        b=AuL681In+R8BUd+cAvP7JuZVxKJpEpw6s0Zz6Jf1jpX1qe9vmzadZKAn5jZGIdeo3n
         6wbd1LNBCR6OkmZPcuSaEBX4ks97t91hFnJ6ky+fG1cf9X1NuumMd6ucbPERDbHSutil
         rRkieNd5pA5psX28u6JoZydKZrdRJVx68jwbpfSE2UJMiv1OIyGc2RdTxHRlQvLnYIFI
         8G+jnDW/Yhn2DCUCw25tbWxKr30Hx+zqnwYoDN5LVY5d//LlWsie61tHZgSYFZ4fzp1k
         x862Nju00Z8dDPi6PWn5tov/OjL5MosXEbB4E2oSXdE0jxNdL948C7ZJkQkV+QXstVKu
         rJ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cWcuWXlio33NXTEjM4Sgr9afnHrFpmzUHiADys06aC8=;
        b=QumpAovvLKfEVzhlnnM/BavfX1hOJiZsG5cfqXF5CEQOfGP/qwBcazOZgsbVYbo76g
         GO9PcD9QAS+cdlikb3wbckaNYez2hIuBM4ATTcAtk9SCNKD++eK+2M1Znexn/KY7hwOE
         m4Cy0Vv87S554cACGxWEH0bwecZlXLWlR5x/YlklxdcMDeKS0S6aBvq55G1F+zvLvS1E
         HTMA4X36wBVluLTO6d47fo7HOgdMpKwjkvbhp/Ep1TvtSAoJMFL8qdlP6DiKXRVUbG+z
         WLNmtg5KqFmkdz2LwFzN1Pnw1gT/6ctBkI7dxH/6tokvjQW8tM/GUchrCji0kKpuHg0R
         ChMw==
X-Gm-Message-State: APjAAAXGaRLU6QVcLyqeXVZI0UGeEKqnWbN4B9G/EstI2kScHiyZ1uiK
	XaXm+q4ZDVWaxR13tJ7M1LX4q5b6
X-Received: by 2002:a62:524e:: with SMTP id g75mr48888924pfb.106.1554212864579;
        Tue, 02 Apr 2019 06:47:44 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id 14sm29392779pft.137.2019.04.02.06.47.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 06:47:43 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 0/2] staging: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 19:17:28 +0530
Message-Id: <cover.1554212525.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Changes in v2:
	-Remove type cast.

Payal Kshirsagar (2):
  staging: rtl8723bs: core: Replace bit shifting with BIT macro
  staging: rtlwifi: base.c: Replace bit shifting with BIT macro

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 +-
 drivers/staging/rtlwifi/base.c                | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.7.4


