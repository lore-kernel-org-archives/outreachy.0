X-GM-THRID: 6674267883353145344
X-Received: by 2002:ac8:93d:: with SMTP id t58mr4989534qth.41.1553998951211;
        Sat, 30 Mar 2019 19:22:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9e6d:: with SMTP id z45ls1426696qve.5.gmail; Sat, 30 Mar
 2019 19:22:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwT8sXe0WBicCRiOhGuXZB4Z9bCUoR13+WwoizeCmlPjYtWun4OyNLgpRnPcce561rxZDoT
X-Received: by 2002:a0c:94b9:: with SMTP id j54mr5326352qvj.44.1553998950710;
        Sat, 30 Mar 2019 19:22:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553998950; cv=none;
        d=google.com; s=arc-20160816;
        b=bByd6j+JYiy4MVEaLR47f6mnhLVHu1OigePmlTo1IeSlWNEcctSWwxaGlfZjyajipf
         sZG9UiOlKPRmJdLOWb74JqCpjVrE+hfACfmA0g1mgpFOqF832mldc5X7jM+SZSpFTz67
         H/6Y+0K0DLDvC/yiVnp6XwWrVL5FJSgANB1RKJSKtnNn1QEmAgbWMbwScyZEIMUVEmEd
         Rv8y37ErTrjTtk8lWE8uPDXCraXYP83RpUrTe2mKT2RJSV0AFGAs7anI0TvwHOJ3geMO
         cqmMHRe0Mbu2dGhBiQde0RF5X3Iyppi8DlFJGczTGWkwb9GOwUYQCG46Kvko5Mq1uzFy
         rKSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=j4xTNKm4BvehLNYeEF4oIbjenRFJP5SfdNh/KTLhlkQ=;
        b=jvSGvIGs4iWd5cy1fjLW+Z3bdTF/2xC1coLyryw5gZGl97trimL94V9JVTvZlakJip
         AFrPf+VjzpQdmeYYH3fTXxFoXvSui4d2NGEN/TnirGLliUakItK+DDXt6OvWfY7kpLw3
         9DjIzn+fszA43A+1GTXRmZQN9xE8IUyAJyQvfgLq3HwlyUOldAfl+ma+NTg6S1btagkN
         B+0r+FabowBl8fmFul1KlSs7cDQXC0zpR8KFd0WNkKyqtidTmi2EQ57zhqF+wIyOhYIR
         YF6JSxZTI6Tyo6TBXCFrmhRoMOvIf1GVMBBrOEvT3i9w9TDVYjAMZkBLDP+3PjYi+zpo
         Q77w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jrK+Okza;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id w12si297471qka.3.2019.03.30.19.22.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jrK+Okza;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc42.google.com with SMTP id z9so2060296ywd.6
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 19:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=j4xTNKm4BvehLNYeEF4oIbjenRFJP5SfdNh/KTLhlkQ=;
        b=jrK+Okzaf75V+c32ybu6wgKOkvEB6IetA1F2Tsz8eqT35VTso16DAtUP6aiVVugE0K
         IRXptO1qFXp3sZuDcFWgWVRNid8RetOHKUFPuYxULYLT1Kmj4RlAJmf4TJRZlbUAjgbq
         VCPXwwMFHNYr3O41Y8ZCRNZZwTQJlgessOIR5VMQp1tUJzAFkLirJbjvCrFUf/FYXxdD
         V1khywAx6bzpzMGeQD5Lg8fyhF44VbC2KEHPYRREivI83VmkOHvx47kRThFuGAqXGBsB
         ywfoeZNAEy9eGnlbFy9DsApstspQa/WNkUZ6PJwBCpy9xg9ETHSRzA4wJNIqhDLUpilD
         p/Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=j4xTNKm4BvehLNYeEF4oIbjenRFJP5SfdNh/KTLhlkQ=;
        b=YC/2jR7doeFRDlsSRP3wVIhv1vZ/kykrsuuBm0aru+GAm2UvfMbwl8yW2X1CJpJtGP
         R2GeakzQtkhOfvdWcIEhTZQADl5z/Mi3cy1/d7IoPPf43u+SZ8BNEoWszrpIkv7sIzSU
         5oP1OU4KSRhXbhp6FhkMnqrxbBkXRJatMf9RO0VUxUlniahIvF8XyWi2ce9JAZHVEuv4
         YNUaypXbiv+8MQoODBo9/WYz3JL0qnK8+pjpvoQ6jcJA79LRuFQD4V6BP/uTX77k8vwz
         WZhTc+Nf3edggWuqNHMEs3Z4vsoM/ylXO4KH1MTtcESwGjTpHD/GIxHuLkno7OQHXqz1
         CVqw==
X-Gm-Message-State: APjAAAU+w3I88kEVk+XfzhPGeQC6cT5JSfWAsK3mJRuukuWuO/qFVMm3
	EOrc5J6t3zjfTWADWgSyhmk=
X-Received: by 2002:a81:1383:: with SMTP id 125mr45982589ywt.265.1553998950303;
        Sat, 30 Mar 2019 19:22:30 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id x126sm2425558ywf.92.2019.03.30.19.22.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:29 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 7/7] staging: rtl8712: use list_entry in function r8712_select_and_join_from_scan
Date: Sun, 31 Mar 2019 07:51:55 +0530
Message-Id: <20190331022155.68569-8-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331022155.68569-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>
 <20190331022155.68569-1-himadri18.07@gmail.com>

Use list_entry instead of container_of for conversion to
wlan_network in function r8712_select_and_join_from_scan() because it
is a better practice to use list_entry for such list manipulations in
kerel.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V3:
	- Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index be44c6b2819b..504c96993adb 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1117,8 +1117,8 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 			}
 			return _FAIL;
 		}
-		pnetwork = container_of(pmlmepriv->pscanned,
-					struct wlan_network, list);
+		pnetwork = list_entry(pmlmepriv->pscanned,
+				      struct wlan_network, list);
 		pmlmepriv->pscanned = pmlmepriv->pscanned->next;
 		if (pmlmepriv->assoc_by_bssid) {
 			dst_ssid = pnetwork->network.MacAddress;
-- 
2.17.1


