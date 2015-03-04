X-GM-THRID: 6598140362752
X-Received: by 10.183.10.164 with SMTP id eb4mr4372411obd.48.1425475476581;
        Wed, 04 Mar 2015 05:24:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.131 with SMTP id f3ls509771ioi.13.gmail; Wed, 04 Mar
 2015 05:24:36 -0800 (PST)
X-Received: by 10.66.131.37 with SMTP id oj5mr4634289pab.12.1425475476319;
        Wed, 04 Mar 2015 05:24:36 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pc4si523150pac.0.2015.03.04.05.24.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 05:24:36 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id lj1so24299780pab.10
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 05:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=aORareBrcdl7gXAc1tp7VSiH1qUEky5r9LKsxbJc92w=;
        b=PIWprEH2dE+xRWOQwWyJx43lspek7x0BCDhNySSlofv2ZOc6KCMcHKjPH5xMF7msL+
         FUI7s/QpnhDmGwVahUR31MU6bRp1GuwG6MbHBsImeWDpl5n4dE/V49zR2y1bajzznHQ8
         J9zaIcJtzXYe/8LqWvg63bisQMShbQYS4SLa/FjdpQRZ8aKELT6FCk5oKCI4CHY16PR7
         GkGYgogVus4lsU6rMZA35uMUJQ+ruQhjfq8qBJvLxa0nPL/xYd87RHnidWHoFHd7gTKQ
         t4Q/oDFDcDzZlK76sYF3/nM6/Ec9jHDQRr7trWZV7pW2UPuCEj3VrJMdOg2ZYDMi8zOP
         HNeg==
X-Received: by 10.68.234.164 with SMTP id uf4mr6677578pbc.37.1425475476226;
        Wed, 04 Mar 2015 05:24:36 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.168])
        by mx.google.com with ESMTPSA id n5sm4105227pdh.27.2015.03.04.05.24.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 05:24:35 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2 4/5] staging: rtl8188eu: Remove unneeded parentheses
Date: Wed,  4 Mar 2015 18:53:04 +0530
Message-Id: <1425475385-2360-5-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425475385-2360-1-git-send-email-somyaanand214@gmail.com>
References: <1425475385-2360-1-git-send-email-somyaanand214@gmail.com>

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


