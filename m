X-GM-THRID: 6201691543779147776
X-Received: by 10.182.60.167 with SMTP id i7mr19607859obr.1.1443943838923;
        Sun, 04 Oct 2015 00:30:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.112.169 with SMTP id ir9ls922064igb.28.canary; Sun, 04 Oct
 2015 00:30:38 -0700 (PDT)
X-Received: by 10.107.8.93 with SMTP id 90mr21327715ioi.30.1443943838656;
        Sun, 04 Oct 2015 00:30:38 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id wl2si2871791pab.1.2015.10.04.00.30.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 00:30:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv12so148539303pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 00:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=5zxGD2lqtX5l4X6uWZ8DfIYUiUwfbSpO5AbOY45gUSM=;
        b=NSnIGIUjXEDqTD99U0/EvXY6KJgNrnmMrqJxHdU+V1Kx9c2ZpuhAZBG8+t2JPKzlgB
         qWTLMDYwglxPsNLikKluAnW17KwusaJVxgw9XsFfh9N3wQaGdStiROTXRR555fFbdb4l
         JG+6WfDZkZat73cgqIU9hAa+rKJJf8SJxI54pTe/24JxyrYNb2zSPR1IFTLcbOfaT0QK
         GRy8bkv1/rpMdcRL6rqqoblnG8jrSDAp9fI9acpT8QzLSuI2Xx+5/ADLSq6v51eoH6Mi
         mKYIH1qUSUqOmjXKinR3lpMvzzy3Vh7g+GnvRelHZMRKlWGcfurhng4I+U0rVgRLK3K6
         /d4A==
X-Received: by 10.66.190.6 with SMTP id gm6mr31428523pac.27.1443943838534;
        Sun, 04 Oct 2015 00:30:38 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id uq1sm4087085pbc.82.2015.10.04.00.30.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 00:30:38 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/8] Staging: lustre: ptlrpc: events: Declare as static
Date: Sun,  4 Oct 2015 13:00:10 +0530
Message-Id: <1443943816-21546-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
References: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5610D59D.0090,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare ptl_get_pid as static since it is used only in this particular
file. Also remove declaration from corresponding header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_net.h | 1 -
 drivers/staging/lustre/lustre/ptlrpc/events.c      | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_net.h b/drivers/staging/lustre/lustre/include/lustre_net.h
index 428b83d..c8d6207 100644
--- a/drivers/staging/lustre/lustre/include/lustre_net.h
+++ b/drivers/staging/lustre/lustre/include/lustre_net.h
@@ -2289,7 +2289,6 @@ int ptlrpc_connection_put(struct ptlrpc_connection *c);
 struct ptlrpc_connection *ptlrpc_connection_addref(struct ptlrpc_connection *);
 int ptlrpc_connection_init(void);
 void ptlrpc_connection_fini(void);
-lnet_pid_t ptl_get_pid(void);
 
 /* ptlrpc/niobuf.c */
 /**
diff --git a/drivers/staging/lustre/lustre/ptlrpc/events.c b/drivers/staging/lustre/lustre/ptlrpc/events.c
index afd869b..183e415 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/events.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/events.c
@@ -521,7 +521,7 @@ static void ptlrpc_ni_fini(void)
 	/* notreached */
 }
 
-lnet_pid_t ptl_get_pid(void)
+static lnet_pid_t ptl_get_pid(void)
 {
 	lnet_pid_t pid;
 
-- 
2.1.4


