X-GM-THRID: 6753896393761357824
X-Received: by 2002:aca:42d7:: with SMTP id p206mr1595038oia.129.1572915356619;
        Mon, 04 Nov 2019 16:55:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5f09:: with SMTP id f9ls3687024oti.13.gmail; Mon, 04 Nov
 2019 16:55:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqzwhPD56vGXzCxqmvMwpEx43ccFV0hpEzmrY1Bmxt+xHkfdWKr/Vmp5ASsbZPG+b7WJ0iSB
X-Received: by 2002:a9d:61cf:: with SMTP id h15mr4156783otk.83.1572915356097;
        Mon, 04 Nov 2019 16:55:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915356; cv=none;
        d=google.com; s=arc-20160816;
        b=TC23Bar4bEUG5eTzoydByLQw3szRB1pLy9ppUkAzP8q8hwU5rv4EN4kXNQDHf+os7f
         DuXUzoEEO2lSbaGGVS/geOktQFRQ5F8K3OtsJdwg6Ls4ZX8hxuhKcnSVye4eC623g2/y
         6qhWtqVNZdImrsEPUvrzW7FVOuc+RaJQ4NiyNW2owtZwkP3I5GGRSCd5LQSNYxfb/VZM
         k+xHzHXdSI0Q4dDl3lJw7bzE3QTw3avnmpHnH6vBh7Sa9Apou2xJdyAfJSsk+goI/tYi
         /AMEvI7toaKSLpSRjlq5Hf/HTgOgMz2uU1gDyji9akzGlucrINULW8pCTJB44DSecC2C
         7p7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=JAK/308wIygzdx3ZyeXwZ94Ii6n4cGKOFY7JVU7BO8g=;
        b=FSvzYMsJjxnUqeRgCfNwEVFMIxkVym6saFkNEWXBZ4bBBEaSIgPTTA7bOrHGMVbUBa
         3WLbzOrpqnsxqKt033P0WZZuGn8r3Rnzh7C2Yb6F4lZuLsjrLN1uOpBA1prr2jm6yh11
         9Z8bFxhFtBB7YarnrAjxXvgLRV5hkJ6pCkXv/sQoAKEjOX+x8M48Q3bcrj95sI6xxVfv
         cItsMOP2iiclZD8Rea/LW8H5LAaSM46CCH4cvZvN4SrRgrwQKoulmJike3AGpO875bK1
         Ci1gLqRB4pi/aMgD70CaRGULKWJu4PufXhHRe6k1rbMZyUm2UwryehHVFQYook01Xm6j
         qadw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+ZbTSwC;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id n18si115809otr.3.2019.11.04.16.55.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:56 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+ZbTSwC;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id g9so8525332plp.3
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=JAK/308wIygzdx3ZyeXwZ94Ii6n4cGKOFY7JVU7BO8g=;
        b=T+ZbTSwC5+VGe5pKhBuXZi1kVOFExTp8PTbZS13Cnw/2JAfMF4iPg5qMI6s9L2vwj1
         QlQhWOFzzsNdlBQwPPhP0yYHoLZCqaA+hcisth87Pcl1OGx/yN3YZxr5duPtn0HVmx5e
         bJlAmiCONcymxqW+z8a+8bejtreOs9a5UhlQXKdB0CfyYQpqYnljqHRnFdq5dVLvtn2+
         lijxfnsMEhCyiaMpzqo0GUSDnFM6IOuytDgs3I6wee567ozIIbthomozHbgd0vEIiVM6
         toPtCxeqsYn+ozFBTJl3zRvpmBRVbryJ0mAiDYkFFiBs/jwleXadch8FUSsy3M+WfbPd
         Eb6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=JAK/308wIygzdx3ZyeXwZ94Ii6n4cGKOFY7JVU7BO8g=;
        b=WuIi23Q+Rn0XdVwUDFBf5X/5YlCF1GVBkf1KwWiCEzSxvjmISfI0POijvXk4S73n0n
         aaFfFb5tzZ45BW7cZq/z32zF5+T7tgOo3Z4dGfvxWO5wskKJakAGQhU+LWjWJ9I3coVM
         m35NLyTPH/AFSpSrZVhV1JbRonOnEvZKJaMFY4sFPpZFsfcENVHqYqSL30exGSkJQfE9
         Hl+nW9nuykXmfnS8FF67Bwy4/12cg6IWF62e0Mo1gZcjOrT+G99eAWFWrusek4EPeZRk
         Yf7+qaDSvG1dLuAwaWG8xsmmDjevxNdt8CnuLl+IC8m3Fx+A4QlMVwKDFjEUppT7cD/4
         38Rw==
X-Gm-Message-State: APjAAAWU/2V0g5XNvADUpis5/4gUFZ/NSow85GVKUymj7r59wpz6sKcr
	zFXm6o3+2J6Kb+UDx1F7tIo=
X-Received: by 2002:a17:902:b184:: with SMTP id s4mr24035909plr.236.1572915355736;
        Mon, 04 Nov 2019 16:55:55 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id d127sm20518060pfc.28.2019.11.04.16.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:55 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 14/14] staging: vc04_services: Remove platform typedef
Date: Mon,  4 Nov 2019 16:55:24 -0800
Message-Id: <e65f802b6cff5af1630dc395d666e4b49356d29b.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>

Removes opaque platform struct typedef. Issue found by checkpatch.

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


