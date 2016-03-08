X-GM-THRID: 6259699399543226368
X-Received: by 10.182.29.41 with SMTP id g9mr21288565obh.27.1457449840573;
        Tue, 08 Mar 2016 07:10:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.149.201 with SMTP id x192ls265230iod.8.gmail; Tue, 08 Mar
 2016 07:10:40 -0800 (PST)
X-Received: by 10.107.10.30 with SMTP id u30mr8376909ioi.31.1457449840263;
        Tue, 08 Mar 2016 07:10:40 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id ui7si587062pab.0.2016.03.08.07.10.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 07:10:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id 129so14844734pfw.1
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 07:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nh1dvbK0zbu6suCfUxxLzuvpcOEpzf5eEoiXvw/EjgM=;
        b=u4AmpAeTVKugbUh8a+eVZy5fg1mXzClk+w/5vby9R/4txSEs05TneX/REMoqEl3gAZ
         Uc+KsvspUkKaBbbf6xLBJxXOTEjM6PRPzXp95WG7Wto72ae16iQ52F7cfZlRRr57XlaL
         JmoYJEqm7TMUUj/QLYlNn9pMIDIGNOHna+u+23qYawD3epyC5wLyjnqds9kZdH/cfNqS
         8dIHVoT4aKSHrTCeZJEzlGfYGmpyBptdsXN/KlR2PB2jLIhLRauN+hZgDB7Bf8XkqfZ0
         ZUlgETqHESX4yCOe7gYr/6OLwQmobAfWg/XI4pUbzRYReBN+gCSryrss3rj01gz+RIvu
         cY7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nh1dvbK0zbu6suCfUxxLzuvpcOEpzf5eEoiXvw/EjgM=;
        b=IsiepGm0KjEQiEDa0vo112MrRMlLKA8+fgOtUpxfxLfdNN8+wjmg4zm9pO7WM+gJdH
         +e/rZ97lgW4XFOy6VC4RjVsjFewRrckJDo7HrnWMEsL23IkVGKQcOG0hcEc02sZvWXvs
         Zi6/MAbiY0p6FTHjjff6pkFpPntBzTMX1Djo7+k9GwT31NBR9T37dTp3B2upUkViKCLC
         18WDlGj6guYL3Er5yDoINNfh9hZ2D8yye4MNi006M0GfTa3itN/NeSQaAkMT2Omng79D
         +9DRkNgkrbJlQqHAnpNuP8Be6V8SQz2PjzsAgHzhIdNyvz+wQ+EERfPaN4Q611gimx4R
         /n7A==
X-Gm-Message-State: AD7BkJK2T8wfyEzokMZbzNWqtk6yroSf5XPX4sUpj/ttPYO8/V4iHrIJNriMijIeo88JFA==
X-Received: by 10.98.32.218 with SMTP id m87mr42704147pfj.48.1457449840106;
        Tue, 08 Mar 2016 07:10:40 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l14sm5738386pfi.23.2016.03.08.07.10.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 07:10:39 -0800 (PST)
Date: Tue, 8 Mar 2016 20:28:27 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: libcfs: Use list_for_each_entry_safe
Message-ID: <20160308145827.GA31749@Karyakshetra>
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
 drivers/staging/lustre/lustre/libcfs/workitem.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/workitem.c b/drivers/staging/lustre/lustre/libcfs/workitem.c
index f2ebed8..c72fe00 100644
--- a/drivers/staging/lustre/lustre/libcfs/workitem.c
+++ b/drivers/staging/lustre/lustre/libcfs/workitem.c
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


