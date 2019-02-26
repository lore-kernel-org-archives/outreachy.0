X-GM-THRID: 6661088091510407168
X-Received: by 2002:ac8:36a6:: with SMTP id a35mr12203261qtc.43.1551141192258;
        Mon, 25 Feb 2019 16:33:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aa9d:: with SMTP id f29ls6901510qvb.4.gmail; Mon, 25 Feb
 2019 16:33:11 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ib94vDC2+O9riJwT2rQYpBn4Kt9oATp90lspajyfY5lRst9mPyE6/izXjrANlq/EoLZrwry
X-Received: by 2002:a0c:894a:: with SMTP id 10mr12541190qvq.18.1551141191829;
        Mon, 25 Feb 2019 16:33:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551141191; cv=none;
        d=google.com; s=arc-20160816;
        b=bHje8sZvFjQACtmFbOH1d00tEmRWe7nSBhW7GwzuSAJCveoZUEsYXbKfDitcCuiVU2
         VLUX3IFWmnABC/ZtGaXhIG8c69+NkyN/1NYKdUlu46UY6JRR+bZGhCP9mUl9kDxrkwOe
         5sSaZovWoh72wSO+n9XzP0m9l4+/FlmiCxdElnWqG1fCwUC58L42vBFmui43mGB9k92W
         gYSV1CKK8bEtr3ollsZQW/gpuV4ME05bm+ewHmYLGJQNTygzU/1UssqLqb1ulZCsEeo8
         lmC+tKfErasdaCNDrOE2VFsyKSArJjxwIKz1/Cq6wP/dsohEVp+IJ4H5W6Z6X9E9fAa5
         WYBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=KapiD/w+RPczwkFzbMNx0MuSSd94O8yZvfyqGfzW588=;
        b=zQipuHeXAcdQOOi72GjWloV+FjXX0F8LHZ3Z8Y6gnBNQJKHKHmUiiMyo/w0y8VhY79
         ImCEHj+nwFZbhHdQ94WfsXiPGu4KCvZWcQFM6GYIiLBtFKZlMU55QvLNVhNZOptwaTB/
         7i5U7fCQ7gxAyjqSdgzOUosYXStEDVz9B2qbrf7OBcwUNA3FLqYuKAuSssLXont+Glh0
         WCi7TG1Py3bJrvLYx8a7GRTKcL9SAAZZ7V48CIQvmMa40bVcpfpUbqUGMNipBG+qCEM5
         Gk25I1rRtrHVg7+aASL2pXu8XbAfhnGpNI6W2yp1NDGC6qHTIhIf+VB/k5WTd2MUJXi5
         N66w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MJsHFN8S;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id m1si777908qtc.2.2019.02.25.16.33.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:33:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MJsHFN8S;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id 196so5278002pgf.13
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 16:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KapiD/w+RPczwkFzbMNx0MuSSd94O8yZvfyqGfzW588=;
        b=MJsHFN8Str1Tu6qxCuazy/mlHa6pMBfJKUoXq0lj/gRejDT3xxvmq5QBYYuCQjcslM
         84JEpqzkG8uFrI0X05W6qfQRxbrK8/coXCu5KRKj1Qy+dH4L430Lll9QWFWYSeEEfZX1
         SvVNjZIlLrwsrasnds8nn3+y03BsBfUmCJ1TW3qMuxwJpdXbT/gwGKmoRfWBABKc3rR8
         trbQsc/efXiNTAvjoTDZ7uvCJt2s96NCzlGp5hwPWSyMvomqt8NEC4YB/5qNa5J0GFdn
         Cz0Njp1hLmil111oXlm3YSX+l2jLzT1Cx3KI3rq8WoyVKx6IbXKZ/eJ5Q6YpGdejRnOI
         Ex4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KapiD/w+RPczwkFzbMNx0MuSSd94O8yZvfyqGfzW588=;
        b=YPgsnYQi5Atof5pre1/Ib9F+VhKA9uE2X0G2RI//WgRPlbR3zT+UkXUucuYzxBhYaq
         tHTz0jNw8xEgxEEVqfY8r01mEEFfucKtltaDAMQrfMPAVG2U/Tvdm/VEg20YeTc13xM6
         BHu+mBNfSL0WOf+Z1axcI7dJxDjs0KpAwPxiHWw6ypEeZdwNvSeUTgJRXrNIDMAZJwdM
         FXGlXOrNDByHoHe3M7qj7Mlk2WaDBhP+obNWrDjdAElS3u2viyILsYJ3Hj2uR6JCU8N9
         n5DhbBQIjKtOb3PS68xXLMDU/BT0TVPQUcczHpS/hgWMlsNjPcOHc/fDm/96lyO3Of10
         odkQ==
X-Gm-Message-State: AHQUAuaJFn3dEECTkr/IA2prtXq3X65CePaE4dTRiD+XJvkHMRBtzOhs
	7hHzei25NnP3USLF2OZH+8+pEKu4jj0=
X-Received: by 2002:a63:814a:: with SMTP id t71mr21927416pgd.257.1551141191289;
        Mon, 25 Feb 2019 16:33:11 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id i14sm14415486pgt.82.2019.02.25.16.33.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:33:10 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder clear <elder@kernel.org>
Subject: [PATCH v4 3/4] Staging: greybus: Use a blank line after declarations
Date: Tue, 26 Feb 2019 06:02:46 +0530
Message-Id: <20190226003247.15574-4-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190226003247.15574-1-bhanusreemahesh@gmail.com>
References: <20190226003247.15574-1-bhanusreemahesh@gmail.com>

Clean checkpatch.pl issue:
CHECK: Please use a blank line after function/struct/union/enum declarations
Insert blank line after declarations in bundle.h and control.h files.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/greybus/bundle.h  | 1 +
 drivers/staging/greybus/control.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/staging/greybus/bundle.h b/drivers/staging/greybus/bundle.h
index 8734d2055657..4aaf7a0880fd 100644
--- a/drivers/staging/greybus/bundle.h
+++ b/drivers/staging/greybus/bundle.h
@@ -31,6 +31,7 @@ struct gb_bundle {
 
 	struct list_head	links;	/* interface->bundles */
 };
+
 #define to_gb_bundle(d) container_of(d, struct gb_bundle, dev)
 
 /* Greybus "private" definitions" */
diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 3a29ec05f631..5a45d55349a1 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -24,6 +24,7 @@ struct gb_control {
 	char *vendor_string;
 	char *product_string;
 };
+
 #define to_gb_control(d) container_of(d, struct gb_control, dev)
 
 struct gb_control *gb_control_create(struct gb_interface *intf);
-- 
2.17.1


