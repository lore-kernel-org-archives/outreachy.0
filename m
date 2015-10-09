X-GM-THRID: 6203096899740762112
X-Received: by 10.31.44.18 with SMTP id s18mr9537798vks.6.1444372063492;
        Thu, 08 Oct 2015 23:27:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.208 with SMTP id c74ls1171782qgd.66.gmail; Thu, 08 Oct
 2015 23:27:42 -0700 (PDT)
X-Received: by 10.13.216.77 with SMTP id a74mr10389934ywe.9.1444372062954;
        Thu, 08 Oct 2015 23:27:42 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si11916pbb.0.2015.10.08.23.27.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 23:27:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id ve7so18891422pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 23:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=UGfKV6Kx9XVj5csnikqTxaYxdMz5GktvOowRacy8UGk=;
        b=lZlAWQCaF47ueaS5/TAUCPr3XGAEKfITjXWvn83321hS1rsTIQ6QcIMd7BYRgiaRIc
         B0GHWPhKcpSmrd14CHw+z+EKbPfAfZMDk6pNhq16PAKnE0VEMYi3vgH8B4wirIfSjezB
         OKCVm+30aWkXSLoXJOQDhM6+xb7OcZh8cdiSp4S/gB1rp63OdchoivR+vXmi9ri2o44U
         4qKVv/GXpnSh3SJz8tb8wlMsbedb19j31MuvlGHG1Cbgs9DMUfPyomRrdF4s5AVqAQc8
         xZeUJTNcwG3+S5MvqmrFfQqw9ck2tvpinf4kbOZQ9UmBaM96ligUi0aPCJZ40tMLxOIr
         sanA==
X-Received: by 10.66.216.39 with SMTP id on7mr13047282pac.73.1444372062748;
        Thu, 08 Oct 2015 23:27:42 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.83.3])
        by smtp.gmail.com with ESMTPSA id gv1sm102765pbc.38.2015.10.08.23.27.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 23:27:42 -0700 (PDT)
Date: Fri, 9 Oct 2015 11:57:38 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Remove multiple blank lines
Message-ID: <20151009062738.GA20505@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove multiple blank lines. Problem found using checkpatch.pl
CHECK: Please don't use multiple blank lines

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index a15bcd1..f9960f5 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -273,7 +273,6 @@ int ddk750_initHw(initchip_param_t *pInitParam)
 	/* Set up master clock */
 	setMasterClock(MHz(pInitParam->masterClock));
 
-
 	/* Reset the memory controller. If the memory controller is not reset in SM750,
 	   the system might hang when sw accesses the memory.
 	   The memory should be resetted after changing the MXCLK.
@@ -388,7 +387,6 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 		xcnt = sizeof(xparm_MXCLK) / sizeof(xparm_MXCLK[0]);
 	}
 
-
 	for (N = 15; N > 1; N--) {
 		/* RN will not exceed maximum long if @request <= 285 MHZ (for 32bit cpu) */
 		RN = N * request;
@@ -443,4 +441,3 @@ unsigned int formatPllReg(pll_value_t *pPLL)
 	return ulPllReg;
 }
 
-
-- 
1.9.1


