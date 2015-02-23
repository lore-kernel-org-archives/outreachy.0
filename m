X-GM-THRID: 2698279649280
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a6cf1b5024c222ad
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.191.65 with SMTP id gw1mr11318813obc.40.1424682993435;
        Mon, 23 Feb 2015 01:16:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.51.16.129 with SMTP id fw1ls689279igd.2.gmail; Mon, 23 Feb
 2015 01:16:33 -0800 (PST)
X-Received: by 10.66.196.11 with SMTP id ii11mr11197101pac.37.1424682993252;
        Mon, 23 Feb 2015 01:16:33 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ri9si134249pdb.1.2015.02.23.01.16.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 01:16:33 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id lf10so25986367pab.12
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 01:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=FUi3zS6IcOOkjLXc0Z1J/r6/zNtwew5UcrJDtEDZMqQ=;
        b=ZGrwZVlLAl1LFk08fIvITDoiAxBK5W+UuvMGcQO/+WCW/nEVO+cpXIl5/VTaIqyfWK
         fHoC8sL9R51GLjlgwkOUr6+6Mfkigygo+fXchR1JRgVGmCXwAIwWHDkLEW8x2nDXV4j2
         crGZMRty+QoP1UPsVaDJ8wFORn4xdbgO50oYVINN4S6UW8lDvvJkV4uu6Ac4LC8vN7cd
         I0uGcvB+67iECVdVMo8VAB57qoXEDIQcROlNXNWyU6matINLvxW/HUHVZ4fCNKRwqAKB
         q/clbTYnyPw74pXzVezOPYVpfI9vbHjlA4KSovxOfg2s4yB75Ab+Ue5CNj+ylvlR89bm
         b3Yw==
X-Received: by 10.68.177.229 with SMTP id ct5mr5128099pbc.83.1424682993184;
        Mon, 23 Feb 2015 01:16:33 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id ck11sm35258680pac.5.2015.02.23.01.16.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:16:31 -0800 (PST)
Date: Mon, 23 Feb 2015 14:46:13 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove unnecessary variable
Message-ID: <20150223091613.GA4359@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary variable and replace its uses with previously
defined variable.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 623fb4f..341f0db 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -117,10 +117,9 @@ static void rf_serial_write(struct adapter *adapt,
 	u32 data_and_addr = 0;
 	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
 	struct bb_reg_def *phyreg = &hal_data->PHYRegDef[rfpath];
-	u32 newoffset;
 
-	newoffset = offset & 0xff;
-	data_and_addr = ((newoffset<<20) | (data&0x000fffff)) & 0x0fffffff;
+	offset &= 0xff;
+	data_and_addr = ((offset<<20) | (data&0x000fffff)) & 0x0fffffff;
 	phy_set_bb_reg(adapt, phyreg->rf3wireOffset, bMaskDWord, data_and_addr);
 }
 
-- 
1.9.1


