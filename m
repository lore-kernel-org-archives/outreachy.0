X-GM-THRID: 6754760383787958272
X-Received: by 2002:a5d:4803:: with SMTP id l3mr8225103wrq.381.1572740368047;
        Sat, 02 Nov 2019 17:19:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9c90:: with SMTP id d16ls11172942wre.14.gmail; Sat, 02
 Nov 2019 17:19:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz5ozYwyn+U0U0nYDfz1Dz7ssnK6vgirbHVS220yGrIV8xRQ3q4iXFbrSCVp7sYuYF5Tmx6
X-Received: by 2002:adf:e792:: with SMTP id n18mr3805354wrm.134.1572740367138;
        Sat, 02 Nov 2019 17:19:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572740367; cv=none;
        d=google.com; s=arc-20160816;
        b=B0qE/KBMtbK5uSmlsZi/7aOcStVjlULkZLipNtUdko+IQNUE6Rq2uKE9uQjHefOru2
         tUSobWAnl2n6Br6UuvIsWHzI5HNl/X/LSUMgs+ObJvq0iFo/ud5StZy3UDq4FNHkHOlP
         ZIoNWaCANldfy7itcu5Y+86HmNrPMFm/qxd5G0m8wHWB38CahCNHIl+T4Gg9kcKuBprV
         r7vPA1eZ+QHh7KrHjDuPa2nlgKEHXGa/2QXPkz0Y8Oq+Iuvi6FJhR57vDVz9d0JU3qLY
         jYmB3dDK4T4YE1I+fvRcZDvE3rITpZH+I8wxWYoC1gmsRjmPpx/RFFNVUEo2WaYFUPKI
         pvEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QeIqfQNZL3rkVXzfBveqEpt9Woy8Sn96gewBjcy8huE=;
        b=h6jJum1IKdm1r5Bad9Q+6sZsjVPfiky/ctwhQa3cklkYPS1+lw3K0ib/wkbATFrJsX
         4DMFTQNgqkflto1yPNyiywBWyWmTfb3v/07eUnhhGxs0WOFF00ugINIDHwKmVTj2pips
         UT4L+SW2v3jeHLOhOaPxVhJ/sSjkBZrXiFx5jOV664zHmyfYoKcysEXWDvltKdTLdXoB
         K8ZIF3i2glzqKloegflxYxRyH4yMVwBtd0TWV+tjaho+/Dx+hhxnPa8es8cREXe3AM8r
         E6ttaAEHVT82SAr2tb4Xn95UqA6OaBZcqNyPCABb8VeG7Lex4VSg0x2dUEjUbz9H7mv3
         GkAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a3iX3MQ1;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b66si488398wme.2.2019.11.02.17.19.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 17:19:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a3iX3MQ1;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id o28so13161052wro.7
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 17:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QeIqfQNZL3rkVXzfBveqEpt9Woy8Sn96gewBjcy8huE=;
        b=a3iX3MQ1u2NRUpXswi8lSXZsvMvqnOfKbHnmyPHw+/zANLcix7QSJLNpBU6y7dZfKh
         CfW8pMRI8np2ywHhNLyG1d9VIOT2fSDgI1DdRH1Q7iC6PgDNdoPX7phw88znK1jB5Ew6
         La+QyfodcZ4/YEzu8IgAGuMqSGq/R4zxvf7poaD3Bo8nS0C66GZ0NwNobTJ9oVTF6cNF
         TM+mlHQ+1/I9qy7Ly6LqOV9m7LQDH8kBxjem+euRBAv4MswH5dDLuio49Ur43ywdKKKr
         ksQpjvRZQMgAzRtxo2nkjVkN1zfMj92Vs1N4UvFTOSbL7Rx3BvMf2UcZvQSMVpzum/aH
         PoiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QeIqfQNZL3rkVXzfBveqEpt9Woy8Sn96gewBjcy8huE=;
        b=r+3wvL2BXwB4bhf4K4Vs7zKQALmr4QBl3uD2Fyj9L6UO4lKfuEsMH6NcfCuzsZovlQ
         EMmoc3iJ/2t9GKjrFGm9UUPXeZOcvxQ1A5VmX+0G78IHchqmO9NJ1xy+ruf6NzA8ZMOw
         VA+8gKaUsxzIll2qBoxzRT+T3wmTd3JhS4WuUyOH9e8DyvtLJNGaefBOucGhdhBk3ED2
         5fB0ckKiZW9m5VIodtKPMNWE/4Z2lgGCakNwxF5aGrBdjzo7+Col2iQOaP4WuO6915RY
         eYgq2vGf/l2UQGjTm7n8iobuGz9RpMcWHZqsTz2F1JvM4nlHOsgt7C3XnWlY/T45E014
         kg1w==
X-Gm-Message-State: APjAAAVXQRh4Jslzj99myeKS+4ePUL6DLuxQgbGgWOsWIPlxkirMRd8q
	0rddcfmMbnNzu3ASLstM/1ZUrVfWGHYh+nc=
X-Received: by 2002:a5d:5282:: with SMTP id c2mr17698647wrv.64.1572740366636;
        Sat, 02 Nov 2019 17:19:26 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id d2sm18237934wmd.2.2019.11.02.17.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 17:19:26 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com,
	jerome.pouiller@silabs.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v3 1/2] staging: wfx: replace 0 by NULL as the return value of a pointer-returning function
Date: Sun,  3 Nov 2019 00:19:10 +0000
Message-Id: <20191103001911.10066-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191103001911.10066-1-jbi.octave@gmail.com>
References: <20191103001911.10066-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace 0 by NULL as the return value of a pointer-returning function.
Issue detected by sparse tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/queue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index ef3ee55cf621..5d29bce65f71 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 		}
 
 		if (ret)
-			return 0;
+			return NULL;
 
 		queue_num = queue - wdev->tx_queue;
 
-- 
2.21.0


