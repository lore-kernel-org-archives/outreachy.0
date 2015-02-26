X-GM-THRID: 3635562938368
X-Received: by 10.194.11.70 with SMTP id o6mr1139138wjb.6.1424943659363;
        Thu, 26 Feb 2015 01:40:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.137 with SMTP id p9ls79199wic.42.gmail; Thu, 26 Feb
 2015 01:40:56 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr3535071wic.3.1424943656592;
        Thu, 26 Feb 2015 01:40:56 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id l8si1469413wia.0.2015.02.26.01.40.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:40:56 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22c.google.com with SMTP id k14so8895502wgh.4
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=fkhJ+EQhg4QRX/VcUooDwuMkiF1hIzXkOMNI7WbXGYs=;
        b=DfbfA2F+wn8SfLmJaJU8gZsTXEvU4rmPoBYKSW/2B2GyimVYgJ7lTbkDHh3csw0hSJ
         YOmm/yirztpEcI/ZBi4R7qUgMzWAPDW/ufGGLp1sS0qfF9iYFifSCTyn96GeJ/bLlWyp
         w8lttcaqNOqkh1gCJ2Zv4LOVawjv/azR1WkR3qa1PiDHiI/Vq6BsXdTeJ8CzLlGQPhQs
         5JZK/rBJU5crskSA7PiiqiceGgTxsx789rNTf70W5XTJqI/5wxkRD3m+ajcSgxcz3BFP
         JyDDSbBXaFShfDWW2Z0lxzBr6M8zey4rWLiw6b9eXkSA8Fh0v40B5OcLnH5VxumFKEVU
         oasg==
X-Received: by 10.180.81.7 with SMTP id v7mr14691350wix.27.1424943655036;
        Thu, 26 Feb 2015 01:40:55 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id m4sm530538wjb.25.2015.02.26.01.40.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:40:54 -0800 (PST)
Date: Thu, 26 Feb 2015 11:40:50 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 12/24] staging: rtl8192e: rewrite the right hand side of an
 assignment
Message-ID: <d12d5365179efed781e4b1b8b266ee008816c184.1424942339.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 1ea426b..165975a 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -654,7 +654,7 @@ u8 HTGetHighestMCSRate(struct rtllib_device *ieee, u8 *pMCSRateSet,
 					    HTMcsToDataRate(ieee, mcsRate))
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

