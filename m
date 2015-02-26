X-GM-THRID: 3635562938368
X-Received: by 10.180.160.176 with SMTP id xl16mr2665272wib.6.1424943768328;
        Thu, 26 Feb 2015 01:42:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.2.136 with SMTP id 8ls14296lau.1.gmail; Thu, 26 Feb 2015
 01:42:47 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr1135461lae.7.1424943767828;
        Thu, 26 Feb 2015 01:42:47 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id l8si1469755wia.0.2015.02.26.01.42.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:42:47 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ex7so18957976wid.4
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=W+Alpi6Sweru9KPHhqYpZZvKDm9+4c/k3iwanUsn+TU=;
        b=gPaCACuIegeJL5V7DyQbgCGI29sxFtVF46vkRCAEgYbRx4VVbPX+7j6MH8gBShGNAK
         QzVqHkpWGKu0gA//7Iifp0cPmFR3GkxCbjSW6MLQD7z04nkM1ZstFft8JMFx5RSmBfrI
         UFiFJ69C2ufKlZ7nvx0IvWNeVKzbrUiKSk+TXG0qCn/dUw6DhGHmHbiDPEoXTpJ/VtT4
         fqa/SgE5axCsHEx96h/gZvoHbUHyvJkTIg6B0GN4XPhtuhgsZuJPEHr9zaFmFnCou5cd
         OVCuAuwcoCjALwHkFmErYrGAkTOfr2nO3BX7KlYoppfXUGRVYow47VepTIyDRZ7iOsij
         fGQA==
X-Received: by 10.180.98.105 with SMTP id eh9mr14014383wib.51.1424943767749;
        Thu, 26 Feb 2015 01:42:47 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id fm10sm1983900wib.7.2015.02.26.01.42.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:42:47 -0800 (PST)
Date: Thu, 26 Feb 2015 11:42:42 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 16/24] staging: rtl8188eu: rewrite the right hand side of an
 assignment
Message-ID: <8622efaf3749b04d9e79a600496f6158e7ac2523.1424942340.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
index 3c651d5..62ac8cbc 100644
--- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
+++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
@@ -487,7 +487,7 @@ static void odm_PTDecision_8188E(struct odm_ra_info *pRaInfo)
 			break;
 	}
 
-	j = j >> 1;
+	j >>= 1;
 	temp_stage = (pRaInfo->PTStage + 1) >> 1;
 	if (temp_stage > j)
 		stage_id = temp_stage-j;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

