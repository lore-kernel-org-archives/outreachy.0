X-GM-THRID: 6803736049205903360
X-Received: by 2002:a5d:4a49:: with SMTP id v9mr18786691wrs.343.1584118243605;
        Fri, 13 Mar 2020 09:50:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5233:: with SMTP id i19ls5249106wra.6.gmail; Fri, 13 Mar
 2020 09:50:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu8/v56zFktXNfurqnHa7A07CxmCXRb5n61PpMof+7fF9AFLgfrQgm9i2Ye5WyxYK+7mr7B
X-Received: by 2002:adf:ec82:: with SMTP id z2mr11393811wrn.302.1584118242387;
        Fri, 13 Mar 2020 09:50:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584118242; cv=none;
        d=google.com; s=arc-20160816;
        b=o85pmsOz6PosEqVeKuE3sAcnKhnvyF6amUD98/wYBcgcDmqiwPrTl9F36PTdBBCm7N
         Y5eeRROI/FYLh4aXJoVbPP0ZsTryxDTOGY1iAJTlj32BlDGt8oYYzwNtJzWAnKsf0yK6
         dDEqKDpUfjqN/WmmdGr9STRUKUcikDLQ63pBpVeUwaiW+udsAENsYs1Jwj+75r34MGL6
         ZKI3qlrSglfsLJkR/KPxKyRzJXcxFDKBSI5Tz9VnfpTCNs/Q0rfewCyT9GTROnsa8Gmt
         4H08INu6CNGIy3cALr1qc8w+AOuAX1k/8W5MQ2LwAKqAAsrKnPaxz4mOmgo5IwOdT41D
         9C3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=K/mkgYcKWrBpATTZxPPv05gahdf5B5v3fNRdQuFHAfg=;
        b=DGnDBTwLi4IkN1qo1khMlh2TIcJAovDH7VNE+7R3rHKh+8/SgzoMATpwGqZCR1bhYh
         8/wFsdW6xzf5Z345DnoMFwaznLyakezMoLi0Grq5I+oHqYSb3W1Gi9zpS0KBEU3zxox9
         Xj22UzLuNmLRbC/wyIi5F7NYKTTbeUNorL0kHdojYv02FPXrS/m1g7HQ1u9eNE1ekoh/
         s8IW+80EJrRtME0NH9q8teXN/gG5+1+BArtGXFbyTLqFPP4wZiV//9ZcawBZALTYUOLX
         vL7Ufz52QE4BuQz7mwDw378umAl8oeku7OCX9Be0cNhZez6PRFtVOFWJ1VERXlCPimif
         K/bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id n7si603977wmc.1.2020.03.13.09.50.42
        for <outreachy-kernel@googlegroups.com>;
        Fri, 13 Mar 2020 09:50:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27685 invoked from network); 13 Mar 2020 16:50:39 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.246.187.131)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 13 Mar 2020 16:50:39 -0000
Date: Fri, 13 Mar 2020 22:20:30 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3] staging: sm750fb: Better Fix of long line in makefile
 variable
Message-ID: <20200313165018.GA3172@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

A simple fix of long line in makefile variable assignment.
Found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v3:
 - change make variable definition using a clean style
Changes in v2:
 - Make the subject line imperative one
---
 drivers/staging/sm750fb/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/Makefile b/drivers/staging/sm750fb/Makefile
index 1cf3849cef23..b89aa4c12e9d 100644
--- a/drivers/staging/sm750fb/Makefile
+++ b/drivers/staging/sm750fb/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_FB_SM750)	+= sm750fb.o
 
-sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o ddk750_chip.o ddk750_power.o ddk750_mode.o
-sm750fb-objs		+= ddk750_display.o ddk750_swi2c.o ddk750_sii164.o ddk750_dvi.o ddk750_hwi2c.o
+sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o \
+			   ddk750_chip.o ddk750_power.o ddk750_mode.o \
+			   ddk750_display.o ddk750_swi2c.o ddk750_sii164.o \
+			   ddk750_dvi.o ddk750_hwi2c.o
-- 
2.20.1


