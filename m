X-GM-THRID: 6211239444830224384
X-Received: by 10.112.209.73 with SMTP id mk9mr1078140lbc.14.1446166880151;
        Thu, 29 Oct 2015 18:01:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.201 with SMTP id 70ls161120lfw.11.gmail; Thu, 29 Oct
 2015 18:01:19 -0700 (PDT)
X-Received: by 10.112.55.2 with SMTP id n2mr1094320lbp.9.1446166879527;
        Thu, 29 Oct 2015 18:01:19 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id m135si13786wmb.0.2015.10.29.18.01.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 18:01:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fx6so923397wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 18:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=IekkfA35al4hPEMD7ER4k6Gdxqxphz+O5KTfAUJ1nBc=;
        b=JHhgX8mC36Vc1iOdfLgk6ga49WKCYZcTnv1nWcREKAVaA7gDFb7yX6zUWJ+OufMybT
         TifC97+yMf3WfLYdstHOW7VATCRFPfT2HzfaB+VGvWxfF5ne8/LlzFmHth3EKh3+IGGm
         ylYa0SW2bAjeeepGYKK0EmLSBnBnebxSxqlE0ncmFavu60rzDiHE5WoS8SyqHPhbOpYN
         tPrZk2kV/Vq7iXL3JT1S9ZOKSAetZ1ucGgZ2D4BCZPAAXsDdzEZeXyKxHO4DO+eXZl5T
         gg2Ql+rfNnDq+2fjU7wiTeQ8SLkeWRFFWC+7lYFlCS76a10+yNFjAHvAfehPRbizuDTh
         3Neg==
X-Received: by 10.194.189.49 with SMTP id gf17mr6132452wjc.158.1446166879405;
        Thu, 29 Oct 2015 18:01:19 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.182.227.7])
        by smtp.gmail.com with ESMTPSA id gl9sm4428082wjb.10.2015.10.29.18.01.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 18:01:18 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH 2/2] staging: octeon: Do not use multiple blank lines.
Date: Fri, 30 Oct 2015 04:01:02 +0300
Message-Id: <1446166862-1859-2-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1446166862-1859-1-git-send-email-brcnakalin@gmail.com>
References: <1446166862-1859-1-git-send-email-brcnakalin@gmail.com>

Remove multiple blank lines. Problem found using checkpatch.pl
"CHECK: Please don't use multiple blank lines"

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/octeon/ethernet-defines.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet-defines.h b/drivers/staging/octeon/ethernet-defines.h
index d683348..e2ad5b6 100644
--- a/drivers/staging/octeon/ethernet-defines.h
+++ b/drivers/staging/octeon/ethernet-defines.h
@@ -42,5 +42,4 @@
 
 #define TOTAL_NUMBER_OF_PORTS       (CVMX_PIP_NUM_INPUT_PORTS + 1)
 
-
 #endif /* __ETHERNET_DEFINES_H__ */
-- 
1.9.1


