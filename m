X-GM-THRID: 6257131864000036864
X-Received: by 10.66.142.230 with SMTP id rz6mr17863745pab.31.1456852443261;
        Tue, 01 Mar 2016 09:14:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.158 with SMTP id 30ls1818713iop.100.gmail; Tue, 01 Mar
 2016 09:14:02 -0800 (PST)
X-Received: by 10.66.220.67 with SMTP id pu3mr17703962pac.19.1456852442900;
        Tue, 01 Mar 2016 09:14:02 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ff2si4889060pad.2.2016.03.01.09.14.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 09:14:02 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id l6so1779583pfl.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 09:14:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rD4pfqhDzCLhzGYiICGRcEC4bavybFTY+VuXMex2Pr4=;
        b=eQMc7TBO9AE3522BIB+ZDePaZBIsAU7dEzrSDF0WlWRFwjKSUQzdHKUD0NulAu8bl3
         pHc8C4+P8q1UVHlq0eFEh/MTZbuFKYvHWkCJv2lMpTQkfPCuqoKSKs0lGql8rbwSzHZT
         7/hSuxArm1Af9bsLsCb63t+MwMfI681RG8bvvzW2DkPwpEpIXXrm/KCAj+dzhvCuUyrq
         md7KJV58m+frqtB4bAXah6ySrqmcFw3t4zcSbNz7YRN49Lr6aXLp36GnmwSolI7d7uNr
         oEwosTJlgAoFg/AaPNuV9V9UUewmPg3fH355WB+/FWOB3X3Z58CGgR2yEw/39cNx0FEZ
         vhwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rD4pfqhDzCLhzGYiICGRcEC4bavybFTY+VuXMex2Pr4=;
        b=QoAs3Fc4QVCazKlaMLyeAA4pbtYerRVTfINlNfIPhD+ZjrBFYfXIGnNAQkMc6fwT5y
         jKlkfVJs8SpJEwQFSfmczqcyciBi3Cc4yVf65fYpwXPlsakBB/mTGPd3rAe7u3GJZlj8
         qeLW0Otb1R/kG/IIxHNrJbrGYZohfzoWcWXklKBI+qMwOn5QjuUcQEx7jIfjCDyLKCYa
         mTqojzJ+H9VxajKvAv2NYj5yrGhKGTx5JFDftJC2yKGwmBYN4VubMZSlS/7G5ANZA2jN
         rB/EBIaBlNADAHe4oA70L64jRX23+/5t1xTBBeB8k8GG2LMQ7D2ERbdbHZnzzDm1a8+s
         5K6w==
X-Gm-Message-State: AD7BkJIAIiEq/VfSBzO0k1ZeUivmVKghxT7fBeWCC8tiPlrY9cLecMx3AbdsIc098eaItA==
X-Received: by 10.98.75.129 with SMTP id d1mr2015387pfj.148.1456852442740;
        Tue, 01 Mar 2016 09:14:02 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.66])
        by smtp.gmail.com with ESMTPSA id 27sm46868391pfh.48.2016.03.01.09.14.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 09:14:01 -0800 (PST)
Date: Tue, 1 Mar 2016 14:44:11 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] Staging: rtl8188eu: rtw_efuse: Do not print message if
 kzalloc() failed.
Message-ID: <7d9d1f27039f195d3f31bd061307e67470d38334.1456822984.git.bankarsandhya512@gmail.com>
References: <cover.1456822984.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456822984.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index fd8cf47..34d789c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -104,8 +104,7 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
 	u8 u1temp = 0;
 
 	efuseTbl = kzalloc(EFUSE_MAP_LEN_88E, GFP_KERNEL);
-	if (efuseTbl == NULL) {
-		DBG_88E("%s: alloc efuseTbl fail!\n", __func__);
+	if (!efuseTbl) {
 		return;
 	}
 
-- 
1.8.3.4


