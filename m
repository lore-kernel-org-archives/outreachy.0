X-GM-THRID: 6208143559134019584
X-Received: by 10.31.7.70 with SMTP id 67mr13366794vkh.2.1445532439974;
        Thu, 22 Oct 2015 09:47:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.143 with SMTP id r15ls90808ioi.75.gmail; Thu, 22 Oct
 2015 09:47:19 -0700 (PDT)
X-Received: by 10.107.159.132 with SMTP id i126mr1491533ioe.23.1445532439616;
        Thu, 22 Oct 2015 09:47:19 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id sm2si435634pab.0.2015.10.22.09.47.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 09:47:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id z6so91116382pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 09:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=dK7rycFWdOcROPhIYBOj/V6gmfKk0Rr2zjbCfB5j188=;
        b=pyrcFbZ0ghDSiy9Luv2sfSpH+otlkSoKc2bihrWM3z7HWYmIi1wtN+vMiWCLzbhmHG
         m/fyj4oJClCIOlhHJuOtPt/224DWd6i/GA1TAfag2jmcXaChe/GEEx6hlTqt3DsUktgV
         ss2+Snv0l0Dlr/wo2MzVkeL+grdTnv2GFeVQ6PZSfxyp7WyD0KlswLQsiCPFSAf6SbVh
         tcgMDE7bcEiTjVeTUaorw+7JOB/3CBroHwbfapCrCPDE++WQSdQX9Qyh/5pfAcAw8ccQ
         BUH2tRd27uGa989bEMZzw/tWj5rCcfxtZA4+LZe93ljSOVuQqvZcJP3lj00mUjG8zhr3
         zAVw==
X-Received: by 10.66.146.4 with SMTP id sy4mr18451470pab.79.1445532439495;
        Thu, 22 Oct 2015 09:47:19 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.34.222])
        by smtp.gmail.com with ESMTPSA id d2sm14722694pat.24.2015.10.22.09.47.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 09:47:19 -0700 (PDT)
Date: Thu, 22 Oct 2015 22:17:24 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/4] Staging: xgifb: Remove extra blank lines.
Message-ID: <d9385e1927a6d7a6e7bbc8a7b5a937955b299256.1445527912.git.navyasri.tech@gmail.com>
References: <cover.1445527912.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445527912.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl check:

CHECK: Please don't use multiple blank lines

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
   -None in this patch

 drivers/staging/xgifb/vb_init.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index 7982f07..af91523 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -498,7 +498,6 @@ static void XGINew_SetDRAMDefaultRegister340(
 	xgifb_reg_set(P3c4, 0x1B, 0x03); /* SR1B */
 }
 
-
 static unsigned short XGINew_SetDRAMSize20Reg(
 		unsigned short dram_size,
 		struct vb_device_info *pVBInfo)
-- 
1.9.1


