X-GM-THRID: 6670815133562830848
X-Received: by 2002:aca:e044:: with SMTP id x65mr460633oig.75.1553192160959;
        Thu, 21 Mar 2019 11:16:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:b446:: with SMTP id d67ls291537oif.3.gmail; Thu, 21 Mar
 2019 11:16:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQLDcDeK/Wv1533D5seUNRoZ/8dRSfrcM/RXxEcGDP8xDAZ58zJ3wJVHXnMMsm2ez6fF7c
X-Received: by 2002:aca:3a87:: with SMTP id h129mr504679oia.86.1553192160015;
        Thu, 21 Mar 2019 11:16:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553192160; cv=none;
        d=google.com; s=arc-20160816;
        b=ey9R0OfumTAOCmz9u4xRSDPAUA0JSG+6DYehtODLSij5WSKP101zWBC4zm81hgVKlF
         QzvNebelV2zYgoKE0QIcUyXJ6CuZPu6NbNEByCbvtQ8bLsJA+qhu/xBJpbl70OqnG/+F
         ucIKpa4m3+B4dekkowf/zEAIZKfLWwqzLh+rvzz5DaWS2VMASxf+9023/DjgAPrbS2Wa
         NzD6/TpIk+JziFibj10M0YJJGyq7yQSucu19zZ2D/Ete2PXzz180/Udnu3Z/YgaG2PE6
         l+T+PwgkB7YHcMhGWsv8HwIZwEP7STsXHRJNUKobbgTy7cp9bHPSPcaOqEPeBoOP091P
         hZhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=W+A0k6WW8DmY80jwbWwlBOtDU9RCjRV/HR4/mWjPu2I=;
        b=dzmMVMMxpFfvJgPKWvph2H4yYRr7XbQfiqws6bKq4s7aphuiPPE2WbA3MAsJvDjZvG
         lUVXFp1f87aFi+ZT37Jqau7nDNGzq04liqSNANsLTNHDuMu9X4gMrMV2902RPoP8+S8O
         2H9BSLJ2OPkB4de0TO/RTohqq2PjUaxoNux4/FMN4f4cM1PzO7yhFyMAdciQVA3WKFHI
         AkI5YNPYHAvr67RnPQG5N7zIZDfc5NHUID2HCESFJinJUa8SPiUoQ+ITrldMTY2I5Qk0
         bU3mk9EmnWe9Vn14MNmE0GGacPR1uJ0BIE0wfOeRkwjZdq/eQSqw4ZXmEv8UrzNgf7al
         tsFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="DR+G6i/9";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id v129si309153oib.0.2019.03.21.11.16.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:16:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="DR+G6i/9";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id v1so4742857pgi.5
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 11:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=W+A0k6WW8DmY80jwbWwlBOtDU9RCjRV/HR4/mWjPu2I=;
        b=DR+G6i/9jNC4te2QzDA7uJeKmZMW9/aDjhQ8GGeL2sDmyU1R/AMvq9pO06QMPbXdaa
         Klwu0fvgO6AQo389KoEtGsaQH10nTan957QjCLRXbhXKDo7KQWDRBcgyAI9GnuTXacg4
         /xvz7R70FFRWUyAnUgOFyvsSV9PTNG5UK3ZB/F6kmVoz6sJLcLR1QMU16df1SPOu0Vci
         PrFWsGTKzVD9Ns6h5LpzwSgWZg7NvgHshET8c9twNyPdJ2U09biZgVI/0ajCKs7CqGl6
         UT9wG7grqGOpxlD4X9wHJdbD+9RYeDo+9zIV/HwTP3EUcCdfIK+3ppHP3Aw0gK5AELOl
         5WaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=W+A0k6WW8DmY80jwbWwlBOtDU9RCjRV/HR4/mWjPu2I=;
        b=YuQTUKkYrGxJ7HnBj2en5ledL3vM2WPJqMYCe8TEY0uEHVN28SPylmReJ8pjHkPOeW
         jyqP5pXcnUgnZhDBu6Z+F4cH4mgBF09lQqEAj7RU9ZuvxL0mSiBdU73pEY4drX+23DjF
         c/qK4xKjRNC06p95OpHuU4aR7JwcQkCYUZcqKUjvJJH45KXr2IuFkCfeQTkfE60FECBa
         hk+U51EBWpjCrE8RPEcSvrGEdKYh+ChQ5nBoWG5bRBzsLXszG3Ee4/+KPcrMjNPCJgOI
         j4nyySmZjKZvNgRDeOiTBQo6Dmp9znLF3yaRisDOTOX7Mho+OWf3VLr05MYCfVuN89O8
         BOlg==
X-Gm-Message-State: APjAAAWJdMhuC74MPf7MPNvOeUY9CHXcTADoaJPYfnBgdJJIEudhbgXp
	NK86fmNyEQpSP3y1YxNmpqw=
X-Received: by 2002:a17:902:9b86:: with SMTP id y6mr4818948plp.71.1553192159301;
        Thu, 21 Mar 2019 11:15:59 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.112.101])
        by smtp.gmail.com with ESMTPSA id v6sm7296251pgi.90.2019.03.21.11.15.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:15:58 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 3/5] staging: rtl8723bs: include: remove typedef for struct pno_ssid_list
Date: Thu, 21 Mar 2019 23:44:03 +0530
Message-Id: <20190321181405.6219-4-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190321181405.6219-1-himadri18.07@gmail.com>
References: <20190321181405.6219-1-himadri18.07@gmail.com>

Remove typedef from struct pno_ssid_list as The Linux kernel coding
style guidelines discourage the use of typedefs for struct types.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Remove extra whitespaces before *pno_ssid_list
---
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index ba79a98fdc67..8912182e229f 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -175,9 +175,9 @@ struct pno_ssid {
 	u8 SSID[32];
 };
 
-typedef struct pno_ssid_list {
+struct pno_ssid_list {
 	struct pno_ssid	node[MAX_PNO_LIST_COUNT];
-}pno_ssid_list_t;
+};
 
 typedef struct pno_scan_channel_info
 {
@@ -281,7 +281,7 @@ struct pwrctrl_priv
 	u8 pno_inited;
 	struct pno_nlo_info *pnlo_info;
 	pno_scan_info_t	*pscan_info;
-	pno_ssid_list_t	*pno_ssid_list;
+	struct pno_ssid_list *pno_ssid_list;
 #endif
 	u32 	wowlan_pattern_context[8][5];
 	u64		wowlan_fw_iv;
-- 
2.17.1


