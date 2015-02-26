X-GM-THRID: 3635562938368
X-Received: by 10.112.50.106 with SMTP id b10mr1126668lbo.8.1424943934417;
        Thu, 26 Feb 2015 01:45:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.189.12 with SMTP id ge12ls80751wic.9.gmail; Thu, 26 Feb
 2015 01:45:34 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr1142423wjb.4.1424943934136;
        Thu, 26 Feb 2015 01:45:34 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id r6si85489wix.0.2015.02.26.01.45.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:45:34 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ex7so18976157wid.4
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KUnGPuBkZABC1dTbunk7nnKDmKtoIWCiWCxchehmBoo=;
        b=N3cVjAsSPq7metH7GxoFj2Cb4L3A3X9ES2vGsBSJWisaT5cjVApksD0zZflzHigraD
         6AVuRv3labuCTeVb3LeyAOFRO0IujAPSDrO9/0jNXxSPUTlSO14axNTgk7IoePSByHnv
         5sdZEk+G5IMxzfx/dKP5G+EXeygLJgK9DmMW0SZJO2CFmQHeuDtcU/u15YXvQ1AjHD+a
         UHKAppv9ItspXxbK8ahT2ppMeE9evNT0xu/KnTZT+m1Z80ihN8RaP5C0o52EIjRCfXeb
         L5BBOz4HM5UZhJHHZgH3Ro21rvcG0vrHNch41YDBuU3xeAEJat34xOTNRQ0JmdC6x51q
         eTwA==
X-Received: by 10.180.19.9 with SMTP id a9mr14640745wie.85.1424943934067;
        Thu, 26 Feb 2015 01:45:34 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id k1sm576621wjn.9.2015.02.26.01.45.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:45:33 -0800 (PST)
Date: Thu, 26 Feb 2015 11:45:26 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 22/24] staging: iio: Documentation: rewrite the right hand
 side of an assignment
Message-ID: <0e3bdc16f3c4207c672dbd38eebef9ef302161ac.1424942340.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/iio/Documentation/generic_buffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/Documentation/generic_buffer.c b/drivers/staging/iio/Documentation/generic_buffer.c
index de4647e..59b2505 100644
--- a/drivers/staging/iio/Documentation/generic_buffer.c
+++ b/drivers/staging/iio/Documentation/generic_buffer.c
@@ -72,7 +72,7 @@ void print2byte(int input, struct iio_channel_info *info)
 	 * Shift before conversion to avoid sign extension
 	 * of left aligned data
 	 */
-	input = input >> info->shift;
+	input >>= info->shift;
 	if (info->is_signed) {
 		int16_t val = input;
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

