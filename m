X-GM-THRID: 168866873344
X-Received: by 10.112.144.130 with SMTP id sm2mr3603727lbb.9.1424198065203;
        Tue, 17 Feb 2015 10:34:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.40 with SMTP id j8ls397900wif.44.gmail; Tue, 17 Feb
 2015 10:34:24 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr3801894wjc.2.1424198064925;
        Tue, 17 Feb 2015 10:34:24 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com. [74.125.82.169])
        by gmr-mx.google.com with ESMTPS id l8si5997069wia.0.2015.02.17.10.34.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 10:34:24 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.169 as permitted sender) client-ip=74.125.82.169;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.169 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-f169.google.com with SMTP id q59so160733wes.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 10:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2S12M5rCm1hyOrl/XmfuUWOPcz5p0I5+pC1PurRG6W4=;
        b=rP0ZHsUwBMcdiS+7AvgV/kMSsHE6pSC1LBHyNkT+PaHJY4OoOGL6nh8F9J8qOV0BG0
         450dNc/rlKPkwfyzEVmueADW6CPTJXDIrMwnlJxdPnvKiqM7IsjOO6e8ck0Z60NORsUs
         d2x51eddmW+A95UPNvRo++LIqaXBaE9FrJ75knP5fsPpuXskekQcTqj7ect9e6JFKP1d
         vhxJ3QSLNLbRMx0GX4kJdwQeN4H9hc6CISlNtRiqUJT51g+nxBVNtnrHSAgkDZrFLAj0
         g1lFddkGBriZ5NhyHfCRR7e2ihyShjze6ivhFWUItzsFbCEXOnKm0StPuKg49SPTc4hn
         5l6A==
X-Received: by 10.180.87.165 with SMTP id az5mr3974647wib.29.1424198064850;
        Tue, 17 Feb 2015 10:34:24 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.178.20])
        by mx.google.com with ESMTPSA id ax10sm28558197wjc.26.2015.02.17.10.34.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 10:34:24 -0800 (PST)
Date: Tue, 17 Feb 2015 20:34:18 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: ldlm: remove commented call to LBUG
Message-ID: <20150217183418.GA7795@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes a commented call to LBUG since lustre should be
cleaned out of debugging macros before moving out of staging.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
index 287da32..53226b8 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
@@ -1779,7 +1779,6 @@ int ldlm_cancel_resource_local(struct ldlm_resource *res,
 		if (opaque != NULL && lock->l_ast_data != opaque) {
 			LDLM_ERROR(lock, "data %p doesn't match opaque %p",
 				   lock->l_ast_data, opaque);
-			//LBUG();
 			continue;
 		}
 
-- 
1.9.3


