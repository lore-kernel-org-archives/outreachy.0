X-GM-THRID: 6674450234072891392
X-Received: by 2002:a17:902:324:: with SMTP id 33mr1456459pld.26.1554029367320;
        Sun, 31 Mar 2019 03:49:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:282b:: with SMTP id e40ls2728559plb.6.gmail; Sun, 31
 Mar 2019 03:49:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwGUSCOIpZInnqvY/f4xXgBxsxLKsRY4GSMbkKjMxIq/rVx7/k5tHLA1cWfIdKj7P/dnrYw
X-Received: by 2002:a17:902:3225:: with SMTP id y34mr1574679plb.137.1554029366649;
        Sun, 31 Mar 2019 03:49:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554029366; cv=none;
        d=google.com; s=arc-20160816;
        b=pfUB6uVUhUkfk+jtaNoUx8WG/tOsOHBsohqerIJmDtQ9+nBdAwF8DLcy0JUgLFnHyJ
         owH5quR+SFiI5fT8L7HLJuZ+3ZdiERPT1hM60gs2sp5vHaYRhtoQ7Xw+p57nmb2FXbCL
         0APuRMbfTsgFyUK4Q3Y/kbqsSv3SO47P4hl8caM5l3TVql0jH5L3gDQiqipN+M/La7xF
         7QH9dIMmNoxG27HXtUQ+vjtOSmQdTghSWglYtfDfLHMcZjoE9XPvRh/jBYvwYcQO/bCR
         MJ/g4hmgL71ITNONajIQLCrhirlApTSIsM6F/Qp3zTnwQxiKT4zuzcDgXY3o2J1BzqpH
         5vsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=5hgKRIPgFulFLjdRuSo/McTcsu30QCktff2ryLF++N8=;
        b=XeLrvbngEvVU2ZrKow4IAXjBxoDuIu4zTYqLDD1lUJ62oPcU6MBhtKDygXjXtOdOq+
         GI2PaGs88N8R9l0QjIzXo4fFBhbYHaTnTX8W2k9kFCZg3AywP0KpPk4Stxgc4GoBBmu7
         lKanR8y0Q2KfIVnzyDA70fDVM93vMMCpL9K9zlsaGXdFSXFxvIml+kEq3ezMK/Hpq95W
         fgObyY5plqdDKQBuS7RBBBjeu3N7mkBaDDb6qOoj2GudScJ5xdQC5a1H832w1/2huwAU
         dD306pr2B3v0BA+GhuHW03lPYvvgG1uXbktBRPJGexFTcFWmKqWIYMeQ/xcXIj6N6ZOy
         xRMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QbJKYeIM;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c14si367241pfb.2.2019.03.31.03.49.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:49:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QbJKYeIM;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id b3so3130027pfd.1
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=5hgKRIPgFulFLjdRuSo/McTcsu30QCktff2ryLF++N8=;
        b=QbJKYeIMEthnh3t+YfBwQefQepkGqEBkjvyGAbQPzCydbQ10PUV7ZZebNbaPP9nIxP
         S0MY8De9hxvPFeHWsnV5C0qxYT3wmSSDX41AWDjXzwlI1mp4+yPT+aNcpLt74r4NPJ8r
         J9FjEzC6QUSPQ1OI9h02BP3k8s7C9Oxudopei/+xjh58nPBsPJ1DUvROdKujNRzgbLgV
         DLVKO2paqYAARE/aWW2WohyJt6wJhneJUm9yUrN7Kq+FrSDdOZWMUL8edByXWKlgkcai
         x9343dUFueP9EmfQm+ZunQ7HP+vjDs4PGtDLr+8rYWXe9N9qw2XbT57F6ewp1HFvZgn6
         mwrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=5hgKRIPgFulFLjdRuSo/McTcsu30QCktff2ryLF++N8=;
        b=l9IdgzAi49xXTV+uVjMNeGGUxf2p3Wr7pBADmlCyJrmYrT47RA/Jwghqc2JwM5Oqxb
         7c/A1njrcdEK1XZLGi/ck9ttUaMnJQ3IoSIEYY0+QIrHcW32UvpBgAjFA8LnGhHJJBXK
         5wHliowDX+R5/WaJR/NByD6udW3Tq7FUzC9cc3QxysG9agvn3ekDZFINXnkXLkFH27pD
         1S3w1IspcxNfpb+8Gkt4bHo5XdMPCL+SmZnvNGDoFx/dRqnOXfb/7V9GGwZUGKbxe0eX
         A1WT1ulKJVAzutsPpTpAsgSZDpN8KK5eZTvpRemRQLFETFYFxZv3PqhwDrMDOD2222Hp
         q0cA==
X-Gm-Message-State: APjAAAVWsxdshZiXUdgMggj3Q4NkmuMtU9DdJv2NBJex5/NsoaHlzFwc
	Bit9LOpvmOixOBiGNbLh8M+In3I9
X-Received: by 2002:a62:ee13:: with SMTP id e19mr56769450pfi.224.1554029366103;
        Sun, 31 Mar 2019 03:49:26 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g4sm10014361pfo.38.2019.03.31.03.49.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 03:49:25 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 5/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Avoid CamelCase "blInserted"
Date: Sun, 31 Mar 2019 16:18:40 +0530
Message-Id: <48ff0fcd2e8cd8a30873d12e99285520bd517dd3.1554028003.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Change variable name "blInserted" to “inserted”
to avoid camelcase style issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 86c7c9d..e550806 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -943,7 +943,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			    union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	u8 j, blInserted = false;
+	u8 j, inserted = false;
 	int intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
@@ -965,7 +965,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		else
 			intReturn = true;
 
-		blInserted = false;
+		inserted = false;
 
 		/* overwrite PMKID */
 		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
@@ -975,12 +975,12 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
 				psecuritypriv->PMKIDList[j].bUsed = true;
 				psecuritypriv->PMKIDIndex = j+1;
-				blInserted = true;
+				inserted = true;
 				break;
 			}
 		}
 
-		if (!blInserted) {
+		if (!inserted) {
 			/*  Find a new entry */
 			DBG_871X("[rtw_wx_set_pmkid] Use the new entry index = %d for this PMKID.\n",
 				  psecuritypriv->PMKIDIndex);
-- 
2.7.4


