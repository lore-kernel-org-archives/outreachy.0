X-GM-THRID: 6803797198848917504
X-Received: by 2002:a17:902:aa04:: with SMTP id be4mr15512292plb.41.1584132502867;
        Fri, 13 Mar 2020 13:48:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8048:: with SMTP id e8ls1727986pjw.0.canary-gmail;
 Fri, 13 Mar 2020 13:48:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsZnz7/olwP5tRRXABnaajGIcQLAeAlLSZbOLyp4zQ6kuI4oZnw0SpoyPVovX9e54jiw0gY
X-Received: by 2002:a17:90a:62cb:: with SMTP id k11mr11948717pjs.20.1584132501343;
        Fri, 13 Mar 2020 13:48:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584132501; cv=none;
        d=google.com; s=arc-20160816;
        b=yc/IY6he5mlrfTF3OcRcrjCK+0lFBH/LB39PxR94qKco7h/4sTZkZwuNxj50iyo6QU
         sRd5VEpkYSyCPCU1RmMgOm37a4z4qFCb2wUNWxl8In+c1AIuYjA25zE4FZGgAcz/r4Xw
         PIWSF3KBqXxqSWdgQXBYYsSvBn50ZsHA1u7HTzyx3dxIKRINQlVP8Ggv9h8+FAYFOutM
         4LKQBLK40zgh9Bf+9PQz71HOOZoMCy988swK2hHu5vbqRJ7g+3QFAj7oehesNswT24rH
         cIa4xfSGc1dDviWwWqK4Z2E0xsSYyBZnBIPdfV3qE9xLJkK3BMm4lyKQtkQtFwu02TSd
         FPEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=urQtWxG3usYw5ZPNjstzJdBl04NPqkFbt1ebm9qnrjs=;
        b=Dee/Szculn5ye+82l6bcpGnv9H3QcjwFhXolEfrBd2jrc8Y3EbeSDgaBQBgiQyFp2M
         cxeqG3lxJA5Op4ce81fKYa+lRTn92qrNxp+CdTXK75+Y5cz/kdqt6RyaeAmdGjy0nQsh
         pJA+npuhfTrQAC1SSOQ4o/fovTLzsdSKoqLX6pyVcG2ZhJ4H3WIHdRmpHfyWH2Zqp7U0
         2yrx0Xy0rkD3g6A1RXodoK5FKYbLUr8gFf8O2CQhfgcrUyZmAO9L2Cytpw+MDnNSUyMn
         19riLJfZqOc0BZnuVemwRpfwMTFBphr5JBNvjNw9w3t547gE2x63zEyc9DP5FxNRUJB3
         HmWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=xcBeWj1W;
       spf=neutral (google.com: 2607:f8b0:4864:20::1044 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id c10si848814pjo.2.2020.03.13.13.48.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 13:48:21 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1044 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=xcBeWj1W;
       spf=neutral (google.com: 2607:f8b0:4864:20::1044 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pj1-x1044.google.com with SMTP id np16so4741058pjb.4
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 13:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=urQtWxG3usYw5ZPNjstzJdBl04NPqkFbt1ebm9qnrjs=;
        b=xcBeWj1WjnXdVlCw5kZRxiYk4fGCJGYnPNAAz4TLlfjzhjM4aoO8SdAmAKrNBmCENl
         rp76MSxn7iAwsyiS9AbAPWTqrBWb+6JFfaouYI+Scw0uvxhIl0Q+medCArPQYLYU3NIp
         P5VTwbvBrQAt19vk5vCXbhUAB0DXEB9+UyMPbHqUaMhnJEJZIFLR8SX17kp3pqt5nV1C
         4HMAWhO7EsYEeV7rjhxOKVp3mUjCL7b+vYDpo9QoyWSInv/gb/0mojuxOH6/bVt48MOI
         j/tL1J2gY7Dc7Bxm0h/TYKyNq7ulbFJkO+wYgWXkDETAw4hxJhxqRCO8V74yxP3jpXjB
         2kKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=urQtWxG3usYw5ZPNjstzJdBl04NPqkFbt1ebm9qnrjs=;
        b=Zp29ukn3EBzER9OSCBG5Jl14DC52POF9BSTXL8ssutYPK+7AUUeMkGt7ZFoybl2Mf6
         4QH98A5t1BxH5jhjGj07yyBErYDT01pnuAOMKeld9miVxosXBVK8vwyyGqIWoq9/yf47
         CBEDp+XjIuU/tQuQ+1to5peQ6j6MV7+YBtt6Ks5oJxsvGfBI3wouFCAIMPgoTpWzvqCL
         5pe+fw544Mm5LXi+By1roy97F6EdKh/+WSVjrgdlkn28Qy93C3BOcFECD413QITk8yGk
         yfeSwi0I2Nqd9n5obEEwCufMFKagxGX56R+UfXoInNKF9B3QLB6mYs5sBt9uMEDswytf
         IaEg==
X-Gm-Message-State: ANhLgQ06BNF/dAxrlOwSyLrf0POu6g/RgySd7d4Xm1xbSLnIRFAFlroA
	l1KQiLsZmi0nQiFWteddG+tQCA==
X-Received: by 2002:a17:902:aa01:: with SMTP id be1mr10415095plb.227.1584132500922;
        Fri, 13 Mar 2020 13:48:20 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id g75sm8511161pje.37.2020.03.13.13.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 13:48:20 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH 4/5] staging: media: hanto: remove parentheses
Date: Sat, 14 Mar 2020 02:17:38 +0530
Message-Id: <20200313204739.32676-5-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313204739.32676-1-kgupta@es.iitr.ac.in>
References: <20200313204739.32676-1-kgupta@es.iitr.ac.in>

Remove unnecessary parentheses in file hantro_postproc.c. Check reported
by coccinelle.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/media/hantro/hantro_postproc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 28a85d301d7f..d99238f4753c 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -15,14 +15,14 @@
 #define HANTRO_PP_REG_WRITE(vpu, reg_name, val) \
 { \
 	hantro_reg_write((vpu), \
-			 &((vpu)->variant->postproc_regs->reg_name), \
+			 &(vpu)->variant->postproc_regs->reg_name, \
 			 (val)); \
 }
 
 #define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
 { \
 	hantro_reg_write_s((vpu), \
-			   &((vpu)->variant->postproc_regs->reg_name), \
+			   &(vpu)->variant->postproc_regs->reg_name, \
 			   (val)); \
 }
 
-- 
2.17.1


