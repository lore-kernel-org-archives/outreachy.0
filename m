X-GM-THRID: 6203360253861429248
X-Received: by 10.68.239.226 with SMTP id vv2mr12687875pbc.13.1444423894704;
        Fri, 09 Oct 2015 13:51:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.22.231 with SMTP id h7ls853004obf.64.gmail; Fri, 09 Oct
 2015 13:51:34 -0700 (PDT)
X-Received: by 10.182.46.196 with SMTP id x4mr13139796obm.22.1444423894420;
        Fri, 09 Oct 2015 13:51:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id zg1si332875pbb.2.2015.10.09.13.51.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 13:51:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id hy16so95977593pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 13:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=gx8rlW5TJzPUaegM2qZgAjuXkefR/UMJdwJdgffpXzg=;
        b=gbsiU9MR/raHHbyN3gNkMwicNpZNwLXtT3zPxdDmLYuwkkVL/+IkkjsG/zED97W1oS
         KxRUTTKLPNbCPYfgx0bOTcRcLSPSB2vcK5bRmGNRmWbNNz1CVlBq5x/hL6xMrzQgbKGJ
         IqjBXsgkl8I5D3vRmLfMkgc73De+alnyEgazw3tcrHl1mA2wMN12+TfpJes/SYKCJvuB
         w5aC6R43kTmjAmPgyGXCeEI5GYHkdHhikw4bCnrelIg0H8pvIMpWmGSeUNmp1P5TTok5
         DmdiqBOelj37n/3idTmGr04mV2L8mkLfrm3e/X3S1pIw9DHrHlKJlrFJF9MxbarcrgEP
         vn2A==
X-Received: by 10.67.5.66 with SMTP id ck2mr17388731pad.137.1444423894277;
        Fri, 09 Oct 2015 13:51:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.135.155])
        by smtp.gmail.com with ESMTPSA id pu5sm4148370pbc.58.2015.10.09.13.51.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 09 Oct 2015 13:51:33 -0700 (PDT)
Date: Sat, 10 Oct 2015 02:21:30 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: sm750fb: Add space around '&'
Message-ID: <34a4276e3c7c3cc5f800f110df584d07556c602c.1444423168.git.amitoj1606@gmail.com>
References: <cover.1444423168.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444423168.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add space around operator '&'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '&' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index f8005c2..84f6e8b 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -228,17 +228,17 @@ void ddk750_setLogicalDispOut(disp_output_t output)
 
 	if (output & PRI_TP_USAGE) {
 		/* set primary timing and plane en_bit */
-		setDisplayControl(0, (output&PRI_TP_MASK) >> PRI_TP_OFFSET);
+		setDisplayControl(0, (output & PRI_TP_MASK) >> PRI_TP_OFFSET);
 	}
 
 	if (output & SEC_TP_USAGE) {
 		/* set secondary timing and plane en_bit*/
-		setDisplayControl(1, (output&SEC_TP_MASK) >> SEC_TP_OFFSET);
+		setDisplayControl(1, (output & SEC_TP_MASK) >> SEC_TP_OFFSET);
 	}
 
 	if (output & PNL_SEQ_USAGE) {
 		/* set  panel sequence */
-		swPanelPowerSequence((output&PNL_SEQ_MASK) >> PNL_SEQ_OFFSET, 4);
+		swPanelPowerSequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET, 4);
 	}
 
 	if (output & DAC_USAGE)
-- 
1.9.1


