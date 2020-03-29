X-GM-THRID: 6809468497850007552
X-Received: by 2002:aed:3c42:: with SMTP id u2mr6341930qte.162.1585452933900;
        Sat, 28 Mar 2020 20:35:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:9e41:: with SMTP id h62ls6433498qke.8.gmail; Sat, 28 Mar
 2020 20:35:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtQzSMLqiQ0+ekVb4Ops8BeyJpZZXFfz/X0wd7NQs3QJROcjZ8R3VtNA35FFQb0VQhGicX3
X-Received: by 2002:a37:a915:: with SMTP id s21mr6349028qke.436.1585452932682;
        Sat, 28 Mar 2020 20:35:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585452932; cv=none;
        d=google.com; s=arc-20160816;
        b=0P1w5ZJeMui2kjpWF30KD/I5PNk2yzvybQaB+XP0zg7o9ggqbtn9fxFTVlWooMneVs
         G1BccdRkimpDtVYCRBiEYloHbzsDH30XldEMBOY39cKkeuhQXHnjpbWo2RoaSgm7Sly8
         +qTRrBdWO3gfUkAWdrMjX0XEXZuAwk6P9igwKlSSR+OsluuafnK1UZSQ1ebv2UjxBFhm
         0d4e6rJmOL6HcvWOGWlBRzfyaxFfX2SFLtqDMdgYKNPZydmdlpydklqVjgGbwwwYyHTE
         fsZe6Cd4UB3ZMtPs5B4ajs98maPRVBmMKQs50cNsjyEHm3TJN8tc/I+C+AlkqD0+TKdw
         gRzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=cF2fdmFT4y8poKQgykSEvBARpVMuKdcuHdJc6rFcq9w=;
        b=Z7fjzy8FkpeUN6bngUcVOwOuQdX90UUL57Djc8I5PO/o+V8cAcSo1ojbCutndmo3Jo
         MurkdV0+KqFMSBPiGhe7y7Zw9u62e0+BD0SyUg0s6msNeSJlhytqawDhXICX73eLNyLx
         ktM6xX2cfEdpSvnFhm2vwyO5hItQmsZHYaCTlhKMQAaEMJ36ilGsiWazZS5poxcsx+gI
         gc8dE4zXboKtCN8y+GVNCc9kWuXs4XbBtCCz1SJ/CXkBQdqOPTG126U2lUQLpwefj7b4
         oywoASGKYNsLh3/g9Nwn/38bl31Dirr6JiwDKOJi8vN4Kp8mWsF3w6cZvyfbxmm7Wdok
         O8lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N7zLTeCI;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t24si752816qtt.1.2020.03.28.20.35.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 20:35:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N7zLTeCI;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id h8so6883051pgs.9
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 20:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cF2fdmFT4y8poKQgykSEvBARpVMuKdcuHdJc6rFcq9w=;
        b=N7zLTeCISvKUnj4MGL6o9owyLBSCH99tXRh/ASuxP9IDLdm5DiaD+EBAdeWvWh+PIa
         kaX/PMghFGM2V1z/GCEOEQBmO6CajtTQ010SFPYgl2z07B9LR9qQALKhAc4Jbvm7V7Mn
         4aKin703vIMgt9GleCK58cqWP2ZSwyIE/0hztDW9Cq25NzTy8Zf7q/md1G1CMsCscWn3
         l0vw7dLx9299kn17N1wEYQs+6g1AyqwegMhgAv/m6jLE31MiZNe/hVDNJzajW6A3m0Gp
         0miOyoyxk8h58/w/6GXPetEbamfqAhTn4wZ/oTCXfP7RrxtVpDCC0sjkHhVrMFZ49v6E
         izig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cF2fdmFT4y8poKQgykSEvBARpVMuKdcuHdJc6rFcq9w=;
        b=lmtaHZOH4yqhjO2uwYsXh7fGQ2y/z186J3/Ayr9+7jQ5duLsGbRYT8JGghDFKk9Xc1
         jkJ5V5Hir61yv9sup83l1y6sSE1FXJSamAZ01n7XTNFoHyOMz+0dHqO2R1Q1e+ok19m1
         KlOAWKfMoIEYV0auz4fxSEheLH9g291EqFvhBTX9atMo27GVnYy7l9kLtIHxQgzimPO+
         k3AUKjHBBdCj/QLq0hGD43AZLBqPp5tacijq9o1gVEnbezE80KuQFxKqe6w1r2Ssr9oY
         VYxVltEqHs7UKV9jZWkwRrd/ZOq8Mwps9Yecyhjh6kQYq3G1AKSWa7+JK97iSSWT3UUH
         nImw==
X-Gm-Message-State: ANhLgQ1F2GjFn4hLH4ktFPICNJW3Y9kVnnFjjGg6DKsSv7USWZ36x+0V
	hndjQ2HSbPWKPyTPLd/gmS55aF5ujw1dqg==
X-Received: by 2002:aa7:9471:: with SMTP id t17mr6780192pfq.272.1585452931595;
        Sat, 28 Mar 2020 20:35:31 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id i24sm4943223pgb.57.2020.03.28.20.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 20:35:31 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Oscar Carter <oscar.carter@gmx.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH] staging: vt6656: add error code handling to unused variable
Date: Sat, 28 Mar 2020 20:34:35 -0700
Message-Id: <20200329033435.498485-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add error code handling to unused 'ret' variable that was never used.
Return an error code from functions called within vnt_radio_power_on.

Issue reported by coccinelle (coccicheck).

Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/vt6656/card.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..9d23c3ec1e60 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
 {
 	int ret = 0;
 
-	vnt_exit_deep_sleep(priv);
+	ret = vnt_exit_deep_sleep(priv);
+	if (ret)
+		goto end;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		goto end;
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -734,13 +738,18 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	case RF_VT3226:
 	case RF_VT3226D0:
 	case RF_VT3342A0:
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
-				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
+					 (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
 		break;
 	}
+	if (ret)
+		goto end;
 
-	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
+	ret = vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
+	if (ret)
+		goto end;
 
+end:
 	return ret;
 }
 
-- 
2.25.1


