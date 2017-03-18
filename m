X-GM-THRID: 6395900241087823872
X-Received: by 10.25.223.67 with SMTP id q3mr2491378lfj.1.1489862137938;
        Sat, 18 Mar 2017 11:35:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.2 with SMTP id w2ls993384ljd.48.gmail; Sat, 18 Mar 2017
 11:35:37 -0700 (PDT)
X-Received: by 10.46.20.74 with SMTP id 10mr3005697lju.0.1489862137204;
        Sat, 18 Mar 2017 11:35:37 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id q207si408641wme.3.2017.03.18.11.35.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 11:35:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z133so8136436wmb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 11:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WHrjSlMROUS5uyPpIkhma86sJ/Ag2Op4rblRP0YxGG0=;
        b=lRzRz7BS+YLMkswR3NuYCJt5x93Pu6NAaoSbw6VfDaDbZ0w+M9F45Xri97L3W3eXLO
         xcLZBG8sVjuRX6uazW5RxysSqzQfUwI2cKu/h/EpuDR/gcNTGLpHDiJMisLHFkibm0jp
         X8SOUiRBvyd6sJnLt1TjyD4Qvq31DI2iK7ZMbuWXvAwqN1G/VLLAm1aTJS+soXGJce+7
         9E1gFTleSjE+oRw9qDavGljhKox2+3i/eZR1ORxgulzGlhTDqeEoglWggMzpiI1MRZkG
         63u0mBcOu98lXvqepJcsgYbeLurntqHTXzkh5KEfnmMB5lDalP1NOD1HASc6VBKo1dyu
         a68w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WHrjSlMROUS5uyPpIkhma86sJ/Ag2Op4rblRP0YxGG0=;
        b=IMw7L72gRaMw7aPUxKZ9eoNYC4dcIxyqwkwljo0SgqoEKSE5Sn36EKjgXYXY+CagR+
         3Ti5s5Z+y5VMcl66xSvpMMJeFf9GG4nEBSHpC/GmnrQHHTgj8kdeT990KlX4PWGOyMKk
         MxWbC7spl5Ztd+0o5sAxPiq56tXOnNy6xYZfQymFYxmwe4QvjmbTGRSdh0iOTxhPA0Ld
         E56nXREmmT7aMn0blSuYuBCiHfXaYbnBgNcp4eOvmjpI6w79K5nni9hBsUMK8jrfA2vo
         TTFfMRzZMr7poyEqYUZDRg0zuK9G/05yORudDYzhHzVCQ4c174jLyEs3jupMzN+RYs5w
         mp6w==
X-Gm-Message-State: AFeK/H3krhK7BhtbBW3AIb0YdfvYhzJ5CX05Lj1ys/B2gxWXo19+4LiJMQqksK4U4SpFMg==
X-Received: by 10.28.215.74 with SMTP id o71mr3334510wmg.23.1489862136985;
        Sat, 18 Mar 2017 11:35:36 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id o52sm14394400wrb.51.2017.03.18.11.35.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 11:35:36 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2 4/4] staging: rtl8712: Invert if statement to reduce indentation level
Date: Sat, 18 Mar 2017 20:35:28 +0200
Message-Id: <222d6a90a5b7077ed7dcc10d4ffcada0f9454bc2.1489861352.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489861352.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com> <cover.1489861352.git.narcisaanamaria12@gmail.com>

Invert if statement to be able to return immediately in case of error,
and to avoid additional else branch, and then continue with the rest
of the function without excessive indentation.

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


