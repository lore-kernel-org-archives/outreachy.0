X-GM-THRID: 6673526456107139072
X-Received: by 2002:a17:902:465:: with SMTP id 92mr641113ple.42.1553801465185;
        Thu, 28 Mar 2019 12:31:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:65c9:: with SMTP id y9ls10875315pgv.4.gmail; Thu, 28 Mar
 2019 12:31:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwvzfo4fXml/1ZdMSaGV2vWCGU/tOthHmD455IF/hBbqyjzQDHUVAO3KPHejOHDoHiCHKav
X-Received: by 2002:a62:579a:: with SMTP id i26mr515568pfj.122.1553801464542;
        Thu, 28 Mar 2019 12:31:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553801464; cv=none;
        d=google.com; s=arc-20160816;
        b=N2xviOAlUF+ZKbKbSViQEJXA2EqF0nDozrC0UcpI2hnbDsZYYTkoloe1gJcd3jG6P6
         7pe9D2Er9bU9yXtgOVYqh40hhoWPwPYBJ6/wkMJygY4JXLrpsezqiyJrtKYX69S5qn4z
         vqjSOufOGem/t1xmJ6V997ssqFf1GK/RHurJZN5wEMEIRhhBiaVeouORtsC310/mhQDh
         r8bH4ilRBY0uwwiwUCPODabpeJ+olqSbnAEfyCYwQgWz1A/uk4uoT7rK2Oq+BNRyfn8X
         Y1ouDXcDguwlfWiV/EZtd/RhzKgabG8PjK/ICj6K1vr9lPYEQ75r6baiOnvzico3pCG7
         nUWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qslb/JIkpZjghV8FJIRPIOa0tzWHrR+GgUN759MkFz8=;
        b=Ouf9DIFJgzedzBbWqYqk82TwVLIpmIzfbGiG/ImovZcMR2Gz6f8Zi7CPvBPwlbxuMe
         JDul6omE2gAqp1DB+JoS+9ZbAYoJdxvCcm14NuaC6S1UNeIiwd9vEvcvcLxERTPjO7ra
         8TXeJiFfxYSoWywjSAo8x9lrgw2YBiGlU75Ol5xq2AppqruHfaTM3II2NbZCFmQxdE6o
         /a1T+OLBXX+9lJxzvH0zq6vDg//4ge9/Gg1by5et/NfYTlaPANF0uIuD3m7vS9kUNg0w
         fQq9EUGAyRZhScSB7VsnHGP3VnCbtW6OHzxQ9QZUThe3Hr1e3wE4TPkwjT03N8dRktjK
         0pWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=RGNTD7mq;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 98.137.69.205 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic312-24.consmr.mail.gq1.yahoo.com (sonic312-24.consmr.mail.gq1.yahoo.com. [98.137.69.205])
        by gmr-mx.google.com with ESMTPS id f23si463269pgk.0.2019.03.28.12.31.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 12:31:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 98.137.69.205 as permitted sender) client-ip=98.137.69.205;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=RGNTD7mq;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 98.137.69.205 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553801464; bh=qslb/JIkpZjghV8FJIRPIOa0tzWHrR+GgUN759MkFz8=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=RGNTD7mqLkGLWVXveEQxybC+ZkrH41KGtAhOpSPIHUBuV8m8P0yhJ3Wbil4lyA6YR8UrZ3msToKJ/aagEgRYi7xMqVJBI5rcc1TH99dPgAywrRaZSlXF33zRKTTS5rdgo0LzQpcKw+87k+N+yAm4D8Mlafkd8FMjllnobaO1YVoxtHwhi0xRn5g/CtHa8ZyMBSiixV3lILZPQbSaKG/rUaDxvKxq+0NWEi1BtOBGYpZhcHa880eAli86JHHF3NvOHF9HjVaHFMJkosvBy4QpSNN4mxVISvfSu2WgN08nwqxilqNIUYPuSCHcWLzwkIC2KnwBrMpmOZO5MSyrYt1LOA==
X-YMail-OSG: Nf1lVAYVM1kO.9vtTtoZgQnfStI_sDzfeBeZKGiTP4N6ojYmJDAaSqTmrpa0LOW
 d9W_7S2PBmJ3PqMYL3MKo35fb9WJXI_X_lNcVnYHXYKkcmJ6XPi_xtULjoIKNUhIygs6fLN17xne
 Oz.T8.xIqAKx_rpEwsg69kbU2Yxi87IMUzSdyLf7OD3ow6h2k_KXzqoOI0rTt0oOyfOe9fbB2Ttj
 pVSHQJY.tVsWPxP8fTvPjLc9bIiXvOrwzsR.LY2yHaWtLFeb.gMNIL8K1wWfgD8o9aqPAZKDJUzR
 tSedN7h0gd4yW9Yu79R9rLgKgB7OjI12xBI8qQCN2LpaIZ0gOqVyDtCcz.F0pXx62tp3G91hVl9I
 LzsNiUL3pG4Z_cliYSyQqRTVRJ4lmF0k2mltmEhMIALaMtYAcIboLq2wpogc7KqPBIKu0GxotlLG
 SToHqYDQaP.YIMnUwB_YZrunFQBbf7I2RTrqSWc2IRRyd6Hc38ZlE8TOM32AqFkhNVztlvcMS2JU
 suB4MyGiVOJILS.rybZZDylPIsmVq6Goq9WTawbGC76No3TKx1_fFJUslxuARzgF06ohV6ycMvbe
 MfHjJSn2h3BjRCjTRhKiTq5L6y10ChRlP8YRwcKRMcNgHMmlxCnRqYy3ju_w5tZvkr60apVE07HP
 QeIGdi7d.2_iiRB9Eexpyc47ubkZpODuNcnqat5zmdam9QG791RTV4KmfJPXDYM0beAZjyRA1opV
 LSnNTIDEL7nDWQAfc5Lf688ODwnnHLWkkISY344rXYJPmCEoFgPofr7obnMAMGfkw5GT.AurV_aV
 F162DpnRDh29Wf4evbCNWyjd0PPfqTqFaTxRglXtlhU8ZJgCklZNXTj39lBadNsMkX2KyfmXDiqB
 Ghh_BJGtx7rkFBOumKeCYHS05jlVSdzj_OhKydMK7zeHfGFEuyg9HmxmB7HkBWTaRoIGaRUKE9Xh
 6FWXZQNVGQFORQKoTx87cn_CsexSfS9gD1xMgoSysm.isXdelj5h2tn2GCgIYyWftZZPI0A4Yy3b
 anutQqrvjtJtYOwLCIaMDBmLndpyHHCgXYOerEBkjCdqcj9dAMpwonGgPLzZKGvoAhl.IPNbld5t
 cVOM2R.7r.U8bvyWniUDeVOMdvtWdS7bzFX8-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.gq1.yahoo.com with HTTP; Thu, 28 Mar 2019 19:31:04 +0000
Received: from 210.212.93.46 (EHLO localhost.localdomain) ([210.212.93.46])
          by smtp403.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 993959498c4cdbcfc9ce757fc7a507fa;
          Thu, 28 Mar 2019 19:31:03 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 3/3] staging: rtlwifi: phydm: phydm_debug.c: Remove brackets
Date: Fri, 29 Mar 2019 01:00:41 +0530
Message-Id: <20190328193041.13541-4-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190328193041.13541-1-nishka.dasgupta@yahoo.com>
References: <20190328193041.13541-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove parentheses around right hand side of expression and fix
resulting alignment issues. Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtlwifi/phydm/phydm_debug.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index 91f2c054d83b..4c907a0b0157 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -51,20 +51,20 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
 				      (power_index << 16) | (power_index << 8) |
 				      (power_index);
 			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
-				status = (status &
-					  phydm_api_set_txagc(
+				status = status &
+					 phydm_api_set_txagc(
 						  dm, power_index,
 						  (enum odm_rf_radio_path)
 							  dm_value[1],
-						  i, false));
+						  i, false);
 		} else if (dm->support_ic_type & ODM_RTL8197F) {
 			for (i = 0; i <= ODM_RATEMCS15; i++)
-				status = (status &
-					  phydm_api_set_txagc(
+				status = status &
+					 phydm_api_set_txagc(
 						  dm, power_index,
 						  (enum odm_rf_radio_path)
 							  dm_value[1],
-						  i, false));
+						  i, false);
 		}
 
 		if (status)
-- 
2.19.1


