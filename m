X-GM-THRID: 6753896393761357824
X-Received: by 2002:aa7:858c:: with SMTP id w12mr9076177pfn.128.1572653081517;
        Fri, 01 Nov 2019 17:04:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:db48:: with SMTP id u8ls1001544pjx.0.canary-gmail;
 Fri, 01 Nov 2019 17:04:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxOYgZ9mWNF3vLXFbEHJKKcMgXwW6jSL3KnqJa9e/z6Z+rCoWg0IHL/Z6P4e9HnKHmrxBGO
X-Received: by 2002:a17:902:7289:: with SMTP id d9mr15447552pll.121.1572653080361;
        Fri, 01 Nov 2019 17:04:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572653080; cv=none;
        d=google.com; s=arc-20160816;
        b=o6URNS9E1U61dSdA83OqughLFlf+GJGncPWbAKvynsh2U5Trwg3TwgUomADk70T6iK
         QnilPSDnf+DKUPIuj7gP08fj7DPpvR+xATXBSSRW+lGB5muqftQzsrlvZ8XUwZZbCOk5
         bi+wygk/sfwJNxkEYlbBzHCaSYSl+fVT0tiogiL4RVMRFj83WDD7EPFhp3PlXQk/6Qh2
         9tnw9AEmqBCHi74ASOCEu/aYARrMQ6joVO6ZLNRSrXK/IycR++Z2Dh6DVzLks/OEapdP
         lyCtCm7oOnEt67xEFVc65JoQKh3BCEP/qOmDdic8M+btABWCi7njzX9OjfY3xC/eIPpO
         s0hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=+ZKQ3/yusOf3dkmUn+lodj+euKldWjibbNTzJzxITj4=;
        b=PE3XlHwVzIurAxeVRB79GwRK0Q9la6L7jku3Lvw0Ak5WFKQjIdthKjPpya00S+VPhA
         DEYHKZX5J+zhDvYHwF9djN8LpKdBa0FSP844ZYP4T98m7WV7KnmxMYTElP9oMhRenoAt
         Qix4zmvobL4F0Xy+7QHzV4aH3PB9UCGy/zYpaIZXR/KOHGrysi/+cNgNThBbvviTdf0U
         Yt58yT1iGHdxDVAk7VI4+cbIFQxMUHMxHqiaTRru6z45lB6NvDW9yBL+fYlF2b7YzADk
         gmPNW7D36k/vkm9AQO/xLhyzF2GIgGfFq8575OEBR3BJS+AVnUjWbqPLfWLQtYHOdcKs
         VOcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ek/hX8JF";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id ba9si335422plb.5.2019.11.01.17.04.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 17:04:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ek/hX8JF";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x635.google.com with SMTP id w8so5024960plq.5
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 17:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+ZKQ3/yusOf3dkmUn+lodj+euKldWjibbNTzJzxITj4=;
        b=ek/hX8JFD1yT87Tmb9IH5AjjkIbWE6M45nkYCVwGpZuyJJcGvad7zmx7+MiAyZlIso
         8Np4MrtxWvMkRZjn9kbG5lhILwAq1GnOc3ZhsNUdchf9FEnF+D5IFICTguQiF3ksaQ/Y
         5kgP97NGgWRJuITKrj/p8SXA++Gib3sz9lG/IU0AHsauKQLGjql5bmVgOQC3+BDy5LgO
         4WlnGGfRcdx5YJaVLFAh8XDGVB71phrlJaLDHt5SAIe9a1YYKYxH5YtJ7BFmHjrEtNRR
         7k27OSaGJN8oRe5igrTWNnV9dwvwtLQa3+3YLIXEncV8zUlZr+Ig61+hH65PbL/KHQxs
         aAFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=+ZKQ3/yusOf3dkmUn+lodj+euKldWjibbNTzJzxITj4=;
        b=lGC2qyvq7OI8MGBbQ2fsttLOI+TSeM7W1YCKxGfizmK8gpKHOm+QjLY4VwYSPEoDHI
         r4ScKRZtYqLZp53CUPU56cEmVNOEIz101S9NVpp/1F4Fqnyw4lGtEDIO8p1U22LX3Fdq
         t3Pjfx8Vo/anC4MafQuIdWpuFvThIuMaRlSsIdzKAxVtuBgWBu/yQ3uvPPVtt5erVQK9
         xj7fygLleEzSetHhydrVr8AjruX5esUhyb5UrioN18Pzdek+JSiOGgdhcwMCMkgt9s+I
         vOWmQQl7EBYpON3CjZvFhxp9X/NjA4sOdIn/+1/GGhEE0Tw0+9/ZXzG1DC0UAIUiDaM8
         jzKA==
X-Gm-Message-State: APjAAAUafie3PaW4NbMn56JhUOMfMhQeehFFUMGkWOj/fF5sHFeorJBv
	xMh0DGIqPC0/Hqud9XfAS0FZU4iKHlo=
X-Received: by 2002:a17:902:7883:: with SMTP id q3mr14454682pll.296.1572653079918;
        Fri, 01 Nov 2019 17:04:39 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id o20sm9652177pfp.16.2019.11.01.17.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 17:04:39 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v4 6/8] staging: vc04_services: Remove callback typedef
Date: Fri,  1 Nov 2019 17:04:18 -0700
Message-Id: <4b819da2956430f84ca34d3065a5897804385542.1572652827.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572652827.git.jamal.k.shareef@gmail.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572652827.git.jamal.k.shareef@gmail.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>

Removes callback typedefs. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../interface/vchiq_arm/vchiq_core.h             |  6 ++----
 .../vc04_services/interface/vchiq_arm/vchiq_if.h | 16 +++++++---------
 2 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index d33d6bd96617..311c7578f02e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -207,8 +207,6 @@ enum vchiq_bulk_dir {
 	VCHIQ_BULK_RECEIVE
 };
 
-typedef void (*VCHIQ_USERDATA_TERM_T)(void *userdata);
-
 struct vchiq_bulk {
 	short mode;
 	short dir;
@@ -253,7 +251,7 @@ struct vchiq_service {
 	VCHIQ_SERVICE_HANDLE_T handle;
 	unsigned int ref_count;
 	int srvstate;
-	VCHIQ_USERDATA_TERM_T userdata_term;
+	void (*userdata_term)(void *userdata);
 	unsigned int localport;
 	unsigned int remoteport;
 	int public_fourcc;
@@ -501,7 +499,7 @@ extern struct vchiq_service *
 vchiq_add_service_internal(struct vchiq_state *state,
 			   const struct vchiq_service_params *params,
 			   int srvstate, VCHIQ_INSTANCE_T instance,
-			   VCHIQ_USERDATA_TERM_T userdata_term);
+			   void (*userdata_term)(void *userdata));
 
 extern enum vchiq_status
 vchiq_open_service_internal(struct vchiq_service *service, int client_id);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index f506858987b7..4e84c8ad3e85 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -63,20 +63,19 @@ struct vchiq_element {
 
 typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
 
-typedef enum vchiq_status (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
-					      struct vchiq_header *,
-					      VCHIQ_SERVICE_HANDLE_T, void *);
-
-
 struct vchiq_service_base {
 	int fourcc;
-	VCHIQ_CALLBACK_T callback;
+	enum vchiq_status (*callback)(enum vchiq_reason,
+                                      struct vchiq_header *,
+                                      unsigned int, void *);
 	void *userdata;
 };
 
 struct vchiq_service_params {
 	int fourcc;
-	VCHIQ_CALLBACK_T callback;
+	enum vchiq_status (*callback)(enum vchiq_reason,
+				      struct vchiq_header *,
+				      unsigned int, void *);
 	void *userdata;
 	short version;       /* Increment for non-trivial changes */
 	short version_min;   /* Update for incompatible changes */
@@ -94,7 +93,6 @@ struct vchiq_config {
 };
 
 typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
-typedef void (*VCHIQ_REMOTE_USE_CALLBACK_T)(void *cb_arg);
 
 extern enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
 extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
@@ -137,7 +135,7 @@ extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service
 	enum vchiq_service_option option, int value);
 
 extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
-					  VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
+					   void (*callback)(void *cb_arg), void *cb_arg);
 extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
 
 extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
-- 
2.17.1


