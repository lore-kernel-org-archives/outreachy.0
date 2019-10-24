X-GM-THRID: 6751409971660849152
X-Received: by 2002:a62:90:: with SMTP id 138mr2640979pfa.209.1571935139175;
        Thu, 24 Oct 2019 09:38:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b485:: with SMTP id y5ls1968756plr.0.gmail; Thu, 24
 Oct 2019 09:38:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyUXpcmo6LeDoitMPVmwnIYdlVVsxUUy4pGYnIjfhOHSadWpHJyjy5BiOfRHI/Id8A3il4R
X-Received: by 2002:a17:902:b191:: with SMTP id s17mr13032615plr.122.1571935138509;
        Thu, 24 Oct 2019 09:38:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571935138; cv=none;
        d=google.com; s=arc-20160816;
        b=k0QQLdiONqd5QFnEFFu4Zkn61ywtOBIHo17B+0KCELuVZ2uNgQYKUBgmWQaQC0bYM4
         bKO1jljkmPUfrpZrADJ7kb37Icpe0CEZhN2HaFgk8TpppD3+77/BJnuocQ97SKvZDdUr
         caTfELub0VknDZH75Z4gWrH98GRPxkG75jB5miULbYNdh/gofHrqt5TjtyBenArpOXTo
         W4mF9M0FFViGRR2VDmrynDsGpiAMxwecbMbEOKl7EtpKyDtYXb8Heu4QKh65pVR4U63H
         UzetvD7TrhwrLYZcln41KPrSYQmGsknEX7MQGYR3ZMhar/Reco4Dt4kJPn7ObXYOxdRy
         ZajA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JBkAEAHyhcMPhU/HM87Wnb8+AYbsPLYrzfZ2kbcSds4=;
        b=LxjYdRccxI1ODKwMmHjDZmlxXThC4bwc+lBxy+q7W0mcEJYa8NM1FtM0bF1rKPmdPe
         CooqZUIuvv8GHAiOgr//os6gDz535CP4MVxaoVLoqqOg/kwDZ7SExjSMpI1bL3LB5p47
         +9Q/aOe2PDa07BQy3nMSo7OWsoQwwiULqP/O4XFks7O9QRbYHsPP9n30V6skEFzNmZXD
         Fx7BXOEg77z4xEABaCVTy/iaSFIPO/jIgwjX17j8ZBSWHmiRS04cKA7WAgFHWuwTTjCO
         isQ/HlZD0j7iOYNCaJEORFDbmas/+VttyJ/wCpy2awCOzwpbr8JXksjmpEZQrKev57cL
         Jv1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U77v+xrQ;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id f17si1270595pgk.3.2019.10.24.09.38.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 09:38:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U77v+xrQ;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id e14so19015309qto.1
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 09:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JBkAEAHyhcMPhU/HM87Wnb8+AYbsPLYrzfZ2kbcSds4=;
        b=U77v+xrQBX5EgzRNSk0HwGcyC7fd1Fr8Ij5+E9THHVZwterT/Vq+sgvSm9y7Jabwbd
         Tj7s2JGAD73155WXh7726JQLEum1Qm6cWiJBfsWasVtT61Ts8fUaRrJiNsE0s5rS+jjV
         7LQzcK8yaQFiODf6uh84hqCSnGxG570yDuWQRRddOZk2rgql770Hn+KEXoGfPQ0tu8NE
         80h5rQUI14/ApIyzx15gFnmgLMZmslLqpVwBn1epXMD/34V2Y6gIRDd0esp/DgcgmUlz
         HxvKUSst3EOUNdzpLq1c9LdEgKUk5yHFzIYxL1jqlRNxXjUji/4IDbkPFXdl+NgVuSjU
         CJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JBkAEAHyhcMPhU/HM87Wnb8+AYbsPLYrzfZ2kbcSds4=;
        b=jfdQxy0yHpIzUbXZubXMrntmw5kXNNYEWKHtR7dUu7oETJvdqbDokjsIVaAzRTBHlq
         N8K5gLEJ+xllQQwSgShI/W8d7rzoQXU3EoFswodxVSGSMlAPeUEzsLGKXJkKK+ruDlcu
         WsMNMYRjcVEHUmhK0H7a4y+vC4bVN1Q05Atmw5O4ZspSEjpSwHwI6mEmDWItIZVgog+P
         vW+EsfDm5MHdq+NykbRdBnZxFeJ4jHW86MatWmFGVmzeASov0dmUGiOAGWePlR/bdYmP
         AaHt6P17VmYzzLjy7ZTWLvjpU5psIFsU2CP6xeKzHP/5DilCEmdBFeUigdvxpdc+TNnN
         3PPw==
X-Gm-Message-State: APjAAAU/YDEPcXiKKUybEmcn7d7+6elAtooCpDMCNzvAOc7f3AlX35W1
	rj4ITHuajTAX09+zPTev7Leq/t7hFj4=
X-Received: by 2002:ac8:ac4:: with SMTP id g4mr5103867qti.326.1571935137807;
        Thu, 24 Oct 2019 09:38:57 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([201.53.210.37])
        by smtp.gmail.com with ESMTPSA id l15sm14660121qkj.16.2019.10.24.09.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 09:38:57 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH 1/3] staging: sm750fb: align arguments with open parenthesis in ddk750_sii164.c
Date: Thu, 24 Oct 2019 13:38:20 -0300
Message-Id: <20191024163822.7157-2-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024163822.7157-1-gabrielabittencourt00@gmail.com>
References: <20191024163822.7157-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Alignment should match open parenthesis"
in file ddk750_sii164.c

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/ddk750_sii164.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index bee58edc84e7..73e0e9f41ec5 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -141,7 +141,7 @@ long sii164InitChip(unsigned char edge_select,
 
 	/* Check if SII164 Chip exists */
 	if ((sii164GetVendorID() == SII164_VENDOR_ID) &&
-			(sii164GetDeviceID() == SII164_DEVICE_ID)) {
+	    (sii164GetDeviceID() == SII164_DEVICE_ID)) {
 		/*
 		 *  Initialize SII164 controller chip.
 		 */
-- 
2.20.1


