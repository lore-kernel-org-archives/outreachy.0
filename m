X-GM-THRID: 6598140362752
X-Received: by 10.42.190.14 with SMTP id dg14mr10268413icb.6.1425751261252;
        Sat, 07 Mar 2015 10:01:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.51 with SMTP id 48ls780335qga.15.gmail; Sat, 07 Mar
 2015 10:01:01 -0800 (PST)
X-Received: by 10.236.36.39 with SMTP id v27mr19451346yha.24.1425751261107;
        Sat, 07 Mar 2015 10:01:01 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id gb13si1796421pac.2.2015.03.07.10.01.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 10:01:01 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22e.google.com with SMTP id fp1so46380341pdb.7
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 10:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=aORareBrcdl7gXAc1tp7VSiH1qUEky5r9LKsxbJc92w=;
        b=Sf3xPRSxp4ovvLxHx1UYDznCO19Onoirx2FpbPxzKa8s1gLbeR2w0JjiTF6t4ov2k5
         /QtQf25aekDma++EmXW5DIp5EOspQtEtYB/jwtQqSS3QKfe610+MlsI5ydowKiJZiPeq
         W2D1mGNIQW18Euy/PQZuz2Mm/hCWdJLHfIzRmbKoJWrRyVtc/XHEraRHD19pKW+d5xE0
         CYyT+RN5aBTAm1UbZ5NYD0jW0ZCFpSEOujMTt/yTsL8YvRLrlczCbtaDxNk8sCzUzFPS
         q6My17QyNbMRQRTOveYIfR02W605HP4cIV6hgquhn+Tg7fjds4/eezp28E8i/0pALH5H
         P4+w==
X-Received: by 10.66.55.74 with SMTP id q10mr36548795pap.94.1425751260983;
        Sat, 07 Mar 2015 10:01:00 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([106.218.78.166])
        by mx.google.com with ESMTPSA id zs9sm12863291pbc.43.2015.03.07.10.00.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Mar 2015 10:01:00 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v3 2/3] staging: rtl8188eu: Remove unneeded parentheses
Date: Sat,  7 Mar 2015 23:30:27 +0530
Message-Id: <1425751228-9804-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425751228-9804-1-git-send-email-somyaanand214@gmail.com>
References: <1425751228-9804-1-git-send-email-somyaanand214@gmail.com>

This patch removes unneeded parentheses from a if statement
for better readability.

This issue is identified by checkpatch.pl

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 074f48a..d5ebd52 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -1297,7 +1297,7 @@ int support_short_GI(struct adapter *padapter, struct HT_caps_element *pHT_caps)
 	if (!(pmlmeinfo->HT_enable))
 		return _FAIL;
 
-	if ((pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_RALINK))
+	if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_RALINK)
 		return _FAIL;
 
 	bit_offset = (pmlmeext->cur_bwmode & HT_CHANNEL_WIDTH_40) ? 6 : 5;
-- 
1.9.1


