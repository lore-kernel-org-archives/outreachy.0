X-GM-THRID: 6209065689827770368
X-Received: by 10.107.14.196 with SMTP id 187mr20793145ioo.24.1445661216085;
        Fri, 23 Oct 2015 21:33:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.5 with SMTP id h5ls2358428qge.77.gmail; Fri, 23 Oct
 2015 21:33:35 -0700 (PDT)
X-Received: by 10.129.148.129 with SMTP id l123mr5214186ywg.35.1445661215606;
        Fri, 23 Oct 2015 21:33:35 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id sm2si1255404pab.0.2015.10.23.21.33.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 21:33:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id rc13so134819890pab.0
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 21:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=yDIwvIYanwNswYzE+OcLMngpIENDv5EQRt4+QbePttg=;
        b=hP0tJuhcmjLbHG/0DiGi5xE85Ch8MK2Z66yA63vujx+Y2/HADLSBNXgGp3rGzSp1NU
         rL+yBteGUpBbk+EUHC3vnU1Q6Sua/ciRi4VyMo4ZJNFOKtL8g2ElymCBBvHnTz/KYZj3
         /B8wDsv/7FOd9P6xKyv8I77fubMMHb6dJ9m/hMq1R4xAzciex7VCYuf6P2VEme0G+8fc
         /G68avlYg6tOnLzykZiPijP/OVpcmuxjpOsgP8vFCaTVfiTSUi/+lSoX2/D8W8ghv+ZF
         1/A/mFuDL05VQoB8gs5vJ6lMVci+HghARIuKfV5zht34zmZNTT3kRsoIIWnZtgRNa6ZK
         qLMg==
X-Received: by 10.68.132.166 with SMTP id ov6mr9206598pbb.124.1445661215444;
        Fri, 23 Oct 2015 21:33:35 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id sn9sm21772955pac.16.2015.10.23.21.33.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Oct 2015 21:33:35 -0700 (PDT)
Date: Fri, 23 Oct 2015 21:33:34 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: r8723au: remove externs and include needed
 header file
Message-ID: <be00cb7977489e035baf713c418f284c4abf64fc.1445653471.git.amsfield22@gmail.com>
References: <cover.1445653471.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445653471.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove extern declaration and add include of header file to get same.

Addresses checkpatch.pl:
WARNING: externs should be avoided in .c files

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index 12552f6..aad6db7 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -21,10 +21,7 @@
 #include <rtl8723a_cmd.h>
 #include <rtl8723a_hal.h>
 #include <asm/unaligned.h>
-
-extern unsigned char WMM_OUI23A[];
-extern unsigned char WPS_OUI23A[];
-extern unsigned char P2P_OUI23A[];
+#include <rtw_mlme_ext.h>
 
 void init_mlme_ap_info23a(struct rtw_adapter *padapter)
 {
-- 
2.1.4


