X-GM-THRID: 6670815133562830848
X-Received: by 2002:a5b:4c9:: with SMTP id u9mr549800ybp.93.1553170190814;
        Thu, 21 Mar 2019 05:09:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:50cb:: with SMTP id e194ls1812718ybb.12.gmail; Thu, 21
 Mar 2019 05:09:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwcReac0TUiUr6nA0bgajk8qJVuDOzDF4GYJV93sRpKuXCVYrddUGR6JtrXc4+/El5tjnCf
X-Received: by 2002:a25:5cb:: with SMTP id 194mr442245ybf.23.1553170190070;
        Thu, 21 Mar 2019 05:09:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553170190; cv=none;
        d=google.com; s=arc-20160816;
        b=0AhSPg/X/7J2VLNK0dG2mMpvf9HC0qMGNlwbSrJIZcToS2XCEUw3NCgq8SkZI2Gnod
         VjVHqGlEoYAUd2c2NTls86bJLPsMRmOL3T0pDx06eCWWrywfIOH493s3MnaFVcX0hX03
         mUZfAmF10mhbavpS2aj7UnjQFXj2R/d9GIZxwJVUuoR/HqoS9qJrzvqtrO8MKj/rSCaO
         wdig410UcIiysXS4K7g4no5CxtK6ZeIVNiGcEoxWzNWaFcYnyHQAv34rgQaZc8xZ8Zzh
         ptyvVr8SEx4il/35uhYbZuKKprMIkpSLGBgC2Qhx5UT1uSMZKAUqMxgYd+j98ZeyfUb/
         pf5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ixMljQxOyB4DZiTYvPnaCfKAZZQT8NnKycMscSfqGbA=;
        b=aMHp5x8pD34pxKO+9Q8rIMjy8rqbUyXOvHmZYejkyWdcmUpBM2YxAjozpY6tOUoszG
         JQPGTx8MsgKtbqR/84R3bCky0MO6Y035tEE/uD813vj4zlQnSH3g2MekA0YzA51HfiHJ
         vpmniM+OupVBF4pPrh7FLYShYW0rD/eDYGSlyzD455EYjC2iNwdSPIDLW9vmqYzbwkXQ
         ZK9+SGyfTXJw6CeEqFr/SJK6Eq+SZ6Wn1v99XSwzF9YxrMjnV06hZd6EMNNuiBQf4Bs3
         VD+O0jYuoBano/4soL7Eh3nJS2d5nEgKibYfj7oi12WE4vV4pReBHbyWv7bV5KFKHaKU
         uNZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TJAQSq+g;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id s11si315667ywg.3.2019.03.21.05.09.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:09:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TJAQSq+g;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52f.google.com with SMTP id l11so4043444pgq.10
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 05:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ixMljQxOyB4DZiTYvPnaCfKAZZQT8NnKycMscSfqGbA=;
        b=TJAQSq+g+kvbglgA4gZeCmbooccjH6qNOuzJmI+8sy0xTU3WrPeAt5p1aOJfTYrFDa
         RQ3s4keMqXfHuiUXqF1CtUq+6Hcj4TA5h6f1ciKilP/Z8BxAyd5rT3o0Ct+oi66r68LN
         uAF0wmcl8y9bxdokhAnuMgDNzDeKJSEfWHtnAISTqTrF3crW1YfigUnlJqPFUbukSlZQ
         Ks+hC1RyPIYoiX5Y0Eo7HW8X6ulKxUTj5dGXJaqlnF8IbkL4oT7PR/pWESCb4SqMCZeR
         MBtk/r47ON5YeqMtYrA4MQCj/htb3u5oBxRY5Xc+ALf5Edf+7HQJpnyBCNmQMUwJJoEx
         7cpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ixMljQxOyB4DZiTYvPnaCfKAZZQT8NnKycMscSfqGbA=;
        b=GGud2CQ/kbVukZ8wusILaFfhm2Ea2jezEQxoZumbU1csKleNSrHslyMBmgMQc0Im1N
         NU+czIOrG87IHkSQzmntShSPAp2J+xyHX+l5IP35f2pbha3SKRSt2ivbPtTys3auw5jq
         1wcEto6PM5R/IYB/RDAub4HkRdcuOCIAmT2l9yrWquCBE7PKctYgDFU/mrSVHgYrTx+u
         x+c23NTn37cT/Wjr75Ydd2asN6asYo7fdlnQwtTLT1EK4lqNZn62VG0gRUwjTN/HkmxU
         pmjIMRc69eCZjdam8mrE3O11zHDg3qgJskH5pMMGu3P1mOa+ELQ3mtLGgmyGI9qRgLLP
         l5ng==
X-Gm-Message-State: APjAAAWmvt1ZAG++1k3heG72nzJtO1+C6BeVdPh73pUqAUMb3fGUv3Wn
	82Al2zfeB5Sy8nFKEvrJvoc=
X-Received: by 2002:a63:d84b:: with SMTP id k11mr2964711pgj.281.1553170189714;
        Thu, 21 Mar 2019 05:09:49 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.80.198])
        by smtp.gmail.com with ESMTPSA id c130sm6687518pfb.145.2019.03.21.05.09.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:09:48 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 3/5] staging: rtl8723bs: include: remove typedef for struct pno_ssid_list
Date: Thu, 21 Mar 2019 17:39:06 +0530
Message-Id: <20190321120908.43680-4-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190321120908.43680-1-himadri18.07@gmail.com>
References: <20190321120908.43680-1-himadri18.07@gmail.com>

Remove typedef from struct pno_ssid_list as The Linux kernel coding
style guidelines discourage the use of typedefs for struct types.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index a08b27c65a31..dbb7bea28a13 100644
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
 	struct pno_nlo_info	*pnlo_info;
 	pno_scan_info_t	*pscan_info;
-	pno_ssid_list_t	*pno_ssid_list;
+	struct pno_ssid_list	*pno_ssid_list;
 #endif
 	u32 	wowlan_pattern_context[8][5];
 	u64		wowlan_fw_iv;
-- 
2.17.1


