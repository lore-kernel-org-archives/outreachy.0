X-GM-THRID: 6753896393761357824
X-Received: by 2002:a17:902:59ca:: with SMTP id d10mr14825696plj.237.1572643326947;
        Fri, 01 Nov 2019 14:22:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8612:: with SMTP id p18ls1924350pfn.16.gmail; Fri, 01
 Nov 2019 14:22:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQmgjUseB7HhYCDm3HyPzZFRXIPQ07autkw9BJklJz9WyA9npx39F11b5ZYGROFoGfKhRS
X-Received: by 2002:a63:1a46:: with SMTP id a6mr15006301pgm.3.1572643325903;
        Fri, 01 Nov 2019 14:22:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572643325; cv=none;
        d=google.com; s=arc-20160816;
        b=BbDvPF3PRf2UfGeGs3hh/7cu+2V9L79BVaOpyCPQu9KwmMCQKndY5Qho4jx8QR4sPp
         E57PL32ltcwXPtKwotkWYYe8VmtDjEUTm3KwTGdZGxEzXM5RkRuTRKkeC6oDwLqOGK65
         GqDTWpZ6ruBtLkF1HDju/hwdyVxgGSbosIISrhEm0PbOigCfP7OtzXubdw6WDKMTE763
         KLeBWXo9mNfCAYbqXGRYKOjgIrp0A67KVtxstP9BVAxNj9bgHKokBBBzWjeYjiuJxDWG
         Qu6oEiGb+nrGnE7D7VWQNTlO4RIHSrACh2bBsqP8kMKeCjEgDBWZIH+FU7v3NScLezuo
         zlBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=eywGz6aWEzImOITiyrmAjMptC6f3aY8Bo7lm9G2nfl4=;
        b=lsNFiuSXEUodMiVMwEfi9a+uaE3d72VgLWQI1D18O/Tzpar+fTBoQnuZ8c3MlHzCP0
         iLn9CxkjOddetWn9Y0GGqRGdJTUi1OBu4/A2aL5XsZeW7tKcQxMcKDnLAdIf2tKEIBPZ
         5g2fb1RKaoUzw43m3/tM6DIZ3gLMnnd6L0qBEle8iVWKf+YE/sYMY7AjTrVmP8VIRr+Z
         p6fkBoR2DsLxmledJSnQWGnbR1lQZomysZbuwt/FZN0GP8kuvXTbFyHXtZCbnUIfFaVG
         47jXQ09UhNYd2su2NCAh5DH9IsA+eEHE05ASEQ3ELsYVWvaEmeMAsMGtlcogaUBQB2Q2
         xXdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=khB+Ogdp;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id t71si494478pjb.2.2019.11.01.14.22.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:22:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=khB+Ogdp;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id w8so4895438plq.5
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=eywGz6aWEzImOITiyrmAjMptC6f3aY8Bo7lm9G2nfl4=;
        b=khB+OgdpQHvh0TLBDgdw2pG/xNdfnfTuvE9cIRX1dntzKOM7Wj4F8hKevlr7KK/693
         bnTb3yAnqAQhBRhRbKlPUPSv8p7hNp74AZr+xXa9PnnaltkY/4ssBYX/ybHKnFJPxdgk
         nwf0BofJJoIG+rI2K74V0y6kaeszf8SgIjcv7+rqMKzStblmitqDIAJj9YTcYeajZfyd
         PYbdepFKOK0sCeUFi3ycd/zT/gh8wXliqHaPjiL/OaGrfTlW5ZKSM4CsySPrFajLm9bj
         pqd0jLgbFatGFBdG5hgwaad4M800Sm1xdsvqCwrC9Rn+Tph0donTKjMMovIUwfTbvfml
         cFfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=eywGz6aWEzImOITiyrmAjMptC6f3aY8Bo7lm9G2nfl4=;
        b=i5SevOBQh00v1p0Ax7s/rH+NOKKpsydvjMfUpo1PN48TMrJ0s9OdIrrfo9O30xqi/N
         1ofM80yhSypmOkCxMOd8U7i77SzEa3fm0U9yI9onOLr5xB4hCuu+qbR58HLQPwL8JnbW
         Yyh4On7aC+0h1nnLsY9rWuScI8cips3YpMglNZrHccha5GkVDlFM0Yhkemu5LVPYr+sW
         tC7tPOrnCEn1D0ZlVmeQTsCmPGNeUsWBrvzR3y8NmB8wXKItIiQ2QNFUu6fz5CbiMZ3P
         H7zkL/ZRvMJQVb064CeAH6C5LOiSg2aaUgkOp+wA6e1iXf3p9+70vk7GxC94HcnBkxTz
         tRAA==
X-Gm-Message-State: APjAAAXsMebDsW5jHPovpsr2Koyhd8bLNR95VGKg8B5DPuyF+cE6G/+z
	fIE/GXUUlLmelkIuUXxRlDg=
X-Received: by 2002:a17:902:7586:: with SMTP id j6mr14719938pll.43.1572643325504;
        Fri, 01 Nov 2019 14:22:05 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id j186sm6418698pfg.161.2019.11.01.14.22.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:22:05 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v3 4/8] staging: vc04_services: Remove function pointer typedef
Date: Fri,  1 Nov 2019 14:21:42 -0700
Message-Id: <25050a58b0af18f3f5aa91db0aa23f1fef349bc4.1572642845.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572642845.git.jamal.k.shareef@gmail.com>
References: <cover.1572642845.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572642845.git.jamal.k.shareef@gmail.com>
References: <cover.1572642845.git.jamal.k.shareef@gmail.com>

Removes function pointer typedef in vchi files. Issue found by
checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h          | 4 +++-
 drivers/staging/vc04_services/interface/vchi/vchi_common.h   | 5 -----
 .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c   | 4 +++-
 3 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 05fb5c3e8ba0..968469990a16 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -45,7 +45,9 @@ struct vchi_held_msg {
 struct service_creation {
 	struct vchi_version version;
 	int32_t service_id;
-	VCHI_CALLBACK_T callback;
+	void (*callback)(void *callback_param, //my service local param
+			 enum vchi_callback_reason reason,
+			 void *handle); //for transmitting msg's only
 	void *callback_param;
 };
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 07f39e1b67e0..7379925dbaec 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -85,11 +85,6 @@ enum vchi_service_option {
 	VCHI_SERVICE_OPTION_MAX
 };
 
-//Callback used by all services / bulk transfers
- typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
-				 enum vchi_callback_reason reason,
-				 void *handle); //for transmitting msg's only
-
 /*
  * Define vector struct for scatter-gather (vector) operations
  * Vectors can be nested - if a vector element has negative length, then
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index c8e62789a540..1aee20e30884 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -16,7 +16,9 @@ struct shim_service {
 
 	struct vchiu_queue queue;
 
-	VCHI_CALLBACK_T callback;
+	void (*callback)(void *callback_param, //my service local param
+			 enum vchi_callback_reason reason,
+			 void *handle); //for transmitting msg's only
 	void *callback_param;
 };
 
-- 
2.17.1


