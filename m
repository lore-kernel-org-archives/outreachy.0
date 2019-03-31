X-GM-THRID: 6674450234072891392
X-Received: by 2002:a17:902:ba86:: with SMTP id k6mr1261516pls.126.1554016579648;
        Sun, 31 Mar 2019 00:16:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9f86:: with SMTP id g6ls2524284plq.3.gmail; Sun, 31
 Mar 2019 00:16:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwd+h9LN3V0vIhpuvrBfgryoFsCkbdFvjSYwCfDfDrzKDD9nWj6gGvpZ39wADMCWhrfXHx9
X-Received: by 2002:a17:902:7487:: with SMTP id h7mr1393681pll.86.1554016579028;
        Sun, 31 Mar 2019 00:16:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554016579; cv=none;
        d=google.com; s=arc-20160816;
        b=SoV9xL1Glf7T6NGs0P5RfmNZStyxlufRLKsxQLkZU+SuV4lRC1kyW01ObHtTGJNlZC
         128mLIyij7OgP3QTB/wNPtTRKMJ3lN5ctKNIjhY8gGOANqIRM8Rcw9Wf4dqsqw7RrHYb
         z/prRs9S1K2R8hlGzbC86Lks9kKJgzuHz5aecYuOMpzek9X/rEE+PtJAWWyZVDXqUzX2
         WH01NPj/ywjaqKwWOl0SsHTqEMvsPq1FLRr6tKD9OLS+B6eC27b9vL+CaP7Pc9gEjqwa
         mcMpB3YaILqBp4WzwvYa/IPdowPHx7J5xxI40e/+FQ6galmnqRw9ukc+8hLRTBS+BEcl
         A5kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Bc8IDjuJ2/ty7UEHpqYwvpYJzNvMw3wRSKjcTVFgaWk=;
        b=wn/395ngkGn9tIzvRI8K1x6yg6V/XupcGoRoRsFA7c6L5qeo/oJVfwNoBozc2S5ILM
         9Vbfabru4yBywt/Yq77Uvl6f/q1ewBcMjtVrMhfpnZikox9ToNBfzjpT18g9QyUQjKIB
         ygE5x0qBBDhdf1yaAxlBsHvvd8sH1Mauqw0/4xBKypbZNWcTcsEsfUTG8MmaeQGguTDo
         KuJaQgTjZEyItAkVmxLuvL3Kw75WhNQGvZxbscjAFHFR8g01izZLdSQ+2LDJoEr+1Meu
         jTgIIshBA1XlaI3knAc7H1rg2qN2Hz/6IVyVo1cXWXCzRmvd5HwDkc7k88ib7r8Ybiji
         uvPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qJ9XfEob;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d18si446444pls.0.2019.03.31.00.16.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 00:16:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qJ9XfEob;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id i2so3166238pgj.11
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 00:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Bc8IDjuJ2/ty7UEHpqYwvpYJzNvMw3wRSKjcTVFgaWk=;
        b=qJ9XfEobZyxNkVKnzcFqoJjw6EI2QPM1NJaGB3efPC2NNPe0DJo/TC5Q+5W7geaIko
         2O+rxGS7SH9878av293wecAymhlURY2KI3ftK5M9qfDrlDHFXh+lOgzGtSeKMVYnvPA7
         P1UJFNvyolO2qM2qsdR87uUp8BDUMkD92Go2yIoya9YM4Y03UUSBSgsFo2isuIuafVd9
         eAH9Zgtkjmb5D4t95/lOxW7cLJhawUQ93nAqWLSwVwgwac3Wx9cmlNY9MDox5iP4B4uo
         zv7xuD5dG9+xO0kui1+lwe8lFn1p4LqyeXvQjAbYxnmbbo4Vno8KYObkm4m8hoV+pEp3
         MFhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Bc8IDjuJ2/ty7UEHpqYwvpYJzNvMw3wRSKjcTVFgaWk=;
        b=Sc8vEMaK8BRh08BCYsSMZrM6H9ArG2FRTSuwHfconWPZNkdTNpiL9sLayCiCcUlEGe
         Tlbgxvz+Xvj1h0kUWWOOs1eNwFtl33Xt1vWagPaB+vIg/Drb+w20/rteeSwQIu3pT6l0
         udkeEFw5JbQmU3cz1yAXOaxko2D2SF93RhG+ZTNuVD3BCRFh9QtpeAFgCiJIvegCKHJP
         TXw6dLbVIjpHjks50FA3THC3RBaFWCYWALXfwVXoXVChtcPtFfaYyITjVvsbbpdeUfdC
         UBkWar+eKRY7Cl47vcr5wPibBvNtJk6v3f38/ooYfAfbhVkTUw31wxWHKtoMGpoDTQMC
         Zrvg==
X-Gm-Message-State: APjAAAVu2EYTLqt0CIccR5xNClkICtduuMUcxvv5IZyKEEOE0KTN8262
	tmgGkXgP+XE1oOwCMRF2GK6YMs80
X-Received: by 2002:a63:5a1d:: with SMTP id o29mr50303086pgb.320.1554016578491;
        Sun, 31 Mar 2019 00:16:18 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.206.28])
        by smtp.gmail.com with ESMTPSA id j19sm3373843pfh.41.2019.03.31.00.16.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 00:16:17 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 9/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Alignment should match open parenthesis
Date: Sun, 31 Mar 2019 12:45:20 +0530
Message-Id: <14282eb87e9d0b1e6728f79a261c8f442dde9e66.1554016131.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>

Align code to open parenthesis.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index fbde2eb..b51175e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -983,7 +983,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		if (!bl_inserted) {
 			/*  Find a new entry */
 			DBG_871X("[rtw_wx_set_pmkid] Use the new entry index = %d for this PMKID.\n",
-				  psecuritypriv->PMKIDIndex);
+				 psecuritypriv->PMKIDIndex);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, PMK->pmkid, IW_PMKID_LEN);
 			psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
-- 
2.7.4


