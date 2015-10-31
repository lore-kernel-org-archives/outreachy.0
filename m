X-GM-THRID: 6211822819926343680
X-Received: by 10.182.18.66 with SMTP id u2mr10459268obd.1.1446303127486;
        Sat, 31 Oct 2015 07:52:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.2 with SMTP id l2ls745290iol.105.gmail; Sat, 31 Oct
 2015 07:52:07 -0700 (PDT)
X-Received: by 10.107.10.22 with SMTP id u22mr11729067ioi.19.1446303127150;
        Sat, 31 Oct 2015 07:52:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si1212555pbb.0.2015.10.31.07.52.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 07:52:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv9so106151166pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 07:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=mxQ/7YVP2ZlnmQaA3SPkDMLWK7Q0Z+N8dSa2ubl7LdA=;
        b=kLIwORf+2tgft8FUHZ8nOJtrnBnEa5luXNs1fLnyU8vMePJJsK993jsyBIyyy4Z5cl
         Ir4fdC81fuBoUwD0VxABY9fXXFKdDW9pC4+DSCuHIv6YSv/dplUNAfvRyxw08KcSyu+Z
         DZHkU7AwUl7WZENo6AQIVetNRMTKWlFWLM59yWcm/sTiURoFQxiYxORuMEDU4tjjo+Xu
         uNKOp4yRkViv1q6yLOsBtlAoKP47v/ZU19BRzgfN5ZV3pvsmLR50SVgKnkaj/ts5eC9i
         +U1YF4FlK6Hqbj+lqPJQar5AvXRylxOX8RZrz8YrrwUEpxvpgblSiG9tsAbDHgCFuwYN
         AnRA==
X-Received: by 10.68.216.229 with SMTP id ot5mr15200259pbc.15.1446303126979;
        Sat, 31 Oct 2015 07:52:06 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.37.188])
        by smtp.gmail.com with ESMTPSA id rz9sm14312552pbb.61.2015.10.31.07.52.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 07:52:06 -0700 (PDT)
Date: Sat, 31 Oct 2015 20:22:03 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: rtl8192e: Remove unnecessary variable
Message-ID: <d358ecb9d7250797596a229456d014e2af5ad30c.1446302505.git.amitoj1606@gmail.com>
References: <cover.1446302505.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446302505.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes unnecessary variable by using a single line of code
instead.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
index 0b407fe..5e3bbe5 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
@@ -90,13 +90,12 @@ void rtl92e_set_bb_reg(struct net_device *dev, u32 dwRegAddr, u32 dwBitMask,
 
 u32 rtl92e_get_bb_reg(struct net_device *dev, u32 dwRegAddr, u32 dwBitMask)
 {
-	u32 Ret = 0, OriginalValue, BitShift;
+	u32 OriginalValue, BitShift;
 
 	OriginalValue = rtl92e_readl(dev, dwRegAddr);
 	BitShift = _rtl92e_calculate_bit_shift(dwBitMask);
-	Ret = (OriginalValue & dwBitMask) >> BitShift;
 
-	return Ret;
+	return (OriginalValue & dwBitMask) >> BitShift;
 }
 
 static u32 _rtl92e_phy_rf_read(struct net_device *dev,
-- 
1.9.1


