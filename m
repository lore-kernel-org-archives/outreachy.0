X-GM-THRID: 6754510207440650240
X-Received: by 2002:a17:906:f15:: with SMTP id z21mr12857144eji.119.1572657115731;
        Fri, 01 Nov 2019 18:11:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6889:: with SMTP id n9ls1720993ejr.2.gmail; Fri, 01
 Nov 2019 18:11:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxe2gG612UQEThQx33m2LhyP5uCzJFW2hMrfxr6KhLmYONgjKQP9xEf5BNwVHs4iga6n26g
X-Received: by 2002:a17:906:80c1:: with SMTP id a1mr13104596ejx.37.1572657114861;
        Fri, 01 Nov 2019 18:11:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572657114; cv=none;
        d=google.com; s=arc-20160816;
        b=sQdxb1D3YO3VKmBPJnlhA98Gk2w8rUS4SbfY63HKnz215AjEflWuJmvsb4T/zjVYR1
         Xfn95IemZu6f1U84wlKGQmvT3+00+QLvzQPTEMZ/6Z2bzuLNQLS7V+IFDcV7vahmFvvC
         WpYI29OjhmX9Pqx/BM2dA4P4eZImQTBfwTv7L850u/R0A9FZkOK982SX6YKFouue3YT2
         RfncqAab7cvcAa/51V8VdOpZeXtnhLzJY6uSjKx5xDMSfL3wAXZdvD5dpAwV8NG8lFYc
         3Z4gnMV6Yc80RlWEZ9YTl7F9j/0UaagvOPODdbv4bYb50gEgK7m7LJkfO/rFbubizPPw
         13FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ACIxT5kWfQn1rge3xMTZA4bUav2SMk5A1heVTTnOTpo=;
        b=fcz2UpTeF7ZodcKaoTI9i1ffylV/TrICZ7LW3Z/d2UquakL0xzvJMQ4bAL+hpbKcdQ
         Rh79bvCvFY32oBA5pJNECWsrEXKXrXyvRXdjN0uGeuy8d2fJI1jOhx00GGZb7tYOdCqo
         h9P229PeAOcR1yhTvwx+Xk2ZhU3QePZ6mdTB8Ak9A+N2PM2WsCQw8/72JDXELCN172VT
         b1am14iBuMwmVWjXLzCO7avTZzxACd6n+HunZOTs8YgCUqpGR+HsEohlx1/KUuGh4S1H
         IbDJl/1GFs0Njky7pDVfx3l9eZ8ACLVBTYpo3+dz39Pfw4ZM/doBcFDgQ9j7gbLDhF15
         iiSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iJJOpZcp;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id q17si881085edi.1.2019.11.01.18.11.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 18:11:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iJJOpZcp;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id e6so9389567wrw.1
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 18:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ACIxT5kWfQn1rge3xMTZA4bUav2SMk5A1heVTTnOTpo=;
        b=iJJOpZcpP0jmwxpkwD8/yAF+gwc0yEmoUEc39KovL34m2hK295lQOzE9P4rwJgWHkx
         CmIEBQLk34zrLm3WJwFk0Clj4wjI0A8wvEiZxVdCCn4HMIWpgzKqgC4zC7Ymp8k7i2D/
         ND23EMbCLnAwuQAgNz5WS16yk+snIs1mNTDYPsaf3rGe8ZO0c+PwxXsFb6D66RUeiCP1
         wOdnUe8Mu7bGgxZ76LNVkyG+w/5qz+BLAGN64HQjxBEfSHeuV+WWNwaIP2MXOU+N5kMF
         sdzi+N/bJ07jovjefI0gFoXNSuWPwTs+y5TS575cksgoFlG1Twvei6YSdtd9aRIsnDgc
         hfiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ACIxT5kWfQn1rge3xMTZA4bUav2SMk5A1heVTTnOTpo=;
        b=VHxDZWGj7xf5AydAV3srZZlfYThtWexXQVdgb/MRf6AVAgtNlk97Uc8dtAU+Q68QY1
         iZfmguT8JLkpI+zpbUlS1JDGbFsHqpbhrI6pkKIzwSICKz5hBiAaxG+APsZ1UVGZ+W/G
         cGGGpsL5RPNVslB++mcb50E1Wxk4SGGU3bkVJVhnMlhGdPclvpHkmOMes3QdXgEf8qG+
         n012Z0t8iPrQc85SdocEg20Ot/YsAN/lgr6tXp//NRwRJti+XBfVS6JbQLzXWQZ8WSeK
         nY6MT++sy4kfbUFmID+pftbt4O9gy4uIwsUkBu5CV2kA4il2ACR7yIFqfyL/fioaMlfs
         lcWw==
X-Gm-Message-State: APjAAAV6Juj9xYF1Vfbm2thaESBIR0S0BIu9FAKIzBwXQSAxFP7GeU6c
	deK8KuGEu/iqOKRTKz9eqlDu1HD4NLJ2
X-Received: by 2002:adf:efcb:: with SMTP id i11mr12836653wrp.229.1572657114339;
        Fri, 01 Nov 2019 18:11:54 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id x7sm18245571wrg.63.2019.11.01.18.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 18:11:53 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: wfx: fix warning of assignment of 0/1 to bool variable
Date: Sat,  2 Nov 2019 01:11:44 +0000
Message-Id: <20191102011144.30586-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warning of assignment of 0/1 to bool variable.
Issue reported by coccinelle tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/queue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index 5d29bce65f71..71e92744fed0 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -550,7 +550,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 			spin_unlock_bh(&wvif->ps_state_lock);
 
 			if (vif_more) {
-				more = 1;
+				more = true;
 				tx_allowed_mask = vif_tx_allowed_mask;
 				queue = vif_queue;
 				ret = 0;
-- 
2.21.0


