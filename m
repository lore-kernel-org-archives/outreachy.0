X-GM-THRID: 6755960127598100480
X-Received: by 2002:a02:1d04:: with SMTP id 4mr9896454jaj.48.1572994565515;
        Tue, 05 Nov 2019 14:56:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6602:22d9:: with SMTP id e25ls11943ioe.14.gmail; Tue, 05
 Nov 2019 14:56:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqymJpWU8txS4hvWzE8PMU6/rTlExHVfLmVxgJCtr4RsGZ8g+Xx7EJXG9Y9N2HGbi8TnGnT/
X-Received: by 2002:a6b:e403:: with SMTP id u3mr3924837iog.130.1572994564652;
        Tue, 05 Nov 2019 14:56:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994564; cv=none;
        d=google.com; s=arc-20160816;
        b=tivVip7IFd9FuhbS1bk6XJeOUKsrlwPV5PMzL4/tI6G1xSTeRTvXncUzRbClYmv5VS
         9tZ6uaJzkzFHjBtToqdCSduD5W8+BbSfcOAliS0Wp7Nc2THJ7jlljYVLqrCfEU2pCJ4U
         v8JTf/vJNKIExofPHhy2eIbnjYhP2MI3vmsh5SALW2wo+Ll5dnOSFlEGFb0K9LcYq6Z1
         +TpQ4r9TulS4XuD0xAdlN70+lkbaaRz98ctw0g21BSWsLaJo9Zf8ErNSm/hxjyZUgMrS
         z8MpJvVUos5iZG0kKlJO9Cxpy1aGbYwGl66NeDGfSfAtfSgO9Nom+SptA5h/MIsg6/eq
         O7dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=gOeosXgq+GHii5tlBs7DLTPJ0mfqaKhQDaY62Om8W94=;
        b=SAzlm/jidlGfSldBIIEaOY8S6ryIEAAFKIQcxzrlVVSE2ambeiMUgF2LUeQw3p9Wvc
         jylvfGqUQ8ioyUD2aVrDoA6wC6acSZHkbcfsiDj+AnQG2q0wWeVY6SQUZuk63An2lp9K
         1LeYnHUX5DWcwKAFGnIKjOyNclGJJrQsUMUa6lS4EnNcWnfB6upx/tQslyizpSjq4DzS
         U09w0yKS47qcd2KtvnGLTM8lpO+lNkII4ESux7YyB/ZsNzMamr+jqXfUecF0/FVzm0UB
         cjG1Lmn+CsyVWCtyTWFHtZXkJqEfs4yjkvtm6jzyYLJT+vVIMRuL3OK9a2KbXsKQBakY
         +Vhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RPuGrdPu;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 75si1363895ilw.3.2019.11.05.14.56.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:56:04 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RPuGrdPu;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id l4so5178403plt.13
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=gOeosXgq+GHii5tlBs7DLTPJ0mfqaKhQDaY62Om8W94=;
        b=RPuGrdPufBYrf04ByJ+JlJdRLH4VKKj/H6jTdUoUCRqhvI6U8e10+Y9GV/E61EZUgj
         S4kdkZlc/3LGGyJtAttqiAUxHVYirZNc0tz4X3bV2kspnI2tE9tjI1+fDaO7z0TvXasZ
         Mwrz9MFATnpHpM3gFxeg6ciajsV8X2nHzlO1MOBiZwYJFBTmH9WsiKG6Klp+s6gTIWPO
         x67063Z9/b5PEaFd7hGddUONbDtqq6MFexVXKudgjUDH3YUqZtPBQbr4jQ+p0UFrytC9
         U9iphE7xHaVO8FWbC9KcyoBxAoj1U/PTvTrjF94EqVxplEjOTByd4B7XvK0KvioWBoN8
         OW/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=gOeosXgq+GHii5tlBs7DLTPJ0mfqaKhQDaY62Om8W94=;
        b=ZwauNva2FOYObqV3XGK7tm5Md/AmYaWU8JW3SODDW6NB2/msEXIZmsi9HBage+j0cv
         uzdg1aXV5k7qPopoteqVbO0SaL9721ovSHm6NOlHFb4xPvLRtq+YvPq2g/web5W6WJFy
         pmE9dMzRcDhm74R0gbclYmH3782yDpx/qa/nNAx3WQrv0q3EfdpYDQ/YIFBf7icIrbhe
         KR+92RJ2FWJV0upQT6GsOUatJTEZIx5HGpifGcyQoFytx26kBmeFqs1bXcfsIwZ7U7jq
         vD8TsYqFHGiwFwMd44rV1+EGACTA4eDHWGkwShAxi5SZLK/v4Ha8fu9HGW2OQnzpm3zA
         uY3g==
X-Gm-Message-State: APjAAAWzA54PmTzlZM3p3x1UuGw1fYCMxLuTq0U4BLsoTi0WoNOANMwG
	HxNhmvLOp1WYf/lzDbaxgeimTJVIJzn9qw==
X-Received: by 2002:a17:902:525:: with SMTP id 34mr855772plf.55.1572994564302;
        Tue, 05 Nov 2019 14:56:04 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id f35sm438094pje.32.2019.11.05.14.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:56:03 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 14/14] staging: vc04_services: Replace VCHIQ_PLATFORM_STATE_T typedef with struct opaque_platform_state
Date: Tue,  5 Nov 2019 14:55:31 -0800
Message-Id: <ed1a877637a53881ed65dc232da04dc40fbd9fc3.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Replace VCHIQ_PLATFORM_STATE_T typedef with struct opaque_platform_state
to match kernel code style. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.h    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 05b39c3564f6..419bcdd165b4 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -236,7 +236,7 @@ struct remote_event {
 	u32 __unused;
 };
 
-typedef struct opaque_platform_state_t *VCHIQ_PLATFORM_STATE_T;
+struct opaque_platform_state;
 
 struct vchiq_slot {
 	char data[VCHIQ_SLOT_SIZE];
@@ -468,7 +468,7 @@ struct vchiq_state {
 	struct vchiq_service_quota service_quotas[VCHIQ_MAX_SERVICES];
 	struct vchiq_slot_info slot_info[VCHIQ_MAX_SLOTS];
 
-	VCHIQ_PLATFORM_STATE_T platform_state;
+	struct opaque_platform_state *platform_state;
 };
 
 struct bulk_waiter {
-- 
2.17.1


