X-GM-THRID: 7850599383040
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f25214db02e3b292,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.30.106 with SMTP id r10mr65370907igh.0.1426158641556;
        Thu, 12 Mar 2015 04:10:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.18.37 with SMTP id t5ls801594igd.44.gmail; Thu, 12 Mar 2015
 04:10:41 -0700 (PDT)
X-Received: by 10.50.112.228 with SMTP id it4mr65348705igb.6.1426158641025;
        Thu, 12 Mar 2015 04:10:41 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id ni4si1255977pdb.2.2015.03.12.04.10.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 04:10:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfl12 with SMTP id fl12so19302507pdb.9
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 04:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=wDdaGuGZ1h/Z2gwjRp5nZr+p1ApT5GZ55wWqyCvMTH0=;
        b=RFwBwWwFPfPCi6tLGVA2I9cdMEsAgVRaxFv3XuD64vwHLKZGWfsWmtbYTZuuPgbqNj
         M5yQf82wBqldK5XlfkTUEiNZytu1nvNr9QFLGLifRKPNm+2vx1BTd1fxmVWsQ6yhPdIT
         xpFzR3jL8tp45TjzXV4+qa5tyx8nY89ObiWPPeTBDOaWQqxJGvT6JHD8QGgMzA9B2Neb
         TalhLgrWQSSP9irm6XkIiIFSuQqu+PRaxWhfkCqkLFGuhweaVhKQCbTl2kch+vPFznp6
         lQB09ULEcTQpo1ev4EqRPvj4gViHagZeBRkur/Yrn5MG2i12uMU+yY+cwQw9PwwbON0z
         XQJg==
X-Received: by 10.66.129.198 with SMTP id ny6mr55128199pab.67.1426158640893;
        Thu, 12 Mar 2015 04:10:40 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id w1sm10521901pdp.25.2015.03.12.04.10.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 04:10:40 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Larry.Finger@lwfinger.net,
	Jes.Sorensen@redhat.com
Cc: Supriya Karanth <iskaranth@gmail.com>
Subject: [PATCH] staging: rtl8723au: Remove dead code
Date: Thu, 12 Mar 2015 20:10:00 +0900
Message-Id: <1426158600-30895-1-git-send-email-iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0

This dead code was detected by coccinelle while using --debug
option

Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_mlme_ext.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
index 0e0f73c..db4f235 100644
--- a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
@@ -1619,7 +1619,6 @@ OnAssocReq23a(struct rtw_adapter *padapter, struct recv_frame *precv_frame)
 			} else {
 				break;
 			}
-			p = p + p[1] + 2;
 		}
 	}
 
-- 
2.1.0


