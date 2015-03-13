X-GM-THRID: 8122735263744
X-Received: by 10.180.90.169 with SMTP id bx9mr4745544wib.6.1426274362752;
        Fri, 13 Mar 2015 12:19:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.132 with SMTP id b4ls471298lah.33.gmail; Fri, 13 Mar
 2015 12:19:22 -0700 (PDT)
X-Received: by 10.112.199.69 with SMTP id ji5mr7434183lbc.0.1426274362114;
        Fri, 13 Mar 2015 12:19:22 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id l8si206025wia.0.2015.03.13.12.19.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 12:19:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id n12so25352022wgh.6
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 12:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ydLFXuRdmYaI3c+radAsxnNabSaOK6+xCi0g5UXeen4=;
        b=HMYdAT32PMt+QVvV9lFPjBepTcoum0UXVgbwl9DI/fPcpmogcMDzHR4HCAtgwrZmpE
         +kLkPZOcFyUM3qyTblAQ0q2sGMa6QeTOSwdaUy74xImd4FeDRfuZZ4bwhVL/T0eFTKKk
         N2mI5j+S/gIMFNWEHvUsA4Xk6u0KJJsrAnHTIQmhna2LinZ+y8X2lfE0ya2CnaGD3KZe
         5gPWI6Ml4Xsg2r+d+o6CaDh/453UK9G9JEPd5ZMXoorrPeffFg9aQXh44Lmnupv1k1Tj
         pKvpegFqhbuNkdkP6QqVi5d29DO46S+DeWKMs0eZBpKDGkUd32rrwrMh7HzhCn78qBYf
         jl2A==
X-Received: by 10.194.179.194 with SMTP id di2mr98756759wjc.4.1426274362028;
        Fri, 13 Mar 2015 12:19:22 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id lb6sm4045879wjb.22.2015.03.13.12.19.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 12:19:21 -0700 (PDT)
Date: Fri, 13 Mar 2015 21:18:41 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: rtl8188eu: Bool tests don't need comparisons
Message-ID: <89c63fedf7d2979ad94f85a601bc6d8ef80fe142.1426273386.git.cristina.opriceana@gmail.com>
References: <cover.1426273386.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426273386.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch simplifies the if condition by removing the comparison to
bool values. It also removes the following coccinelle warning:
"WARNING: Comparison to bool".

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rf_cfg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
index 455ecdc..954cade 100644
--- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
@@ -295,7 +295,7 @@ static bool rf6052_conf_para(struct adapter *adapt)
 			break;
 		}
 
-		if (rtstatus != true)
+		if (!rtstatus)
 			return false;
 	}
 
-- 
1.9.1


