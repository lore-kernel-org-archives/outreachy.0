X-GM-THRID: 6256371025364123648
X-Received: by 10.50.143.10 with SMTP id sa10mr336236igb.1.1456674892521;
        Sun, 28 Feb 2016 07:54:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.112.98 with SMTP id ip2ls313361igb.27.canary; Sun, 28 Feb
 2016 07:54:52 -0800 (PST)
X-Received: by 10.66.102.8 with SMTP id fk8mr9479551pab.44.1456674892202;
        Sun, 28 Feb 2016 07:54:52 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22e.google.com (mail-io0-x22e.google.com. [2607:f8b0:4001:c06::22e])
        by gmr-mx.google.com with ESMTPS id i9si810802igg.1.2016.02.28.07.54.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:54:52 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22e as permitted sender) client-ip=2607:f8b0:4001:c06::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22e as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22e.google.com with SMTP id z135so165360390iof.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 07:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fGOyio2X5j6X3ZCfflQfySM5Bwh/BvmUOZJuZGvmXJg=;
        b=BiLgfJh9bAHrcK6IBXJG8iM4uSc76UKA4d1FzAn6UjF5kkX8O1g4I/iIzVHza+i0Zf
         OoUuiddBnTVcDAZziwPVS57JuQiq84fu6mWilTqZXY4EsTjT+rix2o8Rc/Ep4lXdZhEj
         ZuX0s8ckbrZE5d6odJhPz5MvJx1uNMWm2jJ+9fMtzqT/imjHvkNRJ+z1CsScJClCAW1M
         vSjPV/s+vfhmtZmMwd/6d3aMUj0NMHg2S8mmBx8Fi3EJKqkUEOdM5T45xXhPVD5bo16C
         S4ia2esXZM5kvSeitIyunG0tVEZXRH3bNneg6mAVDF2Eg9f5E77hCbZoCF/OSExRPa8m
         Ityg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fGOyio2X5j6X3ZCfflQfySM5Bwh/BvmUOZJuZGvmXJg=;
        b=KhFj8V87crbIRUfLEUc2IrHy4k+36INAYMJCRt1CCopHN2jSk2x75NKxouFeJjwM1k
         2f8XoS82mNChQfGQu72coNVnZx4fK4xuEwXsX8nXxsBJh0slJ2pCxs3vxpQICFZAu7R3
         9hSAl/SOjne+q5BlVCM3y4OfKhhFq2RidkitfE74W3pNjnIJia9vPuvXV+VVdZEJAbMf
         a5DDWRcssb1YeULxl2k6JLXlAw/D9foaUwiHul3A5Es716z0UrVVpf1ry4C1esNMwJcz
         0HpmAvoFmZOTHyDu+y0u2M5dsgHNeNiNPh14Hq6aCrRULI0ahsT5IdGygcMftOOnPSQi
         PfIA==
X-Gm-Message-State: AG10YOR0qnUDUY8yluWLLnwT1OJ250gc4Vwt1JSLri/FzuvjFNSwQNv/GWhU2t737W7WPg==
X-Received: by 10.107.148.9 with SMTP id w9mr18409027iod.131.1456674892017;
        Sun, 28 Feb 2016 07:54:52 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id xh7sm5233521igb.1.2016.02.28.07.54.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:54:51 -0800 (PST)
Date: Sun, 28 Feb 2016 15:54:01 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: lov: Prefer
 list_for_each_entry_safe()
Message-ID: <20160228205401.GA7543@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry_safe() instead of a combination of
list_for_each_safe() and list_entry(). Also, remove declaration of
variable pos, which is no longer used.

Semantic patch used:

@a@
expression pos, n, head;
expression mem;
type t;
identifier var;
iterator name list_for_each_entry_safe, list_for_each_safe;
@@

- list_for_each_safe(pos, n, head)
+ list_for_each_entry_safe(var, n, head, mem)
  {
   ... when != var
-  var = \(list_entry \| container_of\)(pos, t, mem);
   ... when != pos
  }

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_obd.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
index 7ba670a..f62ae45 100644
--- a/drivers/staging/lustre/lustre/lov/lov_obd.c
+++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
@@ -857,11 +857,10 @@ static int lov_precleanup(struct obd_device *obd, enum obd_cleanup_stage stage)
 static int lov_cleanup(struct obd_device *obd)
 {
 	struct lov_obd *lov = &obd->u.lov;
-	struct list_head *pos, *tmp;
+	struct list_head *tmp;
 	struct pool_desc *pool;
 
-	list_for_each_safe(pos, tmp, &lov->lov_pool_list) {
-		pool = list_entry(pos, struct pool_desc, pool_list);
+	list_for_each_entry_safe(pool, tmp, &lov->lov_pool_list, pool_list) {
 		/* free pool structs */
 		CDEBUG(D_INFO, "delete pool %p\n", pool);
 		/* In the function below, .hs_keycmp resolves to
-- 
2.5.0


