X-GM-THRID: 6753896393761357824
X-Received: by 2002:a05:620a:3cb:: with SMTP id r11mr12573439qkm.217.1572755847293;
        Sat, 02 Nov 2019 21:37:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b781:: with SMTP id l1ls1911593qve.16.gmail; Sat, 02 Nov
 2019 21:37:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxEcwDkoKuVr5U5mCVaCzkJkLvq+MMLaz2yT+wXPMBABj5XPaI9uQ33ezwIDUfgpoeUwcfU
X-Received: by 2002:a0c:9083:: with SMTP id p3mr16800295qvp.210.1572755846545;
        Sat, 02 Nov 2019 21:37:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572755846; cv=none;
        d=google.com; s=arc-20160816;
        b=UgPfbH0rgjAPrV7s7pxoYVhewW10sbwJ0fUbeLg/lKCAE+03jKOCfOtuPXVZ8SIczC
         heolJ4nMGc2y7l2+BNtFas7CiNJfX7e+Q6JxapD98ptAvpTPG4jztpIhI6K9E3varzZO
         5wawAoTeG+Md8OCZ2DLZmlE5/l7IRDAdpT38cHca/ANsAd+pDAQACFXd3OdtrjDHBXbD
         8hVvkC9fC/wvdNFnN+wMEOLw6uJ+zDVVSs1AjaFdWS4Z0b0ggJoM0WJGjnbYRj2QVWGi
         4PZDUJnSorOl0Y/mH9qtehLrGEIlpXPtwvh6zDKMva64TanLBYxD/go1pdUknSoWRJAb
         6W8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=8CgahEYubm1dy+RTXPttGGvFIFYImrep+i0hKju+Pe0=;
        b=PHfem5bJQl4MDnvMxqF2jcb7d1E6ypsX4w16fWu0PenIYNH7g+qUQkFee6CNnW5T1G
         ZOSrhsx2IALslVk0pP09yf/mTctv0n67fyzY7Vf/o5O402UiL8Fx581DiOYMraFSrh1U
         EMOsLHFqbDuZq9YKg6gUUIMgjH3z8I/0z+3P6YRT8YOUcNBfPuRXEdYHbJScyaxJudJZ
         RP1HO4TOYneFteRAD1BI/HxV1hBWH88e+/zMxr3MO2jd7I54kKNqwJ1rHQQkbwC38rB4
         9AM6jIn9F/x9aBgfhQnk7u3shX8alTp8EriC7jX34vRpsb6SPgYJZ2BVsDwk9sz2CKYr
         +Psg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nXCmkouL;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id y41si857501qtb.5.2019.11.02.21.37.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 21:37:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nXCmkouL;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id f19so9058206pgn.13
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 21:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=8CgahEYubm1dy+RTXPttGGvFIFYImrep+i0hKju+Pe0=;
        b=nXCmkouL1rXG0cgQ7YntDeP5RfXkqExiAZc6ZeRZKssy4hbynV2E40D7CUAWbWBcn1
         +UGYmw7SFjTlrwXYHrc3hhRfutIC5ksQLGwz1F+P//bbk/okHLPjYVl09G28oElHDYNO
         i608d6B5s5GZPOjkvYt2lnrNzJyXXBTBjV/RsTaT3eTJSJycI+f7PVYnzciguReYxTLu
         BU0hRRWVbaeD/NbX/FMWn0AYfPXEx7KYbVxAXCUhnPNgRf0eJ3XKsAYgE5JgCX3kim2q
         EZFpWGkCTg9qHcr8CUPDb9SHHXR0oeIF4UuaHSsUxZouku1Nj/M4/+KJsmd002C/1dnx
         i1dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=8CgahEYubm1dy+RTXPttGGvFIFYImrep+i0hKju+Pe0=;
        b=VGEL7rpyq5TJC95cm72bOws+IcFHLyjFiRc2nUVRO5N8MaGxH7BlNsosvhopE1aNF9
         EYH8uW7Kaj8YZHggC0wrKYB31jWHjWJJFhR6AmSIckMqyuSJbF7xrqfH8mVHyuBfp52F
         PXNhq1OjKNyADOwzuY/Mcp/4Y9UQtvCxWBOCzMgSe943vzkn3i/ACW8Nm9lA2HA0xPOW
         d2b7Fh78KGsTxVw9OstFuvQE2svMa4W5p5sQyKn1XsitdEoCOmlsuEkMZxkOipPbMKr6
         fULnAP2EfNzWxT5LEAgYDK2oD6hTL2Yc0M5FkGDlEPpW7ptEj3wKi71CNbTtrHlORjYr
         70hg==
X-Gm-Message-State: APjAAAWx4cUprsMuII6JTIoRlnBnfSGAZFj1ZtL8zWaPocn+ILMCM5Wf
	TFGt+Hs2zpRT6ewvSVDZxHI=
X-Received: by 2002:aa7:814e:: with SMTP id d14mr23953536pfn.39.1572755845739;
        Sat, 02 Nov 2019 21:37:25 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id q8sm5254868pjp.10.2019.11.02.21.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 21:37:25 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v5 05/10] staging: vc04_services: Rename userdata callback
Date: Sat,  2 Nov 2019 21:37:02 -0700
Message-Id: <001fbe1b140bb04d1e3fbacf4679ad0db960e57f.1572755439.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>

Renames userdata callback function pointer. Name was too wordy.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.h       | 7 ++++---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_if.h | 9 ++++-----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index d33d6bd96617..af830dccc20c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -207,7 +207,8 @@ enum vchiq_bulk_dir {
 	VCHIQ_BULK_RECEIVE
 };
 
-typedef void (*VCHIQ_USERDATA_TERM_T)(void *userdata);
+typedef void (*vchiq_userdata_term)(void *userdata);
+
 
 struct vchiq_bulk {
 	short mode;
@@ -253,7 +254,7 @@ struct vchiq_service {
 	VCHIQ_SERVICE_HANDLE_T handle;
 	unsigned int ref_count;
 	int srvstate;
-	VCHIQ_USERDATA_TERM_T userdata_term;
+	vchiq_userdata_term userdata_term;
 	unsigned int localport;
 	unsigned int remoteport;
 	int public_fourcc;
@@ -501,7 +502,7 @@ extern struct vchiq_service *
 vchiq_add_service_internal(struct vchiq_state *state,
 			   const struct vchiq_service_params *params,
 			   int srvstate, VCHIQ_INSTANCE_T instance,
-			   VCHIQ_USERDATA_TERM_T userdata_term);
+			   vchiq_userdata_term userdata_term);
 
 extern enum vchiq_status
 vchiq_open_service_internal(struct vchiq_service *service, int client_id);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index f506858987b7..7ad3db3bf096 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -63,11 +63,10 @@ struct vchiq_element {
 
 typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
 
-typedef enum vchiq_status (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
-					      struct vchiq_header *,
-					      VCHIQ_SERVICE_HANDLE_T, void *);
-
 
+typedef enum vchiq_status (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
+                                             struct vchiq_header *,
+                                             VCHIQ_SERVICE_HANDLE_T, void *);
 struct vchiq_service_base {
 	int fourcc;
 	VCHIQ_CALLBACK_T callback;
@@ -137,7 +136,7 @@ extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service
 	enum vchiq_service_option option, int value);
 
 extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
-					  VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
+	VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
 extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
 
 extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
-- 
2.17.1


