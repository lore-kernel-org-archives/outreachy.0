X-GM-THRID: 6666325868481085440
X-Received: by 2002:a67:f4d2:: with SMTP id s18mr15217189vsn.41.1552127730671;
        Sat, 09 Mar 2019 02:35:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2743:: with SMTP id a61ls2574983uaa.0.gmail; Sat, 09 Mar
 2019 02:35:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqzfu66qjNMtzpWOgsvxYBXGaW5iJ/qL+D0b7D+uNZzGUJx9eTAJqF5P4rZC253Skmfnxnpv
X-Received: by 2002:ab0:7103:: with SMTP id x3mr14805947uan.14.1552127729928;
        Sat, 09 Mar 2019 02:35:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552127729; cv=none;
        d=google.com; s=arc-20160816;
        b=cGQtAPAu8irK8yKAtIZPlJvSJiuY+Jhr7OHizcnDN4qaNtdJ/wNpxIBdCXAdA2nhwK
         z11P/ohQAhoN+r3E3q31Li7WK6sAjrgVj5BuSX1kwVWwK/gqU2MOgnflfdyEtigllD2f
         N1fLGhI79UE00xrMIPeneJi3NHEAsuMyDDDNUYygD1O1BBRbcDoHaDyi//AM+Lh/pZ3r
         jxsNVpqS/94yPt6Gpf20QtHOABHkVsoRl7QBJlOogiLokjP8k/ODEZy0fOvnMQGDfoSO
         1jEWKPSNEClN5k3aHpwlX757HbNG5Zxg4YrUOPsoWJHEOpPBdfJzlqxr6vjbELo+R1wE
         03sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=n2n/LCZX8mX6sgF8Y6Wcc3gfOcw4t8dw11CVkOq3X0A=;
        b=VwcsHFkecMayjrGXvuchJHamyy/1y5TqJLIQaNAkSPoxf1qG+emIPQa9+kYwdCZ11c
         Z/9kD0F7aHV5LVfXFGXNnpBZGiwXbIKV6DOT5DT4rbx0WInyukyqBBaxWCeOQO5kBkUt
         BA39c+cN3cpO9nThvUGO7hcNTMAMPzc9MFYZ58oPuLFhf8xrC1vgJEfVASOYnR55yGDZ
         q7IldpwAy0HENMQ7l2GvRu2kKV0wPgq+Yj2Tcgrhcc/wqkdxM+XD+ZwhB9BGfuWL/pMN
         K+W3ZjKiaVmfOzHfWwvFehjYQDFp0ItUB/8vAJKM0hO+yw6pXknQaV3pdy4w2w/vKctr
         mCPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f8gOp7Sp;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id k19si9642vsm.0.2019.03.09.02.35.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 02:35:29 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f8gOp7Sp;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id j3so163678pgm.11
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 02:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=n2n/LCZX8mX6sgF8Y6Wcc3gfOcw4t8dw11CVkOq3X0A=;
        b=f8gOp7Spnxp/CLRT6iD0EnH3QOvBFEl7Hh36Rmq19/wtdHOESkG1E3HUGmWyTJBFgA
         WTm4CfMJg/ijR2MTui2K3IksO14k4WvG38Rq8+GE5BxqHCQRoa0RgzWrfVl6M6/eUE9G
         p5fVYZtUQaKgjLZXxYIHnZ5sTQERtzyk6WFhyO/MsDIA7ChTZN733QI+aAB+tKa/9aaf
         qbjkev9KLFSiZaOMOOWXTe0Qyimk4nLwWGnDvv9Ky+EqFF9VCoiSlrxq/AgYaCEX9Iuy
         6aPOSyc/DKh9wRpCfVFEGSxJshqFS9T82SJPN0yXQoNsKGMkEH5HckWL/8+2WXqJbTSz
         DyyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=n2n/LCZX8mX6sgF8Y6Wcc3gfOcw4t8dw11CVkOq3X0A=;
        b=WaitSnPP9voEFBqoZnGZuM+ktpCEpoSDa/6pRiAQc5XgVJkVrm6dEqGCEh/39F1hGA
         imaM4Qe/wizCflE8bvVQeMTRGmr9kXd8J0CUkLtL3/ZCxwFNthEyBtVKTwlWS//j4qp1
         0XldWB3fMGNgsTRNbrLUMW7Ga7g3rw/J7j4CAG7uab8p6EeJVQ7lHXYsoUB9MaFjwgdS
         pQScfY3wSH8CC3TI2+N9LWDnq9wGlEkiGPLkhFgBUYyh9GlRKKMk83Mf8DbXPKWfQ4CQ
         KJl5k5cZUCs4Ez9lEJ3urdMyD8/1TrL2nPAm4Kw80wWHFxcQ+1sJYAlPRVmy9xMkh/pH
         qt6A==
X-Gm-Message-State: APjAAAXktLqdEazncy8PhesnWZHsOnbkLvrYNMCyGC6UDbxz/Kj2iF+A
	j7s/vyRpbSJE/6FbaxQqK8A=
X-Received: by 2002:a17:902:4a0c:: with SMTP id w12mr22940148pld.174.1552127728922;
        Sat, 09 Mar 2019 02:35:28 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.236])
        by smtp.gmail.com with ESMTPSA id h126sm1673791pfc.135.2019.03.09.02.35.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 02:35:28 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: adham.abozaeid@microchip.com,
	ajay.kathat@microchip.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2] staging: wilc1000: remove unnecessary variable result
Date: Sat,  9 Mar 2019 16:05:16 +0530
Message-Id: <20190309103516.39919-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190309094840.38154-1-himadri18.07@gmail.com>
References: <20190309094840.38154-1-himadri18.07@gmail.com>

Remove unnecessary local variable "result" and its assignments from
function wilc_set_pmkid_info. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Arrange the function arguments to the right of "(" in function
call in the return statement

 drivers/staging/wilc1000/host_interface.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 4dd9a20f6a0b..fa0e1bd9f836 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
 int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
 {
 	struct wid wid;
-	int result;
 
 	wid.id = WID_PMKID_INFO;
 	wid.type = WID_STR;
 	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
 	wid.val = (u8 *)pmkid;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
+				    wilc_get_vif_idx(vif));
 
-	return result;
 }
 
 int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
-- 
2.17.1


