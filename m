X-GM-THRID: 6662030189901381632
X-Received: by 2002:a24:2f4c:: with SMTP id j73mr301827itj.24.1551124777704;
        Mon, 25 Feb 2019 11:59:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:5917:: with SMTP id n23ls3359100iob.1.gmail; Mon, 25 Feb
 2019 11:59:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqy6lw6JcTs0TwPE8Tu8PVUTZ22zg2Sk0coWpvwgTO6dfsSTs2U9R0KOQKUbLUg+5HjgwLOq
X-Received: by 2002:a6b:8b57:: with SMTP id n84mr9877541iod.4.1551124776875;
        Mon, 25 Feb 2019 11:59:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551124776; cv=none;
        d=google.com; s=arc-20160816;
        b=DGa+HyasSaPcNx9e5hVE+10sMHEIqlVAsmxDQxZQAavtrI8T1QHwUwFBCuA0fQ2RpF
         6IgWSLDxccGiUK+sDFBlFJXF2UdaRQIfS+6LVKash4kxCSu4lP8EhyigzkVFdrzwd3lS
         CCYG+GRST0sWSvGgF1x36kgzttC1LSKuUXy5SuCvm1JxUxK8yZDH/eANKZFw9DiUHu/3
         WwsYPQ6IhppmtuiOv5+I/28SzYMlH1SFYqa92YJJmlUEg7hDfb2x1ul1jGk7TPdX1u1j
         MK6lIELCXNTgivz27fWY/OPyvlOJG74mISqi0S6z95AvI67ROCS/vK8UyGUxYYmkbABI
         Nzxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=pmCQTh+ZGlrVRclG2WIiUh8hSboHkhLqsfzL64TBgHQ=;
        b=z+sSMUsJW3e5C5bDS9liLVxEjNeVdWvEEoHVwqQZpNiMQGHWnich3Y6AKPLwS1sWRG
         waw32Huy5qvUSsYX5tbAu8XwpuasNPL5eCAS3ctWwXGVzUKMwzRSR09SmlsWOzcWK2AV
         PRks2cXuIpPNWKY8TlqZikSfcYOKaO5jrpTVQCZYG6Glk6/g/P9wTJqR/U49aro+FVTm
         4VGmL369MZwEp4Fxwokew65DcRU1IsmjuhwX8RcnN76f2toO8wufTNe3rcBfCq4PIC5K
         VC8nPmNXyBtvibtreAGJSifteRU3otKcf5RQ9VHMrHwteM2oXRD/H/uNhVBdS+UMC2T/
         nM5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kHfQPShI;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id x76si565308itb.1.2019.02.25.11.59.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 11:59:36 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kHfQPShI;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id m1so8991273otf.5
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 11:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pmCQTh+ZGlrVRclG2WIiUh8hSboHkhLqsfzL64TBgHQ=;
        b=kHfQPShIauPnE0ny5mE9cv5rR4Jh2zC3jMOiRhfLFOUxMZBvuROQvhKe61nZX0wtWS
         uu2eOhFGqAHJIeCy6a1MU2bhCyLiZc4wRLNTL7msSwEi4jmVq9NH0OqmsPmOYJ4l95qF
         wltchM7Fn1SRlPlR6FseRzzusLD/9G83pJ1DLnItbCA22r1T1ujQdKflVZ7TNNgSYu6d
         px1vy5KgBX21PMxKyET3ev41FpYlAdd2us3uk9A1OJvh8mVFXkuHgQYzL4dQ3BdMpufS
         lu55BG6yNGCDIqX4y0feRwBJvGRBV2lqh/4M4yFdo6WUv3JfA0ywPeNiX5OHekhlk7aq
         oD+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pmCQTh+ZGlrVRclG2WIiUh8hSboHkhLqsfzL64TBgHQ=;
        b=ijGogv+Y+KoaldX8STFc+jPOeqDqhPp26bBQXpsYhBhOAlEEb8ukbOmq51OkdwvLQ2
         KeCwH5QbyTmmgucE3EFP09Cr4IXllWvF/TjDq9lhRNHsq7UaGrSfyyLB3sBo6pWJ1LTF
         ueQqQVgLtXEz+D7NqCqK7ADu5N3nEcEUjvrywdbo+oj4afvn1T6Gvb8AqJyt3C7QUaVG
         98sFj7yELCpZbBRC8T5nof2WTma5jjxt/BesUaeqrXkd3CEBSzUuYdXHu/1cXA/vgDin
         SRArbjDjwMjeL8cy2ZPKP7ivLMwBMMt/uap/HkowIh+UTN4aGQHOYYvuycgxiLmJ3wdQ
         wQjg==
X-Gm-Message-State: AHQUAubU2hDqWFRjfxTO28aa10H432TkSfT5n1QrOXbpjdzJ24FktbTi
	mrNktoWQdLetFg9OFWFq2JE=
X-Received: by 2002:a9d:4c02:: with SMTP id l2mr12944051otf.56.1551124776283;
        Mon, 25 Feb 2019 11:59:36 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id 21sm4543485otj.6.2019.02.25.11.59.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Feb 2019 11:59:35 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] [Staging]: vt665: Alignment should match open parenthesis
Date: Mon, 25 Feb 2019 13:59:32 -0600
Message-Id: <20190225195932.15772-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the check
CHECK: Alignment should match open parenthesis

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index c9097e7367d8..d7227e804f31 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -805,7 +805,7 @@ static bool device_alloc_rx_buf(struct vnt_private *priv,
 }
 
 static void device_free_rx_buf(struct vnt_private *priv,
-				struct vnt_rx_desc *rd)
+			       struct vnt_rx_desc *rd)
 {
 	struct vnt_rd_info *rd_info = rd->rd_info;
 
-- 
2.17.1


