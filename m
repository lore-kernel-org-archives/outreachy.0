X-GM-THRID: 6670940020392591360
X-Received: by 2002:ab0:29cc:: with SMTP id i12mr3168970uaq.139.1553199273209;
        Thu, 21 Mar 2019 13:14:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:9590:: with SMTP id x138ls1074112vkd.1.gmail; Thu, 21
 Mar 2019 13:14:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzl+wlnj9DzjB0rr82c9tkMNX5lKnBxvkw5pAI4b+Cy/vxJHWLS9Fj2ifxX2ovMfR2OaZmO
X-Received: by 2002:a1f:ad10:: with SMTP id w16mr3425445vke.49.1553199272501;
        Thu, 21 Mar 2019 13:14:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553199272; cv=none;
        d=google.com; s=arc-20160816;
        b=Wu5nghDNfUHNdVmBwbWfy4p0wLI6uNeh2CmzO2NC1aWqcv0pHmDCzIVlz0fPPJ718V
         wRzJMRMAzAaEVOwo4iWXWdhyQ5LNqhMfxcSeHnnNZNh0iaifYsb5SyGOhiPUy6vQ4Y5V
         ZFB0Zr55jtTVmXWtiHdgefAQc3j3wwnM6siqIsj7fm4bCL4K1dHpvw2/tJ9KYjFCGmDy
         TtEl0HuuNmJHm30KU+AazNC7Z4MX/5IDAHm9a+FMVIvr0Z7Zme2neVckxyjzdkpiGDu8
         iwwjBOCzl3FSuWsKRmf8wTfGNXO/xJEMmaH+Ah/m0fpLeRlgU3hYbm73AAG8G9quJATt
         KLpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=p5eVnbBbW0uRX6gEm6IvV6osZ2nvF5sp/vFLlsZm0v4=;
        b=Di8p3C3BLtw9XDBa1fxtieXNntwfY6OGJbEcuF3DtGjq45xK89XR7jNfC6exVdTcqJ
         BIUG4dZHY59NrRf3b4opyEL1ttaOZ7nSSdNUSNE/auYszeMbYiK7gADNjHmhh+AaMkey
         tpQkuj5XaYO8cmjHk/O7ohs8Kf2MDcPGH+lDELlusDr4i4e/AyT9MpzbEGvQi12RwwxE
         Ay4vKlmWzmNK11LYkLi/GEn5pujtXDX18cw2IkQRKibJWkf2YxMVqDmEr0cBT7ywN7Bv
         hJqX0Vu4sMzREscEpD+VrTZ6n4pgMAtnq26cwzXNnfLYrJOFeHln6jMOe5hj6NY06oPv
         LRpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=nmgjCGix;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic306-20.consmr.mail.sg3.yahoo.com (sonic306-20.consmr.mail.sg3.yahoo.com. [106.10.241.140])
        by gmr-mx.google.com with ESMTPS id k19si439781vsm.0.2019.03.21.13.14.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 13:14:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) client-ip=106.10.241.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=nmgjCGix;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553199269; bh=p5eVnbBbW0uRX6gEm6IvV6osZ2nvF5sp/vFLlsZm0v4=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=nmgjCGixLE9HAd6RBEY4QMOu4wR/3MDyPKgXTk8WAcTPLX4zkAaDIwyLIDDJHWBv1Uxil2VoeT68qFDOYw0ARio4qeaNIczi+v/zkdT42dxOFmn1kLgYNuJoUUR0aNygqXlP4n/5OELV8GTo/L+5W7+CYxCzWzL8pR1x5QTXl+tPun5di2n5YoqkD5NQlPWnsrdUxGzYZPhfSfhmTnlX+jc7Zs59JzWouPbg9Lz96PxuymiVnnQy5VlDhoWD5aRUtcQd/J/fCV5h3F3xLAMOL49yt/gQ8caVtK5yxC+WuUvBTqA6URIePvJ7y89XvEXGiKzrfP1mnvj1di79ASfqzw==
X-YMail-OSG: g6Xhs3wVM1laD7lnGiEjmBym03KkrPnB.FkZzTFTiu3pKZD9kE.OcYFaCZP12r5
 0uOynrCic_1_u2aojvPumesvc8H8IfKtQWcFO2coK.D6.vhGNpszJOFxcedxH9dhPEEa0scF62wy
 PfdYgNk9z7lLxZiFeK0yx3LTUHO2a5NjEM6Qk_eCdDG9OxFXyI1RNBF8j6OWRcZ42Dam3L3ujsSc
 MrlWGUWxprRvtMnRqFITxQnyCYD0Bgh8TzAAVCddbv1MUZx.OROTiyGibrFpfmRx2FR2GQU2z9UL
 yJgsd4dFYCLueLCs76trxRkrQBix4rNR8HpMQtaFycvNc_rfQq6mxZMGAwlvr8OoCyEkmDNLCuvJ
 .ex93.I49NVZq2REtxRfD39GLqguau1t41UalLTet4ajNt1dg4Sb0MxVbla8kC1SzGJOrzaZ41y9
 Qb0yPJw15F_nnRSaa0pmBvnaNqI7jVRNBAhIDKdvQoc9QagHMJkpkRKSCCdBZsQ_Rc084H14N8Uu
 WjXgxYmVms.MIJHMQ7evKPy6GAmYLy0ZQond.K6PQI6NmAn.Lr9pWyg856O_OjwNgFJUtLYmmh7L
 y3ErDCHL84n5jOiR.IZdL_LuP2vAQ18MiqbwpvmQjN_FXKGuEOCTC1CCDXjfSvdG14oUopTXb.KO
 XdMrCen.GNIAsyHasPln.8MwgjZwFSLKIA8OSLinQAfWrhE6f81lU_nT3c1O31k5MZAUDD9vghAx
 K.K4LkeJCBRQ2nodk6Hmx89Ny2uWYco.eeRsopsZZeaLdm88xntytZbOjhQpt_JjgdaJayE2x7is
 GjtJlrBl9NiNK7CkmmMX96Mn3_I4mOAIaDeQncAVwnt9Rjv5SRligHA6Dbdr15lmDR4b_blXlxK9
 LcE6nW85K_mXKurD7PSyQTfKwhYYHlBA4scZ_OaEMJ6x9dkabnQODfLSDlphczwQcyD8NEwDddzE
 oAXVNO7buY8c8KYuwi6RRrTtrM4F4WAYK8j.T38p54i1tgRbgziRarMIw.aMuOOk4ZhuibLtm52x
 Loy5YOFzQR4emlhmCY3ZNoqoK4_ygFpmcOsgKcY0doozmH5zcTfJjS5R05BbNv_WKwFqK7XzO_ml
 pK0rgq2h54GE2D2B0cPRLOEr9bYRbCk2hPgKUHwc-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 20:14:29 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp408.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID f52b3467335251bdb2b643b08dda1312;
          Thu, 21 Mar 2019 20:14:24 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 2/4] staging: rtl8723bs: core: Remove return variables in rtw_mlme_ext.c
Date: Fri, 22 Mar 2019 01:43:56 +0530
Message-Id: <20190321201359.5948-4-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190321201359.5948-1-nishka.dasgupta@yahoo.com>
References: <20190321201359.5948-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary local return variables in rtw_mlme_ext.c. Issue found
with Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index c2884c35c460..d97c1e6d5c01 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -3569,7 +3569,6 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
  */
 s32 issue_nulldata_in_interrupt(struct adapter *padapter, u8 *da)
 {
-	int ret;
 	struct mlme_ext_priv *pmlmeext;
 	struct mlme_ext_info *pmlmeinfo;
 
@@ -3581,9 +3580,7 @@ s32 issue_nulldata_in_interrupt(struct adapter *padapter, u8 *da)
 	if (!da)
 		da = get_my_bssid(&(pmlmeinfo->network));
 
-	ret = _issue_nulldata(padapter, da, 0, false);
-
-	return ret;
+	return _issue_nulldata(padapter, da, 0, false);
 }
 
 /* when wait_ack is ture, this function shoule be called at process context */
-- 
2.19.1


