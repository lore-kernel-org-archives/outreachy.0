X-GM-THRID: 3635562938368
X-Received: by 10.152.6.232 with SMTP id e8mr1143658laa.2.1424943957662;
        Thu, 26 Feb 2015 01:45:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.68 with SMTP id y4ls1173665wix.19.canary; Thu, 26 Feb
 2015 01:45:56 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr1174453wid.1.1424943956478;
        Thu, 26 Feb 2015 01:45:56 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id by11si1553946wib.1.2015.02.26.01.45.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:45:56 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x233.google.com with SMTP id k11so8818933wes.11
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=8wwI+kAm9iFN25sJJyx7jfRUqp/IBhqUnHvYqihvdAU=;
        b=lqX7quYQM+a3k5OAyNO5Jh4coKV1ANTPY5S4jT1xuquxjEWTuUOD40M2LZNaTuTh0v
         XrYivYcWgPOQL67wHuybQRluk8D/3ABlHrhgCjGgGl5HeEUJlkuKENQdpaf/SF4fITQb
         ZdlbyLjBXvpumPt7g9WwcrBEUt2kENbzGximNZRKn9WYVKHwKfN6lflZCPk5Qn+plp54
         /1W5Tvhz541ND0nNkuzwX465h5a3FmsWQ5UZx6f5Xn08q03MU34hQOGpZlrJAi0DMNHc
         twWbScTkNGRVvkHZv6qm7HK7iAYbAM5snKEt8QHz5TphI+ZlH/7vM4W83oRQAuqwXtGP
         tRDw==
X-Received: by 10.194.85.46 with SMTP id e14mr14469936wjz.110.1424943956404;
        Thu, 26 Feb 2015 01:45:56 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id fm10sm1995831wib.7.2015.02.26.01.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:45:55 -0800 (PST)
Date: Thu, 26 Feb 2015 11:45:51 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 23/24] staging: emxx_udc: rewrite the right hand side of an
 assignment
Message-ID: <cf2a531248684c49877f4e0eefdd553bdb745b2d.1424942340.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/emxx_udc/emxx_udc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 6c1de27..ee8f69f 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -1454,7 +1454,7 @@ static int _nbu2ss_set_feature_device(
 		break;
 
 	case USB_DEVICE_TEST_MODE:
-		wIndex = wIndex >> 8;
+		wIndex >>= 8;
 		if (wIndex <= MAX_TEST_MODE_NUM)
 			result = 0;
 		break;
@@ -1671,7 +1671,7 @@ static int std_req_set_address(struct nbu2ss_udc *udc)
 	if (wValue != (wValue & 0x007F))
 		return -EINVAL;
 
-	wValue = wValue << USB_ADRS_SHIFT;
+	wValue <<= USB_ADRS_SHIFT;
 
 	_nbu2ss_writel(&udc->p_regs->USB_ADDRESS, wValue);
 	_nbu2ss_create_ep0_packet(udc, udc->ep0_buf, 0);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

