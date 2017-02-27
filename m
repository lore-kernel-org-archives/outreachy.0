X-GM-THRID: 6391116266457792512
X-Received: by 10.200.57.65 with SMTP id t1mr5035974qtb.62.1488190389219;
        Mon, 27 Feb 2017 02:13:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.129 with SMTP id c1ls13344587ote.14.gmail; Mon, 27 Feb
 2017 02:13:08 -0800 (PST)
X-Received: by 10.13.204.85 with SMTP id o82mr3370674ywd.17.1488190388872;
        Mon, 27 Feb 2017 02:13:08 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id f7si3043338pfk.5.2017.02.27.02.13.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 02:13:08 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 1so497143pgz.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 02:13:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Igv7HFlvEoqJwKFOwq9ke5DSpYlSxr7n/dEoQkK87TY=;
        b=m1Cp61p9AEI1RPgJvd2zmrLvwDWvl2GZi/PXuVSRIbJfy4sh8p8+/yUIa4bZGGPlZI
         CO+z5MTLVOuOEUzr7v7BvdjJpsxtAhEwUSXStUpabD6yW92w2GGVIrp87XiWCCu4zknv
         BOt7GAJRrCtyGiTetrkCaME5fZebxyR9skjvOk4RgrLjhr6N1Ty0S/oYw4W29oQKd8rK
         Z0aKTDticnjQxK1k4C5z0LnyM9Ke1ModOaLdD0Mrvj2++NRl/eArMAaGGP+1ro72+MXK
         A3w7vNDwKabQylRSjUj1h962A7YdG++tDwTJ6unQX8J0n+P9vrQWw9yIVlLVkqT8YToW
         VpJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Igv7HFlvEoqJwKFOwq9ke5DSpYlSxr7n/dEoQkK87TY=;
        b=WPVZvA6r4nFuIZh3f9ZdjyE7dfOuVFMGQmRZwgSwK5VDMakVi1fzuduhsi/RtHHgmO
         ywxQWDeFnz80tRf7B/9IvgrojWgOqcjb3xBDxWpsxw8QA+7rBNovAdJZQfFN4cOVIoaT
         J/Z4IjTs+OU55fkd+M+YRygD9r5LQBvIkrYCzmQFygKoDvPA5KKNxuVt1ZMOrhfNH8h7
         iGgmkewq8jI/tmcF9lgtxtX0ejf41E8pMi4if8k36aOIY/zsHw9TctEGeXIvAEPqjgYK
         XcTJvsOEBQADoBz17YoqfJlcqx2Gxd53tgeTK9VPGC7AEs7G+PNcQ2PMCx1QAwISB4L2
         g7gA==
X-Gm-Message-State: AMke39nDQzHhjGtVM/DIEc79MW3GWypz9n7wOzs3wH0gDXOKjOvvNeUxJ40UOdd4Ep1tqw==
X-Received: by 10.99.164.18 with SMTP id c18mr20030045pgf.40.1488190388646;
        Mon, 27 Feb 2017 02:13:08 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.171])
        by smtp.gmail.com with ESMTPSA id k184sm29755286pgc.23.2017.02.27.02.13.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 02:13:08 -0800 (PST)
Message-ID: <58b3fbb4.c16f630a.d8691.f25a@mx.google.com>
X-Google-Original-Message-ID: <20170227101254.GA2857@<rvarsha016@gmail.com>>
Date: Mon, 27 Feb 2017 15:42:55 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v5 6/7] staging: sm750fb: Replace NULL comparison.
References: <cover.1488189320.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488189320.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Replaced NULL comparison with pCurrentDviCtrl->pfnInit. This patch fixes
the following checkpatch issue:

CHECK: Comparison to NULL could be written "pCurrentDviCtrl->pfnInit"

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/ddk750_dvi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index 42c753f..171ae06 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -45,7 +45,7 @@ int dviInit(
 	dvi_ctrl_device_t *pCurrentDviCtrl;
 
 	pCurrentDviCtrl = g_dcftSupportedDviController;
-	if (pCurrentDviCtrl->pfnInit != NULL) {
+	if (pCurrentDviCtrl->pfnInit) {
 		return pCurrentDviCtrl->pfnInit(edgeSelect, busSelect, dualEdgeClkSelect, hsyncEnable,
 						vsyncEnable, deskewEnable, deskewSetting, continuousSyncEnable,
 						pllFilterEnable, pllFilterValue);
-- 
2.9.3


