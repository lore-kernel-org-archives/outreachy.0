X-GM-THRID: 6809468497850007552
X-Received: by 2002:a17:902:82c5:: with SMTP id u5mr15242017plz.254.1585611552849;
        Mon, 30 Mar 2020 16:39:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a9c1:: with SMTP id b1ls13613105plr.11.gmail; Mon,
 30 Mar 2020 16:39:11 -0700 (PDT)
X-Google-Smtp-Source: APiQypIFQPik5edsHwVdqoxaOoEhP0BkmWa0GYQwQzPc/+8tOZTANou4mQ+9dOsfhINcYNej+8ey
X-Received: by 2002:a17:90a:a40d:: with SMTP id y13mr634119pjp.116.1585611551437;
        Mon, 30 Mar 2020 16:39:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585611551; cv=none;
        d=google.com; s=arc-20160816;
        b=DE0syd4KmZq1brCXDCTtF9rtbg20Jn3Oyw0MR42ApHMDR6bsFLLy9ocTCgH/0e+UR7
         IkMWmDE9MsrIsxwdF06DVJTBRJRxyF1kn34C0O2tzvO/7fQTH8SfvhIzeroUvTyIPjLc
         enns0VP4Qm1dTwX17ff6SkqMo7esd52i+rpAH5q0ZM/NtcAXkrHqC5YyBYv7n8z5b/eH
         qbhgmZrIaKnMhXS4INJrgT2MSd17AUz7ZBqeel9eDfUeVL1KPTQgSv0aO+4i88S72C18
         oIXmvrFiRMmhA57iH0adpIRzJxx8Bsw9hHw1BGNNc2/xb1/r73oB5n5pw694IN7Fv5EW
         kkNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8pxcOcpWIjOsjvgQ2bPjI1PSxQO2talzx0dTKC3l3L4=;
        b=MNMeyqpuYskpHlltmZDTIBn6YdF81T5ocq0zTYMY8lB9D/kxi+XnacHuSL+OZ5KX2p
         Taq4R/9HoPzRNoR3/lemKtiEkTxsrvvrTWHWoNmOnxMSFPG/KcPpnjVfjcMQ8V3rZM8J
         RUQJX0drzv1S/HpdHVbJT5JlRGzEeDxOs5dSytqsIpuH2sIi30zz5nR3GRC8KlhRP3FJ
         A+7RzicjHzvuK4jXEQmuSom2mXtrbZwn41E1CAfs599Y/ldAgNyA/kZp5twUECnBp8Rl
         NFAlrxawJFVp+aNktBuG6RR6sG639IdnBIjAg/BdRDUVMzoQi5v08aNCZOK+1vM0TPjw
         aj8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kC396dGl;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id y5si986374plr.4.2020.03.30.16.39.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 16:39:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kC396dGl;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id a23so7401191plm.1
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 16:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8pxcOcpWIjOsjvgQ2bPjI1PSxQO2talzx0dTKC3l3L4=;
        b=kC396dGlRCxUqoC3rJNV8jYlr3wqGleHoOt8yaq0lqdFuSL0Of16FsXKKU/XAzjRzQ
         pGr1zi0rM3ZE/SaC2B6/PAr+/2ZQqOEZAGp+D/WVuWmWZ4xEf8IcV7mXVnb02PBsvupX
         CHxglgpl3K+eoPJiil0sa5ALVtYysVoMzlAYeCJ/qnMQRPOA1L+N3kQPNfsyH/+2scAI
         ClvPIhuCrU46Qewkjl9zTWIbb5+Kea0kx/IM86bKYa2Jda6D4aRmlt7YUQo+Gl7ob9mE
         bGAD7gHZRqNlmlLJmgzmXlK6vBTvfa50NHi1NJ4VmIpaww4cizFs4PqMlmIuMBgKTFLh
         D3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8pxcOcpWIjOsjvgQ2bPjI1PSxQO2talzx0dTKC3l3L4=;
        b=kigSSpcFhbaZmA8dQ8oIQGSqf/RNPNaGBGnqrLv0+v5izfBVexCvRFrK05w79Qbxcb
         s/myX/1FRhfwqMyDNnEmLzrYskNXW4T4SEl4vgLf6jgrsJmYsmpYygTvF91HSqPGWdYN
         T8vRj5oW9eYE/FEl2NsaV3p5jaInRppw+bpqBAkxu5VVPorG6rlrXywgG9wMvWNrWOwL
         17pl19Ld9xiuh3d0TMpAPxHuu4Kdr0lceTXmbtGJ7nn31vhTEzC4VJ9yC1pCfFJjcSVU
         rutK8FT5ShhdW1vo9gdBjBOlvknutn1njUMdt0pOkjqoLzx2xefdOADpCVwMsPH3Hjne
         4TcA==
X-Gm-Message-State: AGi0Pub2J/qQQsf91G76RsNssMxH1bC36O/2JbMtSI2wEamjr4upjAaX
	vqv4rQWv88C/cYTE90VUjUtt/8j5Qq4LNQ==
X-Received: by 2002:a17:90a:fd90:: with SMTP id cx16mr613505pjb.41.1585611550428;
        Mon, 30 Mar 2020 16:39:10 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id a15sm10961425pfg.77.2020.03.30.16.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 16:39:09 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v8] staging: vt6656: add error code handling to unused variable
Date: Mon, 30 Mar 2020 16:39:00 -0700
Message-Id: <20200330233900.36938-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add error code handling to unused 'ret' variable that was never used.
Return an error code from functions called within vnt_radio_power_on.

Issue reported by coccinelle (coccicheck).

Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v8: Fix trailing space reported by checkpatch
    Fix alignment issue suggested by:
    Stefano Brivio <sbrivio@redhat.com>

v7: Move an if check.
    Suggested by Stefano Brivio <sbrivio@redhat.com>

v6: Forgot to add all the v5 code to commit.

v5: Remove Suggested-by: Julia Lawall above seperator line.
	Remove break; statement in switch block.
	break; removal checked by both gcc compile and checkpatch.
	Suggested by Stefano Brivio <sbrivio@redhat.com>

v4: Move Suggested-by: Julia Lawall above seperator line.
    Add Reviewed-by tag as requested by Quentin Deslandes.

v3: Forgot to add v2 code changes to commit.

v2: Replace goto statements with return.
    Remove last if check because it was unneeded.
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/vt6656/card.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..1ef1f6b22195 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
 {
 	int ret = 0;
 
-	vnt_exit_deep_sleep(priv);
+	ret = vnt_exit_deep_sleep(priv);
+	if (ret)
+		return ret;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		return ret;
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	case RF_VT3226:
 	case RF_VT3226D0:
 	case RF_VT3342A0:
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
-				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
-		break;
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
+					  (SOFTPWRCTL_SWPE2 |
+					   SOFTPWRCTL_SWPE3));
+		if (ret)
+			return ret;
 	}
 
-	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
-
-	return ret;
+	return vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.25.1


