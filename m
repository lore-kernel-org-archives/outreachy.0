X-GM-THRID: 6395900241087823872
X-Received: by 10.25.204.21 with SMTP id c21mr2843098lfg.19.1489161629766;
        Fri, 10 Mar 2017 08:00:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.221 with SMTP id e90ls1050068lji.30.gmail; Fri, 10 Mar
 2017 08:00:29 -0800 (PST)
X-Received: by 10.25.210.146 with SMTP id j140mr2724200lfg.10.1489161629323;
        Fri, 10 Mar 2017 08:00:29 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id p144si156966wme.2.2017.03.10.08.00.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:00:29 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id g10so12124331wrg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fPLzRXvfL9+2g5OKvmSFlnvmwEinAWgB891WIkKmUp8=;
        b=cXTLHWh+kc0tTtRK2KrduIRaOb8m+UILROywi9zsylhx0DdoNkmduBAaFPgz1c2MRk
         1CtKTVbtu+ai371tdvZWaIQ+XJ+Iyh/SadLm7o1t4qwLhaXB8R+EEnb61tSj45h+5xr4
         AGmC65U886zZ2xQxgQZF/NdOMRwTaikVXw/olaQS68/4al20fghMzsRqgpfuyUKXirIG
         1LMvJEoOliT8BBk8AzNe5lczYf6FfK/udMR9I5vCE+4QCNx7MTJdH9s5eUaD3h0ecw9A
         3GTEmuWKzQN5p6wsa4Ot/uuqjLEbDWCgsc3tgkT+P0stqA7T3vXCv83HdFmBLrEok6IQ
         waSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=fPLzRXvfL9+2g5OKvmSFlnvmwEinAWgB891WIkKmUp8=;
        b=btbu5xMqGLo/tguzkEzwEuOzhev2bG8m7HTxm2v1aYSlylyvXTjfLdst36JXvJiH89
         NOc/gEFDBciuLgVS1b2U4mKudSWBlxwxecRFKGDgV07wouEvLaRkJyEkFkUWC9dQlwGy
         AU8C66zSmCi0XPT05gNzaLJTL/YbCYQxLNI//RSVfy+RkegOkgRtqueU+5izGHBdhQMh
         Flo3HU8oVJ6pGohiBufzSd2na4wjb1VLKuptAWAqIWF2QWFeKpF0zav25KuXYLb9Nma8
         rnBtHzXRFs+b2cSQTpXYTGg6sF0MG32yTVqeBMJSmdtiBFLw/BnCZlS9JTbdUsXMd7gP
         IYaQ==
X-Gm-Message-State: AMke39mouofyhqzinqpcbpYJFMNnEXflHop71EV2A3N+1BG92Cs+j/kbhpV21iodPeriwQ==
X-Received: by 10.223.166.244 with SMTP id t107mr16149062wrc.80.1489161629139;
        Fri, 10 Mar 2017 08:00:29 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id t194sm3903672wmd.13.2017.03.10.08.00.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 08:00:28 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 4/4] staging: rtl8712: Refactor conditional in r871x_get_ap_info
Date: Fri, 10 Mar 2017 18:00:21 +0200
Message-Id: <51a2ef5e1c0eedf9700b43a83914983a6584ed24.1489161001.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489161001.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com>

Reduce indentation level in r871x_get_ap_info.
This was done using the following Coccinelle script:

@disable neg_if@
expression e,E;
statement S;
@@

*if (e)
S
else { return -E; }

@disable neg_if@
expression e,E;
statement S;
identifier l;
@@

*if (e)
S
else { rc = -E; goto l; }

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 7ba8cf6..0b73f67 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -1971,13 +1971,13 @@ static int r871x_get_ap_info(struct net_device *dev,
 			break;
 	}
 	pdata->flags = 0;
-	if (pdata->length >= 32) {
-		if (copy_from_user(data, pdata->pointer, 32))
-			return -EINVAL;
-		data[32] = 0;
-	} else {
+	if (pdata->length < 32)
 		return -EINVAL;
-	}
+
+	if (copy_from_user(data, pdata->pointer, 32))
+		return -EINVAL;
+	data[32] = 0;
+
 	spin_lock_irqsave(&(pmlmepriv->scanned_queue.lock), irqL);
 	phead = &queue->queue;
 	plist = phead->next;
-- 
1.9.1


