X-GM-THRID: 6670611894113402880
X-Received: by 2002:a19:c50d:: with SMTP id w13mr33018lfe.9.1553122862264;
        Wed, 20 Mar 2019 16:01:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:63c4:: with SMTP id s65ls487764lje.12.gmail; Wed, 20 Mar
 2019 16:01:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4nrUzsahniMWxZQFberE7s7gW8h+IjK5t3sfihAgKPaSz/RUKLSAROWrtf7tCyHE4f8gs
X-Received: by 2002:a2e:89c6:: with SMTP id c6mr9417ljk.25.1553122861153;
        Wed, 20 Mar 2019 16:01:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553122861; cv=none;
        d=google.com; s=arc-20160816;
        b=zQVV97Grl7iisEMRF1G2TkTyqzaoZJ/BUXVphHXLkuf+mm3wAOzsHdLdJWs1xAT8Y+
         wAW12FCai789SPKvQwQMmoecwRrxRDUIbvXxvGCJ0Z2zBQvSxDb0vTTvijmuWn1UaSoI
         muW0apoi0Yiv02zObXCix7P4fCqPswaowZNpwt0xy1tOon7b1kMhhk67NkWYRFIAsWV3
         sdCS6NSLDGy2rCEXrD26umXoJxCKlmui+N66Rl2SaqJL3HZ0rR75X+uGwrAZNmyt1j1e
         xkrGunEpBByfVUV2YQaNcJJzA1iKYnmJmvStzvEX9MCiC8QgOFMJi5vSkXjBVeHlTAQH
         6XQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZS3FmBN0lEn8nrSdr7wYWWSx19wqds0bC2h5P9uAeW4=;
        b=DeBztJrzga98+l9ZlYsCN/EwkdbwtBayYU+XJUN7JwBheFar+q7F5PwGWMzNaEAHab
         QGGABpZbAPPSuuf5CC/Ee9ZgtrME8GQN08mowV2eOL6X9LVjaJ+9lwGSVWAS0oWTVpiH
         V0XklDHm/ikr0KbH0aXlYcxVmXVv8ioedgHG2F/N2JcKjcYH+vydM6sk5UsQldfSY05t
         0/CvQz1E9b/Z+SsPnalvg8M3lQfFbv0MwX87pRoF+t67AuCiHpp2el/jk9ekwHjnu+CZ
         F7ObrRGCSPXtvN1wrHlRs9paKfrI5uYhrzzPVBR9qnHfWhyl1VOHC5VqO9MqvSnKG54n
         /CsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q5gW0ICU;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id s66si157130lje.3.2019.03.20.16.01.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 16:01:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q5gW0ICU;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id y197so863342wmd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 16:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZS3FmBN0lEn8nrSdr7wYWWSx19wqds0bC2h5P9uAeW4=;
        b=q5gW0ICUGj8sau/6EkU96YUZbTclJKZW2Bb9YFn1urFbDwjc78AsmePh/mHwM0HJOI
         DMH0gr63UNgLuYt0M0FL4M28Az/VQ5xMTiFw8oWGncWzOBQcnkoQYzZENf0BRlj6cUYs
         bzkU2mpJmrc+WBNS42Hd3sORNaImf6eldLb0m78+iYYWdndyh849C/mZ2lKvTW2PG4q2
         7f6S+i4jorLKWp8bTMv14Dn74DFq4lUQpUw2QFFr8vUXAnCN4D6/8CZaYBu28tKTA5y0
         99DDhX/iBkpIHtJ65RxTe9LZkyAWF9LpJVvV/diC3SViqZNpLyiERdXJ8iH0jdfQW/ie
         SmaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZS3FmBN0lEn8nrSdr7wYWWSx19wqds0bC2h5P9uAeW4=;
        b=ESCC1F3vFH12akuq9WdU14i6raw+Ak6nx66RQGWPug4BLWHwxNjf9tb/vmT4xKsPqA
         LGI6L3+7e2corpCadBoqE7dYVhGJepfhiYqLYIl7gDoPeBsd5W+eCJG6F3MgtMuIjsyh
         a4gO1uPS4wVEBiGOjAsy7FS7g6BmcF9E7ja1/eIsPlhuYs9nG3h1feKQHJF7s3GXWnZy
         ms4MvsrqNDbJ1ix9odeP6CXOfopmYa9TykDkZBoCiwvAuEbh5s8Q2fo74sbbwnQLDZxa
         U2jJS0EKHnfJM3Fre3U51uyKF9YEOktGgDIpkqpYtPIwUOtypd2Lr2yVAvsMpCho3UTK
         uz/Q==
X-Gm-Message-State: APjAAAVm7SVC52tyui7bP6riWrau2NTyepkapX90sopHMY+d6CSw3hbE
	rS1yJDiqHUlNiuvpL/AZfzKDWwA=
X-Received: by 2002:a1c:f102:: with SMTP id p2mr457025wmh.36.1553122860488;
        Wed, 20 Mar 2019 16:01:00 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (host86-151-41-196.range86-151.btcentralplus.com. [86.151.41.196])
        by smtp.gmail.com with ESMTPSA id 7sm5809065wrc.81.2019.03.20.16.00.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Mar 2019 16:00:59 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: pi433: fix line over 80 characters
Date: Wed, 20 Mar 2019 23:00:48 +0000
Message-Id: <20190320230048.6340-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190320230048.6340-1-jbi.octave@gmail.com>
References: <20190320230048.6340-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

 Fix coding style issues which solves checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index f537722395c6..10245719b5cb 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -45,10 +45,10 @@
 #include "pi433_if.h"
 #include "rf69.h"
 
-#define N_PI433_MINORS			BIT(MINORBITS) /*32*/	/* ... up to 256 */
-#define MAX_MSG_SIZE			900	/* min: FIFO_SIZE! */
-#define MSG_FIFO_SIZE			65536   /* 65536 = 2^16  */
-#define NUM_DIO				2
+#define N_PI433_MINORS		BIT(MINORBITS) /*32*/	/* ... up to 256 */
+#define MAX_MSG_SIZE		900	/* min: FIFO_SIZE! */
+#define MSG_FIFO_SIZE		65536   /* 65536 = 2^16  */
+#define NUM_DIO			2
 
 static dev_t pi433_dev;
 static DEFINE_IDR(pi433_idr);
@@ -672,7 +672,8 @@ pi433_tx_thread(void *data)
 		if (retval < 0)
 			return retval;
 		if (tx_cfg.enable_length_byte == OPTION_ON) {
-			retval = rf69_set_payload_length(spi, size * tx_cfg.repetitions);
+			retval = rf69_set_payload_length(spi, size *
+							 tx_cfg.repetitions);
 			if (retval < 0)
 				return retval;
 		} else {
-- 
2.20.1


