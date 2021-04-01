X-GM-THRID: 6946206210186018816
X-Received: by 2002:a5d:6dcc:: with SMTP id d12mr9994567wrz.136.1617289664628;
        Thu, 01 Apr 2021 08:07:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cc94:: with SMTP id p20ls3114468wma.0.gmail; Thu, 01 Apr
 2021 08:07:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzNfeYC8d9N6maArv7bXZA2oxmym3b9D/I6b6698a50P7NwSR/qj1BEkcCOS7MU46DY7y2q
X-Received: by 2002:a1c:97:: with SMTP id 145mr8449270wma.142.1617289663351;
        Thu, 01 Apr 2021 08:07:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617289663; cv=none;
        d=google.com; s=arc-20160816;
        b=TczLzt+pcLBrwy5wdFlogc0FRQdNRNPA6h+ObMModxlm/tNEAlgiK+/vvrWyGAv9W0
         yNKmK9kcSzRcV0E+k5ATmlM0v1xxiRGyn+1ev3ZdytTeakBnHV8adABM2JrBfQkB29X6
         2XaociScRsq+QA1LyjJFGKeVxxnIMjxHZ9Nwkxx9GJACNDMw4ApEEnYXQlNZmjPoxAuZ
         BweezlJLl8TJJOV8N7l9FEqyFjrRbBxP3gLRC7F5+chTNPRQLlUQox8IfkcO/XAKPqOl
         RTV6SvIamwN9K79aI3L7F4BD8DbhlcMckzafOlkhh/NPvaxx3svSOW1O7uAgaHXJvd/r
         YFtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=MbKLAGz4OO4bkaK2mn5gJbhDW+pmNyk19HFcUZTJdJg=;
        b=ngbFIblxjVXWzFOj/Wb6fEDmDN3/ivrRMNSXfU1LTeeLVg8IOBhDCWcx+lmGr9cEMJ
         /IXyMzpNYq4wXCPxj9pfs1VZhchiCCZuWLcl/UZdNp9m25xl2NdwcsVhjqlQt1ZRtVcm
         Ha/Qupxy144lHjplLP0qUil2+u1mwUY+AScJVG/92FhLoQfULwwWDUaqN/oRo9rZpp7X
         7KpOJ75XnYWinlJcOFqvDnS8RkjDvejt8h1i/K0Sf7vgWOXxMB8X5mHM5yrrWAA+8J/9
         eOJxAV/uH5ncbex2s+OiCG69Gl0WDdMFB6VDifk9ytNkFTvImqQP7Y22RfIpcwC4DQKD
         O/6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GRr7eS+a;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id h16si705523wrx.2.2021.04.01.08.07.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 08:07:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GRr7eS+a;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x431.google.com with SMTP id c8so2150115wrq.11
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Apr 2021 08:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=MbKLAGz4OO4bkaK2mn5gJbhDW+pmNyk19HFcUZTJdJg=;
        b=GRr7eS+aFYlubvf1mPOYcVQQgMHnfQ0NegZX00k4kHoMYsIKZ4BVrmlZlAzofy5DWv
         R95KUIOcwiQhJZXStFdhS6EGKVRwm0AYzLWs8C89sMpKtNfHNgts2zl68Mq3jekWTY21
         3eORmfMoCBoLlha/R4Hcec0dxt6jUWvkHMFiKgMM5i/TJcGZP73R1SrM6m9Cu9Ahfgj4
         J/qgd94AonllohzFWegDtH3E4+6geuEY7eZgVNSwvUsvdrwXTMUB9ZqcMMAbLYxGinnG
         tVof+nifxAlS28roJ6tKUY1BQi+5nhjDaLWeqtpmo6oNgYTsV6WsRsRibSXCxOINXm6Y
         Jl7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MbKLAGz4OO4bkaK2mn5gJbhDW+pmNyk19HFcUZTJdJg=;
        b=jaxU5WP/F7MbTQ18wDf2/NGeX2RCIX119UQj3w16O3nWkpzXEkWNoeIVe1l/E9zNUC
         AgHOdkNtM0nO5QHmrl764DqDrLxBDW+aObzm/qMJNK5ASxF67DhuMGFMgNI56l2MCeEA
         +7Gb7fIRUQZAB4M1InQArXgpMlsnGE3hrckngzDrCiB8sjVEVzdbDTDolpkb7o8E8rec
         BDVBeVIH6/flgkfefqxLaW8AdDUOXqPn9w9oSV/SLqQRK7QDWb28xOhnguSIQRU7+Um/
         /JaY655llbKM4nTWkzFuETXBUZBaH08xFg2QoA16ZmwN5/z8KRPdluf9gx6rf0ndRjip
         xaNg==
X-Gm-Message-State: AOAM530mu7Flk7GEJCkR3BVmuYWRS899zpksFvNw5QOotbQCKoUiMwWq
	sb79S9a8Ntqkj29jXKCDk6w=
X-Received: by 2002:a5d:5492:: with SMTP id h18mr10435295wrv.340.1617289663089;
        Thu, 01 Apr 2021 08:07:43 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:a182:b5f0:9f7c:c891])
        by smtp.gmail.com with ESMTPSA id n8sm9710108wrm.70.2021.04.01.08.07.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 08:07:42 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: media: omap4iss: align arguments with open parenthesis
Date: Thu,  1 Apr 2021 16:07:39 +0100
Message-Id: <475dbbe5774cbfed2d924807d8a3cfeb84b3d845.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
References: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Alignment should match open parenthesis"
in iss.c:96.

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index e8f724dbf810..472f1837632e 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -963,7 +963,7 @@ iss_register_subdev_group(struct iss_device *iss,
 		}
 
 		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
-				board_info->board_info, NULL);
+						   board_info->board_info, NULL);
 		if (!subdev) {
 			dev_err(iss->dev, "Unable to register subdev %s\n",
 				board_info->board_info->type);
-- 
2.25.1


