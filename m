X-GM-THRID: 6255538315801395200
X-Received: by 10.140.155.14 with SMTP id b14mr431500qhb.5.1456481012498;
        Fri, 26 Feb 2016 02:03:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.25.175 with SMTP id 44ls966736qgt.1.gmail; Fri, 26 Feb
 2016 02:03:31 -0800 (PST)
X-Received: by 10.140.240.129 with SMTP id l123mr444241qhc.8.1456481011983;
        Fri, 26 Feb 2016 02:03:31 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ff2si1951043pad.2.2016.02.26.02.03.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 02:03:31 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q63so1128881pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 02:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8OZvuoGVH8rSD6KKcR96p9q/w9zeLtEHKDryk00UL2s=;
        b=ndWxPZb8AbSc6UIFKSlHu6VGpGdxIXXkt575YjKfN8/SSuaHQcMv7f4cbo31drSOGZ
         x+fhQetqEr7h4E4sXMQqrc1sVXYC/UR6occUyZc0ZY3ERmcDyVzfkE/ajiRY/T2ZIkQu
         4e+crzk63tLw2W1CL4IXxJdVTkt0HxpS6BI5loE69t5/POLXjfHmY/8GHlquN4EhuFV8
         kcXNGBNr5K1j2MkoFIeq4h/mLb7JRneJLOxgaEfHuk0tiu8k63fCydlL1SAJJoDppo7/
         Sfui9ewPsQhupA7z+qKJDYPAuJF9fLSbA7nL7VxraWtPRafIeszXhw/wEV35tCk3xrjR
         hPig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8OZvuoGVH8rSD6KKcR96p9q/w9zeLtEHKDryk00UL2s=;
        b=kyq22gdel92Hc2S1Xi1Uy7XX/ELbT7aGWou37aPHuTqvCaE0o0pba9VK0eD737/Ngh
         tO/B/56daDGQ/PwG2vhRbtSbs2vOyyZxwx4pV4Vg0UTCgvbE4s7M3GBzYtEZRHEWNINw
         ushxFjSnkPbOOy/z2VGs5bKkL7aLLFojwuwkN1zVr4R4b9UY65TI/VWSqSbWvSF/JGYi
         fsWy9l56kbFRHI6gsFV0jO9ew88cvDFkAWQD7q0wCr+J17YjbKh9SDG6P8aE8d1dfJJY
         rTX9pkRpk/O3mPFWNy6yYMEWVaRE59UHvn1HRSUkqJ98ZN/y1KiSu5ZPhdAXmaTBJOCw
         k8VA==
X-Gm-Message-State: AD7BkJJ0b6NkRkJGOlMNORcjS7ftsXrF/IIvf3lnVNeIDweTn7uln9W5DrUB7Yk2rDafnw==
X-Received: by 10.98.8.200 with SMTP id 69mr823973pfi.39.1456481011822;
        Fri, 26 Feb 2016 02:03:31 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tn5sm18143385pac.32.2016.02.26.02.03.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 02:03:31 -0800 (PST)
Date: Fri, 26 Feb 2016 15:34:08 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: osc: Use list_for_each_entry
Message-ID: <20160226100408.GA11156@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

In general, doubly linked lists are iterated  using list_empty
and list_entry functions. But it can be better written using
list_for_each_entry macro.

This patch replaces the while loop containing list_empty and list_entry
with list_for_each_entry and list_for_each_entry_safe(if list_del is
used int the loop).

This was done with Coccinelle.

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry_safe;
@@

T *I1;
+ T *temp;
...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, temp, &E1, I2)
{
...when != T *I1;
- I1 = list_entry(E1.next, T, I2);
...
}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-Fixed typo "lusture" to "lustre" in the subject.

 drivers/staging/lustre/lustre/osc/osc_page.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/staging/lustre/lustre/osc/osc_page.c
index d11582a..f7153bc 100644
--- a/drivers/staging/lustre/lustre/osc/osc_page.c
+++ b/drivers/staging/lustre/lustre/osc/osc_page.c
@@ -564,6 +564,7 @@ int osc_lru_shrink(struct client_obd *cli, int target)
 	struct cl_object *clobj = NULL;
 	struct cl_page **pvec;
 	struct osc_page *opg;
+	struct osc_page *temp;
 	int maxscan = 0;
 	int count = 0;
 	int index = 0;
@@ -583,14 +584,12 @@ int osc_lru_shrink(struct client_obd *cli, int target)
 	client_obd_list_lock(&cli->cl_lru_list_lock);
 	atomic_inc(&cli->cl_lru_shrinkers);
 	maxscan = min(target << 1, atomic_read(&cli->cl_lru_in_list));
-	while (!list_empty(&cli->cl_lru_list)) {
+	list_for_each_entry_safe(opg, temp, &cli->cl_lru_list, ops_lru) {
 		struct cl_page *page;

 		if (--maxscan < 0)
 			break;

-		opg = list_entry(cli->cl_lru_list.next, struct osc_page,
-				     ops_lru);
 		page = cl_page_top(opg->ops_cl.cpl_page);
 		if (cl_page_in_use_noref(page)) {
 			list_move_tail(&opg->ops_lru, &cli->cl_lru_list);
--
2.1.4


