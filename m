X-GM-THRID: 6807884729429262336
X-Received: by 2002:a1c:b7d7:: with SMTP id h206mr3748730wmf.143.1585146446757;
        Wed, 25 Mar 2020 07:27:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls1204548wme.3.gmail; Wed, 25
 Mar 2020 07:27:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvjhaXZlxzNeLcLKyd7Keaw8XFkqnOkiAJqQQ0iWVlXrTng9U+yLLvS7VkHvvlaOPQvbWqQ
X-Received: by 2002:a05:600c:4401:: with SMTP id u1mr3700425wmn.103.1585146445431;
        Wed, 25 Mar 2020 07:27:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585146445; cv=none;
        d=google.com; s=arc-20160816;
        b=kI4qsFVNb9xf+Vik6LGkngvh2ZcdQWeX75lHBFP23R/yv6ktSH+7RtfSpHhgvNE84q
         JShA2kQ0KjrOh5xzcqw77MIIRnQbK6nnGlUZcew3d4KLyIfL+Tre2zDqj0lrF+dS7aCe
         G3ffWNLVz+8r6/BsVKdHa0V13XtZyjcrZvTBTCeP99spH6HcvtldYNkI09d1eWad6pTH
         t19r77rdeftEJkZ7zxn7zUJeuk+WQKiMhLaaji7MljajN5bsKhUheAbEPutun73OKnMu
         sCLJg4DnHTTvim6GI/OLd7qw2uVbI0843D0NCwGWAFkLI9iBHxsyde4aOr5XjdBgFk77
         lZWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Re9q3ARI7lYTDdCJL/FKLjzfHr9ks+2KLUJfuV4Jc/U=;
        b=EROFaKPbXCV+wg1++9uPogIw6GFGPHX1T1u/ftLQGwtRYaokzgXe+wjEiQ4RwftURi
         dBBUhpkG76mV4K09siRDzWcoz1IoDyU7fFUfqaU1hcxJjGaPyuaSthfF6oRVHhAfgbv9
         ROrJHPCDN1UQpZbCU2t0Lf1GORc1mpryZaGP3OZ9UotZzxEHkOMIaCKiWrJjR38y04dv
         9ba6FMYC7vBIHnUdCPqfhGZ7412pBwdRxBybRMqHLQ00a4fQ8pWUdDucmqWh9KmTMe3j
         zPOyN6biWOthlfTUq0AM3hS/wc7imcRMB2v9mfr+yV9Av9SxQmOIuGLPPRXTdRgiEk3Z
         84aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kg2gty7c;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id v12si1258502wrp.5.2020.03.25.07.27.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:27:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kg2gty7c;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id c187so2710445wme.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Re9q3ARI7lYTDdCJL/FKLjzfHr9ks+2KLUJfuV4Jc/U=;
        b=kg2gty7c5wk5+vSjppHFoNo8ESJvtIeTWOq5JoSRjheba+uFETIh/iS4DjTCrr6Ikt
         lJ7qhw0HYO3H1Veuf+ul43Zfb7BlMb5Cw32ari1ErE+wTTS2Snu64/fa/NRV2nMtSQi/
         J5mMfh+nt1shyeqCc+Oif6WwLjn+DYgiSdrC4YUGR9clDa3i93QiXNIpg7p1omiN7QUK
         +qChfOdMbtyX60WzB6uhaPxEnq/AFw5JfNNo7KUbWWWhzGd6bB9LDnYA7XiWSMkvR3Ck
         m1I06PlQY5rSVt4QZO4GjBfhklMx3+4lWRY/l3U7yza3ytwuwXTXuIsPmZL7OlKiNlGV
         e0lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Re9q3ARI7lYTDdCJL/FKLjzfHr9ks+2KLUJfuV4Jc/U=;
        b=r/vAMSi9Y1gGKXNO5E27oTc6KKobSiAGslc0jv0iwfryCgLzpQ7LC4EWIcUnqXqmw8
         7bujDK+ybwgDGGzZep/n8slCg9HzC5/6/dxjEfau7LjGe+3bEpPHpfMjcmPLweVNpp/s
         xeFv9WNyqD/l3qdVfqsque7ETYiW7q/cZG+JYFfe7ZgvJOIRoliSzUkKc4VyjGTNywmN
         sDv/CAzNsU20N4h5UeGRCsT17Dok5wUoIcEOSyI5yhWn6YiemRzKoojM4vhMBoU0pybL
         Z8y6P7B1V/zlHNZHQTWd1n0H93cvbLagYQDRfqfS+s9X9wX0RWfwR9mFf76uCGuWBuFf
         sKWA==
X-Gm-Message-State: ANhLgQ0POFzrzr+fx+Tz4HdFZV4CuqUUsj5+8lTFFw6UbCGDECtI45B9
	id0yNsM00ftGzel0th7Os7E=
X-Received: by 2002:a7b:c145:: with SMTP id z5mr3485875wmi.147.1585146445119;
        Wed, 25 Mar 2020 07:27:25 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.86.140])
        by smtp.gmail.com with ESMTPSA id b7sm13098778wrn.67.2020.03.25.07.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 07:27:24 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v2 2/7] Staging: kpc2000: kpc_dma: Use sizeof(*var) in kzalloc().
Date: Wed, 25 Mar 2020 10:26:37 -0400
Message-Id: <bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585143581.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585143581.git.jane.pnx9@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

kzalloc(sizeof(*var), ...) was the format been used
across the driver, which is the preferred format,
but missed two instances, correct them to match the
coding standards.

Checkpatch.pl CHECK: Prefer kzalloc(sizeof(*var)...)
over kzalloc(sizeof(struct var)...)

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v2:
- Update the log message to be more descriptive.

 drivers/staging/kpc2000/kpc_dma/fileops.c        | 2 +-
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 5eb6c5f24feb..21ebab7dbc7b 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -253,7 +253,7 @@ int  kpc_dma_open(struct inode *inode, struct file *filp)
 		return -EBUSY; /* already open */
 	}

-	priv = kzalloc(sizeof(struct dev_private_data), GFP_KERNEL);
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index ec79a8500caf..25ea16a1981e 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -98,7 +98,7 @@ int  kpc_dma_probe(struct platform_device *pldev)
 	int rv = 0;
 	dev_t dev;

-	struct kpc_dma_device *ldev = kzalloc(sizeof(struct kpc_dma_device), GFP_KERNEL);
+	struct kpc_dma_device *ldev = kzalloc(sizeof(*ldev), GFP_KERNEL);

 	if (!ldev) {
 		dev_err(&pldev->dev, "%s: unable to kzalloc space for kpc_dma_device\n", __func__);
---
2.20.1

