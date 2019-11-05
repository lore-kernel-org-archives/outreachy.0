X-GM-THRID: 6755870157835337728
X-Received: by 2002:a63:1b44:: with SMTP id b4mr38266033pgm.421.1572973597693;
        Tue, 05 Nov 2019 09:06:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:1ae6:: with SMTP id p93ls1016556pjp.2.canary-gmail;
 Tue, 05 Nov 2019 09:06:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqyS5H8szZuipsr1JI7gDRQTVrdJRSBHuiX27SDTIwmRSuQYcAGDTlX49EidMsd9AiTh5G2t
X-Received: by 2002:a17:902:d215:: with SMTP id t21mr22764030ply.125.1572973596159;
        Tue, 05 Nov 2019 09:06:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572973596; cv=none;
        d=google.com; s=arc-20160816;
        b=Ta585yaWK9kNL73wvAOtTuMlPpSyKvvC/Q8eQgkqYHK+2pHomY1l69CrDb/V0JgvLi
         uMCZW+nktS3g7k6csD97d+z4dP4hp0njuAjX1KSThs45mYqoPBTqYvL+nT044dStZNbI
         s6UOPzFHUxaSZW7p6qf8zYe07DoxU3PvWpNs0aQmrLv11w5iv29/kHZHyH/hzWZmsWf8
         cK0vmr5dv8cYdziFc5XlYMOL4Y8VmFGCsDFjORKEEMM2bNvBQv8oLSL1xIaPqV+jQ9WP
         7AbP+RwG8upCgZt8c1mDqVY+QBvI1933s3TblDnLMOnGqvTtOXqaQQeRdSVe2f+Uc6fn
         QkFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=eNGZaa0yBRbno6pqmKeh7B94YL+TFwbqemYs16kySaw=;
        b=lRgqNgAocGninBhENHo8mgb6C9bStYkJlnb96e9sdJ/5lYzPHIAyLfrC227eAn3aXF
         uOsvQOwdF4jfcP2RbR9ubgbQI6oYtqPNU9v0CYuKMqspyl3RWj0UDMXcCFn8Y7egQc48
         RfAkoLgv1gwIsIyeq2z/GAkYi3goSQlGV8X8YOGXfuNFOGdPoRiMO3hR9263wqf6pN+f
         Xnw/0GwOKiMJhfG41qndks0iteiwCxy/uc83DBbjrvmsFbNpxU+44IvaOXhxVI8ZnFey
         UQ6GlcT0D1jP8jH62LqYyYqfzyWXQqN6mjCgKh5JCa20pql6By3NnYNyJC5q57J6l9mU
         JEcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DGchO4N6;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id s144si713272pfc.5.2019.11.05.09.06.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 09:06:36 -0800 (PST)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DGchO4N6;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf44.google.com with SMTP id g18so236172qvp.8
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 09:06:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eNGZaa0yBRbno6pqmKeh7B94YL+TFwbqemYs16kySaw=;
        b=DGchO4N6+m8iBhD4z1Wk93pMNTF2QARosaLyvq0W+bY+5k07WAXaFiUl4O8WZdgiYG
         hWIhtmE60lv9PWP8DOuOSUtz8H8Vl3RxLJVq7+xqlU0ZvomDxnHoGDBoFtRriXL+g/64
         sJ5AanviCa+AZxNA39PHUpzed1yHSMnAtT3gCag4V29qxPy71DpOJhZcrJlTvWgkZUvV
         NNlAWefdIcVrMuyLe7kMuUMaX9GUbX0eN/2ITod0lPLMg+VwU8Z239uNAcpuOlhrYW+h
         fe6Yr11DqL/WqkYmZ+/xb//eWqdXpOpoDu7CBdzDQfapao3Zvl+FXZsO1gMCZX+xKdks
         R3Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eNGZaa0yBRbno6pqmKeh7B94YL+TFwbqemYs16kySaw=;
        b=QbuTqIpckWugmLNaGo5+G3DkkFjaRcp6YKpBbNFbGI6MbAa4n3xTxxeY6bbxnr/uVv
         D7HKiLOfb3aHLpRuDjgr37U31qNz40jHeFze7lCxh5Wnn/m7RxryrBEyHToFq4Xom9tx
         ZcnAdwJWE/NxZnJsVMs6+wE3mCuwIRvFuyZn8PsqG/hAG7wyYy1MgVBcyftGnRjTtwWF
         Jr+zzsMD/T+ExGzwTDRGm1vyVeoxjs8tjmlrv4tO82WAe/sqzUPcBdWsk1DXwLj/ETHZ
         KK1vWAzJYQzipzg3vaTw2t7yxDi3efhtCvZs6eKexa0lrixkjEfP/b+Wp1OIxr+N+/v7
         LyJA==
X-Gm-Message-State: APjAAAV+A7TUTLxTdKYZ4p4i8MjsR7E77gL3DuI91/RfVGTxeGQrnkaS
	+f/cN3QzHROTkXwyOq5w7BtQvxSsivY=
X-Received: by 2002:ad4:5183:: with SMTP id b3mr2006327qvp.144.1572973595217;
        Tue, 05 Nov 2019 09:06:35 -0800 (PST)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id n49sm6145652qtk.94.2019.11.05.09.06.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Nov 2019 09:06:34 -0800 (PST)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH] staging: rtl8723bs: hal: Remove unnecessary typecast in kfree.
Date: Tue,  5 Nov 2019 09:06:31 -0800
Message-Id: <1572973591-12892-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove typecast in the call to kfree as it is not needed.
Issue fixed using Coccinelle.

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 5ecd1c8..b6b4adb 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -986,7 +986,7 @@ void sd_int_dpc(struct adapter *adapter)
 				if (c2h_id_filter_ccx_8723b((u8 *)c2h_evt)) {
 					/* Handle CCX report here */
 					rtw_hal_c2h_handler(adapter, (u8 *)c2h_evt);
-					kfree((u8 *)c2h_evt);
+					kfree(c2h_evt);
 				} else {
 					rtw_c2h_wk_cmd(adapter, (u8 *)c2h_evt);
 				}
-- 
2.7.4


