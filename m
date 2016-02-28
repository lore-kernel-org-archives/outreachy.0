X-GM-THRID: 6256378411823923200
X-Received: by 10.129.73.215 with SMTP id w206mr9603856ywa.6.1456676612296;
        Sun, 28 Feb 2016 08:23:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.33 with SMTP id 30ls2166508qgc.99.gmail; Sun, 28 Feb
 2016 08:23:31 -0800 (PST)
X-Received: by 10.129.41.70 with SMTP id p67mr9466351ywp.33.1456676611434;
        Sun, 28 Feb 2016 08:23:31 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x22a.google.com (mail-ig0-x22a.google.com. [2607:f8b0:4001:c05::22a])
        by gmr-mx.google.com with ESMTPS id im4si301801igb.2.2016.02.28.08.23.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:23:31 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22a as permitted sender) client-ip=2607:f8b0:4001:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22a as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22a.google.com with SMTP id y8so67572241igp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 08:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CSbax47oVMRBFs0FlrgGszMxv85GC+6uwBB1eeU2rVY=;
        b=sWtvmUXD95UMp6c98ycNGfobLIDz+dXigrx2IV5FSt8RS93oPEC1gZwIsgEVkvq2jB
         pcOjbIW5w6cLYsgoO6ht/3kxrJKbpz2r1jAmklN7pmnX5KUus1mK25VFFwwtyKoDWOy2
         s8++W3eSTnWqNdkFDzO1iCUtRlHYrIkydAuXeRkvaPE1ISKnmYpnNmnNC8hBvPuYWlBu
         11a9nd6BPbTWQl+ZG2VODcQmwtXinqpwNNM2jACxW232c9HKeCI/PrJnz1jtEeGVCsGu
         2oXdXOrQ9w6H4n2oTdweFOwVWvzoeGJrPdy+gMr7d020jk4eu2vF1RDiy1WEb9FycE/s
         uEHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CSbax47oVMRBFs0FlrgGszMxv85GC+6uwBB1eeU2rVY=;
        b=GEVk63wY+eXZijSuMSi6y73y/KVwUH7rN6jYwwG9YUy7m/dZu5IAM1NddRKhx+ER0n
         vwIb85HCajWNi0ixGxjDJLxyRft0MF5Hzi1CwFcWVgGbR3catUHtsroJPgq0ov8iSf3a
         kWKD/EutGEt6c1bFeIU2Abm0pJ1ez2Nw6x5+28/xmH/G+ArNVEa3dyT1dti8vtRI8oF+
         nkdY8LMHn4CeisHNCEUswTPieWs54JHqnK88BgVA8dlLAwWwN8jJjKe4i6CTJB+scnJS
         wE5bbsvI4y4TfYtnVK/cHVM6+Mt1iljJrn/jX3Fhfx7DJCkjnAM3iYAUk+VxqXreGr+G
         YyVQ==
X-Gm-Message-State: AD7BkJL192XGfQdQvxCTBFYUxZpWx0rKAxz+XjtdbiZVz/UUSdaCJpP93rwOUaaYp3j/NQ==
X-Received: by 10.50.43.226 with SMTP id z2mr6541301igl.78.1456676611210;
        Sun, 28 Feb 2016 08:23:31 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id 203sm9280516ioo.30.2016.02.28.08.23.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:23:30 -0800 (PST)
Date: Sun, 28 Feb 2016 16:22:40 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: mdc: Use list_for_each_entry_safe()
Message-ID: <20160228212240.GA7888@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry_safe() rather than a combination of
list_for_each_safe() and list_entry(). Also remove variable l that 
becomes useless as a result.

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
 drivers/staging/lustre/lustre/mdc/mdc_lib.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mdc/mdc_lib.c b/drivers/staging/lustre/lustre/mdc/mdc_lib.c
index b3bfdcb..a398958 100644
--- a/drivers/staging/lustre/lustre/mdc/mdc_lib.c
+++ b/drivers/staging/lustre/lustre/mdc/mdc_lib.c
@@ -520,18 +520,17 @@ int mdc_enter_request(struct client_obd *cli)
 
 void mdc_exit_request(struct client_obd *cli)
 {
-	struct list_head *l, *tmp;
+	struct list_head *tmp;
 	struct mdc_cache_waiter *mcw;
 
 	client_obd_list_lock(&cli->cl_loi_list_lock);
 	cli->cl_r_in_flight--;
-	list_for_each_safe(l, tmp, &cli->cl_cache_waiters) {
+	list_for_each_entry_safe(mcw, tmp, &cli->cl_cache_waiters, mcw_entry) {
 		if (cli->cl_r_in_flight >= cli->cl_max_rpcs_in_flight) {
 			/* No free request slots anymore */
 			break;
 		}
 
-		mcw = list_entry(l, struct mdc_cache_waiter, mcw_entry);
 		list_del_init(&mcw->mcw_entry);
 		cli->cl_r_in_flight++;
 		wake_up(&mcw->mcw_waitq);
-- 
2.5.0


