X-GM-THRID: 7286653190144
X-Received: by 10.236.61.197 with SMTP id w45mr26390076yhc.54.1425908927756;
        Mon, 09 Mar 2015 06:48:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.67 with SMTP id ru3ls479643obb.14.gmail; Mon, 09 Mar
 2015 06:48:47 -0700 (PDT)
X-Received: by 10.182.18.102 with SMTP id v6mr28324383obd.11.1425908927470;
        Mon, 09 Mar 2015 06:48:47 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x22d.google.com (mail-pd0-x22d.google.com. [2607:f8b0:400e:c02::22d])
        by gmr-mx.google.com with ESMTPS id m1si2666504pdc.0.2015.03.09.06.48.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 06:48:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) client-ip=2607:f8b0:400e:c02::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22d.google.com with SMTP id fl12so63900582pdb.5
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 06:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=t4bhQ9SXyvDk5UliWs5CVHRtJOuX8osjgMVjTS/btt8=;
        b=N1UGIirrSIlzYGiSU6MelocsYkBZNAtDXg1nNMpP3BbVFIpSA2Choani0sO7hDgNtb
         iATxFMfDLcvoDNW/mxKbjgtpHMRK9v6+r2SqxHC9di0jBkKKyOPRSDbD5PcngkS3H71R
         sW5ZJnAcVAQHWmSqPOa8CUMKt4IAE8d4SJ0Mqn95KtG1ucx1PTGypZXACp8kwtoV5eTb
         /sVWbtMZ4Fu7Ee3ONSCNxtNmxA3fehxK2DNUNU7CHjvLdK4Cul0jVRp4pK6/flG5fGXC
         WcIZ9qtIK+eVjKgORp/Tn6RQvlNWTGbVJkYYhUyPdJZEL8mXljcQAw3zcHxM+B/SRciA
         SE4g==
X-Received: by 10.70.55.8 with SMTP id n8mr15706341pdp.167.1425908926134;
        Mon, 09 Mar 2015 06:48:46 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([223.176.39.255])
        by mx.google.com with ESMTPSA id ji6sm19513656pac.30.2015.03.09.06.48.41
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 09 Mar 2015 06:48:45 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v4  2/2] Staging: rtl8188eu: Remove unneeded return statement
Date: Mon,  9 Mar 2015 19:18:25 +0530
Message-Id: <1425908905-30288-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425908905-30288-1-git-send-email-somyaanand214@gmail.com>
References: <1425908905-30288-1-git-send-email-somyaanand214@gmail.com>

This patch removes unnecessary return statement from a void
function and hence make it more compatible.

This issue is identified by checkpatch.pl

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
Changes since v3:
 * Reformatted the patch according to the updated staging-next tree.
 
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index b3c4dd9..94c5281 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -763,7 +763,6 @@ void HT_caps_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 		else
 			pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate[i] &= MCS_rate_2R[i];
 	}
-	return;
 }
 
 void HT_info_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
@@ -784,7 +783,6 @@ void HT_info_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 
 	pmlmeinfo->HT_info_enable = 1;
 	memcpy(&(pmlmeinfo->HT_info), pIE->data, pIE->Length);
-	return;
 }
 
 void HTOnAssocRsp(struct adapter *padapter)
-- 
1.9.1


