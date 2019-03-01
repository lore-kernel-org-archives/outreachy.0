X-GM-THRID: 6663223880955461632
X-Received: by 2002:a0c:d4d6:: with SMTP id y22mr1266312qvh.61.1551402712742;
        Thu, 28 Feb 2019 17:11:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:92c7:: with SMTP id c7ls2741673qvc.7.gmail; Thu, 28 Feb
 2019 17:11:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqyKlXiO3VsdCgarjJ7MwdgRcOAnV9xlN71eBDN4PToOelpIyoe2DX4qCc+TsN0Uu4lYhVT/
X-Received: by 2002:a0c:d2cc:: with SMTP id x12mr1282469qvh.43.1551402712115;
        Thu, 28 Feb 2019 17:11:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551402712; cv=none;
        d=google.com; s=arc-20160816;
        b=k2kopvz9/09XX8OdqWjZfOCSXIQNT1aOe2el1rK4bEjitN0/0RrGdOwm58AkS4wzs3
         xjsMLJ7b6o0kyBvLgxqFDEzZC1dggzZe8BsoVQ5DWP1YuY+dSeVpyywRximjPRb9OGT1
         tfKqwCzGhx2048Clnn6gNFD6D3pgpwyFye/5Xj4uwNvenDnPI8P/m42p5pnCH/+pwnsa
         CXZO9OIL1+e9De1uB4YnVl6g3biYzw1ZWkjEgZH/PL/rvoWcT0ooPWuCKasSJXAGq4S/
         1asffvODprZbGSOnMy8P8Z+lnE16+WEvmh7J7eP4EZ9NfGIS2AGbqFMMvdfNiTNZPqXA
         azwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=2IkPVriKgaxBQuX4pjXK7mzy5EPpy2EiIioTA/Qj+yY=;
        b=uKEdPSS/zniUDqv3XgTXaEkoqP9LnD/T01zi0ClIYfScrnAAy1iKfQB8IjwCSrX/3g
         68+tcRwzeJQ9pvnwjrb/ARxAjugz+CVsX/tGOkt5KTvZr6wI2xbM0fuSChDVuOegEKKG
         SsEZM+zm2I34iwIEe7ZYnrpZP7V23FdMSzCQtt31T4bzqrlAtaNgVM8ISez9oVOHbpnl
         /rzUtg+1iN01zbh/DsO2CkDKv9nshEdUxBQNkvj/D8enk/7fCMB0ASyo/PhrAJNrCiYL
         8ACWMIb3t0Yyp+4AvHwQDFonX2pPW9HKmCaM8k7rkHu6gU0+s2gkuRhWbhwEjv0TMvDg
         Nklg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qpjSOYGW;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com. [2607:f8b0:4864:20::233])
        by gmr-mx.google.com with ESMTPS id m1si1435553qtc.2.2019.02.28.17.11.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 17:11:52 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) client-ip=2607:f8b0:4864:20::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qpjSOYGW;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x233.google.com with SMTP id u128so18201435oie.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 17:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=2IkPVriKgaxBQuX4pjXK7mzy5EPpy2EiIioTA/Qj+yY=;
        b=qpjSOYGWo4SbM5bNERewpe1BtFVYRtOa9MWOrqVLol6O2h8vnKaL0lsLOZOOyDsFoy
         YmZpgz+/1isk2Fzboq+LOvJczqH7Fh9gnmvQH43IpPEspLbq4DJmKEU6zqcqTbi12vkV
         nkg81b0Jho3z91Uq6lSsjUmCb6mLLxwJp8kDeV+r8/qv7VM15kfcf1fSvdWcjeA38NlH
         wdscxh6mTOLxkY+O2r9mEOXt9wAqApuw1zg2OvPMagqKTW7JmaZ3QaJtzWWuifzb5uJm
         OK14QPT7SHWJreyBcXxJrn+h2SpR+nqT7dfddeE2yMVkEiaZaUza0X+e3iLGvrMo5035
         DPkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=2IkPVriKgaxBQuX4pjXK7mzy5EPpy2EiIioTA/Qj+yY=;
        b=j5HGZBOBb6ySWj6lrCXB2Ct4zu7+aCSx3vgb8rCJ++Z4f80qX5GiPmDibK+q1dR/7r
         p1/DCghl3QXYy/QFH9G0mEKTdyy2wCH2PWTIQNxRrV0RngSEFFrsE8ZiwNRFSnxCKjgr
         ANmtvM/ktY17nUQjXR8H2zEGLronw6bzShLhi2dADtcNCgJAAYXNaToa9qFbwj/KLONV
         kLjytoSefGBHZa6Kl2AcXCcNEuUUXQgP9r4/NER9YYubEDx8MAcGNf4cG0BOsCOtxNHO
         xhLD1OA0mwMu23qCWc0p93Rohd+OeTyvzzNIlgItUe0fQkeAJsQ7KXvYuHs+OIsXg2QI
         JLkg==
X-Gm-Message-State: APjAAAWdBU6T2AlNx5jKmpWcmcWO81SZ0Xbg1Lo/N7tax3vkCdloHKbw
	qLgJhLZGmquow+TQJX13HqRSXQ3TUQSulA==
X-Received: by 2002:aca:d509:: with SMTP id m9mr1630254oig.64.1551402711735;
        Thu, 28 Feb 2019 17:11:51 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id n12sm3469475otl.22.2019.02.28.17.11.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Feb 2019 17:11:51 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 1/2] Staging: vt6655: Modify comment style of SPDX License Identifier
Date: Thu, 28 Feb 2019 19:11:38 -0600
Message-Id: <08d13e80547c2adf149c73829f8bdf95546786d8.1551402120.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551402120.git.madhumithabiw@gmail.com>
References: <cover.1551402120.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551402120.git.madhumithabiw@gmail.com>
References: <cover.1551402120.git.madhumithabiw@gmail.com>

Fix warning by changing comment style based on header file type as per
License identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/channel.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/channel.h b/drivers/staging/vt6655/channel.h
index 53f623a4af65..0d2709607456 100644
--- a/drivers/staging/vt6655/channel.h
+++ b/drivers/staging/vt6655/channel.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


