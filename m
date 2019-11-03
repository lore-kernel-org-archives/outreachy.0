X-GM-THRID: 6753896393761357824
X-Received: by 2002:a37:650c:: with SMTP id z12mr11693790qkb.130.1572755850653;
        Sat, 02 Nov 2019 21:37:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4454:: with SMTP id r81ls3551901qka.5.gmail; Sat, 02 Nov
 2019 21:37:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyPTfnabq5ZZS7nG1DeWx/Zz7Ovy3URBRsCr9YjTpef1VKDOFJVOnaMoPLyJdVBb3iLQpCM
X-Received: by 2002:a37:8b03:: with SMTP id n3mr12539272qkd.493.1572755849243;
        Sat, 02 Nov 2019 21:37:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572755849; cv=none;
        d=google.com; s=arc-20160816;
        b=RVHyh/RasKDISqhLrkmHSAKOtrDL1VMlzGYFmkLJd/MUrXS8+cCWQsuDscLEqgHXAF
         XaI1MZ1gTNAg4geq1H/SXT9ssV78p/LHxF4JB3U/3ujcV6/LfR7xsAioSDGe98/XY8k+
         YPc4AyU/p4M/6cS1HbRHk+G5syOh3YCnZ0643BWUE1yjuOArCe2VDeaZ10ioq1s4LL/I
         6rLtUI4yvjyTkQx+aQdvyn9REHC5qzKvJLSqVJeQ/cAojaSyy4YT/fB+GIXl1uuLguo0
         qI2HGU74lu8TTeFcP13l3Gm/vDEblY2F4gnEbwL92p4fljeoLfgX6mQbmnQSINjm15x1
         Cz/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=VswRVBGHjGETdnQNvcv8+7j5UXJKT1s5+tYdx3edSsc=;
        b=I2UJ1f8Xj7dChQ2JvhTvtAOeLIv5glsTIGneuoubl+c0R8o4Z2KD4JhBS/u57Ka5Ny
         SUyzx2X8Iw8jvGahl5S5vG7xgwuwIRbpR2fpL234V6qwxl9U0F/iFDfHQUHMVIfnaJwt
         QAbwA0ba80MFoZ9dqqC6ZO1FlUu6Dul3aw/ZLu5Gb1y3ZRgwGZluuV8+W1dwUIbL1mm0
         0zAYhGHi20ZuzE+BMwWgnbo45Ii6KVAffJHHtKRJyI7HKmgh27K+zOQHv+AcvTYNk7Mb
         Ogwz58kBcVwL57YZZZN9611i1yZhutJR6fFZs1j6o3RgbxM8KEmgDzL3bzMkM3imO3c9
         MA5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=frYCtVl1;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a189si781335qkb.4.2019.11.02.21.37.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 21:37:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=frYCtVl1;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id l3so9072980pgr.8
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 21:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=VswRVBGHjGETdnQNvcv8+7j5UXJKT1s5+tYdx3edSsc=;
        b=frYCtVl1PV/Eg0e7D3ZLTrhJkpzC1EnWfZTO1ah5xQhn6mrk5M6oQ+VmZzeuVtNCqT
         IcJAwKtf4Ed25tV0D4AK5LAfb6HB+cbX7MrFDKyjRmec8vfB5dsGmMUzgbNem1xDdJ+0
         Xq3nAuN7nziUPbfAeZMzT5rkudhcEvzar4JSwH+R9/l/9MGbvuOr0Gv1P/72/UV8YL3n
         2GeXFXL/4wVo0BQ3PdOyfXsKCAvezh4OOKG1qtGhXUX6w8en+28cOdES+Cfnc4GHGDYO
         5bAAVZW7W69GkFUP/YImMfEN9bUX8d/r3T5n5ttqESwe1zQjzM3hKYswe8SH+r3ZW+Ac
         LNTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=VswRVBGHjGETdnQNvcv8+7j5UXJKT1s5+tYdx3edSsc=;
        b=jahFY8JM2d3EMJ9bVaY/xquxuRTwst6RPgMXVvdXH/a//ABbe3kdFoud95jyTGgtaU
         bX7+s68Ac24QTIycpgZIfDT2XUL7oY69GCEqcEtFuhiZuRKDYPdwnZ43HI770d50LUXo
         fy5vwiSTx6+VkbaJ07wjGxY+LJlmckbB9r8TjDEpbY/mwqLqLa8KUvtb0FXQJPup2fgD
         PzBqe+uOXqGqF9mB7585VVnbUi4RLBSTMEErcz9YnVllGpERncJ4vVVcYve0TVS4MK2c
         05vk8F7sODy4uOwL7w2rlPb5NRfT5ZZRW0050/CIkB4vCYhpg5XzxdAUDGZTJf25RZb7
         3LtA==
X-Gm-Message-State: APjAAAXnCPBZ7tu1v2zUpm/hdCGCosN1E+bG+xDc1pYjI81tnvUs2qSO
	O2CvdgI2IlZ3NaGfxGwLRPZnzjqi5Nw=
X-Received: by 2002:a63:ee44:: with SMTP id n4mr5525008pgk.137.1572755848627;
        Sat, 02 Nov 2019 21:37:28 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id s66sm40144pfb.38.2019.11.02.21.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 21:37:28 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v5 07/10] staging: vc04_services: Renames remote use callback
Date: Sat,  2 Nov 2019 21:37:04 -0700
Message-Id: <5ea44f2d87ff127023dffb70da182e32faac39e8.1572755439.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>

Renames remote use callback function pointer to match kernel style.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 6f3d3b00066d..869ca218c515 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -93,7 +93,7 @@ struct vchiq_config {
 };
 
 typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
-typedef void (*VCHIQ_REMOTE_USE_CALLBACK_T)(void *cb_arg);
+typedef void (*vchiq_remote_callback)(void *cb_arg);
 
 extern enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
 extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
@@ -136,7 +136,7 @@ extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service
 	enum vchiq_service_option option, int value);
 
 extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
-	VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
+	vchiq_remote_callback callback, void *cb_arg);
 extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
 
 extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
-- 
2.17.1


