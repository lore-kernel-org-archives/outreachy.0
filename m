X-GM-THRID: 6260795307538251776
X-Received: by 10.129.125.215 with SMTP id y206mr6986358ywc.54.1457705030711;
        Fri, 11 Mar 2016 06:03:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.32 with SMTP id w32ls1203081ioi.38.gmail; Fri, 11 Mar
 2016 06:03:50 -0800 (PST)
X-Received: by 10.66.62.195 with SMTP id a3mr7047975pas.10.1457705030229;
        Fri, 11 Mar 2016 06:03:50 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 12si1314067pfb.1.2016.03.11.06.03.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 06:03:50 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so8445204pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 06:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=fzx3qp6Zll+ptlx5F5Iz+X2n04xRr+7aY4Gfg4X++i8=;
        b=wvlKI5UfkP6A2j0Shumb4EUZ9cd5KMw6PogjAi/ydcOcwx+aVpI/ofUcHfVdpNkPeo
         3OcmHzACGjUmZeJPsDG7z7zil7zoIsHLUTWcPLfZsLth5JHnB1UBjcJm9AftJtGlBjL3
         uSJRKmMBmAnqP6nRcfFOcENRyMT6Dvb8TgmkJdzwsNhtBhgHBvBcU8h/m5XXTWtPhjIo
         xYoyqd37P7ppj1rwpCbi+XOWXqDG3WpTa1YDowedxi7G8ZYwJnDPUAOoiBJkV4vfvs7k
         E+V9EX0b5vyM8olhcNfOSd7by3nP/xaK14aTUALkkDw0chJlWbS5KcqHowjlGC3gCBXq
         mDHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=fzx3qp6Zll+ptlx5F5Iz+X2n04xRr+7aY4Gfg4X++i8=;
        b=AhscMjjImL7up/nVbIg89cs1AtLYICwpYoTE2n7K6hgGSd3vNoXAf9CKBhPuQPk1XX
         +O7tdAzsMGvsZ1Ba8zmAP8rdixHN1TljeEgolWp/ayAPf5+I9a7z/6551u9VWK8afV2w
         2LDVCCeREyxhXA/Qt7hpOeBnmKf/TXmJQKwfJhGer43tBD38G3K1N8gqVua/6FvdawlA
         MYRZhumsuDayPB/UdkOEGogkWPcEGlYi4/97E6LPnCoM7Qk33reyHGgMmxfPD4zylWz4
         bpTrri4o5Dc5hzXVtpF8PKX0HiRjRkinrp0GzliRBU56alsVmnwvlkzX/bxA2rBX74Tv
         DrOw==
X-Gm-Message-State: AD7BkJLLRvqOJCT+jAmf8tEVKYGyR7AiFwrFKimDShr2o/Ir1QfaPm1T7eN/oTge7pjHgA==
X-Received: by 10.66.235.9 with SMTP id ui9mr15545080pac.135.1457705030101;
        Fri, 11 Mar 2016 06:03:50 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.149.188])
        by smtp.gmail.com with ESMTPSA id h2sm13296975pfd.91.2016.03.11.06.03.43
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 06:03:49 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 11 Mar 2016 19:33:34 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/2] Staging: android: ashmem.c: Redefine macros as static inline functions
Date: Fri, 11 Mar 2016 19:33:04 +0530
Message-Id: <36ffb7cc0b6d3da8b215b07426a099c7ef8f8565.1457703530.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457703530.git.bhumirks@gmail.com>
References: <cover.1457703530.git.bhumirks@gmail.com>
In-Reply-To: <cover.1457703530.git.bhumirks@gmail.com>
References: <cover.1457703530.git.bhumirks@gmail.com>

Convert macros page_in_range and range_before_page into static inline
functions as static inline functions are preferred over macros. The
change can be done as the arguments at all call sites have the same type.
Also, both the macros have same type of arguments and return
values.
Done using coccinelle:

@r@
identifier f;
expression e;
@@
#define f(...) e

@r1@
identifier r.f;
identifier range,page;
expression r.e;
@@
- #define f(range,page) e
+ static inline int f(struct ashmem_range *range, size_t page)
+ {
+	return e;
+ }

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/android/ashmem.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 8ae1308..d3e884e 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -112,15 +112,19 @@ static struct kmem_cache *ashmem_range_cachep __read_mostly;
 #define page_range_subsumed_by_range(range, start, end) \
 	(((range)->pgstart <= (start)) && ((range)->pgend >= (end)))
 
-#define page_in_range(range, page) \
-	(((range)->pgstart <= (page)) && ((range)->pgend >= (page)))
+static inline int page_in_range(struct ashmem_range *range, size_t page)
+{
+	return (((range)->pgstart <= (page)) && ((range)->pgend >= (page)));
+}
 
 #define page_range_in_range(range, start, end) \
 	(page_in_range(range, start) || page_in_range(range, end) || \
 		page_range_subsumes_range(range, start, end))
 
-#define range_before_page(range, page) \
-	((range)->pgend < (page))
+static inline int range_before_page(struct ashmem_range *range, size_t page)
+{
+	return ((range)->pgend < (page));
+}
 
 #define PROT_MASK		(PROT_EXEC | PROT_READ | PROT_WRITE)
 
-- 
1.9.1


