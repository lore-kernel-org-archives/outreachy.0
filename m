X-GM-THRID: 6804511537677467648
X-Received: by 2002:a17:90b:3711:: with SMTP id mg17mr20351666pjb.73.1584298903983;
        Sun, 15 Mar 2020 12:01:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9a81:: with SMTP id w1ls8071551plp.2.gmail; Sun, 15
 Mar 2020 12:01:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtlDXfN/7yuIVhOVxNAenfo0rv1d/VeGRz+q17q6WFWaC8eGKJefHtl5+2uS/dfxPPZHuUE
X-Received: by 2002:a17:90a:2503:: with SMTP id j3mr21732352pje.83.1584298902608;
        Sun, 15 Mar 2020 12:01:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584298902; cv=none;
        d=google.com; s=arc-20160816;
        b=BfiUyOhiO/12S8kFFoldAgVoCHPntOQYhtvZza9xxLisjtKAKz+KRgLK4KGoe5u35Z
         Qv5y2yOkeqmaFA/HXFDKMbVeN+ne42fbFOyGWdjdwyXSulDERDOEoT0g6vBz+VEAoZwY
         fk5gHSuLAHf/3QnZKlLNeCsSHfkgdc948jNK7MB6ZEErhS57KB+Mjo55xUVMuVKqvKWm
         dSqtnA4owkivV4BQyO/5m6Vgnn5UrOtzgfdu3qN/WmyaFgdp7715MAK9lg5t0ULDTkfB
         dQKEmLciI9ie1OTgDRWvP9vz0jy2x3zY3VWDAnVz/gEeaMMN1WMlyjP/lSGvDvmHTSV+
         bg6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jak/lAW6pYji22+OWxOArVMTNrMXGQ+FMRJkUXqnnh4=;
        b=JkLX/zI5TVuI5U+QsAC69f3YEiFdVLIcUqWKpMskKg40JWAuk/emx8j1UXWqRKabKO
         kjHi8+vKKfRF/nuUdqeOpGsPHPKfnIxsROZCgp6EXyB6KosUTykNCc1BvYZ1nxEiMl0L
         X0P8QxrDRtFP6sj2RUWxDbuZhFWSu0juOPYqd3vmeJ1gUbVdY2U4sh+Gtq5Pq/y6EWuc
         yeUmA6NxEMwfOsO8Rr7ybwJO7u/D6TzUdfc4qGU4bXeSGu3sa2z5/Rfw0ES2TRpC5Fdn
         NIui/aBxbsD42o/jRtS5TPPrpE3igJcm3wzC7MW1L6ceVOUu0uK4LRBDRoF3nOfm+t8u
         nJHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=bhrvTTkO;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id f29si560383pga.0.2020.03.15.12.01.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 12:01:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=bhrvTTkO;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-ot1-x341.google.com with SMTP id t28so12945768ott.5
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 12:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jak/lAW6pYji22+OWxOArVMTNrMXGQ+FMRJkUXqnnh4=;
        b=bhrvTTkOTLPGRBgEm/qMWKZLJ3+EYCZTujVnl8yefqBy46WbYlVX3/AmF9YbcCGUXr
         O1RNxFLKtQbgDAORGxuUj0xgMuobKk9dS/9617Lo795QXmKXHNqrBuoQ5GSHefhc2JdA
         2DnBLMjBmZsdhsarMTDsJdDe7xwwPmnV6mwRQZ+73UxV9tiqOrk9na/XMD041M68DtyT
         1dbI9McVDHJ2lkgWpuhVtC3caZawWPLs4XjN4GV1WWQPjVWjFYnRkVQqV68fVPfhIvOA
         BBeOkAxHwanyzS2BG07Y0fe4d1b9mfKgPJKToXzh1v+2PuWLUbW9ZuzSVTUZv/LBE2wf
         U8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jak/lAW6pYji22+OWxOArVMTNrMXGQ+FMRJkUXqnnh4=;
        b=AdnXogqOYvxygUP2b/bQd3wmKFt9Fgcv490/904UJ/k161ENds+sXnvZlciKnfTDpc
         xrvqnC1Rh3YaGa8LwXboTtGsemJK2uk2iNDx+2jec4IcCZpNzIiByI/jwA7dGBuzQphg
         oiOJxVbKnFMgc6QT+E46hV5JQM8IEBUfaHFdaGhnfo06Ob28wEDqtXPpznc6k2zSbCor
         KVXoScJOBIHnl24J2BbeVhhvVucYO/LF1QuCiTKLcUFjDp9IAx+XSving3kkjN6hrPLP
         6fZkS9eAsrmKEhPqUcD3JDpcwdxW1m7fdrM7m/bAI8T5kW0hFxuVmLL6YBJOldW3/mhI
         tzYg==
X-Gm-Message-State: ANhLgQ24Ga2nBgLfKUJu+uRbSH9l8LnviH2hHjhJMstYGglUOjwHpvVj
	QaE9sHfv90uVVPgVdm+SSL3V2A==
X-Received: by 2002:a9d:77d0:: with SMTP id w16mr19929186otl.66.1584298901912;
        Sun, 15 Mar 2020 12:01:41 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from evX1 ([189.172.49.121])
        by smtp.gmail.com with ESMTPSA id v12sm4954848otp.75.2020.03.15.12.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2020 12:01:41 -0700 (PDT)
Date: Sun, 15 Mar 2020 13:01:40 -0600
From: Enrique Vargas <jevargas@seas.upenn.edu>
To: Helen Koike <helen.koike@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 2/2] Staging: media: rkisp1: eliminate trailing whitespaces
 on comments
Message-ID: <c9d004081be83ba4d5e2a07da196e6b774b49262.1584298430.git.jevargas@seas.upenn.edu>
References: <cover.1584298430.git.jevargas@seas.upenn.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584298430.git.jevargas@seas.upenn.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)

Eliminate lines with trailing whitespaces in block diagram.  Found with
checkpatch.

Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
---
 drivers/staging/media/rkisp1/rkisp1-dev.c | 41 +++++++++++------------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index 194fc33941f0..faa8538b9fea 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -37,27 +37,26 @@
  *
  * ISP Block Diagram
  * -----------------
- *                                                          
- *                                                          
- *                                rkisp1-isp.c              
- *                        |==========================|      
- *                        +-----------+  +--+--+--+--+   
- *                        |           |  |  |  |  |  |   
- * +--------+    |\       |           |  |  |  |  |  |   
- * |  MIPI  |--->|  \     |           |  |  |  |  |  |   
- * +--------+    |   |    |           |  |IE|IE|IE|IE|   
+ *
+ *                                rkisp1-isp.c
+ *                        |==========================|
+ *                        +-----------+  +--+--+--+--+
+ *                        |           |  |  |  |  |  |
+ * +--------+    |\       |           |  |  |  |  |  |
+ * |  MIPI  |--->|  \     |           |  |  |  |  |  |
+ * +--------+    |   |    |           |  |IE|IE|IE|IE|
  *               |MUX|--->|    ISP    |->|0 |1 |2 |3 |--[A]--
- * +--------+    |   |    |           |  |  |  |  |  |   
- * |Parallel|--->|  /     |           |  |  |  |  |  |   
- * +--------+    |/       |           |  |  |  |  |  |   
- *                        |           |  |  |  |  |  |   
- *                        +-----------+  +--+--+--+--+   
+ * +--------+    |   |    |           |  |  |  |  |  |
+ * |Parallel|--->|  /     |           |  |  |  |  |  |
+ * +--------+    |/       |           |  |  |  |  |  |
+ *                        |           |  |  |  |  |  |
+ *                        +-----------+  +--+--+--+--+
  *                                               ^
- * +--------+                                    |       
- * |  DMA   |------------------------------------+       
+ * +--------+                                    |
+ * |  DMA   |------------------------------------+
  * +--------+
- * 
- * 
+ *
+ *
  *              rkisp1-resizer.c          rkisp1-capture.c
  *            |====================|  |=======================|
  *                         Main Picture Path
@@ -73,11 +72,11 @@
  *         -->|  Crop  |->|  RSZ   |->|  RGB   |->|           |
  *            |        |  |        |  | Rotate |  |           |
  *            +--------+  +--------+  +--------+  +-----------+
- *  
+ *
  *            |===============================================|
  *                          Self Picture Path
- * 
- * 
+ *
+ *
  *         rkisp1-stats.c        rkisp1-params.c
  *       |===============|      |===============|
  *       +---------------+      +---------------+
-- 
2.17.1


