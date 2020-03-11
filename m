X-GM-THRID: 6802879895263248384
X-Received: by 2002:a05:6830:150:: with SMTP id j16mr1558229otp.301.1583918913910;
        Wed, 11 Mar 2020 02:28:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:69cb:: with SMTP id v11ls335879oto.5.gmail; Wed, 11 Mar
 2020 02:28:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvyJhJUFjf9xdBp1y3QKVK5NI0APjxLCvG59XsilqhbOPmeRJtjmg33UqQ8Tm6NmqMFpfjd
X-Received: by 2002:a05:6830:1042:: with SMTP id b2mr1628728otp.170.1583918912649;
        Wed, 11 Mar 2020 02:28:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583918912; cv=none;
        d=google.com; s=arc-20160816;
        b=vArniEXoVrJH/pI55uYE1ejCMfecHxD3eHUjJNXqHCDjNTfnQsldNrcqxVuIytQvzY
         n313WbudZ1o8pl5dIYlgCsNNmBLHEy1YNwiCcWlxljM3F0Pyc3AuiPC6oR+O4S60jEqt
         RBOObzD7KW+p0UPgp8IhotsRCNDAr3qJQP4kTqJy091iF43m145qhfoHOAUgvB6UQ9VX
         DrePiQRokNLMR8gwZq/Gfb4W5YfwVFu0tga93XBwqjnPwiWvxepXq6SuHWurBxByGQZ+
         HsMPuGQnj+0XtkbROcoK7UZUYNtLs8PrybB51K1fi9wnXDCbfZQLwsews78QQXkvSnGn
         UABg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=uICPHlYWEhqp/AyTLm5D6CUhnjOgsbEjLYKVbTA4mlw=;
        b=cyAoOfcsEXip/3+SMVpcKAoNNkcG0QBCCBF3mY0MLsWOoq1tlcAqMWg3Jj0A8X9ePS
         B6gRIKSxUgmyUCkzlYoS2bCHSjbdueGPMOoKkbaEBfeLS/osMMqbpbZvnV1V8WD451rl
         +q2/uCSnmviKu+/q33735Ko5+AuFd8K6KHbBhe1rZ40bcevdQs2uDR4G+1XZjs8fmEoQ
         P7BZf/zj4mdK+69Uln1jDeAtI8pCudXVeXtkNf1nGLtcoPyCO8QgcmmrNcTBBAg3n8Or
         BVN5A5sFtQZQK44MTRFzF3UO8ORw4liuIxGHxcQcOAnIp2DLMW70YZG5FpZvY76+cgNh
         NZOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mOiOyjIX;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id v19si101746oth.1.2020.03.11.02.28.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 02:28:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mOiOyjIX;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id a32so5723pga.4
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 02:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=uICPHlYWEhqp/AyTLm5D6CUhnjOgsbEjLYKVbTA4mlw=;
        b=mOiOyjIXz7SrwmCIhwrOnDAB8uPJS8jRD8OpL8mfAfxFbztyUPO27yccu93QJtIIT0
         Vq+f46oIlyxBjkHat6mLGhDfhsSLTEfQnduWndApRsP7x9T1rDgZh8KLzL0HJpiJK4Vh
         4owllCFANVPUQ8DZbnzuU+LjbXPColQUgqcy6HSI027Ojb/WsSOgghgkywfASO+8O1r+
         2ep/N/N6Nzso/YNTmmliMf2i7w7hFD8koue0DIhvF6iAP5FUx4bLPvXutXSkxUf2e9UQ
         6B4No1ivrQmYEFZ6lGMXHdKMkuZKtXgz1+pNZprMU/UohISE8Ee88jlBuKwxJ43B+6ej
         B6sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=uICPHlYWEhqp/AyTLm5D6CUhnjOgsbEjLYKVbTA4mlw=;
        b=RZ0Ef5hhq5o7nZJWQE81nARkut1OEirXEy/vr6WNnihKKEfxjKa8OVJXGHd4MOVfQv
         TApVCcPg3wbW790kI98DQWTOrvLBGUSNvbgfQZt1H9bcnYPspnC/QekQyRcp+orqWhwR
         ZXy+LwF+VRfjd5G9CWV28Kpht2NjYQOVhOyxCqCTHPApAsU+D8bBzZYgGXBFdvo6GpuP
         ZGojTV2y4QhIZbHMjLVgVQoN8NU38hpnNZdCNBKLll+LXxJSSCHSlzZgg4brAoy7m6Oc
         NJ0mAS8mn5iCXGPYHPPh0HQy7dqHsJOYukqs9331umU+3ecE6urgyLCd8I7+I57eKE3V
         sLQw==
X-Gm-Message-State: ANhLgQ0M2+ZF7Kfe8xS5NwSaPHJvOgzmhPlUMHLQnwRvKMLdfUr9s3r1
	UvPTvBpMw46CNuGPTONZc/+FhAIa
X-Received: by 2002:aa7:924d:: with SMTP id 13mr1990036pfp.126.1583918911864;
        Wed, 11 Mar 2020 02:28:31 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([49.35.84.144])
        by smtp.gmail.com with ESMTPSA id nl3sm5470486pjb.12.2020.03.11.02.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 02:28:31 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH 1/4] [Outreachy kernel] staging: qlge: qlge_main.c: remove an unneeded variable
Date: Wed, 11 Mar 2020 14:58:12 +0530
Message-Id: <6385240a2566b8087de6f2d02a93a2eb45381767.1583918265.git.payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
In-Reply-To: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>

Remove unneeded temporary local variable, cleanup suggested by coccinelle.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index c712e1af90de..057034319e4e 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3905,14 +3905,11 @@ static void ql_release_adapter_resources(struct ql_adapter *qdev)
 
 static int ql_get_adapter_resources(struct ql_adapter *qdev)
 {
-	int status = 0;
-
 	if (ql_alloc_mem_resources(qdev)) {
 		netif_err(qdev, ifup, qdev->ndev, "Unable to  allocate memory.\n");
 		return -ENOMEM;
 	}
-	status = ql_request_irq(qdev);
-	return status;
+	return ql_request_irq(qdev);
 }
 
 static int qlge_close(struct net_device *ndev)
-- 
2.17.1


