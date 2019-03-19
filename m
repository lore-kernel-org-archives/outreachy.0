X-GM-THRID: 6670193586677481472
X-Received: by 2002:a81:7509:: with SMTP id q9mr1278779ywc.19.1553025478022;
        Tue, 19 Mar 2019 12:57:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:589:: with SMTP id 131ls15445ybf.7.gmail; Tue, 19 Mar
 2019 12:57:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqycUpYr13K+dVabgk0PaoPwIYLAq6ax271HACVDD8rM86EdruW19kxtSgu+9CTiekadn+f/
X-Received: by 2002:a25:2411:: with SMTP id k17mr1145815ybk.45.1553025477448;
        Tue, 19 Mar 2019 12:57:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025477; cv=none;
        d=google.com; s=arc-20160816;
        b=ORPc42/6BeK7nRIvZwCVv4uJmnM5S7ua8TD4vBZwf674HxO0INiRdpSZ4yfsW8At4I
         3FY8SNH1T6+18NjYEyeYEnyFCg54J2LB1XZojJsYwJz56vtMketKLlToG2s63mmTTIn4
         QCJCud8rhq7h2El3tSEgXxpr8KLMQo8ZDFk1ZlC+pNE+xfcCGNGyvzAASFUOhufH3x4C
         8J64FeMeLLX5D3aklwt1jlmqnJzzhlmExwh20cVFKVQ/jQM5irxHdi54JJH1Hjsua8qQ
         J6suAclCrmXNH/+Pn6vMwfKGJP2MipoLWGBpG6uXNIb76qT3T2kJRrRv8dMP2kliNmAD
         uELQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/b49eNWxYJ8dE9Y9UKbIqCjEeIgfJE3uncT/9CN36p0=;
        b=nLsDEsqUCosKDa5sC06cI0BOLoGuOwPz6JJVJhzsBNfN5HpCxd1xUSE2NxyDCHwPaY
         6eGYaoHK4PXJCNV74VKPrLJ/geDdvoxi8JGclrca0ozOtVjMAmBJ26K+nL2E58OtZ8CC
         aquGRRer+87VX9ijdYq0F9DwWIj7TfLvhCXQk9prwvEGerGA4vFIqoXfBGxw+LMv8fid
         T9sXrXoFFqRKWzp7aG2R3Lwn9gl8afPh+dynyixaXoVDcLzinPnQftAvQVOGCHtUvSO0
         bx4KoOTETifMiXc4pUo2i0fW5rjIoZ3/XVN9xaoHO6V4y/PzlUWXANJhjHHh4HkCylIo
         27CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=PAj+XcTF;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic312-20.consmr.mail.sg3.yahoo.com (sonic312-20.consmr.mail.sg3.yahoo.com. [106.10.244.210])
        by gmr-mx.google.com with ESMTPS id s11si654736ywg.3.2019.03.19.12.57.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:57:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) client-ip=106.10.244.210;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=PAj+XcTF;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553025474; bh=/b49eNWxYJ8dE9Y9UKbIqCjEeIgfJE3uncT/9CN36p0=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=PAj+XcTF5oESXC5/GNb/uI6nmQeqwaVL5iEMQHg7B7/ApwYV71QygcNHQnUBVDr5Se5H1rUMd6DDMcUKwndjqAGKET0LCgCjXjyAqhFc/WA1ed4uNZT8ktglPkvIX5ZIgeUsNdxCy19uNWUxMnOIcUg3SDf9sJSuzZJ3TLHUn6pguhk0Y/RXzAjkIF/lS9GMXozE1rE+L2OsS/Mvo8o+OOW7di/t5o0idd8OLTWbnrqWtrQ6rtFSBNSfb9Nb91QEAcY8thio2yvO3kmS2LPIjBYARAR5oS4ysdzE3Rtsf8b+P/0rsQIEN2E9g52XruUbM+Gb2mr7c/69sOPbeExX7A==
X-YMail-OSG: f2NxjR4VM1l7ldDYjO5DK7LipwyGW8d9BV38NUWYid4lth6c_qI4_ZpQSEAirKh
 0OmKBKf7oqXmQWyOeecwbbq0iy_Rqx9AxO0THZXUIgpfE97hmhFPQRPc4eSwghxePmYD6plLOQk1
 zrzRdyXiti4_oxFbyCqtuS.MmHEH9KeDpDWGuKmpDmyJmT6MJG8GFRJK.JucsH9nGEtuwwygqrhH
 He4_vA2OTUZZ1ZVMRZ1M8wEAbBZcsTKM_v.ZpT5oKepzBr1qphLlJuhKsyKEcoUjJJRr_hpYQ3h4
 Raq4C5GP9wUmQzhA_yArU6NdX.V16GOn2ctl9TTxf5WN0MlKIeXhptIE0Xruu5WFGzqWbIFdUU7p
 xze4pG0CCJfKBV76OaEIhOGu0XIQiz3psmZgoSnPVdmXY2e_8fgzoLOG6PB3mTEefsgE36xP6Edp
 aXP6HlRa6yTynL_Tfg3VjRWanqLyH1mMk6k4sWewuLulLGEArSahX9dR0HM7x2nW6ViQ.Yv0qPwG
 BAxZPKMC631T55TDVFa0YlPXyKGp8UIcIaKYSLJzNKqNfAGnpYqQdtr9Lfsh7L5YZdOGaOljVyr6
 J7YI84imhgwDPRIQtabdfJXKPEc5_jlVKXHNpXm.8qTlsGMrLWlH53DajoL0BfvIrVRi73dvUmgL
 2wsjuzEYRFUa65omrRhS2m9vh_nIo7MQaBesPlSWgPWWSTDJI2Eh48D.Cxjm24_Y7773PrHkX5t8
 iw17fWXRLDCIFbDeN070iPm_9A1Y8vVIrkmFkvPrMy4RG500HjWRlxFcsAblfaeyHm23uq4qGKPs
 cO4nK8KMY9N44sCDhXXGVwpgmtS8YXn2af0j1hOnJ8Sf8b.PTSyZKfGSaXp2ec6G6mfQLT4orxAH
 GSKaKWwRNrB_QtO0.s3RPdMRS7IY6861Zvae7ETteEYN4kAGJtG3lnwntBySQOriLXeMr3dppfnp
 VQK.pobxCzAzTDNRTNQKwVT6Yqm2EglQRBr4t.b0q.QGfcv0oPd5lleTcDrMWbJC9y2PnVCNCWNC
 m8ywdQKKo3CVGSJoGjEuuPR1QpGLnJ_us0Fhz6TyRGnXylNWxTGMsiYrsBQaWKsho_n_STVbC9.X
 L0nlfMsDeM2GMvMsFlLRIyPCInoxTY4o.3o58ZQ--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.sg3.yahoo.com with HTTP; Tue, 19 Mar 2019 19:57:54 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp422.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID b707d24ec4d48d531001bc1a2a399b3c;
          Tue, 19 Mar 2019 19:57:51 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 3/5] staging: wilc1000: Remove return variable
Date: Wed, 20 Mar 2019 01:27:29 +0530
Message-Id: <cc47abb35fd01e00ff3745ead68b20eb00459104.1553025265.git.nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
References: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variable. Issue found with Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/wilc1000/host_interface.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 9b9997e3ecf9..fdad1928c4f7 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1598,10 +1598,8 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct cfg_param_attr *param)
 		i++;
 	}
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
 				      i, wilc_get_vif_idx(vif));
-
-	return result;
 }
 
 static void get_periodic_rssi(struct timer_list *t)
-- 
2.19.1


