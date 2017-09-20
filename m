X-GM-THRID: 6467951789613252608
X-Received: by 10.223.164.206 with SMTP id h14mr451138wrb.2.1505937380463;
        Wed, 20 Sep 2017 12:56:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.93.193 with SMTP id v62ls361006lje.7.gmail; Wed, 20 Sep
 2017 12:56:19 -0700 (PDT)
X-Received: by 10.46.101.8 with SMTP id z8mr640920ljb.0.1505937379721;
        Wed, 20 Sep 2017 12:56:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505937379; cv=none;
        d=google.com; s=arc-20160816;
        b=L8OuLSIpNvQCnqmDD6mfP22MJ3XeQO0JU25CfKWzvSwUzI+TmI/wNmIkY1l4JdUIK3
         h8e3wqgk47O7b4bJ/yIW+zqdVRAvOmj9Zi9HptAS76MbmwdtIs9J4rf07VlZYTMPje0H
         VccsnhaxghYLhdoi35VVjxKvKA8zEwaDPbg30VK8FHXF4fd8WUlIcqoC5kNoKrYwcZqW
         N7z2EO9grYryfK9HedTh3ZYo3reApJ9fugPGxVv5NPMvM6AYZkCaNyoQLt9zP83baYXi
         BZUtBD4nPAW398UsN4dR3sHAGmSaYRuFqFKHcOd9vTJimuCSr3rFi2ub+QRgpuJpQ5C/
         1SUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=Ad9l+lRUamUvFGKgON7VBW9ObaVtwPFn08VM5SLkb5c=;
        b=OQsZVqwwWMfHs+mDaDei51ZSh70bWxt8fjo3HPkLtoaCdPUfNmuUpL4bULTTC2CHSQ
         4RDekS+Pch2Zo678S0CA9kLymAmhzhyObieNF1QIz5e/TfGhaYL2YGhto1sxlGCwSyjL
         tKFJN+MMGHvJPJSRzz+p7/ZMXc4hQP7Q798mVmW8LYtlXhkPcjbsO3tqaW29HucfASdb
         HJttWidoSSIzbaTGGrs33vi6nFTjcwNUYVLncJkjR9ewqgFtVq88ryM/fORUq7whJPNq
         ZH/YRwMNorXQrA3J7tkvh8jZAwE6fUs2gcH1CNKBF4/Ti+FgekHUOd0ZFMwgaQt7dyKq
         DJrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pWcQdEfs;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id j4si860wmi.2.2017.09.20.12.56.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 12:56:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pWcQdEfs;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id p37so2044317wrb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 12:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Ad9l+lRUamUvFGKgON7VBW9ObaVtwPFn08VM5SLkb5c=;
        b=pWcQdEfsEfYhLtSPw96bS53eUbemBp13mKvvy8b/JuX0daaBTc4eH8Ml9dlSv7BIqy
         ii95kXBBkKKVY1+1D7tHxsKzGz0M9+Sk7Zyc/QwYsTnrrEqTlp0GAhJCk9K1mtWBvToI
         dWfWfob3OivkhZQjAGB5ZnJJ8SmGQrWDkORGg50fjTu+VEarBe/8qnMv2fb8tCls733c
         C74ITX11akcenoEFfSYCcB682ZyNPThumLNL3k4hSOld4La7Dk7URw61eKsvqHnz1ADZ
         DduW1iex+8rV/K8lWhWmyFtsrb708BRkRgWgO/cIBDLqQAWawitSAtoL9bRZVYZ7qm5j
         CcPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Ad9l+lRUamUvFGKgON7VBW9ObaVtwPFn08VM5SLkb5c=;
        b=TXiLX97j9rPdPNBTgyhgPFXLQ7R/L6AcePnknw2oRiMV+Ec3h0soVKOdzKVYgs84qq
         F7tSI/X3yPwAiXpkViYh6PQ3h8Fz9sP5LGoojTkY/s3rRYtpOSuBuFAKup/GrJ8ibQaC
         kxoKQ80R+1S066lGdS/b4ab8zJmFcjU0BKD22Bth6fh+RHxGHebozLhFPZt/w+qOYSjk
         sbtK3EAAS42yWO+aOzqw8taPp0Z7+Pk3ZnGi4zASCwFRl4egKDSBQ5BdumsQyHmh3rcI
         O+J63Y2grCymMw1oFI+b+xb2I7KtAbBikB5Ss8NTanDjZxL/k4p9hgTp3GL4Prw9I1ig
         J0YQ==
X-Gm-Message-State: AHPjjUhOKbJxGd1WrQpZDIQvopko6f6eQsVa0Ifw0Mq04TR4OCmM2Z6r
	GhskB3jHrlrvPys3Ri0Em0M=
X-Google-Smtp-Source: AOwi7QCpkG4VXUkXL8R8tJhXWMK9Osk+BGl3xMwLZj4Sohnzx/x7cs4lN3UYtC0Dc/7zTH3aiDT0nQ==
X-Received: by 10.223.166.196 with SMTP id t62mr2947217wrc.251.1505937379507;
        Wed, 20 Sep 2017 12:56:19 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.124.247.82])
        by smtp.gmail.com with ESMTPSA id y5sm10824wmg.6.2017.09.20.12.56.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Sep 2017 12:56:19 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Samuel Ortiz <samuel@sortiz.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Georgiana Chelu <georgiana.chelu93@example.com>
Subject: [PATCH 2/3] Staging: irda: net: Use NOT operator instead of comparison to NULL
Date: Wed, 20 Sep 2017 22:55:55 +0300
Message-Id: <085b50ca753834cf0a16faa8db1f71cd40922411.1505936736.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1505936736.git.georgiana.chelu93@gmail.com>
References: <cover.1505936736.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1505936736.git.georgiana.chelu93@gmail.com>
References: <cover.1505936736.git.georgiana.chelu93@gmail.com>

From: Georgiana Chelu <georgiana.chelu93@example.com>

Fix issues find by checkpatch.pl.
CHECK: Comparison to NULL could be written "!dongles"
CHECK: Comparison to NULL could be written "!tasks"

Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
---
 drivers/staging/irda/net/irda_device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/irda/net/irda_device.c b/drivers/staging/irda/net/irda_device.c
index 35014782f949..944eeaa12c93 100644
--- a/drivers/staging/irda/net/irda_device.c
+++ b/drivers/staging/irda/net/irda_device.c
@@ -62,14 +62,14 @@ static void irda_task_timer_expired(void *data);
 int __init irda_device_init( void)
 {
 	dongles = hashbin_new(HB_NOLOCK);
-	if (dongles == NULL) {
+	if (!dongles) {
 		net_warn_ratelimited("IrDA: Can't allocate dongles hashbin!\n");
 		return -ENOMEM;
 	}
 	spin_lock_init(&dongles->hb_spinlock);
 
 	tasks = hashbin_new(HB_LOCK);
-	if (tasks == NULL) {
+	if (!tasks) {
 		net_warn_ratelimited("IrDA: Can't allocate tasks hashbin!\n");
 		hashbin_delete(dongles, NULL);
 		return -ENOMEM;
-- 
2.11.0


