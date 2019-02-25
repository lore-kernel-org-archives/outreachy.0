X-GM-THRID: 6661088091510407168
X-Received: by 2002:ab0:25c2:: with SMTP id y2mr8645080uan.22.1551108976860;
        Mon, 25 Feb 2019 07:36:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls3188979vsc.3.gmail; Mon, 25 Feb
 2019 07:36:16 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaxYGKEuafiLZbYSRKjee9AytOtetQKCr2hCBSMEx5inmoAtE3rWQdylxllxr0a6Yaj/IZp
X-Received: by 2002:a67:ad14:: with SMTP id t20mr8967394vsl.21.1551108976383;
        Mon, 25 Feb 2019 07:36:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551108976; cv=none;
        d=google.com; s=arc-20160816;
        b=rI91uLa2Qz6NoDq2ROg9uJhWgWROxBr58341pgERsNeCu87lD24oKf8ZPikFYoVM7j
         5eH5xy+GlGLEi4wI6+VF5imOzGKQO/46x2q05s56Dr+so+9j0su4nMYpbzrLxPkzP6lU
         JBFcYH0biM/jcDquEw2HwxHlymufGzFmzN6pxD+q4SsTGldgCsPPgr7bqnDoj0scwXKC
         UGw5SL9DcJk+DXOOTd/2LHQley/QQgNoeRP9RHR7d8YnLZmrZ3XeJ70uMttHXC2/Lo4a
         2JV7Z9/QyyK3MVg78/qNB7gDYZWRs0ww6lpQlJzHKT+8oKFJVBwUbCEk7lyPNYgAC6Jc
         68CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=6suAVZkVE7dqew+0tFdefovdH6dDgJo79Rl04LxPzQc=;
        b=wI/COuIhbx+RyDaOS/3pv54e7XLJLRtWk/GN2duxhJmSvqfZSmuKfOgJmj25ejkK1n
         9D1wgmF4giPsd8BhrwT5Dy9scajG1wC6PfIX8S3vVGNDRTm4Stdnew35wQncvf03Eua9
         DVFWo3h7eUtsFgFUb/Drqdww+S9MVN9h2tM5+wKtGsr5xirZiBpaGJuCtV3fybagIfge
         y4I4bO/f7XvAs04ZoTSspmvSAuQKFl60vgPxfZWJthl7nKO5a6gVCRUhbsfAzh7pIpdo
         1Z5Y/jVXJcyANNi+PdkgqJ4TV9XxpTD2g9eLC7pSix3Q3F2l5nBFYn3CY43P1LpPPHqr
         yCiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rk3vbgzt;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z24si582969uar.0.2019.02.25.07.36.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:36:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rk3vbgzt;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id n125so4673641pfn.5
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 07:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6suAVZkVE7dqew+0tFdefovdH6dDgJo79Rl04LxPzQc=;
        b=Rk3vbgztv0iaCGTetMbJ8Ktl1jrdj6dVkgdcw9iV8rZOMpoJjPfrjq8nv8jEIQBJLL
         KdmpWKj7ABNuEjF02hhHDZKjucs2nQ9CTvlZu1Ew8isrsaPsCeG+rudJH4IpuMbfkBbJ
         OmFReh939JTVT2OOwBLAVa0UFMqI8OQVQ0W/PyHoW9Aa6xzHXJFfzwqJwkODvQ7xPi2n
         y0L8XYpi54Erj7OiW6lcJY/fzGtWtd0+ymx3nn+e/iTot4bX7ZnmR7oGGE8JbA4QXBTi
         4z0sa+7HDkgjquCEkJxyS5AcfBxB+f9Z9ZDg2sjLQD+7UTc4BoDdN6HiDWhwnv4d7cU2
         1FbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6suAVZkVE7dqew+0tFdefovdH6dDgJo79Rl04LxPzQc=;
        b=JuhrFUHGgohctDOJbI9OCcjB9FNKc5KFM3Qisaf7Mw3PISzKtmYif4sTN9GmexDRvl
         suishyvXtY/jNf0Sz/bbhJ/djVybnArAx0vw1jK2B43HpAaZiCGwVYyqgAqAmykmPLU5
         dn3stcK+IXjBG5Q8qVBaZ0nO41HlOW3JyVhrObeVfnjv+6P0Hf/yE6oN9jpsVFwiXVIM
         axwfi/ClaxwMnZroa61xQqkPV5eOZqnvKYMFBlXcno0VXdsdZQH1x0NCgyUkCQXvenxU
         qGU36YujPcxBFkkPg7Xlmcm6oCJ5DmFc59VDcCWFCSp2mO5OLrashMwZENkimVcgxI9U
         VnzQ==
X-Gm-Message-State: AHQUAuboKmfDunV2Klc8xg+TTrHaf+vOIm0R1gPQONiJgZ8CScVjZScN
	GewIjHd7udnb7fVYhiXunA51tsZPl5Y=
X-Received: by 2002:a63:f556:: with SMTP id e22mr19671472pgk.321.1551108975359;
        Mon, 25 Feb 2019 07:36:15 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f18sm14048855pgf.26.2019.02.25.07.36.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:36:14 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder clear <elder@kernel.org>
Subject: [PATCH v3 4/4] Staging: greybus: Do not use multiple blank lines
Date: Mon, 25 Feb 2019 21:05:46 +0530
Message-Id: <20190225153546.10484-5-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225153546.10484-1-bhanusreemahesh@gmail.com>
References: <20190225153546.10484-1-bhanusreemahesh@gmail.com>

Remove unnecessary blank line
issue found with checkpatch.pl:
CHECK: Please don't use multiple blank lines

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/greybus/control.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/control.c b/drivers/staging/greybus/control.c
index ffa41d31896d..a9e8b6036cac 100644
--- a/drivers/staging/greybus/control.c
+++ b/drivers/staging/greybus/control.c
@@ -15,7 +15,6 @@
 #define GB_CONTROL_VERSION_MAJOR	0
 #define GB_CONTROL_VERSION_MINOR	1
 
-
 static int gb_control_get_version(struct gb_control *control)
 {
 	struct gb_interface *intf = control->connection->intf;
-- 
2.17.1


