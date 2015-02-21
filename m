X-GM-THRID: 1800831762432
X-Received: by 10.180.80.7 with SMTP id n7mr298644wix.0.1424532461981;
        Sat, 21 Feb 2015 07:27:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.225 with SMTP id fb1ls282542wib.38.canary; Sat, 21 Feb
 2015 07:27:41 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr334836wjb.1.1424532461774;
        Sat, 21 Feb 2015 07:27:41 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x243.google.com (mail-wi0-x243.google.com. [2a00:1450:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id o3si309170wib.2.2015.02.21.07.27.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 07:27:41 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) client-ip=2a00:1450:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x243.google.com with SMTP id bs8so3601622wib.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 07:27:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=cgqrFUhd+8c9W8IeucgnElI5UagIjBz2G0WJaeLR6ac=;
        b=DvTRYZ4Q4RMXkWdq8I4FzGEDVl9IfY5mDniGZUORnDbxqW25fARHjr7hK8vzxz1gQN
         FuEtgw+EgqxQDtNQl18F/MUh3JXjvlKVeGepwm0eNncduCYLjrhA7jenLkjn2/Jg+P1Y
         CO6jLlMRJUgTgy2+Ejj6lyKb7hJH3INXEjxYR3fCN/9Y8PHb57P9J76tQnjLRCjkOk6T
         b7pYw5omKfYwXP6FR/Hnw+PzhjHnpGSoEB0pXBU2u0tWllXI2h48om0D1FltTj6vTFVp
         40fGjYfxdO45fHYAatWbZ8ysN6l2vUEyWYGzNxvxK2j+kfBqkMjYeXO4yfESG/HxklvE
         J/yA==
X-Received: by 10.180.91.79 with SMTP id cc15mr4940778wib.52.1424532461643;
        Sat, 21 Feb 2015 07:27:41 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id v7sm47046343wju.22.2015.02.21.07.27.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 07:27:41 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: Fix line over 80 characters
Date: Sat, 21 Feb 2015 17:27:20 +0200
Message-Id: <1424532440-17988-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with line over
80 characters in rtw_iol.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_iol.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_iol.c b/drivers/staging/rtl8188eu/core/rtw_iol.c
index 0d1a246..0d0980b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_iol.c
+++ b/drivers/staging/rtl8188eu/core/rtw_iol.c
@@ -26,7 +26,7 @@ bool rtw_IOL_applied(struct adapter  *adapter)
 		return true;
 
 	if ((2 == adapter->registrypriv.fw_iol) &&
-			 (!adapter_to_dvobj(adapter)->ishighspeed))
+	(!adapter_to_dvobj(adapter)->ishighspeed))
 		return true;
 	return false;
 }
-- 
1.9.1


