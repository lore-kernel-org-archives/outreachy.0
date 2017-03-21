X-GM-THRID: 6395900241087823872
X-Received: by 10.25.203.151 with SMTP id b145mr4487807lfg.17.1490136824647;
        Tue, 21 Mar 2017 15:53:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.134 with SMTP id 128ls44651ljj.4.gmail; Tue, 21 Mar 2017
 15:53:44 -0700 (PDT)
X-Received: by 10.46.7.10 with SMTP id 10mr5199911ljh.1.1490136824085;
        Tue, 21 Mar 2017 15:53:44 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id n128si1175708wmf.2.2017.03.21.15.53.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 15:53:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so5734402wma.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 15:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=IFudrX1LFusrGjLcvSDRuBO0lVVYVb4U7dJPhbLHNA4=;
        b=HoCLuu36hl5z60j5leAEbLT/U6XP6KMOnU84eiCGOn5Af2wI/7ZrxuJrkEhPnzJV4+
         8NXLs3VozC60V0Zvh/smOgQ3hxbdWHHyS3B9SNaCfzNZlyQul+ja8odpiQcEfS7UJ87X
         A6aFMz8csQcc6KqRx8UeWV5AHbrWe0L507xyPpK2GUaliu9uj65axHaK0Y89Z3rW5hVg
         PfaiRa8lkhP9GK6dRLbrqChW1XoL3JA8c40CP0mjdlykn+oNmCWU4Yt2BTQtxCcALm/q
         CIPME6FrQDMamPDzUuVLArhoPulxwgcSPqjHonPH3jpnBUDlJ3wfSdRwUk/WMmp01EpK
         yOuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=IFudrX1LFusrGjLcvSDRuBO0lVVYVb4U7dJPhbLHNA4=;
        b=YK4n+oKGReQ4+ereNU0hLC3uCxouaZKQZ0ULxbZKOPouu0Z/RKdf1t8cEf8Bbfgovi
         jFfxnCpqFh3EmHdnMyAD49SMwF8CEdmWsbVybhyueQkHcQ7E4jlOSq2B23Hlvxf9e0bN
         RECeGBCwwODKYQhkypqMCkqdT49wK9l120P1Ctj72MhuGpf7tMZ4O/K6Il0PCvyS77SF
         G0aFd6f4aOsHNPn7wLpsvnCyQYEE7/ltdiKRmC9vLlDeXhPd7VeJSE72F+s/H8IyofJr
         z98Ks9SPp1YSUAg7cfeey8/DfKqMEJC63ulFoyhLcp7/j0/KezHfvR2xC68GBq28hm2p
         +XbA==
X-Gm-Message-State: AFeK/H1LcRcp6CBv/geb0gRRjnUj7q7QvpCnu58+BMSPmbkRL/eTslBc60urAYNdt21Ejw==
X-Received: by 10.28.182.7 with SMTP id g7mr5105226wmf.108.1490136823899;
        Tue, 21 Mar 2017 15:53:43 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id p185sm19332360wme.20.2017.03.21.15.53.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 15:53:43 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v3 4/4] staging: rtl8712: Invert comparison to reduce indentation
Date: Wed, 22 Mar 2017 00:53:36 +0200
Message-Id: <f1a57a92eafebe25e8a44a161bdacedb689a4fbf.1490136448.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1490136448.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com> <cover.1490136448.git.narcisaanamaria12@gmail.com>

Check the condition: "pdata->length < 32" first, to be able to return immediately
in case of error and then continue with the rest of the function without one
extra indentation level.

This was found using the following Coccinelle script:

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

    *if
(e)
    S
    else
{ rc = -E; goto l; }

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 3d6e818..e30a5be 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -1965,13 +1965,12 @@ static int r871x_get_ap_info(struct net_device *dev,
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
+	if (copy_from_user(data, pdata->pointer, 32))
+		return -EINVAL;
+	data[32] = 0;
+
 	spin_lock_irqsave(&(pmlmepriv->scanned_queue.lock), irqL);
 	phead = &queue->queue;
 	plist = phead->next;
-- 
1.9.1


