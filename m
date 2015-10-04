X-GM-THRID: 6201691543779147776
X-Received: by 10.107.131.73 with SMTP id f70mr21358991iod.18.1443943841230;
        Sun, 04 Oct 2015 00:30:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.227 with SMTP id g96ls1322444ioj.55.gmail; Sun, 04 Oct
 2015 00:30:41 -0700 (PDT)
X-Received: by 10.107.32.204 with SMTP id g195mr20846946iog.12.1443943841027;
        Sun, 04 Oct 2015 00:30:41 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id wl2si2871791pab.1.2015.10.04.00.30.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 00:30:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv12so148539303pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 00:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=tKjyn9KXl6F1mwTWeN9hgYhABrgoNzdHR+axn+1zlVY=;
        b=YPNmNUvR7J2PKDoMsIXtswxEwhJuk2PtDacfLerZKlO2BTZgsva5fq+LFPbAKvh4AH
         Fbf1BaNTwBTw6Zg9GwqDFu5LhAnlUEjqpcNBsX94MDut6tSPFs3xB/JTN5sqsawRQQCq
         v6Z/nhYOOP5gtmxuNeEDXgCLqYOB2WCw4CU+MRiP3cMUXJKutSa2P+jEzx2coCU5v322
         S5v/r92H45DxPHrgkgNLk8lIOrlkGt586anCJsdzFoNlqvpq+5G60tY4oSX7GgHVEuD2
         pznbUfO4MOQ1xhfYeif+eySTMzwX92n2rxKa66zC3gilVIAdsw3qrI8t1m2dRF8YFoaz
         Y8qQ==
X-Received: by 10.67.30.136 with SMTP id ke8mr31917131pad.16.1443943840911;
        Sun, 04 Oct 2015 00:30:40 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id uq1sm4087085pbc.82.2015.10.04.00.30.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 00:30:40 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/8] Staging: lustre: ptlrpc: pinger: Declare as static
Date: Sun,  4 Oct 2015 13:00:11 +0530
Message-Id: <1443943816-21546-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
References: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5610D59F.0136,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare ptlrpc_pinger_remove_timeouts as static since it is used
only in this particular file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/pinger.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/pinger.c b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
index 74fab7e..a608165 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/pinger.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
@@ -313,7 +313,7 @@ int ptlrpc_start_pinger(void)
 	return 0;
 }
 
-int ptlrpc_pinger_remove_timeouts(void);
+static int ptlrpc_pinger_remove_timeouts(void);
 
 int ptlrpc_stop_pinger(void)
 {
@@ -497,7 +497,7 @@ int ptlrpc_del_timeout_client(struct list_head *obd_list,
 }
 EXPORT_SYMBOL(ptlrpc_del_timeout_client);
 
-int ptlrpc_pinger_remove_timeouts(void)
+static int ptlrpc_pinger_remove_timeouts(void)
 {
 	struct timeout_item *item, *tmp;
 
-- 
2.1.4


