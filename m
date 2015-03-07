X-GM-THRID: 6598140362752
X-Received: by 10.182.92.226 with SMTP id cp2mr20565050obb.44.1425751257885;
        Sat, 07 Mar 2015 10:00:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.233 with SMTP id 102ls611012iom.25.gmail; Sat, 07 Mar
 2015 10:00:57 -0800 (PST)
X-Received: by 10.43.64.143 with SMTP id xi15mr12540329icb.0.1425751257546;
        Sat, 07 Mar 2015 10:00:57 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id bo1si1815647pbc.0.2015.03.07.10.00.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 10:00:57 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x230.google.com with SMTP id p10so46404185pdj.10
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 10:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=qyWhQoMiWpjiW/yLeK1ilWyrvAfvzgoRu9lAYoiJ+dQ=;
        b=BPqmfi4w6rDFXj/6rzblP1uIYa1ol4b8eZIsd6wVWrTwKx9RBG08wPuMiAXKhvu94L
         9qHYK9p+teJKzLksQBUVLHFeIfel3vOkSrmeo1RTxeQpgsqZfkYdIdkZi0QixSsYS7hJ
         ABAHL1DVJyJdnL1B4JU0mfW1sYDHeLfkX9Hfwcf9CVCmD4OpuIOKqInpeWZJLtARjjyb
         D92h4K45XVu4Zd456sssWKXYGYeKD+eJ5TzTCheP4RvooQs63JylW+Un08rOnsZDTdI9
         F3i/AoqEe3Jbx4fcbkybb4IjkXpyMcnGdXCadlcwHqCju3OmiCxnH69xj82Vq1ZwHlLR
         E/FA==
X-Received: by 10.70.91.106 with SMTP id cd10mr36362394pdb.31.1425751257413;
        Sat, 07 Mar 2015 10:00:57 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([106.218.78.166])
        by mx.google.com with ESMTPSA id zs9sm12863291pbc.43.2015.03.07.10.00.52
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Mar 2015 10:00:56 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v3 1/3] Staging: rtl8188eu: Remove unneeded return statement
Date: Sat,  7 Mar 2015 23:30:26 +0530
Message-Id: <1425751228-9804-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes unnecessary return statement from a void
function and hence make it more compatible.

This issue is identified by checkpatch.pl

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index dac4246..074f48a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -650,8 +650,6 @@ void WMMOnAssocRsp(struct adapter *padapter)
 		pxmitpriv->wmm_para_seq[i] = inx[i];
 		DBG_88E("wmm_para_seq(%d): %d\n", i, pxmitpriv->wmm_para_seq[i]);
 	}
-
-	return;
 }
 
 static void bwmode_update_check(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
@@ -779,7 +777,6 @@ void HT_caps_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 		else
 			pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate[i] &= MCS_rate_2R[i];
 	}
-	return;
 }
 
 void HT_info_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
@@ -800,7 +797,6 @@ void HT_info_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 
 	pmlmeinfo->HT_info_enable = 1;
 	memcpy(&(pmlmeinfo->HT_info), pIE->data, pIE->Length);
-	return;
 }
 
 void HTOnAssocRsp(struct adapter *padapter)
-- 
1.9.1


