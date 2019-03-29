X-GM-THRID: 6671711882278076416
X-Received: by 2002:a05:6638:388:: with SMTP id y8mr5336625jap.12.1553878231300;
        Fri, 29 Mar 2019 09:50:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9ad6:: with SMTP id x22ls1071994ion.4.gmail; Fri, 29 Mar
 2019 09:50:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzm4oLqaXwuOLXTsJmtpt8J4TzfOUKwD2eI1nityeWjaCYb9iSwA+82oxKK/Ybzdg3tB970
X-Received: by 2002:a5e:8f0d:: with SMTP id c13mr5250779iok.37.1553878230274;
        Fri, 29 Mar 2019 09:50:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553878230; cv=none;
        d=google.com; s=arc-20160816;
        b=Z8WYab/rJVI7WqIFjLeoOlJXBFzc3KRGejzlgPIopR1U6hEUe7Gej7Im2Ou84+FKwE
         PDpZ9kULYuEP5Hd14JRSg4xbOqnTnnQsIp6f3+UKCOnCF2ffEXT7QrA3D3KpojKOImEk
         /Vu+TA9Bl7PrtqHGiR5LdLOB3W2fanwHPTJTWNnaevedsNucEMnt0Qtro5iBs1lGv/ti
         RvM9tPxI5Uo6xxd+fAES333FfEmdPrTqI/FB9BuRozMcZfer7O4vj5L4PExTNyWaKAnb
         j7vlpJNCUvx4bxZdf3qUpiaEqU0NW7dPD6o75tZAyhnjh1ngJQ6DnRuH+SltbUHnec7V
         kS0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=81TlPtjG8K3Ysa0mwoRfl3DCKuMG8+iRH3PMc9ZJ/tI=;
        b=Ad/j8IzLJphf/1h3eEnHEY0uLor98Ra2Of2l/kedOAkCWx4+N8k+e7sul3AJ9zHcnW
         w5vxP+wOWZv61oYfMrEa9SUcBWZ/o2Hx6QDFfqKhpg5B+ITKlJt/K0EeJLwIr2JgneWo
         OEe7s/XBFWW7xNJK/zvs3LjFsMDFwhV66Uaz6hVmPqMaB8lDibeeJjXwygtjUENh8SAB
         e5LhB6sxl2RTUcGcKz7SOtT1ill/kxuEPLbrScToD5Ib2R1bq7SHXZs0sLeUxz40UsyM
         ZwZKp0uqW2DQUTDitNqsyIz96dl/Izhy7MdZKf49DTBZGfcCVOak5YckpDZRK9Lb4AbT
         4rPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yt93jGWu;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k26si86091ioh.5.2019.03.29.09.50.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:50:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yt93jGWu;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 8so1330150pfr.4
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 09:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=81TlPtjG8K3Ysa0mwoRfl3DCKuMG8+iRH3PMc9ZJ/tI=;
        b=Yt93jGWuQikjhybsOD4IN0vLwXV38pXzgGi3KJYNK2C0sR8JyCBGlfTC5intwZujl3
         pPDSixkhHPodWRaEO1twRUPr4O1yAhMXf17tsHcIvMSwegOJqYt/5lks31BCX+5YZ8VE
         j2vcvqt/p/QTJxdrRRe4vL2lH0YP6KoNoLtMc24YZF7hFmKVQfDwLoTcQRHb81rcju4T
         3jg6FiIlYe+xV6DJZpTWXa5L9b0p20nIaTenJZGxoEJvyFTJiy2AN1w+QRDmdPp4gfdS
         G0vTkb8m4/W+WMm5UjmAK6nGiHDjJzQ+BvJQJm2so5Wl2WhD2SqCVi59I8zUZRCJymhC
         O1Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=81TlPtjG8K3Ysa0mwoRfl3DCKuMG8+iRH3PMc9ZJ/tI=;
        b=CCf+fdKTpC/y3Bhkb+NaBjh0Cn5Lt2EmBuQmjMNAWRf+2cq6v3QY1kgmATAqfymPaC
         vsfZOyEHsjWdCDtBxObcF+/L3DuZ4xlV/nxqWv9plcjHG3M6b7VAnI8zyV/9Dq0h4H6U
         TbAXfZuN8ws3b4uQ49juQMgrITpwajlohr/ROpaRiM47GhgCdJiJ6uMSD0kHuGHotBtR
         qXshSFk51u5R0dvCH38SHKmR9iT/eeWbQV/GdUJx6UFh6g6AvCPyMGMy6PbHVzWeITT4
         9gL/0Psh8tBfEI5Hjbs2so8K3eNKBWTt66bQQY0PoBKyPFqICS1BQZZBLsckNuid1BRu
         /p4Q==
X-Gm-Message-State: APjAAAXZ0XXHl9TaPJt4ruQA4yyhvAIvWmQmrNkTCAWdUhAi/DAn6Jln
	wIOulAmaHKpijgboI2MLI2NIGl84cRo=
X-Received: by 2002:a63:195e:: with SMTP id 30mr43586577pgz.312.1553878229417;
        Fri, 29 Mar 2019 09:50:29 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.82])
        by smtp.gmail.com with ESMTPSA id k75sm9129691pfj.46.2019.03.29.09.50.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:50:29 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v2] staging: rtl8723bs: include: Fix identation issue
Date: Fri, 29 Mar 2019 22:20:12 +0530
Message-Id: <20190329165012.17047-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Corrected the identation of switch case to get rid of checkpatch error.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
Changes in v2:
 -Resend patch

 drivers/staging/rtl8723bs/include/wifi.h | 72 ++++++++++++------------
 1 file changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index d3deb18d3267..a1ed8039d995 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -374,18 +374,18 @@ __inline static unsigned char * get_da(unsigned char *pframe)
 	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
 
 	switch (to_fr_ds) {
-		case 0x00:	/*  ToDs = 0, FromDs = 0 */
-			da = GetAddr1Ptr(pframe);
-			break;
-		case 0x01:	/*  ToDs = 0, FromDs = 1 */
-			da = GetAddr1Ptr(pframe);
-			break;
-		case 0x02:	/*  ToDs = 1, FromDs = 0 */
-			da = GetAddr3Ptr(pframe);
-			break;
-		default:	/*  ToDs = 1, FromDs = 1 */
-			da = GetAddr3Ptr(pframe);
-			break;
+	case 0x00:	/*  ToDs = 0, FromDs = 0 */
+		da = GetAddr1Ptr(pframe);
+		break;
+	case 0x01:	/*  ToDs = 0, FromDs = 1 */
+		da = GetAddr1Ptr(pframe);
+		break;
+	case 0x02:	/*  ToDs = 1, FromDs = 0 */
+		da = GetAddr3Ptr(pframe);
+		break;
+	default:	/*  ToDs = 1, FromDs = 1 */
+		da = GetAddr3Ptr(pframe);
+		break;
 	}
 
 	return da;
@@ -398,18 +398,18 @@ __inline static unsigned char * get_sa(unsigned char *pframe)
 	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
 
 	switch (to_fr_ds) {
-		case 0x00:	/*  ToDs = 0, FromDs = 0 */
-			sa = GetAddr2Ptr(pframe);
-			break;
-		case 0x01:	/*  ToDs = 0, FromDs = 1 */
-			sa = GetAddr3Ptr(pframe);
-			break;
-		case 0x02:	/*  ToDs = 1, FromDs = 0 */
-			sa = GetAddr2Ptr(pframe);
-			break;
-		default:	/*  ToDs = 1, FromDs = 1 */
-			sa = GetAddr4Ptr(pframe);
-			break;
+	case 0x00:	/*  ToDs = 0, FromDs = 0 */
+		sa = GetAddr2Ptr(pframe);
+		break;
+	case 0x01:	/*  ToDs = 0, FromDs = 1 */
+		sa = GetAddr3Ptr(pframe);
+		break;
+	case 0x02:	/*  ToDs = 1, FromDs = 0 */
+		sa = GetAddr2Ptr(pframe);
+		break;
+	default:	/*  ToDs = 1, FromDs = 1 */
+		sa = GetAddr4Ptr(pframe);
+		break;
 	}
 
 	return sa;
@@ -421,18 +421,18 @@ __inline static unsigned char * get_hdr_bssid(unsigned char *pframe)
 	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
 
 	switch (to_fr_ds) {
-		case 0x00:	/*  ToDs = 0, FromDs = 0 */
-			sa = GetAddr3Ptr(pframe);
-			break;
-		case 0x01:	/*  ToDs = 0, FromDs = 1 */
-			sa = GetAddr2Ptr(pframe);
-			break;
-		case 0x02:	/*  ToDs = 1, FromDs = 0 */
-			sa = GetAddr1Ptr(pframe);
-			break;
-		case 0x03:	/*  ToDs = 1, FromDs = 1 */
-			sa = GetAddr1Ptr(pframe);
-			break;
+	case 0x00:	/*  ToDs = 0, FromDs = 0 */
+		sa = GetAddr3Ptr(pframe);
+		break;
+	case 0x01:	/*  ToDs = 0, FromDs = 1 */
+		sa = GetAddr2Ptr(pframe);
+		break;
+	case 0x02:	/*  ToDs = 1, FromDs = 0 */
+		sa = GetAddr1Ptr(pframe);
+		break;
+	case 0x03:	/*  ToDs = 1, FromDs = 1 */
+		sa = GetAddr1Ptr(pframe);
+		break;
 	}
 
 	return sa;
-- 
2.17.1


