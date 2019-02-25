X-GM-THRID: 6661088091510407168
X-Received: by 2002:a25:4250:: with SMTP id p77mr1179786yba.22.1551108574544;
        Mon, 25 Feb 2019 07:29:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1142:: with SMTP id 63ls4611315ybr.1.gmail; Mon, 25 Feb
 2019 07:29:33 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbWXT/y/jETN44aWMfw+r9wfMgyugCgyuNJN2qHU7GI2b+5K+VwyIRUQNrBcLDEVY/Q7ZOO
X-Received: by 2002:a25:3603:: with SMTP id d3mr5641891yba.84.1551108573798;
        Mon, 25 Feb 2019 07:29:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551108573; cv=none;
        d=google.com; s=arc-20160816;
        b=u9FPZikDw1ZnDufbJeNNqXo+gSCQkNZSekwU9XOS3e2X/gJlz2xy006dasVxJ4yj4j
         /SbL4AVy+6MqtIoWnYvGrjcPIncO0eR/WmPA70ZRV3NX+FkwzDwaNmfp5Pvik96VIz/V
         7UW/H/g4A7Q3g66lxevuJuyPP0QubgVN5+Hb8qfYCGdTPlGTXXK+If+NpBfqD2JGRVtS
         303NsLukI8dt9sRFJswqjffg4E0u6hWb54uU39BNOxSd3/fh5nPh/8uiZoYA1nYPZQBJ
         zD1XxW2gbuXLPWExxmkjlpJ4jrjDHdZzgiZNeND2Jxj/40lOZNFJfckRob33Sxce9Wrs
         Wv7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=KapiD/w+RPczwkFzbMNx0MuSSd94O8yZvfyqGfzW588=;
        b=siDLrh0jNrENjnt3UpKzzbIqZ4qRGMicTF15tcxOfshj4igSaN5y+2X0ta/iokMyz2
         OQqshTcNBTwS0GdNenTmGS7srTTV1V9d+y+dDucRFkT/TbEqNnPlv5GsMzdkWWScuXxH
         bsn9xHeYT0YeY6zX79C1EuF0IXbQvd0s9L+NzhbP7N/S25oR1YeI9NdbWhUa7D7PGuWB
         B/uu57P7BD/0W9bq+yJUAs5krIq43uu+dziDFcn8hYvCcu6kY4wCjkGVhhT6hehLOWNi
         SsVs9lQIByXam/p/0kbZRdccpHYCG4nzRGtXkihqbAkP1VJK1/zunJXsALYtA4QWEjNL
         62UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MZ5yK3+4;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id l39si685596ywh.5.2019.02.25.07.29.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:29:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MZ5yK3+4;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x433.google.com with SMTP id u9so4665088pfn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 07:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KapiD/w+RPczwkFzbMNx0MuSSd94O8yZvfyqGfzW588=;
        b=MZ5yK3+4S8SnIM5xUQ42DFM/2ElVz/6VpF0JxYEv93MG6rEJw5WUtYuSOQd+HP49r6
         n86qh0Be/e5QbfczpkaXJO7pYRnxDa+vYYrFQ/1Oh+CNGiiuTzAcRFKTFTZlTMvB7Etz
         9hHnffjWZLV7kppJDhI8/ZV3Pxj2v7rBZjB8JEGZqTqMN10pZlrp3jS+MSo/57RlEMSm
         2Fjmmuwh8Tu0ajbiGpNT5sEq5YQicZqUPPouT4EQMPorguFizq/D7y0jxAxUaPkk8kbl
         cVzWqlVzl4DRQ4ECbXAiTmL3GrQPs/hAv6V6nWa8E9PJLbGDWRGdTy/bHVgLm53FcFzb
         pfUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KapiD/w+RPczwkFzbMNx0MuSSd94O8yZvfyqGfzW588=;
        b=m3y78oQfYIx5lZ2kwMK4b4uE08y9xDgrQye7hiyktpy2TN9viEnEHIEVgXMfzz4Xcd
         lcpMQykkrOsgQfijAgCHIsSQEhsXW2I+LkkdkrQUNaH8CLpsfo48GSiNAJGc2FQiRbaD
         INceoXrbjUfGiSjeRm4HbEBLj5gpWGhn+qQ+UqH3wKB/gpy4QpbrWNXdmS/8p41ASC5g
         1mLGs7shxXRxpebYRQMPjaLVNcG5Agh34zD9m8LrEX/44GAF2iCbfUilLawGg0Lid499
         CrBBhT6lJKeXuqRru4/5YDxI1CpM8ZqH2RqU9mZl1a/c2xM++tXHNj4Jz1qe+OERS0Ha
         Dg3g==
X-Gm-Message-State: AHQUAua5F8KWDZzadhK0Dxb6BbKFEQH6C/c/K4dWskkVEZvmFXYtou/J
	bbn1iDDv3OhMSJsMtN4eXuGMy83DE7Y=
X-Received: by 2002:a65:664d:: with SMTP id z13mr19472967pgv.389.1551108573195;
        Mon, 25 Feb 2019 07:29:33 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f15sm2284515pfa.11.2019.02.25.07.29.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:29:32 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>
Subject: [PATCH v2 3/4] Staging: greybus: Use a blank line after declarations
Date: Mon, 25 Feb 2019 20:59:11 +0530
Message-Id: <20190225152912.10274-4-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225152912.10274-1-bhanusreemahesh@gmail.com>
References: <20190225152912.10274-1-bhanusreemahesh@gmail.com>

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


