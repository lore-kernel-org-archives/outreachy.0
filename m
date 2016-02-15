X-GM-THRID: 6251436836639473664
X-Received: by 10.129.25.212 with SMTP id 203mr14765928ywz.35.1455526062011;
        Mon, 15 Feb 2016 00:47:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.36.73 with SMTP id k70ls1421430iok.104.gmail; Mon, 15 Feb
 2016 00:47:41 -0800 (PST)
X-Received: by 10.50.25.133 with SMTP id c5mr11261835igg.4.1455526061567;
        Mon, 15 Feb 2016 00:47:41 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id yd9si89440pab.1.2016.02.15.00.47.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 00:47:41 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id y7so436494paa.3
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 00:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=CMAyqk0ouqBy5FKgao0KWFgfhlRtZ0nwAO9NykiUmJE=;
        b=x/q+2R9TuQK1pPPb9Hnu7aLXa3R11r593ygTWtwvqjVXE63ott6O45BHv07ZZ3s7Y2
         Pc0+6YKdDYjQL/+ffh8H8J7f+H+x3PSa0CAB2YqaD1MYnwuwd9yG8oq37gBfI8mxDROA
         4DTJ6kOmodh+dffN37hF10wtjXAwPdq1xHI4tZeB5LkgkFqwF/YkH1sohjbmReROmasy
         WZpIZ+tDR45EKphaca8H7CHO0yYU2TqN7S7C95RO6NzIlQFiyH+kicwdUhRltmClcXE/
         p6AsKrfQpJYPCXlg7HNdcGw+34MKuBI8JC01NCEY5bBzXJ26jP/HTMkMVByslGaiz1NA
         FEcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CMAyqk0ouqBy5FKgao0KWFgfhlRtZ0nwAO9NykiUmJE=;
        b=NnZDDFOzCyuhywZQR2XA0BVWH6lhmqFlbuFixbIDocHOTzpJLxZTonuZwVZu6u0vNx
         O5AxcXGRJrYhRERbSnA8dkVLkxbqQ4cE49gL9NABp1N3ovnH2aUjdcMetjw1GIZvPtLd
         UvsbuTjWeDwnfJ+9qmftuh00NS6vs8bG+E/Z+pbdXuKmXBnaAGx5AbVLbjJGuc04ccYV
         1Yd2NKRqu0Xv9AFnGCe+jU7Yts7p5l25IZdbE+CWBUn8VXgz+k1kEbygSNRcD5uDog7i
         qHCCvPDtuRZQlfNrwTxDQGep4S7rhmboSWNTy5Q1fI/2xr7TJzrOZmmE/QGg570DRj4H
         yLjg==
X-Gm-Message-State: AG10YOSEbwnZGESzCIewx+zoMmVlmqtaA5ko/vuzAZjL4OqZmAU0vWP0QLXldWKdRFJbmw==
X-Received: by 10.66.122.97 with SMTP id lr1mr21904686pab.80.1455526061402;
        Mon, 15 Feb 2016 00:47:41 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.132.55])
        by smtp.gmail.com with ESMTPSA id qj8sm36678071pac.40.2016.02.15.00.47.37
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 00:47:40 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 15 Feb 2016 14:17:31 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2] Staging: rtl8723au: hal: Remove unused macros
Date: Mon, 15 Feb 2016 14:17:11 +0530
Message-Id: <1455526031-8371-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The macros PlatformProcessHCICommands and PlatformTxBTQueuedPackets
are not used anywhere in the kernel so remove them.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes since v1:
*Change subject line as it conflicts with other patches.

 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
index d46d1c7..1289250 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
@@ -77,8 +77,6 @@ if ((BTCoexDbgLevel == _bt_dbg_on_)) {\
 
 #define PlatformZeroMemory(ptr, sz)	memset(ptr, 0, sz)
 
-#define PlatformProcessHCICommands(...)
-#define PlatformTxBTQueuedPackets(...)
 #define PlatformIndicateBTACLData(...)	(RT_STATUS_SUCCESS)
 #define PlatformAcquireSpinLock(padapter, type)
 #define PlatformReleaseSpinLock(padapter, type)
-- 
1.9.1


