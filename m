X-GM-THRID: 6260795307538251776
X-Received: by 10.107.185.5 with SMTP id j5mr470510iof.8.1457705043792;
        Fri, 11 Mar 2016 06:04:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.194 with SMTP id g60ls2523115qge.52.gmail; Fri, 11 Mar
 2016 06:04:03 -0800 (PST)
X-Received: by 10.140.95.38 with SMTP id h35mr7038176qge.3.1457705043340;
        Fri, 11 Mar 2016 06:04:03 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id y20si1262989pfa.2.2016.03.11.06.04.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 06:04:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hj7so8441741pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 06:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CrSlqttezEwVDBGuwE7lm0bHJsdouH9PVA3ocx5pdgo=;
        b=GYwc986MHgDewlHH6/9ArbFKrimUaZBwFOW8tg383mt2WKkzsM/SEwNTeYFiO079HZ
         D3WtY2j2DiUFulxga+q3vipFJLYOn2OdQqE9Lj55E1FeJXsJk6YY7PSQhckAcIFtj7nw
         4AtT2rPTmgtli1MLmM4lNiUAs8IsIwl0647n2qyyyxd9Z/Dus4zutwd5x85iVFfewfGH
         lSl/jHsIndLC0MyLinX8tfsrx0BfElrBz2xNCuyft/+f+K9k9izaDdDqsLVSuQXT5m8m
         HYjuivSVO9/0EtrLIQvCyr5KLG6nZX1aDZvWlYwG87svkr8sbDvKh9HE3NjsHjsa3IUj
         mS+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=CrSlqttezEwVDBGuwE7lm0bHJsdouH9PVA3ocx5pdgo=;
        b=TIWhiXeDcfshfcgFX4U7ZiGpyLo/Bi7H8TnPukt26I7BQ/r8zRh//fJWx4jfZZb3e5
         ZlGhtgX4crE6Tke8HgXMambExaewMIC0sk/sEqJJjU2r1xKExJ0ymtf6s2hbKpL/I0+m
         fFu6Au2XVg70pqfn41XTvF6ZY4lPE8k6pvITZpT05yzuUjZWMlOo3Gud5f1zTluqgDGK
         JIz5xQaWmUIvw6GSLPhXvRURQmRmnHNM9noCLVTy2V86tfbEZoivpmQJH/SzS3H/nsbe
         1rXvsHoI8tZDj5eoCSQMDgKqN6c8COkruAS7lIm5Dwo0lxSborYCtfeaskO0udlP0Ud4
         Gt3w==
X-Gm-Message-State: AD7BkJIlTqwL1/KpnzYWtV4A5bpGM+0P+MitxD6Y64V2Ofq96s9IR/VU4EYVMMf8fpfW0w==
X-Received: by 10.66.218.225 with SMTP id pj1mr15262524pac.83.1457705043065;
        Fri, 11 Mar 2016 06:04:03 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.149.188])
        by smtp.gmail.com with ESMTPSA id 22sm13317831pfh.48.2016.03.11.06.03.56
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 06:04:02 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 11 Mar 2016 19:33:52 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/2] Staging: android: ashmem.c: Convert macros page_range_{subsumes/subsumed_by/in}_range to static inline function
Date: Fri, 11 Mar 2016 19:33:05 +0530
Message-Id: <8743d5b317759576c30c8ea05a04c537aec7234b.1457703530.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457703530.git.bhumirks@gmail.com>
References: <cover.1457703530.git.bhumirks@gmail.com>
In-Reply-To: <cover.1457703530.git.bhumirks@gmail.com>
References: <cover.1457703530.git.bhumirks@gmail.com>

Convert macros page_range_{subsumes/subsumed_by/in}_range to static
inline function as static inline functions are preferred over macros.
The change can be done as the arguments at all call sites have the same
type. Also, all three macro have same type of arguments and return
values so they can converted using a common semantic patch.

@r@
identifier f;
expression e;
@@
#define f(...) e

@r2@
identifier r.f;
identifier range,start,end;
expression r.e;
@@
- #define f(range,start,end) e
+ static inline int f(struct ashmem_range *range, size_t start, size_t end)
+{
+	return e;
+}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/android/ashmem.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index d3e884e..0a592d0 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -106,20 +106,29 @@ static struct kmem_cache *ashmem_range_cachep __read_mostly;
 #define range_on_lru(range) \
 	((range)->purged == ASHMEM_NOT_PURGED)
 
-#define page_range_subsumes_range(range, start, end) \
-	(((range)->pgstart >= (start)) && ((range)->pgend <= (end)))
+static inline int page_range_subsumes_range(struct ashmem_range *range,
+					    size_t start, size_t end)
+{
+	return (((range)->pgstart >= (start)) && ((range)->pgend <= (end)));
+}
 
-#define page_range_subsumed_by_range(range, start, end) \
-	(((range)->pgstart <= (start)) && ((range)->pgend >= (end)))
+static inline int page_range_subsumed_by_range(struct ashmem_range *range,
+					       size_t start, size_t end)
+{
+	return (((range)->pgstart <= (start)) && ((range)->pgend >= (end)));
+}
 
 static inline int page_in_range(struct ashmem_range *range, size_t page)
 {
 	return (((range)->pgstart <= (page)) && ((range)->pgend >= (page)));
 }
 
-#define page_range_in_range(range, start, end) \
-	(page_in_range(range, start) || page_in_range(range, end) || \
-		page_range_subsumes_range(range, start, end))
+static inline int page_range_in_range(struct ashmem_range *range,
+				      size_t start, size_t end)
+{
+	return (page_in_range(range, start) || page_in_range(range, end) ||
+		page_range_subsumes_range(range, start, end));
+}
 
 static inline int range_before_page(struct ashmem_range *range, size_t page)
 {
-- 
1.9.1


