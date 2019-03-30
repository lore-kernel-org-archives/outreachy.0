X-GM-THRID: 6673442126229929984
X-Received: by 2002:a17:902:b491:: with SMTP id y17mr979940plr.89.1553922795807;
        Fri, 29 Mar 2019 22:13:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2b82:: with SMTP id r124ls1697925pgr.1.gmail; Fri, 29
 Mar 2019 22:13:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyCBJudJPmMHO11jPHtHfedYI5A16QY6wrvJalD61pgpaGQyD+WGxqz/zwnnqIFUGIZ0ZLH
X-Received: by 2002:a62:3641:: with SMTP id d62mr964319pfa.48.1553922794991;
        Fri, 29 Mar 2019 22:13:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553922794; cv=none;
        d=google.com; s=arc-20160816;
        b=WGKi2lE2YvVAjP6NR9+3SesPpgAxWu7BNFRb0ebweOBsMV2rHGKcFurBRgOvtaxCgi
         Xl4a8geBlmk/Q2iB57UxMfbJICovfxKEofvTh9g+EgcqgMW7W5a2djxk/mCEqaMdzO8b
         KzviZIu39XTuq+IRxkJ7crHKvedMnH9tsHEbM0sQLhZJrKXVM9K0MV+yh62YwnBL4DnO
         k1m4s7JGYChFETnKEe9tCpAEdFKbMUEnX0Ckgz1BoMtwoWRD09J+kztw5EhSiO7Oyl2l
         EHT6yHeQ/SFjQx6g5GWOLGqBRxeISz28HJ7xW8EIE93am7iTeWaJ2i6+0iu3oxWuFcux
         riOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=5k9B+F0BIMmSUqvluK7m1vCW+5Y4cUPKtlYNri6/qEM=;
        b=PiBuGFfPceEYKA4jQbOcRioUElIi6+YfuM3+oyXOG9iPo7BxmMKmV/QNS43/LbsI99
         ZcjvDv20tnqkZ0287+f9etQpE7c7v8B0UNwcM5L3nTogDTVke7vdQICDZoNr3+RQrnoj
         lcrjb/8mr0LZSyR7DslcEp3YjLhvW+XXlTE+ezQM9T/QJW7259zbCxGtdv5FcYC+YKoh
         eaR/29bbcuU6RDXeGQ/uVajxL5/oHWzVK8p8MaYPE+PaTDpbzwnT0attnjyaOvjEwpBs
         Xudy73BtjFgqlXV7fbTql6JIiEyGFMeqJPJpCgttXowFRGuzbVzne51vaHn0V/meLoz/
         niWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lQq/mGn+";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id f23si305022pgk.0.2019.03.29.22.13.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 22:13:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lQq/mGn+";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id k3so2167428pga.6
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 22:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=5k9B+F0BIMmSUqvluK7m1vCW+5Y4cUPKtlYNri6/qEM=;
        b=lQq/mGn+DkcqbgLTJA+1wGYCLWY1kgi6enIS8bpvnxV3jQSbyOoJjz1jiExhJJBgzO
         umYzwUvqQV10SaZOLFDIHl1CZtZctobxAwvndOoeVFL1QSDIBrOQxoM8GywYaN1nNplM
         1aHRhEJIoeW9/hRUQMeystGxzqKcTw2zutjRHuAQISqcWPe+M9HDDElcwgtrlSm+YIMx
         B9Jsj1e5B7eEsFB2vY2Pom545reRst7MGlR/99pxyVXObLzKboTWM/5gWoy5YElhUSGG
         gCbc1S1/vktk3pAQPgHzPJ1aqSyUtrEvbcwkAaswgLheJWMuGYfxTlSeGfz13EpcYBy7
         ap2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=5k9B+F0BIMmSUqvluK7m1vCW+5Y4cUPKtlYNri6/qEM=;
        b=iSEiz4tYc3riLnwF7hVf10C1auO5G7pmgDvDo7s1b0EGoUnrLaSqD58q17otzM5iYW
         KpFDUMh8HEnh2IHiHMISUxHVi6wWuXptmaHHiYqUwttd6X57Igl0sOHwMM1LOJ0zR3FF
         zA5tiJ/2GerycfXxDEYmLZ4E7Ok8HMi501lJjCTLcSt1Rofo1kEfFrcGb7fs3fu8VokD
         uvlSQNjW6e+Tt+mlpahA3wHcVo8TecGlR0l2jTcIFzGh5pAR8EPTatxYdly7t40vgZ8R
         WIEt+iDgQ+j0gqwkbKLldzRYTIe/L6IyUidxdPJgwpLlHIqerGfgoLdEeOCZd92ErKkz
         2U1A==
X-Gm-Message-State: APjAAAXJZVMqPeh/NsLGmr3WsK1hXCb8Fd3QU3nqZseTakNO5V1R88DY
	mc3fvmWIr46VwOQVYBICyCq1+pCF
X-Received: by 2002:a65:484a:: with SMTP id i10mr2030543pgs.408.1553922794464;
        Fri, 29 Mar 2019 22:13:14 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.4.242])
        by smtp.gmail.com with ESMTPSA id o2sm4864557pgq.29.2019.03.29.22.13.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 22:13:13 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 2/8] staging: rtl8723bs: hal: rtl8723b_phycfg.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 10:42:41 +0530
Message-Id: <3edc2a64cc963cd46290b9b1dd7fcd7cad07f7ef.1553921776.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around an expression.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index 78a4828..0fd7a9a 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -827,7 +827,7 @@ static u8 phy_GetSecondaryChnl_8723B(struct adapter *Adapter)
 	}
 
 	RT_TRACE(_module_hal_init_c_, _drv_info_, ("SCMapping: SC Value %x\n", ((SCSettingOf40 << 4) | SCSettingOf20)));
-	return  ((SCSettingOf40 << 4) | SCSettingOf20);
+	return  (SCSettingOf40 << 4) | SCSettingOf20;
 }
 
 static void phy_PostSetBwMode8723B(struct adapter *Adapter)
-- 
2.7.4


