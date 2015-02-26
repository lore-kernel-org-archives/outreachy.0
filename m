X-GM-THRID: 3635562938368
X-Received: by 10.180.160.176 with SMTP id xl16mr2663798wib.6.1424943625733;
        Thu, 26 Feb 2015 01:40:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.2.136 with SMTP id 8ls14065lau.1.gmail; Thu, 26 Feb 2015
 01:40:25 -0800 (PST)
X-Received: by 10.112.161.9 with SMTP id xo9mr1153940lbb.7.1424943625280;
        Thu, 26 Feb 2015 01:40:25 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id l8si1469528wia.0.2015.02.26.01.40.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:40:25 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id em10so39507966wid.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=M7nOcWlmpqfVQhQk9jLlK7nPJ+UxnY8xrhQjy7MVk1Q=;
        b=RsXVt/Ipl6MzsCadKOQlPg0AXtY2JkTq6HM1n8QcO8m3/P4ST4h9jZlpKtrEmtnkwv
         INYocdtfuyEjEK3R8s3CbEkkUq9a3Qxd9Vdug3sKM/TvCStb1xlrilyi6B555fdYEvCE
         4QJp/wmOgJrsX0Nsc8ba9A1Y6RfIEEcaPv4I5U6M+C5ebuPrFPVd5vzLL0iCaKxQRnQZ
         CH7OBjMWaCOvc6qecfT19w36izY22O6FKundyJvq61RkmzxlqYiDZ1wxN558OvtzcRQv
         fF9zt2J+jSieZAAsyuGo0dycAxiI6kcKVyrnjyOf7J09rGTyLYf20prM9Sk35bkQlDPC
         ijvQ==
X-Received: by 10.194.202.162 with SMTP id kj2mr5308840wjc.19.1424943625192;
        Thu, 26 Feb 2015 01:40:25 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id ga8sm1977286wib.6.2015.02.26.01.40.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:40:24 -0800 (PST)
Date: Thu, 26 Feb 2015 11:40:21 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 11/24] staging: rtl8192u: rewrite the right hand side of an
 assignment
Message-ID: <325b0f34437dd21c654f9a316b981470ba369433.1424942339.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
index e60d926..c322881 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
@@ -889,7 +889,7 @@ u8 HTGetHighestMCSRate(struct ieee80211_device *ieee, u8 *pMCSRateSet, u8 *pMCSF
 					if(HTMcsToDataRate(ieee, (8*i+j)) > HTMcsToDataRate(ieee, mcsRate))
 						mcsRate = (8*i+j);
 				}
-				bitMap = bitMap>>1;
+				bitMap >>= 1;
 			}
 		}
 	}
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

