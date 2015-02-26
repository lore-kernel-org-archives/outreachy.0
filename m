X-GM-THRID: 3635562938368
X-Received: by 10.112.40.81 with SMTP id v17mr1141043lbk.5.1424943561600;
        Thu, 26 Feb 2015 01:39:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.71 with SMTP id eo7ls1177183wib.21.canary; Thu, 26 Feb
 2015 01:39:21 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr3534112wic.3.1424943561307;
        Thu, 26 Feb 2015 01:39:21 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id by11si1552923wib.1.2015.02.26.01.39.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:39:21 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id l61so8862378wev.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=eEuMTQA5EQPVzmkeoq105C6Hz4f1oumxsTCAogkFPlA=;
        b=FNI8D9OTz1Wrq12wJNTJ2KI7Gc3iUsAzkhkXAgph35DrUvqytg2x7wIKOnHUDD1xkF
         DD9Eh/9/0ULYb+QpJi4bl3CqnaAKFAasBMGFDwMscv9W23jFriZKVtFz69IAqiOzAQPq
         UDD6xkcgLRXt7ZExvFdMt2KLETUIhG5ln4mGTrq/sJi5aW4Zrf+RQJ68yjc0hLEjIcI9
         93rhAigSnEEzyJkelLTEsMOSRb0JaZDPlyis9T0IwwQFKzV0l1BZlZ1KNwKV/kUi9N5C
         tAHQOdCNXT7lQny3CQK/Bq7v3sAm1ciYpofkxBv4N4NUFRY+ZpAEt9BG4PCiP3IJKkpz
         B2Mg==
X-Received: by 10.180.91.112 with SMTP id cd16mr14688372wib.14.1424943561218;
        Thu, 26 Feb 2015 01:39:21 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id d10sm486738wjn.45.2015.02.26.01.39.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:39:20 -0800 (PST)
Date: Thu, 26 Feb 2015 11:39:17 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 10/24] staging: rtl8192u: rewrite the right hand side of an
 assignment
Message-ID: <107110fcccb4aaf7f39ec8c92ab646fa25017246.1424942339.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index e031a25..8d27140 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -4038,7 +4038,7 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
 
 		if (!priv->bCckHighPower) {
 			report = pcck_buf->cck_agc_rpt & 0xc0;
-			report = report>>6;
+			report >>= 6;
 			switch (report) {
 				//Fixed by Jacken from Bryant 2008-03-20
 				//Original value is -38 , -26 , -14 , -2
@@ -4058,7 +4058,7 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
 			}
 		} else {
 			report = pcck_buf->cck_agc_rpt & 0x60;
-			report = report>>5;
+			report >>= 5;
 			switch (report) {
 			case 0x3:
 				rx_pwr_all = -35 - ((pcck_buf->cck_agc_rpt & 0x1f)<<1);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

