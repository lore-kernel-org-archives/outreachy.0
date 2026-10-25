Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.48
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792931180;
	b=PCApcA1ZTqGe2R8ScjYvWzoRJuDXF0IuLaWAFOdI1qlFFyiyr9i61QxEBdLWjWFeW4/o
	 /Nv/DoJXaEfaA9Gth4TFjIhh+MTAuvDky7bgo931KQOGZz8tpSbCb5gnTcDVzTlEysh6r
	 YK3lB0Rujgbt+hDxKLR0aKdJi0deBjuXRqxZZk98mNmYlNYnImYbNW5sgp+TJWoR6THg5
	 ShmcPyS1VmR8kzvF2dcWAluXrKkxbRtnvtYvtuVTripnVHxniBHEDvgHIkW8Jvfg0g9WO
	 HSZz/erIHsmyBoGr012cqTcAnvvPEu1ihdTvseKDcxMbwPdFnO3lHPwIjI6F8exvPPg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792931180;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 From:To:Cc:Subject:Date:Message-ID:X-Mailer:MIME-Version:
	 Content-Transfer-Encoding;
	bh=jufQttOKS5p8h7UvGh24c7CdZP0e0JDC2zgLNdpUMHw=;
	b=JxtP66v/EXUeJWvYZiIKJDAx2KS+a3GA+6hSh+HA1jyOm1Nt4MM3ER5KjF4C8bzswVew
	 DyQDvzQFCVdEdYlHOLJR6Skt8a+Q5t66ejzvIPfIO3M5Rqur7qBOx4SuGxaAbqlY3no4p
	 e4XdXH7rP9wgCFVC0ULlMFl9hXb4SVPHO4QkygWfLEtSh4m8dqwEWGQQSFqUMdhM3Jyza
	 huY+tSMlGsy8zF4Q5XeoI6UqFT/P9rn+YkAaBoOG0Z72nd6HBTK3ogXXbxNP+00rIRGuj
	 eee0P6d5u5QD2CtW3caf7+djYPvrBusySJf8fbsKp6krQlu5emebVCxSnyC5byioWMQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=WmntTRwD;
	arc=none smtp.remote-ip=209.85.221.48
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B500606A31B
	for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 12:26:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 8B500606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=WmntTRwD
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-48df4e9d2d4so1204389f8f.3
        for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 05:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792931179; x=1793535979; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=jufQttOKS5p8h7UvGh24c7CdZP0e0JDC2zgLNdpUMHw=;
        b=WmntTRwDahOuJx0LX/l0J6Q5aFRq3NG/xL9k8YwhTjEthYfqy90Ic7MfJi2w/HFm40
         v0Zg90RYY6C+ta+FSSelgUiYpiwIwNDRLXLN4xN+rVV1vqFdmyBv9xbGPTAMhQh59sPV
         iLOcmJdSNj5XilByjUpms/8mu+gPw+6zb8mo30JUzCAquKn6KfyWV/JY12U/WTSVk43N
         Xt7Zrr5C0aqOL0kR1qhJhya7q1R+ZIx9cOb3pvucJo46kYzC67uGB6uW9oFaGjKEoY9z
         GEsUlFdBWoSA+1V7x0lEOj7nIKMhS6WA21ZB/hhlLVmreRkMkHvpFDxHn/3Basw7GKFc
         lJnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792931179; x=1793535979;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jufQttOKS5p8h7UvGh24c7CdZP0e0JDC2zgLNdpUMHw=;
        b=dfZN9aupmE2pVCDDzRyTiqfXSSpPbDZ7v3fVK4E/tnmPkqinydaIU1Ii0yn8Mh4OX+
         U5H8pMdjNIR4nZQxMi0NZXOsswEHhdLhUlyV0jdTc/G/cmufln2dJw1eSNCgg+W4JEeX
         PGctQ4MTO7zSmfSJGQfKP2+IfwJ5fbNjJedmJG1G+a1ecEonR/lRYuEtaEXmZlqfd+TA
         qzaCSwVrcU9zEKjlZi44Epe0b6cQouJaLFwzq9SWd+qmS9KNTQcex9OjxedCUfm7EPWf
         GfohbJ5dY2RVElyq4+1nL16lVI1MHe/QfdwtSQjZruAzNetYFrfMVHv/WWCm7MrEH8e2
         KRKw==
X-Forwarded-Encrypted: i=1; AKwUvBxnpevtQ8LTRp9VvjE4wPBWn/OY3+/wGIUGKIATuvaCpO0YkdlhNn8fVgVakJVkLv+0roqMV7cBRmw=@lists.linux.dev
X-Gm-Message-State: AFq9FYKl+jUETeiuc7oqbdcnR4AAhkMvyMCCCCII+7MowS9WKuYAdJ3j
	upmrkjSG7qCV9ufa8n4TiXEA2F5o41rvxcR2UFxl/jHlDul9aBMBz2NZ
X-Gm-Gg: AYBFou3cZ3E/CUw1xPLS2Lb5Q8aZEYZt+mIIBZHvPofVNbSqiEt9WG9sD9ZwvFVGplC
	0eE0oRg49+t01uwYvhFXX+89yKUSJmkIH7ANLENOQMV6C3ccKI9KLjecN9n6J8a9hhtT77Lys6g
	MGCJp66mvBqiyYDMW3yRdoAkBUCzXWtRBd3GH1ArMQWcjxePfBOmtifaaMhTAVTwmivrr+AXGYE
	093E8tOFFZaL16vilLsaWAxreVl/ymQfmd1PhIjZ7eZAvo/924c+hQQYcSxbqL8zGhBD8Yl1P+P
	UfeJuNuD8xwyMZk6zZ3ukV/s5bc9xfA5fShAMfVTiaMqnKTfP1xAV/nVT3o6p0mw5Qg0EDF+GNg
	YYWdPbkYveVajD6eT3o6LnnscgVwBY0xPd+2sPik4Xzmc9Xb2lgH1pRY7chqOTTZWcaoA8EYCTe
	mlqXlBZb8DIw+Glar8AQEqzmIFkd+DI6n6cCjjO9Kade2jOT0U47hgTvEHYuoesYFz1iOHDFJ8j
	2hQb5ZfAgzYOdTtuP9EFoKEvTIFxM2TGfie5bUxZ7QBFiyaMmgAb3TC/9sTsVM69M1YosoSU0Lb
	zXFBwH0vOo2GnSEGCA==
X-Received: by 2002:a05:6000:1843:b0:48d:f36e:fbcb with SMTP id ffacd0b85a97d-48e3eb8b2a1mr7255770f8f.14.1792931178772;
        Sun, 25 Oct 2026 05:26:18 -0700 (PDT)
Received: from Ubuntu-vm ([115.186.50.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecd354asm9403851f8f.43.2026.10.25.05.26.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2026 05:26:17 -0700 (PDT)
From: Haasham Khan <haasham93@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	Haasham Khan <haasham93@gmail.com>
Subject: [PATCH] staging: rtl8723bs: remove unnecessary goto
Date: Sun, 25 Oct 2026 12:25:04 +0000
Message-ID: <20261025122504.8404-1-haasham93@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The goto exit statement jumps to the next statement, so it has no
effect. Remove it and the now-unnecessary label, and simplify the
conditional block.

Signed-off-by: Haasham Khan <haasham93@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 6f4bdad00f60..c2d0cd314b81 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -2005,12 +2005,9 @@ static int recv_func_prehandle(struct adapter *padapter, union recv_frame *rfram
 
 	/* check the frame crtl field and decache */
 	ret = validate_recv_frame(padapter, rframe);
-	if (ret != _SUCCESS) {
+	if (ret != _SUCCESS)
 		rtw_free_recvframe(rframe, pfree_recv_queue);/* free this recv_frame */
-		goto exit;
-	}
 
-exit:
 	return ret;
 }
 
-- 
2.53.0

