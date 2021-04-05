X-GM-THRID: 6947609304795971584
X-Received: by 2002:a2e:90c4:: with SMTP id o4mr15402651ljg.293.1617616346548;
        Mon, 05 Apr 2021 02:52:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3c10:: with SMTP id j16ls2899140lja.2.gmail; Mon, 05 Apr
 2021 02:52:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy0sFHTgIyrRLlnz7YM7Wf9bEfhI35IcVEkhR2gljbmek90p7RG9UGsEm7SG53rhPVPtw3K
X-Received: by 2002:a2e:b4a5:: with SMTP id q5mr15570351ljm.7.1617616344902;
        Mon, 05 Apr 2021 02:52:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617616344; cv=none;
        d=google.com; s=arc-20160816;
        b=LIdmugBAfu3+TWv43gNhWxkO7suW21SXDLrLcJWxyhdoytvDtZpmZymxzyOcCO9N6I
         X/RSi+AeQxjUXENRzM1XDS+WG9gtjk4u8EMOUCO6rk8ZqXz5s0hdI10w8XzBRZhCTY+I
         SmxMnPq3EDBssCgz28PSY6lGdDYb8qxtn8gajTCZdJP5xb+dJA9oB2Ho2kjJL3TP0Vqf
         fstXHXSFnQL4px909laUVeoVQI4/EgaHvlh+0pg5eAll1oJWCCcoiwu40CfSylKurL0Z
         f5UpdHww4jst4qqYJ9lYF0jHp2QqcvvnMciHW0eIV4YgssTeYdgz2q+gDwGj4MsX61oq
         5ydQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=T4WiKmtDTQGhkH3S0TJY9qeOAUip33w+5lGcpf6LnyY=;
        b=gG6vQQoniSbN+Ahq2rCK+rmSV69pcZ8t9xzmn8q+Oj3hWoqEKuY0mHZrzSih9TdavF
         u8RGpKJnzaOqqyfLLSi+EEGuaw0yCNoQ586ZmOMRMZ7sXFylXrn8pIGI7+ZnFtCO8Zsy
         Nd9xJymOrsotzLTjqaDhxq1DwmMJhT/01/M6oAqVob42tRMVht5SXgrpYYblQiLGarEd
         xcBAaC4+hdkWCfytG+7WIhNwqa8cI3nnPcx4z0bDJj3NUURXveI3q581+gjrIHqUQvvY
         reJ+72F9dZzaLoHbE0BVJPt+58oeZgyNS5ftIUeg/C3xTAlzKw005pbtak1Z8NCRTm9C
         GjqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ahcg4cDE;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com. [2a00:1450:4864:20::635])
        by gmr-mx.google.com with ESMTPS id q3si1449120lji.2.2021.04.05.02.52.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 02:52:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::635 as permitted sender) client-ip=2a00:1450:4864:20::635;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ahcg4cDE;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x635.google.com with SMTP id u5so16061514ejn.8
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 02:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T4WiKmtDTQGhkH3S0TJY9qeOAUip33w+5lGcpf6LnyY=;
        b=ahcg4cDENV7inaJpc6qv3E8s55CCIx4aA1mGcY1ffhIeV76UMs/SeEwlwsgVrDmg/n
         uevLthrE6OYr0QW0Xh+XWQ6FRtesUjU9y3uYj/Wi3xm/0j+ZpmAhfb2o+DhXoaUwMU5P
         IvpKCyT6FThnQqHN7LRArdaXPhQfpgITvoyynXjwBaltKrZC98wGGA0vbMqt+VBXuG09
         HoA823yTPgNnqsu2dpHg5HnR+xbHGa7AbqpLKlkfkghEHl9kCMuan688Q3fpIbOFmeKp
         xUJ5YXpaYXZWPWQo/QuV5B2CignnSSRtPYIHwwiMaUrCxiCT7pGNDStZpVcS6IzRC+Jq
         NbzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T4WiKmtDTQGhkH3S0TJY9qeOAUip33w+5lGcpf6LnyY=;
        b=gS3l1ktWdkPgWJEKgDVDQG5caApi6Vqp/7w5wyRbopw1rv2c8S7pM615ICXZBPaekC
         Ea+QykUzaD+M5wP56Qyqv+iQQmUMl/yq0PjPvn8vps1+5PCZv66yPk6fOTdps7dnIjyX
         G5RfGw6FrvC7LVfORQhZeIzz0YwWfzzlPoMKrgk73UqRh5MZ9vMyM2dMDzhLQzZZ0M50
         VLV0LwyelddtRBhgYTh30997DrzPfk+r1mIrjn0DRRq6a4/PP49UxHNdBjZrMLk0yYSt
         QVept2WB1tgNbKeoKx1aHYE2mZbCNUGbkjNdFzHCVO9el0moVNafXpWvFn+h56adfE4f
         UGLw==
X-Gm-Message-State: AOAM533AnpmGR27UZFucSR3ivrLJh/woHhZKnnay6bK/UdpWblR/1Svw
	glF75F27AnE4StQqXgFbtH0T1Lcd36odZGh3
X-Received: by 2002:a17:906:4407:: with SMTP id x7mr27208957ejo.546.1617616344253;
        Mon, 05 Apr 2021 02:52:24 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id m9sm8436187ejo.65.2021.04.05.02.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 02:52:23 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	jerome.pouiller@silabs.com,
	gregkh@linuxfoundation.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] staging: wfx: Replace udelay() by usleep_range() in bh.c
Date: Mon,  5 Apr 2021 11:52:13 +0200
Message-Id: <20210405095213.19615-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace udelay() by usleep_range() in bh.c according to checkpatch
message: "CHECK: usleep_range is preferred over udelay"

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/wfx/bh.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
index ed53d0b45592..07ef6732973d 100644
--- a/drivers/staging/wfx/bh.c
+++ b/drivers/staging/wfx/bh.c
@@ -315,7 +315,7 @@ void wfx_bh_poll_irq(struct wfx_dev *wdev)
 			dev_err(wdev->dev, "time out while polling control register\n");
 			return;
 		}
-		udelay(200);
+		usleep_range(200, 300);
 	}
 	wfx_bh_request_rx(wdev);
 }
-- 
2.30.2


