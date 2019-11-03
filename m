X-GM-THRID: 6753896393761357824
X-Received: by 2002:a6b:e212:: with SMTP id z18mr5831988ioc.10.1572755848665;
        Sat, 02 Nov 2019 21:37:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:b6c1:: with SMTP id g184ls57699iof.15.gmail; Sat, 02 Nov
 2019 21:37:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx4e4kyTym63MxY7iBpJIZpvl+7t2J+mZ7H39wpzLmTje3eIcmGk6Yc7+oLZl+BgokBPO5N
X-Received: by 2002:a5d:9385:: with SMTP id c5mr19136535iol.197.1572755847568;
        Sat, 02 Nov 2019 21:37:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572755847; cv=none;
        d=google.com; s=arc-20160816;
        b=m6eY9Nr1Bfz25r9DmYoFLXkKNwAd9yQI+Sh2H8ILbpjPJrcUfmr0MDD4h3WHFSoanp
         pSi7Ip3ZuVHABKGWUgqd7hMhf2HKxZ1a5dDMl8xGuY6duUrUcSGgYze0aG1F71DZ+Roo
         1oaL8wrsYaRwuarI+YM18Iy1HeckK7UJrrCCNQvBMns9cwX1Yb7QwjzhG+wje1MhAcLd
         rFiLYp/an6ItxaYPIRnv4XA3y33GZfBQ9IZ8pG818+/PRobTW4HbKcfmp9vR42qN6CfO
         k5Fyp7ZOGTp80rufNecdPIUp8iwWREUt7WWRcm3OJfEJoPyolZH8wTUjGlhgdIJLt0HW
         WkUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=47OzmZxRrfv5HklHpab0XfwujysVhOfXB/BWbs6tD+4=;
        b=ai+VSgXc0x3shKndR/eMAaYYfX9HEt7OM1UbeInhZLiKpiFy6iJEOIgQ29bPaQn82P
         vO6U0klm7qp2AjIEzzZ5dgtF6iQjAksKMhFA0ceUrjJ5YttOl6+er8VLAGnj4pPdaevE
         Fy2NWSdrJz6MxdkZXBKWdUBb3ffCVARNQvI6WraWBE2Bl0OZYvgX0IgnW9fZDPWrnncz
         U/WewNXsvedegOXKkCf8jZRZ3pmYvYzXeaCQ6yds7YFGxyRVLdkg40qnoSxmoP/DDXGC
         uoABhaRTULksap8pkUwLVkyofHH1cIiN0rPk3Wn8ABi7QsLvlHacMhrRhYOZmOYxCxey
         ewxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=glCtQErn;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id b74si654011ilb.1.2019.11.02.21.37.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 21:37:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=glCtQErn;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c184so9885102pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 21:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=47OzmZxRrfv5HklHpab0XfwujysVhOfXB/BWbs6tD+4=;
        b=glCtQErnPqJ3ZVd6uOYVbvcYV+EmjeQhdbR/SSPjNL1pfgOkumAN+A52DLgy8wI/C0
         g5yzaX9dHoNtj+GjYikm5WOhTwsZejUxQcNqKccuBN6sK2E+FEp6xTeH/nLFpLzNF7cU
         n7ZbYH/PlQIfNZ4Zo9E+2sg0MmCf0fvQ8qLca14qnWROWvRu6lIROqByz3whuDpi6dBT
         tOTzxdtIWIME1tlkgtEkiJJ1v/+SLK9h6Cxept00pn7xaJlIHzgvgHa78vQtmMdNkbXp
         dpRYBUrnq+JvCcAPewwLMGoq/d8JxtmmIGtxxiMb2PpzCZcj8A0h1hbGJC2h1Dn/xAeX
         +tLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=47OzmZxRrfv5HklHpab0XfwujysVhOfXB/BWbs6tD+4=;
        b=jAQvT/eZQcfmj90iFfsPB8ZsGm4NZhu3kv+gYwPNx2BfSJ2cn+mPwzK/fsbp7rUVoZ
         hG0HtG9fSE+JZBlX9ql82hI536r3sOnX2mpMJ9hokZn8QdC7uqE3Sg1ADH4nEGA4A/he
         MbP1J9+bhQzInO+rEU1veew++gX/gOeG/xbjvDaJsBzvjH9a/AFXDcUhGtiWF6sAK9B7
         9AzC5qogOUdrNlVFO5n3Kd6R2Ao1BMMjZDJBDlGgjbm+KMTZv3FHu8KugnH+VNupRQsu
         LpMEEk013FzNcjPFnywaOX23Nxt2FXRxmsMwV7ItxjONWatnVpG3XyFFwQRdWQDarbm5
         Zhsw==
X-Gm-Message-State: APjAAAWvG335lt0/GZaiEQfj8ergy8zaptNcnJHYA+eahiQzmOOTYUn5
	PseXIcU7SSCOitwM6k8Ksi0=
X-Received: by 2002:a17:90a:c717:: with SMTP id o23mr26802963pjt.88.1572755847284;
        Sat, 02 Nov 2019 21:37:27 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id t13sm11489739pfh.12.2019.11.02.21.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 21:37:26 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v5 06/10] staging: vc04_services: Renames vchiq callback
Date: Sat,  2 Nov 2019 21:37:03 -0700
Message-Id: <743d921c23be836942656afa6e620ff2a3dae19c.1572755439.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>

Renames vchiq callback function. Original does not match kernel code
style.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_if.h    | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 7ad3db3bf096..6f3d3b00066d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -64,18 +64,18 @@ struct vchiq_element {
 typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
 
 
-typedef enum vchiq_status (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
+typedef enum vchiq_status (*vchiq_callback)(enum vchiq_reason,
                                              struct vchiq_header *,
                                              VCHIQ_SERVICE_HANDLE_T, void *);
 struct vchiq_service_base {
 	int fourcc;
-	VCHIQ_CALLBACK_T callback;
+	vchiq_callback callback;
 	void *userdata;
 };
 
 struct vchiq_service_params {
 	int fourcc;
-	VCHIQ_CALLBACK_T callback;
+	vchiq_callback callback;
 	void *userdata;
 	short version;       /* Increment for non-trivial changes */
 	short version_min;   /* Update for incompatible changes */
-- 
2.17.1


