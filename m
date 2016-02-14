X-GM-THRID: 6251133411292872704
X-Received: by 10.112.169.5 with SMTP id aa5mr1195470lbc.12.1455455415203;
        Sun, 14 Feb 2016 05:10:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.131 with SMTP id q125ls91143lfe.69.gmail; Sun, 14 Feb
 2016 05:10:14 -0800 (PST)
X-Received: by 10.25.18.227 with SMTP id 96mr1212166lfs.4.1455455414676;
        Sun, 14 Feb 2016 05:10:14 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id h126si344214wme.0.2016.02.14.05.10.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 05:10:14 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x232.google.com with SMTP id g62so117426875wme.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 05:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HMdx5WtOqEI0fExgFC3S0nt5FehZQlo0Qohvk+6CAMo=;
        b=a8rNLfuxz4ir5ZLmWZpPvtB3qXTiHDlYLCllfxlM97VxjEL3/bNVKKVJUV8HZXedgD
         hzV1d8nU+tXBDRpMrvo2Avc6XmJaYCZkXZr3NO1o1rvUklpMf7nAFRCXAXPDxd+YvkRJ
         aO72k5LSMMDd0219ryZ9f7/KlvDirvTQ87aDn5tTa9P0qVT/mIqsd/OjYMeQiODXrsBu
         i/lRnG0awm0zWXDcBxZFOqDTb7cHly0P90dbocS/G7+dEl2pFJKKGhVlA0wQ07VUJHO7
         q/4eJRrgmIHCfr8kJhi19f+ZrLnuCgfWMYWD0jBx0xqp6wAQuGWa/arviB2aAEVBYt6e
         Irig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=HMdx5WtOqEI0fExgFC3S0nt5FehZQlo0Qohvk+6CAMo=;
        b=PBaku0LRYLd4FTdgbCivhdVb0gxj0o1zK1t7hRJSTGKzV9dAP4hAM0nlgaqkQOalGc
         EjmCFxAJn916oTD8s8pXvlmDbWIpMS91DGrhPn6tFTzYFcNTu286qfsU5XaWCMbMHJmL
         c9XU4ujskOMTG+qzhJKD9XEmuiNzToKgvi3lVaC/o2WMw3vtKSAbwp41FUvRNt4WtBjK
         mfhukqcD5HGSPahhfJOkAraA9OXl5E4ygroR9uTkK1T5Q8wZFXoeILFGNjt/5ijgJv3A
         OuKLbJ3UE9TNw2ZQRy6uu+DkV2hUkUXvON5Y3iFAaBl6wpw7saVZyd6oO9rvGsmJjye0
         uFqw==
X-Gm-Message-State: AG10YOS7x3KeYP9CxQtTmHzKvtwD3/RRVpwTwJ1CC2HO8M/im/SuXWAEWz0NMynBCzFymQ==
X-Received: by 10.194.78.4 with SMTP id x4mr2517987wjw.150.1455455414578;
        Sun, 14 Feb 2016 05:10:14 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id b1sm20702363wjy.0.2016.02.14.05.10.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 05:10:13 -0800 (PST)
Date: Sun, 14 Feb 2016 14:10:11 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: netlogic: Fix multiple irq assignments in a single
 line
Message-ID: <20160214131008.GA23396@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid the use of multiple assignments in a single line. Checkpatch
found this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/platform_net.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index 7806c2b..74e154f 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -86,7 +86,8 @@ static void xlr_resource_init(struct resource *res, int offset, int irq)
 
 	res++;
 	res->name = "gmac";
-	res->start = res->end = irq;
+	res->start = irq;
+	res->end = irq;
 	res->flags = IORESOURCE_IRQ;
 }
 
-- 
2.7.0


