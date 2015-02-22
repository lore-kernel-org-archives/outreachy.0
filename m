X-GM-THRID: 2532715790336
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1fe12539ed2f9d18,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.37.200 with SMTP id a8mr783691lak.5.1424623229408;
        Sun, 22 Feb 2015 08:40:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.243.37 with SMTP id wv5ls120020lac.59.gmail; Sun, 22 Feb
 2015 08:40:28 -0800 (PST)
X-Received: by 10.152.26.74 with SMTP id j10mr782124lag.10.1424623228421;
        Sun, 22 Feb 2015 08:40:28 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id r6si519059wix.0.2015.02.22.08.40.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 08:40:28 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id em10so15025778wid.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 08:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=gGewvv/QsP3KraxjwzuCI49YtS2nTWvnnK30AzD5B4w=;
        b=bT/0EUE6EdSaL3WNChDwrAytGLW4NN3ZZ0cKtYNccmyNFC2/4VPDe7lmUBufYEil2n
         bLyPRrnZpMYbK2w07Uy2zPdmVj8YHhQeirrKOZdvj4LvRRnxx/2dUVibeFe67avHQlym
         w/4d9DyJk1yMlF+eOj3g9NUQ6t4OI7rZb/RQEMmn/dIF5CcS/gitEfGxoLoqEV7gBLgU
         zhoOtDOoZ0wfZ6BmuY/Nn8mXaj1W210M8UjMZSTi+4fmiTX9taAsRbFd/oCNFHO3RHbr
         JD/k3FpVqvJICOipG53fQVQknwpJy8YxVZNe+zWb0udD+NjgBrOV3ed/R+xEcz2VCv1B
         VRRQ==
X-Received: by 10.180.72.211 with SMTP id f19mr13405003wiv.9.1424623228335;
        Sun, 22 Feb 2015 08:40:28 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id dx11sm48873449wjb.23.2015.02.22.08.40.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 08:40:27 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8712: Remove unnecessary else after return or break
Date: Sun, 22 Feb 2015 18:40:18 +0200
Message-Id: <1424623218-9487-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning in files of rtl8712
WARNING: else is not generally useful after a break or return

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 9bb364f..3a1b8b2 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -612,8 +612,8 @@ static int r871x_set_wpa_ie(struct _adapter *padapter, char *pie,
 					netdev_info(padapter->pnetdev, "r8712u: SET WPS_IE, wps_phase==true\n");
 					cnt += buf[cnt+1]+2;
 					break;
-				} else
-					cnt += buf[cnt + 1] + 2;
+				}
+				cnt += buf[cnt + 1] + 2;
 			}
 		}
 	}
-- 
1.9.1


