X-GM-THRID: 6264628276381089792
X-Received: by 10.140.40.239 with SMTP id x102mr24949636qgx.23.1458597433411;
        Mon, 21 Mar 2016 14:57:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.75 with SMTP id d69ls3858828qga.20.gmail; Mon, 21 Mar
 2016 14:57:12 -0700 (PDT)
X-Received: by 10.140.30.99 with SMTP id c90mr24681597qgc.2.1458597432647;
        Mon, 21 Mar 2016 14:57:12 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y20si4248591pfa.2.2016.03.21.14.57.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 14:57:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id u190so32336764pfb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 14:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=j2G5SheBFoRj7W3mhrgJO7yXneSvycTh5HmssKgAK/Y=;
        b=lvxz04KSOsWqxS8ku8FWg+lOxvAzQtKCu00B9HVCKLV0MYR8hHuG31eKaWOCoLENeR
         9Mqz+65qYKblNYkvueLB/WPBf6RgiWp0p2KvW+gwmlZkeCuPNzQV/TDmU5X2jpUKxwM1
         L071Ffe6UC3g/Tayq2XNL0es3q3HVg6ZVUOhpGX6SNvdj5e3DRtKuZsTLIF471BEBU0/
         iKYqmA7utu8QnwEj7aHN4iF3cu0r3L65n0EXh8PLf6UuQJlQt0ul6ehVwmlVMjeWnwam
         Tg0l3hyEqB3R/E9pkIJbwJOwW0Cg5Vx8BEnAImk6FShf8CeN9kGxMuqesP1x49v/7Smy
         9MqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=j2G5SheBFoRj7W3mhrgJO7yXneSvycTh5HmssKgAK/Y=;
        b=dvNurgJtZrnPSO8h2hyA66upTm78EtV46Hlr9oVyvTFDFbuDwzvWF2Ep1lj2Fu700j
         367K7umpxWgrmPFwhiGAlUK2D7OcjxDQ0NUQhqaBTIAxKYBvtaOSaQNOyPeQAzGlOJCg
         KjFXpy82upjG+wABDiQb3qA/Gx3OBgO0lEIT8aJKWLbFJpyb6LC0EdLAd38Cr4kjy1c0
         UKZZfRiKMkSlN1DobNPjrQ+Edaw2tXRzD+bMtSuVjv20vJw9CnWsC5L4g7rGBwrL034f
         uTURZb46p04XUoVgxZgIgPOeFCk/jAlOlU+1qtgqYXddTiQw8K3qCG5S/1lpmxHTSfrh
         DEbQ==
X-Gm-Message-State: AD7BkJK+Q0INXsBt8upvssyO8wiG8cM+KKQr7LL3NHiLYmF3FUORsxon4GBhMMdLf0yVEQ==
X-Received: by 10.98.86.157 with SMTP id h29mr48765952pfj.105.1458597432486;
        Mon, 21 Mar 2016 14:57:12 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id 83sm18811618pfn.46.2016.03.21.14.57.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 14:57:11 -0700 (PDT)
Date: Mon, 21 Mar 2016 20:28:16 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: Do not add space between function name and
 open parenthesis.
Message-ID: <20160321145816.GA4355@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not add space between function name and open parenthesis.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 .../staging/lustre/lustre/osc/osc_cl_internal.h    | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_cl_internal.h b/drivers/staging/lustre/lustre/osc/osc_cl_internal.h
index d55d04d..3dfe5f6 100644
--- a/drivers/staging/lustre/lustre/osc/osc_cl_internal.h
+++ b/drivers/staging/lustre/lustre/osc/osc_cl_internal.h
@@ -417,20 +417,20 @@ extern struct lu_context_key osc_session_key;
 int osc_lock_init(const struct lu_env *env,
 		  struct cl_object *obj, struct cl_lock *lock,
 		  const struct cl_io *io);
-int osc_io_init  (const struct lu_env *env,
-		  struct cl_object *obj, struct cl_io *io);
-int osc_req_init (const struct lu_env *env, struct cl_device *dev,
-		  struct cl_req *req);
+int osc_io_init(const struct lu_env *env,
+		struct cl_object *obj, struct cl_io *io);
+int osc_req_init(const struct lu_env *env, struct cl_device *dev,
+		 struct cl_req *req);
 struct lu_object *osc_object_alloc(const struct lu_env *env,
 				   const struct lu_object_header *hdr,
 				   struct lu_device *dev);
 int osc_page_init(const struct lu_env *env, struct cl_object *obj,
 		  struct cl_page *page, struct page *vmpage);
 
-void osc_index2policy  (ldlm_policy_data_t *policy, const struct cl_object *obj,
-			pgoff_t start, pgoff_t end);
-int  osc_lvb_print     (const struct lu_env *env, void *cookie,
-			lu_printer_t p, const struct ost_lvb *lvb);
+void osc_index2policy(ldlm_policy_data_t *policy, const struct cl_object *obj,
+		      pgoff_t start, pgoff_t end);
+int  osc_lvb_print(const struct lu_env *env, void *cookie,
+		   lu_printer_t p, const struct ost_lvb *lvb);
 
 void osc_page_submit(const struct lu_env *env, struct osc_page *opg,
 		     enum cl_req_type crt, int brw_flags);
@@ -458,11 +458,11 @@ int osc_cache_wait_range(const struct lu_env *env, struct osc_object *obj,
 void osc_io_unplug(const struct lu_env *env, struct client_obd *cli,
 		   struct osc_object *osc);
 
-void osc_object_set_contended  (struct osc_object *obj);
+void osc_object_set_contended(struct osc_object *obj);
 void osc_object_clear_contended(struct osc_object *obj);
-int  osc_object_is_contended   (struct osc_object *obj);
+int  osc_object_is_contended(struct osc_object *obj);
 
-int  osc_lock_is_lockless      (const struct osc_lock *olck);
+int  osc_lock_is_lockless(const struct osc_lock *olck);
 
 /*****************************************************************************
  *
-- 
1.8.3.4


