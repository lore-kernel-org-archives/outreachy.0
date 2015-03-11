X-GM-THRID: 7712472563712
X-Received: by 10.112.40.81 with SMTP id v17mr1922202lbk.5.1426111723339;
        Wed, 11 Mar 2015 15:08:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.43 with SMTP id bt11ls473695wib.37.canary; Wed, 11 Mar
 2015 15:08:42 -0700 (PDT)
X-Received: by 10.180.80.132 with SMTP id r4mr2487917wix.4.1426111722920;
        Wed, 11 Mar 2015 15:08:42 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id o3si1396714wib.2.2015.03.11.15.08.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 15:08:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevk48 with SMTP id k48so12334694wev.7
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 15:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gQ/MAvNMZHoaO4BcBbdKen9PoCz6NMRZoOhL/KDwrZk=;
        b=yd1MKuGTU0T6lI2aGvNuiqyOEgk0kq2I28BXND+oxpu/+hZGhy4iKBsSa+DAGVJ1Bn
         wBSVM4UkKYCFqOjAa4vzJD4FHCEg1QIE1aIR6rbcfPDyKcgvwEH3D7Vo+5hyeEPPtbmH
         i3i0jxOSTEEKClZbEkIO8gmmOY/9rQZ/nlmTY9X6p2+7oiIQ8P1DbzYDhc6g97Ow3Qo8
         qrVBZtqTSgOF0hQ8AwSBQC9nOmNicv8nXfvZ7UJ1s+SIHGui6YQoY+Xz8SI/vLPQjqdA
         CSRIyTI8UbT2A1JX4MfA3sGWmJhfjdfXtor5glG717TJiDxKRR2Z9Y94hBdhuuwLfLz8
         W/Vg==
X-Received: by 10.181.9.107 with SMTP id dr11mr37571640wid.40.1426111722826;
        Wed, 11 Mar 2015 15:08:42 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.143])
        by mx.google.com with ESMTPSA id pa4sm7255571wjb.11.2015.03.11.15.08.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 15:08:42 -0700 (PDT)
Date: Thu, 12 Mar 2015 01:08:32 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: remove else after return statement
Message-ID: <20150311220832.GA7170@haneen-vb>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

else after return generally is not useful. This patch removes else after return
statement. Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index bb78484..1f3707a 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1601,17 +1601,15 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 	iEntry = SecIsInPMKIDList(adapter, pmlmepriv->assoc_bssid);
 	if (iEntry < 0)
 		return ielength;
-	else {
-		if (authmode == _WPA2_IE_ID_) {
-			out_ie[ielength] = 1;
-			ielength++;
-			out_ie[ielength] = 0;	/*PMKID count = 0x0100*/
-			ielength++;
-			memcpy(&out_ie[ielength],
-				&psecuritypriv->PMKIDList[iEntry].PMKID, 16);
-			ielength += 16;
-			out_ie[13] += 18;/*PMKID length = 2+16*/
-		}
+	if (authmode == _WPA2_IE_ID_) {
+		out_ie[ielength] = 1;
+		ielength++;
+		out_ie[ielength] = 0;	/*PMKID count = 0x0100*/
+		ielength++;
+		memcpy(&out_ie[ielength],
+			&psecuritypriv->PMKIDList[iEntry].PMKID, 16);
+		ielength += 16;
+		out_ie[13] += 18;/*PMKID length = 2+16*/
 	}
 	return ielength;
 }
-- 
1.9.1


