X-GM-THRID: 6753896393761357824
X-Received: by 2002:a05:6830:9a:: with SMTP id a26mr10635248oto.14.1572653072605;
        Fri, 01 Nov 2019 17:04:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4f0b:: with SMTP id d11ls1596135otl.0.gmail; Fri, 01 Nov
 2019 17:04:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxOhmbk6DMcGan2Ju16L69HsV6XUC0xQ+L0hV6LZqi7zZa3NEA/YcY0q+QUL/mxgTbztYuK
X-Received: by 2002:a9d:6d8a:: with SMTP id x10mr10740267otp.268.1572653071297;
        Fri, 01 Nov 2019 17:04:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572653071; cv=none;
        d=google.com; s=arc-20160816;
        b=gXIzypvW+F68EqeTHqr7wsEab2KDdIKITrmv4M9ZE2lvqaqlhprRvWvIt+MDPPBGAl
         +oz7YG5T3+UraHiweazRYpllTB4P9Dbey1NRaJE0ikdMxUPqCeZgrZjcJKwF5CskkTwh
         DePh4nNVA2dm2SuhXBWS/HFo3AzDtDZUKK+DpfadpuZuPjwEMtsZUSGZBgG5mz9L+pa3
         enQYAcDBuC4HcJ1qcg90mNl44+qoVZS+U5R6B+3W01Jby83o29k+JVpiEZfLMHHc36oL
         xTfiwnf4ARvHZFCQv8L1oaSI0xFSYe8BEkT6RHJy70vfq5+hxQggwP+onZJIFREHhCu7
         bIKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=BBdjFvCxBCwXB0nsG7vCZN4qIRTNKB41R/JNuWTK3z4=;
        b=alfagrp+wthXaz0d4lB/esH6NTd1lEYdnPUyoBrs9ngMW0472zRaB/UZ549VyLOXV8
         0LHI43vImLusIjBoe8FKD17vOTZkMu07xUGZQvyu8UW33A7/9ChD01JOAiP8c/Y4Tr5o
         YF5cz0xojkZHTaDF1GuzZ9gWI6cSYQWbOzIDH1RdfCuUbpzbzRKOI2lAbKzwHZZYawpx
         08mf8Ct4VJks4740eNcC6gVKXNGwrjVKnnxqz1MSrPRpN1QcDSkrRGJGQy52edC/Vqni
         3celHC9QlwMhBLNWQQZHL+/Rw1W//OzuU7ZR/WsOqmdVga16w1zI3McomlHJ+OOLYiui
         9n6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KBRrtQxS;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c19si515884oto.3.2019.11.01.17.04.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 17:04:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KBRrtQxS;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id s23so4044481pgo.9
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 17:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=BBdjFvCxBCwXB0nsG7vCZN4qIRTNKB41R/JNuWTK3z4=;
        b=KBRrtQxSVOYgRV4bfgS88kgy7hNqg1VK37RfVn3XrDliVcgPPRG30fuo5eSrZDq+8g
         ILevYrZ8sb1p3pGNwS68NnqSzOx8enAzLHUwNVEaQdhnxTvdbBocDoUla7Z0IhNUe38Z
         FmvXS2DJd8F55kfMR42dwL8jIpNARvD5IRJuXR5rr9+qsSJi/jqLoM02Cx6yP3K9EvGZ
         JgUKuej+CoF/k6P+zVdRsw05S639R1+x8qoPoxi6+AtZRwBgOgmEC79kvww45UceVyMO
         WV6FW51FDlAlYITh3KB+M86DJCW55gQ6xL5giU+88RaPnH3CgxEjRtwtDO41xT2N2GYb
         YJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=BBdjFvCxBCwXB0nsG7vCZN4qIRTNKB41R/JNuWTK3z4=;
        b=SIZ+BpMwukZWlfD/optJhrXWrvIVbTuYwpdyUHGVtLbHyuzDrkQYBMLzRkYGHEEQTj
         26zYGU1lNy1OleNnO0RQ9NABFw7fCIlfV3OoOW2k7aYjCC5pa8XbdWggV0ZaBV4afNHv
         DZLRjMQaBuAe10seK2ap+cFxeSJkU5Urd0IJOj3PX3AGTebSTpzhqD1b4rOytk2oVVF9
         q5CP5+A5t5OZ0Y6yNZ9TnMYP9fN6WHkoK0duoqDsgzNMwO8h61BX7IVVBB1KgVF2kgkk
         BQMAirQWYupBAqInVHqKQOPuMb2ZyEdPdET/QLYWHqDnq5rl7n4RTJn/FSvQWcb1GuoH
         z99g==
X-Gm-Message-State: APjAAAXIBInw1KgSkKU/99CSmOue033SJ0zNhz+uwDYWf20RTEsnDIg9
	21jAsqlUBAUfWQvm+tlp9gw=
X-Received: by 2002:a63:eb52:: with SMTP id b18mr15822582pgk.205.1572653070582;
        Fri, 01 Nov 2019 17:04:30 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id f185sm8668892pfb.183.2019.11.01.17.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 17:04:30 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v4 1/8] staging: vc04_services: Remove unused structs
Date: Fri,  1 Nov 2019 17:04:13 -0700
Message-Id: <acc1e07a0b2c4e67ae417086087c9ce3d7f932f4.1572652827.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572652827.git.jamal.k.shareef@gmail.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572652827.git.jamal.k.shareef@gmail.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>

Removes unused opaque struct typedefs. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi_common.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index e7955cbaf26a..1fdbe038500a 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -112,12 +112,6 @@ struct vchi_msg_vector {
 	int32_t vec_len;
 };
 
-// Opaque type for a connection API
-typedef struct opaque_vchi_connection_api_t VCHI_CONNECTION_API_T;
-
-// Opaque type for a message driver
-typedef struct opaque_vchi_message_driver_t VCHI_MESSAGE_DRIVER_T;
-
 // Iterator structure for reading ahead through received message queue. Allocated by client,
 // initialised by vchi_msg_look_ahead. Fields are for internal VCHI use only.
 // Iterates over messages in queue at the instant of the call to vchi_msg_lookahead -
-- 
2.17.1


