X-GM-THRID: 6670387249152
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4a49f0ceb0e3d548,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.87.166 with SMTP id az6mr4194422wib.1.1425503707540;
        Wed, 04 Mar 2015 13:15:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.76.238 with SMTP id n14ls204446wiw.47.canary; Wed, 04 Mar
 2015 13:15:07 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr1459993wib.7.1425503707018;
        Wed, 04 Mar 2015 13:15:07 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id i7si1201797wif.0.2015.03.04.13.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 13:15:07 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22a.google.com with SMTP id k11so48966862wes.11
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 13:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=bY/Zdel5Pw4XOjPmn+YZW4GY/wUtuezhdXwhnsgfQEg=;
        b=r8GttWXHkb1oV690+n1M97tpqTZkSSU7NGSlnziyBdPdSYO0PJ45foU69pyHLEXuWl
         oMwl5Ukr4o+RX8LNWvWA8AM1sZck+pwiP0rWdpoFTGXyY8BXlGpBwN3H37Zp7cO2cm/p
         EZ+C+9c1W9l/4+LRUjvWKaDgQx+ejUl3bklWN64Yt8MPSLbxLG9CtRggrn/tWl77I/bi
         gd3iqMMSBQ12tHmOrp9iSNjqYHGwXguZmqAKnkUw+1P13K47Y71lUrdfKYbe3gjBaI/H
         4lUu4CL9pumnL23P+bxcwAiJKdFMKOGQsnMMwFIwxQFDAVuoCv/fhO/RAWf9zZYoAz1Y
         eD7w==
X-Received: by 10.180.14.196 with SMTP id r4mr58924332wic.77.1425503706944;
        Wed, 04 Mar 2015 13:15:06 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([85.107.63.81])
        by mx.google.com with ESMTPSA id i10sm6012537wja.40.2015.03.04.13.15.03
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 13:15:06 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: rtl8723au: Fixed error 'else should follow close brace '}".
Date: Wed,  4 Mar 2015 23:15:16 +0200
Message-Id: <1425503716-13317-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes error 'else should follow close brace '}"
found by checkpatch in driver rtl8723au.

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index a6deddc..29fc25b 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -304,8 +304,7 @@ EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
 		}
 		data = rtl8723au_read8(Adapter, EFUSE_CTRL);
 		return data;
-	}
-	else
+	} else
 		return 0xFF;
 }/* EFUSE_Read1Byte23a */
 
-- 
1.8.3.2


