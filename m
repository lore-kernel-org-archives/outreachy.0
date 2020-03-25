X-GM-THRID: 6807884729429262336
X-Received: by 2002:adf:a457:: with SMTP id e23mr3763969wra.21.1585146456830;
        Wed, 25 Mar 2020 07:27:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls861467wrp.6.gmail; Wed, 25 Mar
 2020 07:27:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsj/9aKNwSJkVki67xvbbqWlaVs4K7Ri1YdHcO80BlHOzTZ2nGWrKMRGD5GWnjUY1uKT568
X-Received: by 2002:a5d:6742:: with SMTP id l2mr3968466wrw.124.1585146455497;
        Wed, 25 Mar 2020 07:27:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585146455; cv=none;
        d=google.com; s=arc-20160816;
        b=ZQ57YzbBEUxPKQPOx50ARW64OrKjDlgFEc5VlHume7SEPiglSvaIGVVLrRBYv6BCrm
         2TEtLbrBzHhDcZ4x3xzMhEcMYbk+KLH48dbmyC2qhvzceokKYPtwMJfHEC1WIugqnTxl
         afAOIsTOMJbqz+RI6G5YiSrvPkfqkKIajHNAstNbHkNrsbo0nQqURQMJPna3VlbCD8L7
         qDRs1nEmYgJvx7/ZRg/82w3cMkJi8hIvw6dAdzq1QbD7/9m+qXHtTYl03fJ0xpqIqz/S
         pIp+OMqzxk9j2Sr4iSOuhiDDzv5Sbm9LnhpXoh4mFtBcYzwOF5lpHDn4BftJoXNNNvNM
         j1Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8BjIhLTEcs7bRidPzNZNEay4Dutf/DPYay2NkMoZTE4=;
        b=V9I6E+3vL4uKYxBT4X4LTAegEf02rPF4zghROEo9Fr2Z9oKTEoq0l/FEJNdXKjtBb7
         xm01yONhL780vmQjfc+OwH9g9obJpYtpz37lKo683kNSjDNlil/iPoPQ11Wkjp6WrnO2
         m6k50jkc4rzBU/oFhxZgDFlh4x710Q9ixX5prUq++KGvsAtERqU1CspdpNwl6u9f4CLo
         dfP2OC3zwjpBHNeCrpiKOHir1NgoV2UAOAxvmo5f8Nw3Ee+dYjeQ70aTdYhjRYZS0X5O
         /cJ9tdozQjyomsbniTjlnrUQS5s6AnOMkVXRRAX5VUcWVitEx4e0BZ/Nx1IRUie/N9TU
         vg7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bdhdivKL;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id l2si412887wmg.3.2020.03.25.07.27.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:27:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bdhdivKL;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id c81so2684678wmd.4
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8BjIhLTEcs7bRidPzNZNEay4Dutf/DPYay2NkMoZTE4=;
        b=bdhdivKLRmr+i5WVLN4pCxMHEzrCHy3NV8G+/KIsqzFouOFwSuZ3yioV8CmDdqcSPN
         9fB8bGwIOqu6kAe4yIYsY5xkJcNGwCW/nl+m/SuKxS/tVVtBXyLa+NdXmKRrmc6Y3EV1
         xBaKCG4OLJDQfvvlR2wobUALGZ5QaEzddOhEbw99qfReAqFMDo8dfW3NyuTFMJ6d2ORH
         quSmPaVU7SU06V0pzuPhZopVKTh9BBt/EOmbsg2hM2JLq3KToiCV+2z/gCiJaPxNHAk3
         qniK4UO4Iw5uY5A+PFcGeJGtnjXDKxGm4PlsqGPCwUTvsM2JKV+oYR1zTR+ZNczC2/B+
         84gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8BjIhLTEcs7bRidPzNZNEay4Dutf/DPYay2NkMoZTE4=;
        b=Tc6lGhnN8w1nJi/jpnR0TE79xTWNSGnJEHmjRNeZbMF6VDkXoSo3Rio/xEpeITQO28
         lh2OUdHUVkX7TuC1jlJVABt0GMPbrRx3r9YxpmQI7e+6UCJDvkvZRCmkCqwZ3WfKZjmG
         2ETSGL5SOATidnk2lT4Ihk0QzBOJGKCNExEJMXrjaoDz9MpTq00Z5ilCSsgojeLZpHVc
         K7dcc1MBY3D/NdMBmbDYWO+aH8amcXzWGZXekZwWTi574XwLjolIzPAX7KIO+I+mMwIU
         q4NBlJ+pczw0Ikr5N6rBrwA7u8WD2kc6Rj5gB7VgioVNGhSz7Xij7JxPLEx+lVwIpC/7
         dY8A==
X-Gm-Message-State: ANhLgQ0s235cW/+klTdqNNNFMrUfQqw3qgKdQ9vEQSoTd5/s8X+9Zjk5
	pTk/o975ow2dyB9AihU31/o=
X-Received: by 2002:a1c:1b0e:: with SMTP id b14mr3699545wmb.8.1585146455190;
        Wed, 25 Mar 2020 07:27:35 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.86.140])
        by smtp.gmail.com with ESMTPSA id b7sm13098778wrn.67.2020.03.25.07.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 07:27:34 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v2 6/7] Staging: kpc2000: kpc_dma: Use kcalloc over kzalloc.
Date: Wed, 25 Mar 2020 10:26:41 -0400
Message-Id: <4b8339d1e81e497c3c2f0dad57a9587338ec82b1.1585143581.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585143581.git.jane.pnx9@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace kzalloc(sizeof(...) * n, ...) with
kcalloc(n, sizeof(...), ...) since kcalloc is the
preferred API in case of allocating with multiply.

Checkpatch.pl: WARNING:
Prefer kcalloc over kzalloc with multiply.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v2:
- This patch is newly added in this revision.

 drivers/staging/kpc2000/kpc_dma/fileops.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index d80d894f3aac..8c7859ed1237 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -66,7 +66,8 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	acd->page_count = count_pages(iov_base, iov_len);

 	// Allocate an array of page pointers
-	acd->user_pages = kzalloc(sizeof(struct page *) * acd->page_count, GFP_KERNEL);
+	acd->user_pages = kcalloc(acd->page_count, sizeof(struct page *),
+				  GFP_KERNEL);
 	if (!acd->user_pages) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for for the page pointers\n");
 		rv = -ENOMEM;
---
2.20.1

