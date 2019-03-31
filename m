X-GM-THRID: 6674450234072891392
X-Received: by 2002:a17:902:f218:: with SMTP id gn24mr1290597plb.77.1554029372038;
        Sun, 31 Mar 2019 03:49:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6cc9:: with SMTP id h192ls2636169pgc.3.gmail; Sun, 31
 Mar 2019 03:49:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxE71R3kvWO97qB2B2Bl2E53p7oc1tyZUYqKWqGZgYiEYiH18UvSoNTzgtPaJVGBocK6gJj
X-Received: by 2002:a65:5144:: with SMTP id g4mr678364pgq.132.1554029371440;
        Sun, 31 Mar 2019 03:49:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554029371; cv=none;
        d=google.com; s=arc-20160816;
        b=Y72azevphJA1hBNRfqcX/NQkgKnKcQQjypNMib1hc5fycug6u/96itDpYP4EjrIHib
         yqJs0+5Vm1eCEMf0Prmv1/E7RLacwDC+m+/v+wEgfkthJkafP/HG6p0MbA9GlOWAPcUA
         dz/3Qc1JWvo/0O4Wyt4O6UJtOlx+rc3Kz07U83XrO8dcBhf9JPksKSz/QGSKN/+i00pk
         ovgdmP8chRPtal4qZ8XMnvpwm/zPvGwut32+p7APVAvaDf0ot+PsPRwNKTpFFF/hTZZu
         lAVmvYlUweQLnrqQGTovYL0g6h1yWh5mHxinzbWuWfMJuwCblE2N3v9hnKzP6blqHY+s
         gIzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=DUCI6O4bnuk5enMSV/5YaEBqXuf7YunkCLwDcpnzVsc=;
        b=CJy1Rwbp2sePeCXL6ZEi3nz7TlcKbZjprRle3xi+K9LMhcAWHxOvgPEo9JmwGk2AtB
         6FQ6Nk6DHqB8h3wfgFb6Va0bTAIBgN1RVlsBIMJRRnTso0MLZTf/6j8qCnBfhdOCJiNl
         9uLc+fneceY1Hs/+TnTFmKXfuElE/s2I7aAQBRYzZSEGytDV66BJ2jZceJlWPwiH4S44
         URikgQHSs32QPj/xDBM9VguPHCqP5sxLdaHumogn/bo4D6fHCV1NxCgFMuo78RnHIrOo
         B/hgHUAxirDJUklauTYj2tvWM8n0+5Y6FpfGIN8GCrPY9+58fI24kruG7qfzrl6JYhHJ
         TLuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l8wnKmqT;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id cu1si576122plb.4.2019.03.31.03.49.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:49:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l8wnKmqT;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c207so3119912pfc.7
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=DUCI6O4bnuk5enMSV/5YaEBqXuf7YunkCLwDcpnzVsc=;
        b=l8wnKmqTsNfyvlKaOjDZqi60x+wjZG2F9aoDkf/3b5Hqv7C9y5ZvkuHtEua6+KzRxq
         muVvzsHUu+eZjHPKMI5/2ze4E1B9Sxxyqc694URohoWRHMlkGGQAnQgwuo3qLPifascW
         GVFsCvrAyt2gEisvyMp748xZVbB3nwK/iV3Xd9pB8gXIYqV3K+n/vMGuVmWyRC5ofUl6
         qbno4XJo4GWZSKvTPxyFkqzjU0wK2omQjd42eWTlRVlsFwzWm5TbxdYkS22bOaWIyoTC
         lKOLw0dieqsil/Fyyj7S8Ph0O6VHfm37dZf7v995+TpfDASEe6qNnxkkEZvQciylyy47
         FOPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=DUCI6O4bnuk5enMSV/5YaEBqXuf7YunkCLwDcpnzVsc=;
        b=kgfFTy4aGnzUYyGgBTzM0nNs0vSAj/+r/LDTLnN/uLx4dWBGQoN4ekmtsa5B8p0EaG
         s5iGvERbrrv+RqF/JN2jp4WNkzInvmfTgXWOZQY86mzDzP2zSFtwDHaFNYAKWa6KrY+l
         OKrbEPnSaeCqjMM1GTb11h+uLJj7WghtHBciOtWH5zBdwBkvgDjBG1kKcxzZQZID9/hN
         mgSpzGcdxQsYRfzW/dkXlphMpI1asmIvYJIR/z7Qj5hj3KUUcvDTW/FU+D4/2Fe0RKh0
         JltWeicq3MrWwmFxQhKXocV4wy6yTKgiodh/G0y6TQFZgQXlivy1wGpNGN8HgjRcKNnT
         9bAA==
X-Gm-Message-State: APjAAAVhtU/L5W9ObT5G+fPoiijatCYYgVhy/qfJzlz9lCVJmWBkpnWr
	T492qB0CfUnUHf81JZ7RTL06qR2h
X-Received: by 2002:a65:62c5:: with SMTP id m5mr54483808pgv.77.1554029370909;
        Sun, 31 Mar 2019 03:49:30 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g4sm10014361pfo.38.2019.03.31.03.49.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 03:49:30 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 6/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Avoid CamelCase "intReturn"
Date: Sun, 31 Mar 2019 16:18:41 +0530
Message-Id: <a730a1b9b27322788ddc7432420ad2a2a5b7284e.1554028003.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>

Change variable name "intReturn" to "ret" to avoid camelcase style
issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index e550806..6020b0c 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -944,7 +944,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	u8 j, inserted = false;
-	int intReturn = false;
+	int ret = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
 	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
@@ -961,9 +961,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	if (pPMK->cmd == IW_PMKSA_ADD) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
 		if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
-			return intReturn;
+			return ret;
 		else
-			intReturn = true;
+			ret = true;
 
 		inserted = false;
 
@@ -993,7 +993,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		}
 	} else if (pPMK->cmd == IW_PMKSA_REMOVE) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
-		intReturn = true;
+		ret = true;
 		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
@@ -1006,9 +1006,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
 		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		psecuritypriv->PMKIDIndex = 0;
-		intReturn = true;
+		ret = true;
 	}
-	return intReturn;
+	return ret;
 }
 
 static int rtw_wx_get_sens(struct net_device *dev,
-- 
2.7.4


