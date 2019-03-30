X-GM-THRID: 6674202395831959552
X-Received: by 2002:a1f:3c0a:: with SMTP id j10mr4652327vka.17.1553963781352;
        Sat, 30 Mar 2019 09:36:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:2a58:: with SMTP id p24ls656418uar.3.gmail; Sat, 30 Mar
 2019 09:36:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzR1M+3WoB9mq8Qjm9xZUGtolW63X5KfHqq07VI2VasBDN6fC/A8U24Ils85O8ae4tAb4Bi
X-Received: by 2002:ab0:7718:: with SMTP id z24mr4550660uaq.20.1553963780661;
        Sat, 30 Mar 2019 09:36:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553963780; cv=none;
        d=google.com; s=arc-20160816;
        b=t7g8oEPTUjqv4NZ+Pko44wzpGa8G1D/SoM85zpcGsYAZABeH+EzswH8ijU/VITv0hd
         QSbBDoujXoD5o4Xy5vr1jV7vJPqH43dIhHXgWUmLZBDuMKY0RuZTPYyJ2IkEBwt9ok5i
         78/XE+8a2G2jjOHh8jnQ7ofmSAAW6/QiJuQKbzteLF0EyFxCwCemugSZV5Wm3Lppqq8U
         eDJrSGIXyKMiJ7/xl9TywsLJVpf38AJGX+f0PdUFwDov9Aeh+1YFSeqjWKPorZXEM/3w
         41KB8tan6TzIR0RNVkj1PkQrYcQMdrtIjxu4u+PE4NKqmjR7AqYuSt65zZuUF3Lg5axC
         H2mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=6BZ7qLAti9kig5qbtRFCLABRlEOdiiXeuABNGLy+rZk=;
        b=sWh48FklYP8CrCecFvSaXsKvSpHddtlNoKHeeT565MOlnbO3GJo27XI2i9QqMCCGEI
         UK4CBEdYAS/trnOJOja+0PZ8y6x9NQsQTMfxg8Q1/eggAzyNR68Y5VaALJlswOFoPdeK
         wiE5W/Ys+x2iiBs+KKtLTqBBR/eSZODO0/0J+E1JtXNvMIucHsmnWJtfFhJD7yraICfC
         ENi7ZkvQokoX5n1X16khlpiu8/dfV9OO97HUSRskQb54VNp/Df8fqzsbQOlCAPPjlxCb
         flXiIcDFH0gmti5LIMzG61ck/3ZwcNnfOWe/En3xohngU5Gm9Ctm2Q5clUltqQTOoOzh
         lpCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=eTJWmsvh;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic303-21.consmr.mail.sg3.yahoo.com (sonic303-21.consmr.mail.sg3.yahoo.com. [106.10.242.38])
        by gmr-mx.google.com with ESMTPS id o80si320207vke.1.2019.03.30.09.36.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 09:36:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) client-ip=106.10.242.38;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=eTJWmsvh;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553963777; bh=6BZ7qLAti9kig5qbtRFCLABRlEOdiiXeuABNGLy+rZk=; h=From:To:Cc:Subject:Date:From:Subject; b=eTJWmsvhXXMOJF8QYtV8Y6w48RfJfg+it/jeR+OQGp6dsoC09tVVw1A5FHUDolQStkJvY4++7HT3lBGO+FanhXccGKMUVcMOBopb4L5OBEI6Pvda9dtiFDUyBCGQYf1GBRbYNMWxShKvUF5V1aupEKULymKJuUdml+8PsS1iPTuEj9jXbr92cZ1weFcEl+6XlXmcm3d1cDFq6cMTU9UXNdQTeOhl1XUvGouVJ50ZPv/9kQjElJ3ISzrekrMUiSq5JfnGZftqYxpxWCiZ8UXhQemYZAeShCI7j4ktV6akfpu8wB1aKUU/pJMk8U0Vj5OYv/pJuZMQpBZjKNuw0sDxgg==
X-YMail-OSG: Ve2hFhoVM1k5eqc_xVLfNcz_e_802IgRw50xS.8Lp_2b7OxRELBjBS7weUtYwu5
 TxkZ1PgJxOq3x9krO8k4dSZwzx6H3W5.X_WcpaZUvKce_L5J_qi9by8xTFL10IJdRbWBYoYX_FVS
 kkVUm923WSH9r._D2nRnbpuj2q3F1CYU2HMq9SSGO3QtiMGWg2WyYF01KdOBnE4Kke1zGS6msMxG
 MyEsRy.q8ZtCVi8tK5EDPSnBTbxkn8c6gLwU54bDeEUe3PLOYqcp5lojue09lvF2Ik8ef0RIdeJz
 RJHIS_wd0DBYg_vaUI1xjYXpGIBjZQlKeNOx3T3CRzqNAytFTRFk37OVG_U43F0HtGYWEf3S7H8y
 XTsMThVcgWB6.porLhc48xQ42ZjoqnM6iHgfud4Ojfy0DCdx9pydu07ePS.iWKcrIwyeHiQYxMKh
 1nE0c9DtvHh5LmIKQOKoZnmvf3t30HFY4esoBc13Valj05xEgupjIRSa3H9Tv3mE6nIizOKoaXOo
 p6Y2wnRr_kLi0pa28MsTnNgC6jIpI.KQcAqOAbwAVCCHGM5QKlmwYzh3xSC6HNO95ONCgm7lCo4B
 ayqp.VunWQd.HrOK5mXyxhTVjNn7sdM.N_XFfrcTeezC3qgl0sck9pMsCJgNqeP3OwaN2JZNNmVu
 1ZSMfgtOiGF890UtO.1.46ZvTiorn9nhHp3yQS0n1hpz6uIqXHLpafp2Y7AJXp9I_JEnb7EEyHXA
 oioEp8706bh8ALGNK5qQkZSqdmRvm__UmcN2lp2OKwER3DbqBW65mGLoWbFemzhX4pKAK7tkRIOH
 9dA9KCBAafHsYkbDzcqHjdt6e64W._pnDuTZJJqXH474M8GLtPCSdB3tTjg77lLH3NiuGMX7A0Ot
 KkRkmKn4BXYqLp2561rPhRE4wkRa88vcBxyMB95.GtviWPl956ZwDFnkZI.BnjsxHud_ffbZXBWQ
 TFRBV0Q03D4QA1VKW5IBlDMiNjD56qdpXNrRfEbuUGSFuLhIu5x.36o7dHFvm4MWOVhCnsyPGWzU
 hZYmjmVuYytGKLPge6yYyof2t7AauzqpPxgKEnNNdS1DsQ5ZhWxxScigMC1UUae45JIEqJeCVmkP
 AKYQKq8APndIoZEwKlfAQcPMbU6u8t1iP
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.sg3.yahoo.com with HTTP; Sat, 30 Mar 2019 16:36:17 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp413.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 03e590a07622062f64100f21d021cb3f;
          Sat, 30 Mar 2019 16:36:12 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v4] staging: rtlwifi: phydm: Remove parentheses
Date: Sat, 30 Mar 2019 22:06:03 +0530
Message-Id: <20190330163603.2532-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove parentheses on right hand side of expression. Issue found with
Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v4:
- Split the patch into two patches.

 drivers/staging/rtlwifi/phydm/phydm_debug.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index 91f2c054d83b..a113e2b63153 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -51,20 +51,20 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
 				      (power_index << 16) | (power_index << 8) |
 				      (power_index);
 			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
-				status = (status &
+				status = status &
 					  phydm_api_set_txagc(
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


