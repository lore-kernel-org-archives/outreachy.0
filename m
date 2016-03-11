X-GM-THRID: 6259699399543226368
X-Received: by 10.140.150.210 with SMTP id 201mr8528450qhw.28.1457726935259;
        Fri, 11 Mar 2016 12:08:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.104.67 with SMTP id gc3ls1105592obb.76.gmail; Fri, 11 Mar
 2016 12:08:54 -0800 (PST)
X-Received: by 10.182.120.106 with SMTP id lb10mr8794846obb.24.1457726934937;
        Fri, 11 Mar 2016 12:08:54 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h69si490544pfj.0.2016.03.11.12.08.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:08:54 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id u190so4874843pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rKXBJCs4wc+PwIbr+VS4Omwbet8Q80ZYBLdOfBiTcjc=;
        b=iHr4Hyx1HnogaG9ttJi/Vjxoqpqm0+eWfv2DCe3Uf0N4+iQIV92tssFOKrb7JrNHP5
         gWMHvRGNvmKTsguCWRH/xHwduVGOZunzAfNC0ng4iZU/yxz1Xtq/xBvazV+nQc1LwP7d
         JQ1pqVb86iFOjRBgYP9Y+/Ep1sIT9j5BPuxIK6u6xstdd1a98pR57q1D8iPtnWgo0lIO
         SQDXFHaS61pu+AOudeMb0ybBxujVVTiO6b+ZJ56W0XEshmPiSV44rKMlKg86K0iLnNUy
         9FgRuwGGPTaw84lf9+XGVIU93QmiWmfTVtZXoBQkTXgkfIVYC7tAk1luSM+5q7BAVFn7
         jqnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rKXBJCs4wc+PwIbr+VS4Omwbet8Q80ZYBLdOfBiTcjc=;
        b=Wb2G+UE4VMOwNGdLG10zeQQGYkGNk154tYLLx2dOrq4c1gM0bTyjEPfji3pgt4rhxo
         YKhFIGvK5o7vL4TRJgKwKEdFpyZautLJCuNTDOXfUDibBGcuw5tvWmF1dBJ6xHgTSC4S
         NvOaNit+yjjpdLTB6dHS1luUa1EzgrwFhVwmjJA+jOJxXqXsTXOPjSclJIqlfGjyAHLB
         hGZULl9ymsegks8AASULP5uL30yyTUWwZl2BocqfUdgMEaPKrsQ4ICZj+4TkDD33KLmL
         W2YzixGAvb4dpFJoxoDj5mHWdOE15X7SAODMx2reQtkKass4vAkTDBXdguWTLb72G+yy
         u0Pg==
X-Gm-Message-State: AD7BkJIl4cuvRx9Z29dNggGxjZQSeAATEdETCnCvV0N/uWHsGWYvtEYEF5hYuWMxCT3LSQ==
X-Received: by 10.98.64.202 with SMTP id f71mr10765583pfd.113.1457726934751;
        Fri, 11 Mar 2016 12:08:54 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f66sm14880800pff.8.2016.03.11.12.08.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:08:54 -0800 (PST)
Date: Sat, 12 Mar 2016 01:38:37 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 10/13] staging: lustre: libcfs: Use
 list_for_each_entry_safe
Message-ID: <20160311200836.GA3037@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Doubly linked lists which are  iterated  using list_empty
and list_entry macros have been replaced with list_for_each_entry_safe
macro.
This makes the iteration simpler and more readable.

This patch replaces the while loop containing list_empty and list_entry
with list_for_each_entry_safe.

This was done with Coccinelle.

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry_safe;
@@

T *I1;
+ T *tmp;
...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, tmp, &E1, I2)
{
...when != T *I1;
- I1 = list_entry(E1.next, T, I2);
...
}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v3:
	-Combined all "Use list_for_each_entry" lustre patches into a
	 patch-set

 drivers/staging/lustre/lnet/libcfs/workitem.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/libcfs/workitem.c b/drivers/staging/lustre/lnet/libcfs/workitem.c
index f2ebed8..c72fe00 100644
--- a/drivers/staging/lustre/lnet/libcfs/workitem.c
+++ b/drivers/staging/lustre/lnet/libcfs/workitem.c
@@ -436,6 +436,7 @@ void
 cfs_wi_shutdown(void)
 {
 	struct cfs_wi_sched	*sched;
+	struct cfs_wi_sched *temp;

 	spin_lock(&cfs_wi_data.wi_glock);
 	cfs_wi_data.wi_stopping = 1;
@@ -458,9 +459,7 @@ cfs_wi_shutdown(void)
 		}
 		spin_unlock(&cfs_wi_data.wi_glock);
 	}
-	while (!list_empty(&cfs_wi_data.wi_scheds)) {
-		sched = list_entry(cfs_wi_data.wi_scheds.next,
-				   struct cfs_wi_sched, ws_list);
+	list_for_each_entry_safe(sched, temp, &cfs_wi_data.wi_scheds, ws_list) {
 		list_del(&sched->ws_list);
 		LIBCFS_FREE(sched, sizeof(*sched));
 	}
--
2.1.4


