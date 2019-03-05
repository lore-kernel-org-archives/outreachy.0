X-GM-THRID: 6663618170330284032
X-Received: by 2002:ab0:b17:: with SMTP id b23mr3149637uak.10.1551825267460;
        Tue, 05 Mar 2019 14:34:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7e57:: with SMTP id z84ls72833vsc.2.gmail; Tue, 05 Mar
 2019 14:34:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqxxLwk3+nCWE3+QIqjG9fkLlltA9j/Sk5qRGMCeYkzcSqV+gf9uqLlXAcR1EWY0xsuu7WG2
X-Received: by 2002:a67:7cd5:: with SMTP id x204mr3027108vsc.36.1551825266967;
        Tue, 05 Mar 2019 14:34:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551825266; cv=none;
        d=google.com; s=arc-20160816;
        b=o7U2eB2RCAuZUMPmfjxVq9mAn/jQhSXcl+chomOoUaGjRAMk8hoLmVqEMRyLeRBqfs
         PQQZs9sCoAOcKWfIwxmjyMWAEJjVS55n93HMNKfCglMC3YNDas6K3UGMNPUOGi8qvWdI
         yZE71+cuDAHF9swDk/j95sNzg/cqN8rHQLPrTqQCWyFLpwbHDySgLxhabjfbUq0E+uYH
         DXBaWP/lYNYPVhyv3AJj0KNe0VxuPKA14OeuYFGZTq8tLtlTeAZ/0kr/qlZy9Ej6fdO4
         eZw7M5ARS74aE58WAOiAZPPtZ4DGylm5zxP1D9bTURetabgvGp77e3DrZ29t5vSMYxih
         DDzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=8vhKNDvW3typWiCsO//NPgqLyW6N9dkqrx8qEtBeB2o=;
        b=tZw8WsrD9dx+2L21cLm+REgHVk2DaSNtMIUOVu8TW08SZ2xxVKTN5XAhC2dxGxLIfH
         gsavQr7Cs1uOr+7RRe6Tqg1Qb8YS3zpvfv1gaFFufBN3YuSKiqNbCGmwLKXNPSx/C4wp
         Y59aohv4xd8su3LoDMAEtgW28FhVvS4Hnk/m2LFT+YjEEkz6gFAcr4rkKgCctH6knYOh
         seGHHQJZkJUMfB27wJKB3pF3OH1qs3qBdianOpxp0UoQ+Qu3/CPr/kJOXLnnPifOp1UT
         LgUz6RSegxPI3WLVqTtJ5LMyp1WfDfukbmc9GcfxEmSPG9/7RbWnZuRtDtmWCaq09muO
         oA4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s0vhH3Sn;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com. [2607:f8b0:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id n62si599976vkg.2.2019.03.05.14.34.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:34:26 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) client-ip=2607:f8b0:4864:20::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s0vhH3Sn;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22c.google.com with SMTP id z14so8226680oid.0
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=8vhKNDvW3typWiCsO//NPgqLyW6N9dkqrx8qEtBeB2o=;
        b=s0vhH3Sn/j83DnsVpMhmjfS1wKeaO1XxOqVmLkPIpi/oqe0O8RQDuFNX6H03zgWmR8
         IEuWpL5KwGw2WGvdizF3+dFhiyDuOZMjaDMbLFR7FY8pw9R8lP7OhkPG1+O/0cd//Qaz
         Ut7liKul5Eom55ZqSk6QPVbVYZ5fjdKFFZURBdqkPjfQi6BCNgnt+XGom1WfE8IGwWTl
         GgenOrGKSorvrfeetfCzw4Vd0gFFsD6NUBp9zZItqWU4yefO97Pf+AeUXPZ+QxyXIksu
         TA41pkn2oBaAfmZGYWMcAweGu343hAPr9aV8apfCY3nk41GHxIlMql96YawpcNrh5Ktr
         QLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=8vhKNDvW3typWiCsO//NPgqLyW6N9dkqrx8qEtBeB2o=;
        b=K6Qgc4mnncjnmwPJgINilCgt30hFRoIwnPYE0KIBxWjKczdfbI9c2B6M2RTcm+bg12
         xLwL1Yh0hBxKwH2Z8lbheimU/4PQLGcLEzewKeqEHI5TptKSrWYpeYYxj9mVtIgsOdrr
         gOmZRmonzFSxo976ggF1hmVpQmZJ0vHWHRuaiYaGRXTavYY5moMJcHTeQLhLp0+2j18m
         Ow20ClHZGo04rNBMZEf4QdU/Itk94eAG6yTHNgeNe7ZBprtOClXe4awKBc+dvTg8cn/I
         oNq80Q63ULSRsDz9GU8ElwPNCEWsm0jClfFqHiSXwT+SzA9bls8GYlnG2lpdnjE+FOg+
         hqtA==
X-Gm-Message-State: APjAAAVIpvqDJum2KInVyvBVz4grPuDnL6B42LbCWr4bgP3gecJUi3O6
	DZpdA1KRkIf1ksdO4cogxrs=
X-Received: by 2002:aca:4805:: with SMTP id v5mr509898oia.79.1551825266633;
        Tue, 05 Mar 2019 14:34:26 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id d17sm4673926oih.51.2019.03.05.14.34.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:34:26 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 6/6] Staging: vt6655: Align function declaration
Date: Tue,  5 Mar 2019 16:34:05 -0600
Message-Id: <d1fa786fbbe27d81ee167b14bd11a1635c30c01c.1551824831.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>

Fix function return type and function arguments to improve readbility.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/power.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index d6c581b31569..9725de3bca6a 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -48,11 +48,8 @@
  *
  */
 
-void
-PSvEnablePowerSaving(
-	struct vnt_private *priv,
-	unsigned short wListenInterval
-)
+void PSvEnablePowerSaving(struct vnt_private *priv,
+			  unsigned short wListenInterval)
 {
 	u16 wAID = priv->current_aid | BIT(14) | BIT(15);
 
-- 
2.17.1


