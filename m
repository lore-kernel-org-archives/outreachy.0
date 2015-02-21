X-GM-THRID: 2118621593600
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f34f4ccbfeab5ba6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr439692lah.8.1424551264149;
        Sat, 21 Feb 2015 12:41:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.23.98 with SMTP id l2ls397687laf.73.gmail; Sat, 21 Feb
 2015 12:41:02 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr435940lbb.14.1424551262679;
        Sat, 21 Feb 2015 12:41:02 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id by11si589442wib.1.2015.02.21.12.41.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:41:02 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id m14so11336565wev.8
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:41:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=iLiwl4a7li37uQ5pdwdAOx3GWFAAO1lPJnFs0Hljcd8=;
        b=c1BV4t41ZMLApCfZhk86rtG5tffC1/GLJnplb2I0h4qKdrRdgTbLyRB6OvM/9nUzdb
         mVpQY+V8YzNoGt3A6Y4tEdzNF+7XbFeXOQS5dtU37NvipuZCT3MkW/4IdL8OfPFYlMno
         2i5Q+kHUdn8WQmCelDcykGln+xe2jynMkrAvsJdyEdMs/1B2Vm1x8uJDy+tQPwBkWHG0
         ANfYUFiYpy6wTrnW1/yDSdm4Yr7u4PTX9cA9NE8MARsHbCwcxw9RgcVF4SKXBza7wknG
         usANsU3163uv0WRxPIsZX7Ef2JiKSghrYIPWPCVyagONl0eeFi0ojGIGfAtNM/QiMdqF
         608w==
X-Received: by 10.180.85.103 with SMTP id g7mr6629795wiz.19.1424551262561;
        Sat, 21 Feb 2015 12:41:02 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id gz3sm8416433wib.1.2015.02.21.12.41.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 12:41:01 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 4/4] staging: arch: alpha: boot: Replaced __attribute__((aligned(size))) with __aligned(size).
Date: Sat, 21 Feb 2015 22:40:38 +0200
Message-Id: <c7034fa73f04be50f3f75f70d4727fc678be954b.1424551058.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424551058.git.gulsah.1004@gmail.com>
References: <cover.1424551058.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424551058.git.gulsah.1004@gmail.com>
References: <cover.1424551058.git.gulsah.1004@gmail.com>

This patch fixes " __aligned(size) is preferred over __attribute__((aligned(size)))"
checkpatch.pl warning in bootp.c

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 arch/alpha/boot/bootp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/alpha/boot/bootp.c b/arch/alpha/boot/bootp.c
index c66ea3c..f50c5dd 100644
--- a/arch/alpha/boot/bootp.c
+++ b/arch/alpha/boot/bootp.c
@@ -146,7 +146,7 @@ start_kernel(void)
 	 *    seems rather far-fetched.
 	 */
 	static long nbytes;
-	static char envval[256] __attribute__((aligned(8)));
+	static char envval[256] __aligned(8);
 	static unsigned long initrd_start;
 
 	srm_printk("Linux/AXP bootp loader for Linux " UTS_RELEASE "\n");
-- 
1.9.1


