X-GM-THRID: 6256376827936243712
X-Received: by 10.107.135.93 with SMTP id j90mr14879462iod.27.1456676243027;
        Sun, 28 Feb 2016 08:17:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.99 with SMTP id i90ls2196520qgf.46.gmail; Sun, 28 Feb
 2016 08:17:22 -0800 (PST)
X-Received: by 10.129.88.135 with SMTP id m129mr9255952ywb.47.1456676242175;
        Sun, 28 Feb 2016 08:17:22 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x22e.google.com (mail-ig0-x22e.google.com. [2607:f8b0:4001:c05::22e])
        by gmr-mx.google.com with ESMTPS id p10si868695igg.1.2016.02.28.08.17.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:17:22 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22e as permitted sender) client-ip=2607:f8b0:4001:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22e as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22e.google.com with SMTP id z8so63922692ige.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 08:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=P9bZa0nxdEaRbPsM54NGeUZz/p1DD+tAyjdqcZ90K38=;
        b=zna3G+nvGf6T1IjVSwfOfhrNBlvBXWkxDqlCDRe++dTjwu0OPuKZI5lqkglx8fhvcz
         4nxBHar4AOsr8yARlMee33hs8elKhK9X7xWtcEueD2vozU4cVpBOTgwTjhxJTD6tFpkv
         F9Y6/I33WAsjfXy5ep6+D+gsPRH4a7PQvrIBJhBIhhsuZPfDZibKTUvmIMZl5Sj6Rny1
         zb8RBjzWHn066gniim6EGxUkO53naqKNJ7yBuyt848AdzAGijnQ+0utId7L9fAghRBnB
         kaqpKnQf9uD3fUu6reit0mmnWp7tQjQsdI+X7MwDRPglLSN9HZ3zimMRGSkgM9/nULhn
         3IHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=P9bZa0nxdEaRbPsM54NGeUZz/p1DD+tAyjdqcZ90K38=;
        b=muXEkP+VCAyd78bXsTgdrZ15eXsm+xNkDEr1A6bXQaOelWVI1UhDKITownNnGUIh4l
         VHXuSs3B5pFTJ3pq9+uae5ew2NAPM6kqYJpMdTshW5gd6Byr7bGWZK8SIvqST1ue8x+U
         rgF80g/YYuzNys2Pas8hUwwQcehXxejwFLCt+/m6Cbb1xWmURxhQv3VRjEojmO+ZDZWf
         KQ3SgCDaWPJCDEyPu4Se/JQ09eC0Aie49htlkIyNTzFPIqtiPh6pehhxTyzWi6P+mjz9
         cVhkInN90J/4nwDvLY1z6TdAv6Ix+6RRgIqHa0Zl+SyxwHw7OKtnHFdp03oW6wlNZ/87
         HXCw==
X-Gm-Message-State: AD7BkJKLGDuh0HE1H0LARAkhxH9KuF1qWw6E7PgQcMC/hsCOwpmIfMD4n3PRsKTia5FNmQ==
X-Received: by 10.50.43.134 with SMTP id w6mr5916330igl.22.1456676242006;
        Sun, 28 Feb 2016 08:17:22 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id nm15sm5250690igb.5.2016.02.28.08.17.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:17:21 -0800 (PST)
Date: Sun, 28 Feb 2016 16:16:32 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: obdclass: Use list_for_each_entry()
Message-ID: <20160228211631.GA7782@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry() rather than a combination of list_for_each()
and list_entry(). Also remove declaration ofvariable tmp which becomes useless 
as a result.

Semantic patch used:

@a@
expression pos,  head;
expression mem;
type t;
identifier var;
iterator name list_for_each_entry, list_for_each;
@@

- list_for_each(pos, head)
+ list_for_each_entry(var, head, mem)
  {
   ... when != var
-  var = \(list_entry \| container_of\)(pos, t, mem);
   ... when != pos
  }

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/genops.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
index 9042632..c836305 100644
--- a/drivers/staging/lustre/lustre/obdclass/genops.c
+++ b/drivers/staging/lustre/lustre/obdclass/genops.c
@@ -90,12 +90,10 @@ static void obd_device_free(struct obd_device *obd)
 
 static struct obd_type *class_search_type(const char *name)
 {
-	struct list_head *tmp;
 	struct obd_type *type;
 
 	spin_lock(&obd_types_lock);
-	list_for_each(tmp, &obd_types) {
-		type = list_entry(tmp, struct obd_type, typ_chain);
+	list_for_each_entry(type, &obd_types, typ_chain) {
 		if (strcmp(type->typ_name, name) == 0) {
 			spin_unlock(&obd_types_lock);
 			return type;
-- 
2.5.0


