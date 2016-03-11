X-GM-THRID: 6256340731045085184
X-Received: by 10.107.19.70 with SMTP id b67mr8381569ioj.6.1457726379217;
        Fri, 11 Mar 2016 11:59:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.49.6 with SMTP id q6ls242226ign.8.canary; Fri, 11 Mar 2016
 11:59:38 -0800 (PST)
X-Received: by 10.66.224.38 with SMTP id qz6mr6869905pac.43.1457726378844;
        Fri, 11 Mar 2016 11:59:38 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id y20si1493440pfa.2.2016.03.11.11.59.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 11:59:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id q6so9265377pav.0
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 11:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NKlp2FT50fpo9DOFKNPSljaGqLL3ZzEDPjDn6b5goYk=;
        b=Q8lJdg10jZ3Arz0OmkBISHAS9uK0hyQhvFzatl0dKSbQEDSDmA76QcajaLdH6uQh99
         nVJ3cgS7+ULxk03nDTysuJ07UUHlvGPeb7PAs9Ag0KyvRIRc2hm5ZZysKIXk+wwgOibu
         9oDYuAlm2aJEp/hE2+Gab6UCmZJDLqn1scZUAXARdr/Zi9d1Whoj0Yf4OoHsM68x3kpA
         DlQef9Za8TQs5h7hyvyIqLCvKShgyXpO7WezOQRT/xHoRpQTvw8cdt1v5Qbl13jQDTvs
         T7+9byHSaCdhlNoH4TgKOU4tkKA93dFpZjpILox0DXeqZpuGIPDD/QFLNNSDrELvhUzL
         u9fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NKlp2FT50fpo9DOFKNPSljaGqLL3ZzEDPjDn6b5goYk=;
        b=U5HtqelG1NcdY2JH4eEA+xliaQ54T5+Pk0Q42y3w+dewh6/erfIVC5ALeXshrVJZGk
         fHjFNbOu2vf4bL3s/cIhNsgA95qHbQGUb/neZcfya7oOfYwQKAN8wm5uVbK4srqN5v/b
         RliXeF8viqqcLHa+HpztwFWU6DLoItlmmHtG45FRDZfql1x4/LZo9r8tn7nWNZj1iF28
         W/s5rw2/hMledjagJIp8MYApsykHgn3R97s1RrBY5XwLLY0n8WHlJCFm3CT1iRSkBcri
         Sc7EKI4y7wPWhr/lqWI9nxeTTH5xYOJ55Ylh2STrzMtiIttymssCCKmaRPbLHsTqGE7m
         +7GQ==
X-Gm-Message-State: AD7BkJLYc2Ic2kMUiHw+L3ogACUglquQX+VCYciTs6FTM0yTlwt16K/YJfqfs4LEO3WYZg==
X-Received: by 10.66.100.196 with SMTP id fa4mr18663337pab.37.1457726378709;
        Fri, 11 Mar 2016 11:59:38 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g23sm14830980pfg.35.2016.03.11.11.59.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 11:59:38 -0800 (PST)
Date: Sat, 12 Mar 2016 01:29:21 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 01/13] staging: lustre: obdclass: Use
 list_for_each_entry_safe
Message-ID: <20160311195920.GA2895@Karyakshetra>
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

 drivers/staging/lustre/lustre/obdclass/lustre_peer.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lustre_peer.c b/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
index 5c38c83..5f81246 100644
--- a/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
+++ b/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
@@ -150,6 +150,7 @@ int class_del_uuid(const char *uuid)
 {
 	LIST_HEAD(deathrow);
 	struct uuid_nid_data *data;
+	struct uuid_nid_data *temp;

 	spin_lock(&g_uuid_lock);
 	if (uuid) {
@@ -171,9 +172,7 @@ int class_del_uuid(const char *uuid)
 		return -EINVAL;
 	}

-	while (!list_empty(&deathrow)) {
-		data = list_entry(deathrow.next, struct uuid_nid_data,
-				  un_list);
+	list_for_each_entry_safe(data, temp, &deathrow, un_list) {
 		list_del(&data->un_list);

 		CDEBUG(D_INFO, "del uuid %s %s/%d\n",
--
2.1.4


