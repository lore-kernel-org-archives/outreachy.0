X-GM-THRID: 6391116266457792512
X-Received: by 10.129.62.40 with SMTP id l40mr2763144ywa.67.1488047713023;
        Sat, 25 Feb 2017 10:35:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.2.76 with SMTP id 73ls1340929itu.13.gmail; Sat, 25 Feb 2017
 10:35:12 -0800 (PST)
X-Received: by 10.36.105.6 with SMTP id e6mr2424470itc.26.1488047712344;
        Sat, 25 Feb 2017 10:35:12 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c123si2001641pfa.4.2017.02.25.10.35.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 10:35:12 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so7371832pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 10:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Igv7HFlvEoqJwKFOwq9ke5DSpYlSxr7n/dEoQkK87TY=;
        b=gW+Oh8O0O/+C2sPc3s7v3LHQhBVbUpFM3YRbPbaIWzo1vJKpDvHmZ/q+PDNHpArWS4
         PZ5PTBc177yRPjMKRzU4/JjXm9z7thwVjixc2LNt+TZXcdQG0feTcHIqIzS1IuuIpf7R
         yoLpd56bFcSG74vvFW5reC1+E4FVTuN+IYVsftZ74uFNNLPqsf6pu91FT+Rur6c3zA5n
         PKnOyBR928as5/oE+nxz8oUpV8D8tt15fKLN+FebVNc+J/xEAgOKSKqIh2qPVL4MWCu8
         xBfzcJxL3v+k04slWqwGDXlGfYZXGieKK+KzokxMkXEYwD6lpA87FiGMxe1l8dw0SWDo
         NclA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Igv7HFlvEoqJwKFOwq9ke5DSpYlSxr7n/dEoQkK87TY=;
        b=iiGtloqqiXQSMRp4KJcDoq4P7xpiQTd8kWrwJjw0E/ts5sM415eVEW/VkoIpSviPDv
         WtR3O+BamR9I+gFu9Q2JZTYS0WbEPO3I8TySkfzElI8WgxN90JKLOuXBw2Fm87hAfvru
         2mm2LzJuFIR44siYIyE2OpYISm48xDPhXdyFoEcdS16F55in2COV0ydnYRSmRmaAVw+q
         aOYsr2IBBuTXY+AJxcz8vjLofjJICzmn9c86trnAmPCzed6JnLpt1CzUeuJEsj5mFXLU
         4IH51ECgrnU9GoLY12Fba2EK+fjVlzN1c5NJCKgz2QcHr4dzpL2YjWNYNUaqc7Q2J+pJ
         wIvQ==
X-Gm-Message-State: AMke39lmm93jPYF0Khf5TmRE+dxCqD0LRum7zfmbOb2SFykSjawWwOZvIYAKjNxRbSfZMw==
X-Received: by 10.98.106.134 with SMTP id f128mr3605438pfc.142.1488047711901;
        Sat, 25 Feb 2017 10:35:11 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.154.88])
        by smtp.gmail.com with ESMTPSA id d189sm267233pga.17.2017.02.25.10.35.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 10:35:11 -0800 (PST)
Message-ID: <58b1ce5f.c636630a.92bcd.0c2e@mx.google.com>
X-Google-Original-Message-ID: <20170225183508.GA7130@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 00:05:08 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/7] staging: sm750fb: Replace NULL comparison.
References: <cover.1488045682.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488045682.git.varshar186@gmail.com>
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


