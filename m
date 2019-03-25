X-GM-THRID: 6671347269722177536
X-Received: by 2002:aca:3a87:: with SMTP id h129mr13259808oia.86.1553532822344;
        Mon, 25 Mar 2019 09:53:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7399:: with SMTP id j25ls3506294otk.0.gmail; Mon, 25 Mar
 2019 09:53:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQA1am81FUXbt6X1UQLIeCPk7YiKpNk6hWTYGTJGj2bIXLTkx3uQfNyaR+js8RCcsKAdKm
X-Received: by 2002:a05:6830:204e:: with SMTP id f14mr7567807otp.219.1553532821270;
        Mon, 25 Mar 2019 09:53:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553532821; cv=none;
        d=google.com; s=arc-20160816;
        b=mR+x9KLZI94QVG8B+jFyEJp3Z3ANZkYxyl2Rs0m7nd5eTYuKDkwcUFTqd1yAi2t+W2
         /a9t2Jnl2sVJGfnZvGoxdLEpvCHz/4aPo6huivEL1/cBl+pMwif9p0KHhr0d/zS/Kd4m
         D0IklTv3jRcIsPSF0rmWmG08VQTqsSaivZkOAolIBi3AQSj8mUdJeCjBiLbHDHNQBn9i
         rx+Sqe0fkXHlAKKyob5L51YB3lVXVz61CD64jJhYZlh4xpdLsNvIXgfeahtvmwBNJzpq
         mbuPNTLL6V+8XG6oOhRta68IFWKGXZHHaGgZF0hKH7bRgxdPJ9hiADsaEbxFfhJghfW4
         LLPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wAkfdYP6bTAXnTypAUccTDBQ+uq2zyppvAmUu+dkBWs=;
        b=f5wPrmqcYctn7wRSBWlk9SSyRtAFfSoy0qyPQLRolx3B9oQs2vekGBxArhurj2/znY
         eVBQBy5buOFxjpbs7xvTgwtfzdoUyi4ST0eJdVhv9ab0RAK8IWEEgCtSqD/nQdcK8izl
         uFFeUuAngR5l/S+IMNcLYX/9tNgtzReZNGQTLAAikGBIb9hsJrI1x/xsfkcqcuBjm+y/
         byEmQN6YtRWDHMF9NjlYQdoCR6yoJzaqqHqg2fCOcvfILk+VMDl1STWeEoHHhPRnX/tA
         BcflbISx+8Pn892W39zoqkypEVnncRJFRnZBU0oPdyTewjv+7lUxoor5/HohH1yqUOfp
         hEcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tjd7ZoEy;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id l23si962579otn.4.2019.03.25.09.53.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 09:53:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tjd7ZoEy;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id v7so7523211oie.8
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 09:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wAkfdYP6bTAXnTypAUccTDBQ+uq2zyppvAmUu+dkBWs=;
        b=Tjd7ZoEycFIXWBN1ljJQnFplFZvwW3SxZRSUWDo6a6PNU2tbCPd0gf/PfOtSItVEYN
         YCZKMYMI9xvseCuw5dB79fvZE2X3fXgKBtzbofyT13pgbsY6yvXoGiUHCQcTn+HPIfUr
         kArIK46k/vXWBgEFgOEZXyHg26P3JdP0x5nEkGZd7vfsm2i/1C0WvBBPc3kaPUy9bOcB
         aLOrKKQnc3Dii3uN9Qqi8oMghlIdkhz41WrAn8MOV9EVbnIXVux/fTqjFdjCofLJ0kgk
         iMXDgIlN6f59NLjoWJpwEItO0slGmbpYIc3Da6k8VWPdRMDZ8P/94gJWWjBgmygai0tu
         jIGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wAkfdYP6bTAXnTypAUccTDBQ+uq2zyppvAmUu+dkBWs=;
        b=rwSwg6H8FM7OdU/0/CXcJ2ris+wUGu8Iwp2PXxFLXZmpS/T3uTBEOEd6kC9/T68Ig7
         FzQywZqVynoZ1VdlW+FIHZq/Nx5JO1RvOkgFr+sUYavAvvh4bEwY6m5ZENx7xtDH3/hl
         a0pixQ+IGuT4HDryD0h7IHlJ5Jeyt018s8jiLJxopIqit7QU1yGuQUIl7G54xfkWBm46
         KL3GACC/SFHS58B7Ze5wdwzvQ39tgvpzm0RhslZKaxUl822VcDrHQR5jGvxBIKtnWT+T
         UWOX0YeMHsGztmxhKtt4By5TTxzQwHRZitW/oSV8GmiEeGVeXaC6+SPZEAphlZmZNj+D
         gglQ==
X-Gm-Message-State: APjAAAVJVGySBfQ29+MLTsqsiUe8u6i0SHKN4xFH69DywRQ0tOHSOnDN
	P+sG+Uw4iQghHJWBNTPphQB6lLSom6Y=
X-Received: by 2002:aca:d9c1:: with SMTP id q184mr12459658oig.89.1553532820908;
        Mon, 25 Mar 2019 09:53:40 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:832:78e3:a24f:c6c7])
        by smtp.gmail.com with ESMTPSA id c22sm6119174oiy.14.2019.03.25.09.53.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Mar 2019 09:53:40 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3] Staging: media: davinci_vpfe: Fix preferred form of passing a size
Date: Mon, 25 Mar 2019 11:53:37 -0500
Message-Id: <20190325165337.20788-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix preferred form of passing a size of a struct to improve readability
and eradicate an opportunity for a bug when the pointer variable type is
changed but the corresponding sizeof that is passed to a memory
allocator is not.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v3:
- Include change log and correct spelling mistake of preferred in commit
log

Changes in v2:
- Include second parameters of kmallocs in same line
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 3d910b85905c..30e2edc0cec5 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1264,8 +1264,7 @@ static int ipipe_s_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
 		module_if = &ipipe_modules[i];
 		from = *(void **)((void *)cfg + module_if->config_offset);
 
-		params = kmalloc(sizeof(struct ipipe_module_params),
-				 GFP_KERNEL);
+		params = kmalloc(sizeof(*params), GFP_KERNEL);
 		to = (void *)params + module_if->param_offset;
 		size = module_if->param_size;
 
@@ -1306,8 +1305,7 @@ static int ipipe_g_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
 		module_if = &ipipe_modules[i];
 		to = *(void **)((void *)cfg + module_if->config_offset);
 
-		params = kmalloc(sizeof(struct ipipe_module_params),
-				 GFP_KERNEL);
+		params = kmalloc(sizeof(*params), GFP_KERNEL);
 		from = (void *)params + module_if->param_offset;
 		size = module_if->param_size;
 
-- 
2.17.1


