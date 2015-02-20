X-GM-THRID: 1123382460416
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f5f770e6dd3ab2f2,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.57.130 with SMTP id i2mr8171677pbq.1.1424417336471;
        Thu, 19 Feb 2015 23:28:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.49 with SMTP id u46ls1108521qgu.3.gmail; Thu, 19 Feb
 2015 23:28:56 -0800 (PST)
X-Received: by 10.236.222.161 with SMTP id t31mr7913120yhp.1.1424417336308;
        Thu, 19 Feb 2015 23:28:56 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ki8si3188780pdb.1.2015.02.19.23.28.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 23:28:56 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabkx10 with SMTP id kx10so5988463pab.13
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 23:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=QiTf5v1Mzhi7L+bKQB6qp0kvlN8/L4N9ZRzTCFjaLkU=;
        b=esQY0G2OuuPPnTsG04yqNm/FSvDpt/AVkRmhzsS4BX4pGjxikfFuVOqu0hD5dVQdBf
         L5lB6Rdb0/kchuFyd2EXuRU5V6vDBQwiomHCm6f5Jlt8YQTqhb4Ueg2hvSQbEzmFg5de
         YaYg/mMjmENH2Rrf4WktVVm1G/0cQs0WWtHXdoqhlFjcm7WBmqUxI9uS3jerPqh7ik29
         3gjRptTcLTNu+P1Rlb6iTtSuGJRHrEUeBsKkFiDBNHd/hor9QGoQmrUu96Zyt7NGINBr
         P1JZX4hOZeMeeOgeRXVyzysjDxeaDsSC/dNKs/WfPzq6yX0wVmy9Kh7/fnYeA4LqSgIR
         m4Dw==
X-Received: by 10.70.38.163 with SMTP id h3mr14207811pdk.95.1424417336156;
        Thu, 19 Feb 2015 23:28:56 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.241.68])
        by mx.google.com with ESMTPSA id bw3sm25867665pbb.9.2015.02.19.23.28.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 23:28:55 -0800 (PST)
Date: Fri, 20 Feb 2015 12:58:50 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove unused struct ndis_802_11_key
Message-ID: <20150220072850.GA8648@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes struct ndis_802_11_key as it is defined
in a header file but never used.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/rtl8188eu/include/wlan_bssdef.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/wlan_bssdef.h b/drivers/staging/rtl8188eu/include/wlan_bssdef.h
index 53b1bd8..85b99da 100644
--- a/drivers/staging/rtl8188eu/include/wlan_bssdef.h
+++ b/drivers/staging/rtl8188eu/include/wlan_bssdef.h
@@ -156,16 +156,6 @@ enum ndis_802_11_reload_def {
 	Ndis802_11ReloadWEPKeys
 };
 
-/*  Key mapping keys require a BSSID */
-struct ndis_802_11_key {
-	u32           Length;             /*  Length of this structure */
-	u32           KeyIndex;
-	u32           KeyLength;          /*  length of key in bytes */
-	unsigned char BSSID[ETH_ALEN];
-	unsigned long long KeyRSC;
-	u8           KeyMaterial[32];  /* var len depending on above field */
-};
-
 struct ndis_802_11_remove_key {
 	u32                   Length;        /*  Length */
 	u32                   KeyIndex;
-- 
1.9.1


