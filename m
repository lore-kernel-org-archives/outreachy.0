X-GM-THRID: 6952817933661765632
X-Received: by 2002:aa7:c952:: with SMTP id h18mr25297597edt.269.1618829077158;
        Mon, 19 Apr 2021 03:44:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls801298edw.2.gmail; Mon, 19
 Apr 2021 03:44:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzff5YbSMwoSt1BvPXZHk9W/N4RqBvjm3oiQuHajoUzFmBsuqR6TeuEAOULcVRWDDwNs4lt
X-Received: by 2002:aa7:d615:: with SMTP id c21mr11796319edr.176.1618829075636;
        Mon, 19 Apr 2021 03:44:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618829075; cv=none;
        d=google.com; s=arc-20160816;
        b=JfB1wV7jnwJopb9OKQ4km3WyzpERw65TXvjInc+g+xI8ju2AjNnUEv3ZhrRtQdDqht
         0fS1JVXc2ZbW976wsw57LAk/a8FDxH+IhPOjlFADRQvUVLP5RFzCfQpflFLT5fCCWSqH
         jETLSK0V2nLp5olcAZ+a+TsrbXhEdqenYor98QVblfXNC0qs8JfuYJupmVPbWKK4dV2S
         BjsCNWI47pSKNRPIU+0s56ancXsyCNCX8flewS+chlO0+jcjAjxfSfvcHijmeDiLj/vs
         J1IZSf8sgg9+ic551W0vCvyu1soWugG3QJUAM6E5QC/XaOXgLUcFvQ6ZPWP9xxNagGVj
         JcoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ShTncdUzjrz6cNLv2EKSnQN/sv7lyGf36TiUA7bk/P0=;
        b=N0Aq+f6ufE7wtQ8pDOFYxQwTUNHaJE3SO5AtAWvlkCH/l8gqdojRhR0/gYRK3UG/mz
         exs2udrXaAN3lAt0yAW/nOgagiUAGdNvV2ppJaswIFzOCWQbt7M6VZ+F1qbkDs6ALOH7
         jsRJBzWpT7y9ff7+ldrOe6pXeFJYxHFht9R9/T2h43ZN2hoVCSR+FJ5ZMcnXvmvxB32I
         nSwNPIqe36yyqYTj2uwtBa6ddvA7n2q4ZWsv/1OwUaFa+yAkxirYb7aCtz1VC5W4D114
         zQ0DbPvkVFQ7HKyiIWDAtRIScxyGZPSg8EZ8o6AbhYl8SpaLX+j2wAmGtNMtYPbJHjUE
         MnfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bcarvalho@bcarvalho-ubuntu.lan>
Received: from bcarvalho-Ubuntu.lan (113.95.37.188.rev.vodafone.pt. [188.37.95.113])
        by gmr-mx.google.com with ESMTPS id h7si428106ede.0.2021.04.19.03.44.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 03:44:35 -0700 (PDT)
Received-SPF: neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) client-ip=188.37.95.113;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from bcarvalho-Ubuntu.lan (localhost [127.0.0.1])
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Debian-18) with ESMTP id 13JAiXXN163515;
	Mon, 19 Apr 2021 11:44:33 +0100
Received: (from bcarvalho@localhost)
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Submit) id 13JAiXtR163514;
	Mon, 19 Apr 2021 11:44:33 +0100
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
        airlied@linux.ie, daniel@ffwll.ch, melissa.srw@gmail.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 2/3] drm: drm_blend.c: Use tabs for code indents
Date: Mon, 19 Apr 2021 11:44:18 +0100
Message-Id: <f441188f84aac2f9f72f36a42c88623b16cd1f87.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
References: <cover.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove space and use tabs for indent the code to follow the
Linux kernel coding conventions.
Problem found by checkpatch.

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/gpu/drm/drm_blend.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_blend.c b/drivers/gpu/drm/drm_blend.c
index 26e2f2ffd255..ec37cbfabb50 100644
--- a/drivers/gpu/drm/drm_blend.c
+++ b/drivers/gpu/drm/drm_blend.c
@@ -328,8 +328,8 @@ unsigned int drm_rotation_simplify(unsigned int rotation,
 	if (rotation & ~supported_rotations) {
 		rotation ^= DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y;
 		rotation = (rotation & DRM_MODE_REFLECT_MASK) |
-		           BIT((ffs(rotation & DRM_MODE_ROTATE_MASK) + 1)
-		           % 4);
+			    BIT((ffs(rotation & DRM_MODE_ROTATE_MASK) + 1)
+			    % 4);
 	}
 
 	return rotation;
-- 
2.25.1


