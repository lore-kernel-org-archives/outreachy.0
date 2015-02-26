X-GM-THRID: 3635562938368
X-Received: by 10.112.50.106 with SMTP id b10mr1124104lbo.8.1424943688347;
        Thu, 26 Feb 2015 01:41:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.14 with SMTP id t14ls11497laz.61.gmail; Thu, 26 Feb
 2015 01:41:26 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr1156275lbc.22.1424943686857;
        Thu, 26 Feb 2015 01:41:26 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id by11si1553318wib.1.2015.02.26.01.41.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:41:26 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ex7so18954442wid.4
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=OVz4vCWzy50x2IacdM7DQYPVP1uXEYGdbNYlKX5N6yQ=;
        b=FQkBaJ2JlxR9ruGl4uS19ydyjeKAQghBg+IEP8AapDfur7J6eigsJlp/FDy/CwfW4q
         iNgYdwXPyQ2M6D+3N3Qwg27gddd7ASn661yHb/1dfx6hPx1twKggkLltC3tQanD+NOiD
         Nnmo5nc03HSNAcHfeaMY1qZaTluurxW9kPYo9v14DdnF/BL9rv/LMANtCVoAMeDSB0o2
         +Z2m8gojQ/gv1vDzJZWz0gSQfNsJPgiiRh4lC5WLhysVdRC+LiwIy+bYSFBYrGv0zVrD
         uLQyTLX+cYV3C1TLbt5dNYHcbXnrKfjIj5LvjKI3QQk6tglPIjdvLlm21LqE+S4cscES
         5X4A==
X-Received: by 10.180.211.83 with SMTP id na19mr14577469wic.29.1424943686778;
        Thu, 26 Feb 2015 01:41:26 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id j7sm1985794wix.4.2015.02.26.01.41.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:41:26 -0800 (PST)
Date: Thu, 26 Feb 2015 11:41:23 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 13/24] staging: rtl8192e: rewrite the right hand side of an
 assignment
Message-ID: <47f7d5247cecc19a149ace71586b4bed61921527.1424942339.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index 552d943..a85fb71 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -1527,7 +1527,7 @@ static void rtl8192_query_rxphystatus(
 		priv->stats.numqry_phystatusCCK++;
 		if (!reg824_bit9) {
 			report = pcck_buf->cck_agc_rpt & 0xc0;
-			report = report>>6;
+			report >>= 6;
 			switch (report) {
 			case 0x3:
 				rx_pwr_all = -35 - (pcck_buf->cck_agc_rpt &
@@ -1547,7 +1547,7 @@ static void rtl8192_query_rxphystatus(
 			}
 		} else {
 			report = pcck_buf->cck_agc_rpt & 0x60;
-			report = report>>5;
+			report >>= 5;
 			switch (report) {
 			case 0x3:
 				rx_pwr_all = -35 -
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

