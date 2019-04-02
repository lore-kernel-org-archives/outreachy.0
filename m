X-GM-THRID: 6675318359713644544
X-Received: by 2002:a05:6830:2092:: with SMTP id y18mr6938989otq.46.1554218670874;
        Tue, 02 Apr 2019 08:24:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2021:: with SMTP id n30ls1353359ota.4.gmail; Tue, 02 Apr
 2019 08:24:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw9JNZXLQ5XZezR75PnVHQoUzu7H9HDTmMP5Hf/wyUvWfYT105rESOqt9mOGTyrnbBTpR81
X-Received: by 2002:a05:6830:112:: with SMTP id i18mr6939242otp.50.1554218669696;
        Tue, 02 Apr 2019 08:24:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554218669; cv=none;
        d=google.com; s=arc-20160816;
        b=jjvyvh0+ShlMQnoq83OETsF+pXBWz6UsOunz8WHPUg9Bv3BrQNEI5vEs1jJHvYcvoP
         TP0u1VGheij7PbBZgsYJTmdVSCyVEnl3FhBFrgqasYIp+vD1KM0W60Hro5P3ghxRQSVI
         KWajdGKG0EYcTx8x0FupqARw5i5L0l/85AHO9L+ccRnyZzbVN5dCrKKsbFunez8x76oH
         ORpBJajnMirb6gD62xdI8hbC4KUS46v183dPSwBXMuWvAOnilVwiswGGZF+8bSHJm3lj
         mefDIFaxqsSEmNxUmRe1TM1sY3aPWxfCYMVjch0/JORP8rnLzZch0TDNb/sChCPIHW50
         skRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=IMUNgvPyCqEEATsC0c480oZUyAXtYNZP/svOfFeJ9ZU=;
        b=J29zrswCudTQaoAs4avdjaH6qdqrheeHu7lF9DvKKBBigTVXxmFfRBysz0XQyHg8Nc
         GTCsVkWcwexn2UZqVDOlUHKCr4STKevUyioQ/x0KwlOhzAY84HkLxkIxsLK7hrwWFA4e
         chARkmcbhYGGLmSBBehRcmGx7AdFzwfcTf3LioCvsWCozjg2TENsSqooLM47r8hZRrt8
         tOzFbZxgLqPYKsbtjcWIQhH2+xvsoGQgYAJIc4Ndthr/tKwwULSw7pQjifs31p4J1BJN
         zwJtyi+kS865hDIQLk+tOPnjrqbMuubnV2ch+cvyH0boc7h03S5iGuIHNSzS/bxj0kPm
         MiVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V0SABYxj;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id r62si189957oig.1.2019.04.02.08.24.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 08:24:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V0SABYxj;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id r15so6535705pfn.9
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 08:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=IMUNgvPyCqEEATsC0c480oZUyAXtYNZP/svOfFeJ9ZU=;
        b=V0SABYxjh6w1zFMEYt9v6W7xwM2rdviZFKlLbnbFi9Wod4LtGWifrDfGxp5YQ/Astd
         zl9JI/fcn9EATcMPX81DsjSJ+kFMPq+cxKBlWP2X4ckfm4hEzUVgqgpnxybBXgOpLeb/
         KikrtAcq3TGZ8RZyLDVYPs5O4+XHJgOO1ghJzPp3RzrZtP9ueNS00EKX6fW5xnSVFa9E
         VDAqa5pV8/7YHmb5MUR4TTi3ETYpjkNtJ6b7GSr7fA8vSFD3dQGAaKmt9w0e5HXy/ZiV
         zWLE9k6R6FLnwJ0suesyeV85lXQJMh0XnZ5qERjcZ9Iyzvc9zY9GqelfHEzq0u6aCK2R
         igog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IMUNgvPyCqEEATsC0c480oZUyAXtYNZP/svOfFeJ9ZU=;
        b=rQ7xsvuxbYdNMcGuS8t8xuqqBDSRpQawvaNhhasX66YwS4+ABa3ujlN5U/DW2KiwH4
         T68Ufv3Y6OfRp6skdfjRm1Ghi60qV/o5YGtqJoTLWgUnulR+fu4jJQNcT0bDx2FB5YlL
         41pa3KdAb+U95yyLZ8GoVtm9gEfxom+EZC7hfDh8634/J+71eH8NG2l0hKCC1gY+L+pd
         /cdb54QYTsWo7tmDH4VqQ1FIucmGBDmPFswBNiAhQc6WtlNLThI2+UGM38TFGAWuGfKo
         1uXqMshAcUk/I4VgEPv563rWV5JDoj4rN/5enHku+qqYM8Uo45enomotPDIIeYJrPAMn
         bMxQ==
X-Gm-Message-State: APjAAAX9ZQKgrbNmkKWmER+qI7oAG7pbgfCKDCW8bARLh8obtaSAhkso
	eFLbI77JAalOXA2EWkp4uzRVCD2F
X-Received: by 2002:a65:64d3:: with SMTP id t19mr1530824pgv.57.1554218668519;
        Tue, 02 Apr 2019 08:24:28 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id f6sm9059387pgq.11.2019.04.02.08.24.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 08:24:27 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8712: rtl871x_mlme.c: use !x in place of NULL comparison
Date: Tue,  2 Apr 2019 20:54:13 +0530
Message-Id: <1554218653-12372-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Avoid NULL comparison, compare using boolean operator.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index c666e03..e370841 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -95,7 +95,7 @@ static void _free_network(struct mlme_priv *pmlmepriv,
 	unsigned long irqL;
 	struct  __queue *free_queue = &(pmlmepriv->free_bss_pool);
 
-	if (pnetwork == NULL)
+	if (!pnetwork)
 		return;
 	if (pnetwork->fixed)
 		return;
@@ -115,7 +115,7 @@ static void free_network_nolock(struct mlme_priv *pmlmepriv,
 {
 	struct  __queue *free_queue = &pmlmepriv->free_bss_pool;
 
-	if (pnetwork == NULL)
+	if (!pnetwork)
 		return;
 	if (pnetwork->fixed)
 		return;
@@ -399,7 +399,7 @@ static void update_scanned_network(struct _adapter *adapter,
 			/* Otherwise just pull from the free list */
 			/* update scan_time */
 			pnetwork = alloc_network(pmlmepriv);
-			if (pnetwork == NULL)
+			if (!pnetwork)
 				return;
 			bssid_ex_sz = r8712_get_wlan_bssid_ex_sz(target);
 			target->Length = bssid_ex_sz;
@@ -1120,7 +1120,7 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 		}
 		pnetwork = container_of(pmlmepriv->pscanned,
 					struct wlan_network, list);
-		if (pnetwork == NULL)
+		if (!pnetwork)
 			return _FAIL;
 		pmlmepriv->pscanned = pmlmepriv->pscanned->next;
 		if (pmlmepriv->assoc_by_bssid) {
-- 
2.7.4


