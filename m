X-GM-THRID: 6753896393761357824
X-Received: by 2002:a25:6d5:: with SMTP id 204mr11349918ybg.209.1572653078457;
        Fri, 01 Nov 2019 17:04:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:cb92:: with SMTP id n140ls1189887ywd.15.gmail; Fri, 01
 Nov 2019 17:04:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzSlwROXduwnlbxGbkCJ3hdoCpBXPSOEzEvR0HuNnhyGHK0TS6FObDOoS8zje+wsWo7EWFb
X-Received: by 2002:a81:5a56:: with SMTP id o83mr10910448ywb.61.1572653077237;
        Fri, 01 Nov 2019 17:04:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572653077; cv=none;
        d=google.com; s=arc-20160816;
        b=u50ciIYzt8Lrn3ZnDYFhYyFSJDO+whe/lCjx2TpTJ6aFU1w5/VtuG5ENnv9ZOM12GK
         2cFwSjG/hkTcjrABmDDZkoi8Yz4gq554fibeXuYHYM06y5UcWq/Q1GVDXHGmGlWd6+LJ
         thoDyMuG9mUojPehmtq2QOk1PtZm8mMYYphfZf9CRRmh/0qp0O5fNRINseJxpUwI2pwh
         kSho+WclD6pOnOlHZMFgmeENIk/eN+pWa3+60XmzJXaTvk6HQW4iAEG2f5ucKK5Qgk0X
         2RG3cXQQZGsu55Jz3JhwS7giQSqCoB0DElMw5zGjspHUG2D9SWZHLjn+DvxX8jHUTdWg
         5KVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=eywGz6aWEzImOITiyrmAjMptC6f3aY8Bo7lm9G2nfl4=;
        b=AD8S+sL/5zK/0OIosPBOX6NIzM0Gj1YKiGbhpvMqcmt+qqqT5655bWNtig6H51S8AT
         KNpXmhaO9STu7jNepawXGISl2byQNkYaKztUkV669n6TUgOVdr/ZUq+m08THYja0BK95
         g9dgC9FfhmpVptwjsKJ77/8YeaUOeaxOPevzpQsjHZMyp8A94R811+Js2qsDiPJm3UiM
         QPYndusaJuP5HuADyUPvOaYX1iUGP0qa7NtHhz4YHJ9MYKjBz3nCnFfj6xzLO/FAIQNI
         u+JC/+wtYPE8Frro6suwnyo3caadYDyA2jJ/viFv7c6JuuuJotBMxNy0bH4AQ0AzwJAf
         WPZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="kHJhaV/J";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r9si496281ybc.0.2019.11.01.17.04.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 17:04:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="kHJhaV/J";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id c8so7443138pgb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 17:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=eywGz6aWEzImOITiyrmAjMptC6f3aY8Bo7lm9G2nfl4=;
        b=kHJhaV/J4+Mnm/0cxmkVa6fqy9u/sAAap72AUP2vwaOZPlkQNev+PW4LVt1Y9KdtmR
         9r5o/9K36Jk1RGHYkCwBdldUgOb1N/Z775Y1ZBA2g3g8x7q/h64zw328EA8KBmvZ7QNc
         qUATiZbtRMjoarFCd277cpVO/t2h0Cs4em35dU0w9vRtNogRVT7XaRo5scNtRxS+16yp
         N0qz4H/vl5q+clULUf8yRYMTyp2cZLqi0W+cTgs4B+pWFH5E7cag0kf/nLeDSwu85Yp6
         /pyPsvjWcEXzgeYk8ewA4B3OYrTPScBWmEHis+D7iMB0r2R/oCFl12EPPyd7YN4JX0T9
         /kBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=eywGz6aWEzImOITiyrmAjMptC6f3aY8Bo7lm9G2nfl4=;
        b=l/+7bf0bn6DSW2+xtXvg3RfmBZ6ONdVbI46zhfNH1RqxrsftFToUdF9qw+u1A9KSV1
         Wvtad+zd7qQ1ymhI9CbdvYdY3tneIz4lLMy3Nlt9tMTiUvX7VChyjYrETz7wPNvA3jF0
         +6kw9Z5Yb2mKJZWzISSNMzmvqs9DwuwqKCcxMYgxifxsDYYDUjVNb5Pb8TeKrbNAcbCe
         kUa5jNn9evn96shJomz/JIeec5eCfN9Fplg/a1hF3kvql3Rxi6an5eN7azWCD32c3wN+
         7fks4IKlWC3HaSbHcb/BUDKsTwV13ic/71i1krVCl2a8jD0zxaJh4qHl6o/0cV0ECwx1
         bE6Q==
X-Gm-Message-State: APjAAAVUzLML+GC41J442pKgfNznFR1B2bmI7xfIaUE42NKmc8QnrCiT
	wMfwCO1LT5ZN41p7uRfGpFM=
X-Received: by 2002:a62:20e:: with SMTP id 14mr14343772pfc.153.1572653076451;
        Fri, 01 Nov 2019 17:04:36 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id q200sm8027433pfq.87.2019.11.01.17.04.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 17:04:36 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v4 4/8] staging: vc04_services: Remove function pointer typedef
Date: Fri,  1 Nov 2019 17:04:16 -0700
Message-Id: <25050a58b0af18f3f5aa91db0aa23f1fef349bc4.1572652827.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572652827.git.jamal.k.shareef@gmail.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572652827.git.jamal.k.shareef@gmail.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>

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


