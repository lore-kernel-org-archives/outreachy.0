X-GM-THRID: 6674202395831959552
X-Received: by 2002:ab0:4103:: with SMTP id j3mr5457815uad.0.1553958839131;
        Sat, 30 Mar 2019 08:13:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7a89:: with SMTP id v131ls120018vsc.3.gmail; Sat, 30 Mar
 2019 08:13:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxIO3GAk+gj2mc5Qe9OFDdxug6mXLauHhiYQ1L6RQtN6xTqcfvyXKKMdhsWa4z2XXUQjm9J
X-Received: by 2002:a67:8013:: with SMTP id b19mr4434395vsd.28.1553958838546;
        Sat, 30 Mar 2019 08:13:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553958838; cv=none;
        d=google.com; s=arc-20160816;
        b=iZIM9mQ0+S17MiSZyGHBDBc06NwYwazfGCuTioIFIS46Q76fXvlMUX2xFz4Q245Nnc
         9PrJTF/sdP/+0969tROTF3go9FbCL+UAh41ga1tjS3rARyto+lw1DoqBiNvbTIKzv90y
         LnKcO1Vv3VlmSTDpX94yHjyiZvvmuF51rV8YhfWdj21RiwIKtMqMm4OYyYnfsEDuHJyb
         rg+OCAQwdQrt1cNuDp5nkNZ3R0+RbqaL4n4Mc/xUF2m70M82Vsqnu0hSmvameAUKQGc0
         seb/+ObHqAn51SMHNIM9nPXn9Hj3wzPGBkdgmkMIMhEKIVDEznHZKW8cktzRneZldUXK
         Z0dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=SQ5vOoIXm89Nr1kFMX4rV1VLx62xjOKqc9bA2vwFvlM=;
        b=Bg0PfSHXkc7vcgZ9eYJZbFiTX0fftrZZ5cqngzcNcveqnZ7Z3DS+UGtb5gJHvDA0hd
         zhavrEC+Omho04hYntkjP4r/ZEdLQXPXtQKb0kynaRTI/zLisRaKx+zO/BxuNXqVPaW5
         omAs2qf38sDuZ2YMwLj0x9e752qtNwIW9LEDXhPJs1x7Ooc7u6KQWk3lu028sptQq6AI
         fCqDtCRediCWr+rG5v7IFVbHToZd1A3yuYO8Cz3dEiGJXf58vwpm3hKrXxJWcIfQRFp4
         tD+BMArH+MC8ngAvqmR/sBhu1txyq5Ie/LuFxR3UB62uUd/UVy0d3qLcZ0aA/vcMbypp
         sakg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=XqtA2SdE;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic303-21.consmr.mail.sg3.yahoo.com (sonic303-21.consmr.mail.sg3.yahoo.com. [106.10.242.38])
        by gmr-mx.google.com with ESMTPS id y8si374387vsc.0.2019.03.30.08.13.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 08:13:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) client-ip=106.10.242.38;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=XqtA2SdE;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553958835; bh=SQ5vOoIXm89Nr1kFMX4rV1VLx62xjOKqc9bA2vwFvlM=; h=From:To:Cc:Subject:Date:From:Subject; b=XqtA2SdE+QevC44PB1hizI6Y0YXjH9Hu64qntGOoD/bBHZ9pMcPIkcrqDGqXYHjsuYen1FckceMOdChqNEf5zngY+X8ISMLkfmRWcOQNbWcxCPwHMH36vKqP8weLDkW0uz137+kRfh9FC6o+lZWPJK3P6wMF2ngqGfucCP/gsiNsDrAHTlNBmpyMMTB0IUPyHEoeNxB1FCknY/w70lZwCtTH58Yhhw1qP38N5Qgnw7DnMKCQaztV/RYNkGuOe9NYQIK9yXkCqmh8RKRDfkOC5iGTr2xuYX1/GrugLfbCVKJOBYoYwivKtCgrrtyOwJA4+GCix+lSkvr/YpY0+0PFRA==
X-YMail-OSG: hM6V23UVM1kb1PzYCuyvArnQkBRv_LRP5Vo0NMu9_kapMOpqejV5UFSXMLk7Z5L
 ocxLMm4UkWi1aBm1Enwk85RkY_ze4S6WohC0L9b2hMO2d1cmApmO8PrCluKW2dnDqweWJ3GU9Uo4
 YIFEqWkRA5..l2CWAWxZOaVW.HSnGT25EY71OqQwsoBYXRtmzf_1K1VSmwHoa_OxyvQGoukuM7Vh
 oS325X7STNsH1keDUKCfCqmrD2Mvh0QGsRuP3dSWGwdgwrPdlXXPgVV6xBRIdj1rOs_qla7g5fEN
 B1hKM_4R56ywzGjY_PDBYp7ZuVKCF8kP3BoDR.SJsAAFM_y4qI8Pa5SMy3K6TzlAyIbmP18AK3bi
 FoYznOWaGLFfXeZ_mO0NzBmTTiFUmklXu_F_PtBf5z9WVi.acx3AFsyMPVCbsz1OVyJvXSgeRoLh
 2wrmsrbvKiYANXQQ_n2.N3iACntz_JCCl_6W5YGMXtTcRjC75TEs9r2iVnuYHE6HtPrkd9.Z97D5
 ibtZrG3RexScCqUwUYgwr1XgKb8owfoyF9ns8iO8vQmdiXuKfOQJuNZdOXQfbAhsFgnz.L7TDEmn
 F0BLU1L5MH2GJ39nOpNwd04lRhtN_GODKa9OwRu_N2pG4idA0GR4u3mD0en7C2BqDjv8qaDHKhs2
 jU4nHGYfo5mENFgkuMmxaTW0eQNnwG21Xtc.bUdaBfFeZX6yiBAjVbCnCaEWLxlzNRFUZKpaQm8C
 J6PBSeF4duWHQ8p6X78ozsA3mk_ah7diCcXAQnlkeizKzNpTeLRL6Evo2WCJLAfuBT402e24Z3CN
 EYNAUstdtc1h6iQzBTojC3D0dD2UO2WAvblfNEulzos0SZG6lJHHUIoyKJaIHGcisBltOFWDlofD
 AzCfGYhzQrt87X6WZMVhgDIwUM_KydyF6gZNhgQ558NCgvbZb_IudVWsJYAAw1tRebHWLkR2YDdT
 oSITi32O9Y4Vq8vEy76wYOiNlD4nQmFrmN.AZZSgyWUr_TCztK_rkG7PdGoZmC8ONmLl5Rcv9roJ
 sXM3ly6Wy4bbLLHqVcLdp7BNndPWvdndyWA.lLlcTz8_IEfrCKxp74ZYNPHnpOGbf5.PtpNmkLrR
 urXJHyjqtJze8T8eAILSeoivw0Gs8SgEv0w--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.sg3.yahoo.com with HTTP; Sat, 30 Mar 2019 15:13:55 +0000
Received: from 210.212.93.46 (EHLO localhost.localdomain) ([210.212.93.46])
          by smtp417.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 3425379a9fa9c168bee2d6f631e53e25;
          Sat, 30 Mar 2019 15:13:54 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2] staging: rtlwifi: phydm: Remove parentheses
Date: Sat, 30 Mar 2019 20:43:41 +0530
Message-Id: <20190330151341.3891-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary parentheses on the right hand side and simplify expression. 
Issue first detected using Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v2:
- Change `status = status & <expression>` to `status &= <expression>`,
  to make the code more readable.

 drivers/staging/rtlwifi/phydm/phydm_debug.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index 91f2c054d83b..13b34dc33011 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -51,20 +51,18 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
 				      (power_index << 16) | (power_index << 8) |
 				      (power_index);
 			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
-				status = (status &
-					  phydm_api_set_txagc(
-						  dm, power_index,
-						  (enum odm_rf_radio_path)
+				status &= phydm_api_set_txagc(
+						   dm, power_index,
+						   (enum odm_rf_radio_path)
 							  dm_value[1],
-						  i, false));
+						   i, false);
 		} else if (dm->support_ic_type & ODM_RTL8197F) {
 			for (i = 0; i <= ODM_RATEMCS15; i++)
-				status = (status &
-					  phydm_api_set_txagc(
-						  dm, power_index,
-						  (enum odm_rf_radio_path)
+				status &= phydm_api_set_txagc(
+						   dm, power_index,
+						   (enum odm_rf_radio_path)
 							  dm_value[1],
-						  i, false));
+						   i, false);
 		}
 
 		if (status)
-- 
2.19.1


