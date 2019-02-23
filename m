X-GM-THRID: 6661088091510407168
X-Received: by 2002:ab0:22ce:: with SMTP id z14mr1491189uam.20.1550905436824;
        Fri, 22 Feb 2019 23:03:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7e57:: with SMTP id z84ls1968493vsc.2.gmail; Fri, 22 Feb
 2019 23:03:56 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaY9U7meHJx7OmUoqq99/QUMkXnwjjAfFYDNnnMmfj2TkOmP3/jAxpuXzLty8pey8yKhfpR
X-Received: by 2002:a67:8093:: with SMTP id b141mr473605vsd.37.1550905436026;
        Fri, 22 Feb 2019 23:03:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550905436; cv=none;
        d=google.com; s=arc-20160816;
        b=Nmmjdc3oStkyKjzbym2T6fLQ1HVV5wKTnG45zr5nSEhq2KblhX3+bPHnx3rD6p2cs9
         JhPYZFJvPYGXUrMf5HcoIIqmwOLcce9e3nBR4gzbxIgqPfqsIDJejNWakA7QnGlLnzNn
         W7q//AWr05W8rkMk5FWdzBkNC/yStUY94xu/JGiPgYf4uRRe+uLPBsWtetC3ws98LoVQ
         xmsd3MxL7XA2gpBQyPX4u/VvupqFtNDB1LJXhs66apDoXYOjSqPEa93LW71WVKSw8GRm
         VZkrLkv5QI4mqF6fxS0YiCTXJZlTargQINu77NQomAiGZ+DdcqxGzmBVEc6jwjgkNXRm
         C1xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=3NbkbLkRSZnbDYlteA086cNKVrHgk2HkNV1aV22mJDs=;
        b=jF6k1qX5XHX1zJRr3GQQM9Uq9NULTW9oBEZG4dgP4eRsD7gZOVcpwemWrM6V8ydIpQ
         KztvAhDUpSbeHhiEIxRlz716VPjqN6LwEwv7MUfj53Zf68PWuaCbQOuvlV/3QE7mMcEG
         s7KPf/EgRQiwZsS/dzIhprChsihCqq5b6TEGcbI3iXsMJXuON0PzFjchURlvFVoNpmmm
         WdfRqEGOMIgMy3uNxIz/VbltBLtG5T18Z1r5f5jqhrP7Zljwra2FYmO0jUk+U8O9yFoE
         6kl0uFzdzBMkDrIn6Ed60iwRdFu5/I2rOVn6TEpiBmlasQ4q0PfegXopVNdDY0ijmwS6
         P7ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RcYAXdph;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id c22si225254uan.1.2019.02.22.23.03.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:03:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RcYAXdph;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id o6so2072314pls.13
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 23:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3NbkbLkRSZnbDYlteA086cNKVrHgk2HkNV1aV22mJDs=;
        b=RcYAXdph/uMjmFxcimgNvjaLQoplRAFUE/yfjosvoRizHV4PxAZIEAOUvS2IRfPcSd
         4PdZ4WHm1+ljS1asjlmjh8C2zELRnD88U+kSNOwyWuGTuZF9p/Zm3lnqqgaDckcZWUP1
         5BamY5Yla+fryzkhlkaJl+GWICb7heaAhByuL6LT/WyO9CpdOg62urJ9mGuwjps8TzMM
         IdRe2XzJKTUGtrgwH+SaAyK67A1r1yTamBy4o5F+MbUcQNVRFK/ba2Kg53OnNFNg5/sN
         GFQmJAJGTTMWtjvmfY0MDb+x+GAxsiw7+Pd3M1YMPkCBq3LWGBcrgwc5WdYhuu6rHQgn
         JorQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=3NbkbLkRSZnbDYlteA086cNKVrHgk2HkNV1aV22mJDs=;
        b=jV2SMLnhgS16HJlY4/jEoeZwVUV5UDXKA3hmYRCxTQ/8e5ypuBBfOiB6FJI0cmilQB
         1E4dqSrf+IifP7i5K+NMswl9/CeraYr/IyntyC3UnnaTi9VX0G2RlDkkEMWptnjgrec8
         V2LPlfZ8KY2YsYdQBy7sizERmYDgDRWgwGgxEQ/H7LlJd7ZHxrua0+VNZB9GXtQf73VM
         quqk2h60XJp1J0Za/TsAw7uZyEdqqIjC1cB6TAN9ZgO8LQl7XuDwPonfRaneYUJj2mIN
         477k3XnQKewxnFFlK+MIEpEUwG4HQtU3WZ+djK51H/ly/s5EQz1WWGsUUmBKhzuIT2JS
         +ctQ==
X-Gm-Message-State: AHQUAuZNA+5ab6WNm4B1mO04wcelq1MnqrJWPpLDiP03j6h6MJplaNOf
	ZchbMQJFuFoXKQmI75obg00KdSCCybE=
X-Received: by 2002:a17:902:8504:: with SMTP id bj4mr7926475plb.200.1550905434939;
        Fri, 22 Feb 2019 23:03:54 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b2:4a74:49f0:95a6:ee9:3324])
        by smtp.googlemail.com with ESMTPSA id p34sm6252336pgb.18.2019.02.22.23.03.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:03:54 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/4] Staging: greybus: Use a blank line after declarations
Date: Sat, 23 Feb 2019 12:33:24 +0530
Message-Id: <20190223070325.6750-4-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190223070325.6750-1-bhanusreemahesh@gmail.com>
References: <20190223070325.6750-1-bhanusreemahesh@gmail.com>

Cleans up checkpatch.pl issue in multiple files:
CHECK: Please use a blank line after function/struct/union/enum declarations

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


