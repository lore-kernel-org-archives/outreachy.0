X-GM-THRID: 6669057124685840384
X-Received: by 2002:a24:4394:: with SMTP id s142mr5815401itb.40.1552760872222;
        Sat, 16 Mar 2019 11:27:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:66c5:: with SMTP id k188ls2333885itc.3.gmail; Sat, 16
 Mar 2019 11:27:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz517JNRm9XsGFdv64EnXXh48dbNxiz7pSAgqtm64YO5/h1CEMSqT4sB1hqYAZx31Ym1pBk
X-Received: by 2002:a24:9d4a:: with SMTP id f71mr5715387itd.33.1552760871686;
        Sat, 16 Mar 2019 11:27:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552760871; cv=none;
        d=google.com; s=arc-20160816;
        b=nrOoiIY8uQK/iARPvU2BQ+3uKFrwNq9BuAxQGyb11PdhxS1G53lo6QFt3uWuI1fPnj
         7wd/Uhftfy8N6dwdQhbAgeZzhGLi3tCyC7OFlC81NfukZOPYiVQFdLKQjlPwMSpfzXkl
         Hwv+R1eZOew3UtkgrTbVIqlyUVuWAuIEQBDlufeVGomvESif/gT7jJp5dVVa6irMzwuO
         gB94B1GmQIfbRRHmV4nESZgSBgkZEksP7KjgK968UE95ODTM0lD5g4azX3xPZD0VnLvk
         HcieM0A2cOOsES2oi/oh8UNaKebqumW0KIOEmCkkC3Q0uwl8QwBCmGbXfemfN3+JqUod
         H/Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=rjtHLELHPgvTw0vfZQY7htuALdZyntG0Hmr7lOYPlXs=;
        b=AGvaTg9Fkt9a6BElXMruzE5VUjuUH5Nx0o6H3UCsyh/X0/FwvKslex+9qrAu3cBAdc
         lu2/vnlRGTtc2BJFAbJh3r7tBgaiFZKq1JN9Ph/9AXd+Uui7s6R3ohNRNUUCX0+NH7CT
         H5eaJz3qyw7SHsdB2pNpdw1PZ12uwgdd1/5nUef5xEr2H70+WDjbKJaOVVzPyW2BwITB
         d2ItNzIZN1ph2Y+jt0e6SUim3r+1njlVcmAWzZRAc7XOnfJgjdT31OWwoirouG3koff9
         JKj3E3BMRBdjIeR8eWfhbSsuuIXXIOHkQjGdogEGviuk2NiQBlNdCBMXKrQ+MXKM/i7w
         dp7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C26pKXh2;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id u1si361305itb.2.2019.03.16.11.27.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C26pKXh2;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id r124so8633709pgr.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 11:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rjtHLELHPgvTw0vfZQY7htuALdZyntG0Hmr7lOYPlXs=;
        b=C26pKXh2n4l4JoeVS/+Inws8mpXh3GROMLSBv5Ch+JWtGobtqyUpWFoFsrE3bCL8tz
         FTuHH8bKiIyq9QKJDk3ue4bCHbjq1htsbU8pMj0PF+gOwFaaZsm9XYHiGbZl+9G9pftY
         lcwAL2w5RAypdfGU+c+znl9WC8YhdALOCDRjAqhqxbXKge9XVMthZLdrLMV4WoSgcle/
         OkPex9SsDtWGMREf+YDSJ20Bh9aD+91Pam5p8YhRLR8nW+3gsTZlKk8TsIacAlBHaNoH
         8anEe1AxGWW1joLyiGM+SMB1hfsdsMhQihYMApvEw26dMxERKJL0z4nNKCzbBI6AbHJG
         b6lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rjtHLELHPgvTw0vfZQY7htuALdZyntG0Hmr7lOYPlXs=;
        b=dsDnqJo/4ACOQscj0NROc7THAxIhcGTBzTeWQ+Sdta/DewCmbxIKpjVmWijJZTxydp
         eir42f5/2apX9LX/4MfvE91hxJPku9JvBlSgCO9flfeSZYE6w+PhN0hKxacDg+ZnfWFz
         QTdscWwAGW0YIVd31RSJD7O4DbzlC7adPa6gSnV8z0Xik2yx5Cj2WefbBLQMon5tk8IF
         cyjSaQcQWws4LPXK9n+ZeKOwst8MhVRZ6iVmRNqwZYeaw9dFUWHZv3yloS7bYZ6BYfKA
         urAm2TWodz4detJnOlfLrpGL0LWUiuv1rFQGlUc+8G4C7QWx7kaFCIyVs9xVlCF5WpSm
         13nA==
X-Gm-Message-State: APjAAAVUS+eS5nkUldMlKg9drUWVFtc+Xhv6wqy5qL1B4d1PbFVcVP2/
	sKnUpSXzJHCjs34N5tWIn/9+nwptRDU=
X-Received: by 2002:a62:f54d:: with SMTP id n74mr10418805pfh.98.1552760870189;
        Sat, 16 Mar 2019 11:27:50 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id z15sm9187221pfn.30.2019.03.16.11.27.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:49 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 4/9] staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_dm.c
Date: Sat, 16 Mar 2019 23:15:38 +0530
Message-Id: <20190316174543.36254-5-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316174543.36254-1-himadri18.07@gmail.com>
References: <20190316174543.36254-1-himadri18.07@gmail.com>

Remove comparison to NULL in file rtl8723b_dm.c. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	- Break changes into changes per file
---
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index 6b6fc835c601..65781477cac9 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -254,7 +254,7 @@ void rtl8723b_HalDmWatchDog_in_LPS(struct adapter *Adapter)
 
       /* 1 Find MIN-RSSI */
 	psta = rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));
-	if (psta == NULL)
+	if (!psta)
 		goto skip_lps_dm;
 
 	pdmpriv->EntryMinUndecoratedSmoothedPWDB = psta->rssi_stat.UndecoratedSmoothedPWDB;
-- 
2.17.1


