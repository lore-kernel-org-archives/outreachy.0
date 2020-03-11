X-GM-THRID: 6802944332146933760
X-Received: by 2002:a17:90a:da03:: with SMTP id e3mr3421372pjv.57.1583933907847;
        Wed, 11 Mar 2020 06:38:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a9c1:: with SMTP id b1ls732117plr.11.gmail; Wed, 11
 Mar 2020 06:38:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu1Yu4CGJSRmORKkMtr5XvkORr+kclsdzs09ZhnD4BjHeePhUgHJM1rfp6BxhFsm0g3HgOy
X-Received: by 2002:a17:90b:19ca:: with SMTP id nm10mr3467453pjb.157.1583933906149;
        Wed, 11 Mar 2020 06:38:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583933906; cv=none;
        d=google.com; s=arc-20160816;
        b=q7jgygPCN9w0dzIMRdI7OiD8srfPksqxaMxf79j6FfIwX5SOpu+rxCY3r3TVg4mJ9i
         wyYxZr86NAPGACL+t/D9Jbg1eTCGrXxZnHMeDBHdWK7aPjAT43fcoBRQCO2CBazUO/3S
         0BEebruBukLJKRgWINK2y5/kAMdz7/Omqp1LnJtZ3qo0sD0yjUYof1AWET2HFmTTLq1j
         bVlqT7SDEYlCMf6O+vHIsmS/0g/FvpX698rbsu4VQl2/tGy4l83YQ6ukrNr+Xqghb02j
         +0oWzVTTtGp2vwoXKALpQrFdY3VTwvCEspn8Uso84TYPiTBlK1wYs9s6EL07XH7u96dM
         Lg9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=iwO+qWgIM9f3My2kQh2h35ZK0GeUk2RHl41oBvJStTA=;
        b=neSlR0vgNWEq8fuidxAMyQ/Ol7eBSD1np6grl6Ek7EDBq5iaBNFgRQj0q7G5DbGTVy
         LDwiS0xHaZvr9l7ZEV/teePWDkl72hKF2izyCMX07Bv6JhAXFFSg4X1kbHKDmap/Bz2z
         2hiwy9Ml/t6bvsTiLrs7q4AjVKwHHk6sAeoyud+KpHY8zFZ8y0g17DUjSyO0RMww5mqn
         4Apxc0BJYCBQXQIZ/xmmN0HaFioc5cxLw1qoqTKUYdY0UnveAXzPhdgVs1YjQgiDZETz
         2ePsAMflmnfIw32m7OrF61dvMqM/yMsXWBS8fi9lH1Sj1ktV9w1W4Cm+24E7nKeITIc0
         m/Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eMZJz01m;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id x12si76787plv.3.2020.03.11.06.38.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 06:38:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eMZJz01m;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id np16so1013248pjb.4
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 06:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=iwO+qWgIM9f3My2kQh2h35ZK0GeUk2RHl41oBvJStTA=;
        b=eMZJz01mXe3/ifT+hdwJkqR2hwnztmZqsn/QxoJpTI7gXv9Hq7Mho/K3STadVNsqnJ
         Jx9efTHHul5gLpGYUqgE+I7KKMWhi54bV6FDskbH3N8PpmF7QAepzxONG3RQPwIfm1FY
         EFbD9hs6enLO4wjYYQS3FeNT7JymO2VaJToosruysIL++2mTBak1+80XCKaphPE0Pww1
         yhtQl+5WsH/zw3Ne0klDkA8tkO1R91+BvoGZftBIF5zK6tiCwqzLubSKJ3NDhj77PGVN
         EdCBc/RmqQy3E8C4/YfnfMYDa6N3Q1bO7+ACYUGVnVM0JZpGSJogyiUQNz5ZaMDTlLl+
         fTjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=iwO+qWgIM9f3My2kQh2h35ZK0GeUk2RHl41oBvJStTA=;
        b=eWGuRHwVJxUJ9eQk4nP0OZ+ItuefRWlmP9Z3hO1yiwQkU9gNOG3HPdExC649zrw8xw
         BE3Y80rcf8b7ZftoYHMiyVG4GbY2RarqGv6xLrk1rgu/W71xrnR70UNqA2OZ0UnXNHbU
         vLWa2avEziQ5zEx47Z8h0V2qh7AttvBUWVnpgNismOm/UbuEPOP0SWsJdGIARsGVCyTt
         GJWILJ2gNBcApfG60xxvHMRciHA2rlkD6/gNJtzNsknOy3MiJTEgpoBNFGjnV4o37EOP
         DbHSF/7HIu8Gs8doN36ONIskvBzHclPXwZZ3wUuAs2D/ii6hJFLYFBHQmEnsxo2soLzN
         pv7g==
X-Gm-Message-State: ANhLgQ3WHAJ3inKXLVBlsztS5TBXKjsB8QFkvK22Qpcp62Wjxv8d9Z6v
	jORmG5wEaKdxjip8A3uWcLU2rlOcGw0=
X-Received: by 2002:a17:902:bcc5:: with SMTP id o5mr3126671pls.174.1583933905596;
        Wed, 11 Mar 2020 06:38:25 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([2405:204:287:fb4d:18bc:a849:c699:3914])
        by smtp.gmail.com with ESMTPSA id k5sm5668922pju.29.2020.03.11.06.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 06:38:25 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	daniel.baluta@gmail.com,
	nramas@linux.microsoft.com,
	hverkuil@xs4all.nl,
	shreeya.patel23498@gmail.com,
	Larry.Finger@lwfinger.net
Subject: [Outreachy kernel] [PATCH] Staging: rtl8723bs: sdio_halinit: Remove unnecessary conditions
Date: Wed, 11 Mar 2020 19:08:11 +0530
Message-Id: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove if and else conditions since both are leading to the
initialization of "valueDMATimeout" and "valueDMAPageCount" with
the same value.

Found using coccinelle script.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index e813382e78a6..643592b0bd38 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -551,18 +551,11 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
 
 	pregistrypriv = &padapter->registrypriv;
 
-	if (pregistrypriv->wifi_spec) {
-		/*  2010.04.27 hpfan */
-		/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
-		/*  Timeout value is calculated by 34 / (2^n) */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	} else {
-		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
-		/*  TX/RX Balance */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	}
+	/*  2010.04.27 hpfan */
+	/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
+	/*  Timeout value is calculated by 34 / (2^n) */
+	valueDMATimeout = 0x06;
+	valueDMAPageCount = 0x06;
 
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH + 1, valueDMATimeout);
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH, valueDMAPageCount);
-- 
2.17.1


