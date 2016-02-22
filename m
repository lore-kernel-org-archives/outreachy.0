X-GM-THRID: 6254017649143971840
X-Received: by 10.107.136.23 with SMTP id k23mr27458044iod.23.1456126954894;
        Sun, 21 Feb 2016 23:42:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.243 with SMTP id l106ls1410037qgd.43.gmail; Sun, 21 Feb
 2016 23:42:33 -0800 (PST)
X-Received: by 10.13.216.150 with SMTP id a144mr25231152ywe.52.1456126953974;
        Sun, 21 Feb 2016 23:42:33 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id 12si2967895pfb.1.2016.02.21.23.42.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 23:42:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id x65so88443856pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 23:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=t8m+KtiVrw31Xn3NewdF2BWZqvXK1cyoOvfI8U5tikU=;
        b=DNsJkXeI51xGI8nNgBib0NpsdsMSvQVu7/prEoYq0jL5cvqTmY+ep1F2KY4gnC8Ljs
         Nnu6RlAAeCGnEb9z7EsZrGcJl2eeyytLNTm14N6F+XOClNHnFyUYRCZ7+1YHAjH9SA11
         /WiJSgv2Y9MLCyNSQnWIH0r6NFtRdFtOWNGLbl6JNPWlN3Sob04lgPmfMCRmw/SampR8
         P24nmV79+B8VZHlhxxOdsep03qgHsJPweq8yS/pab7PDAywvVvBNscaUaFoxORrPUB4I
         aQdAEj3fqxdmjGsnpfQ8e2VDoOp76dgLpo8w8Y4sivKFIoCu7LJcRTF/7iixy8pX/Ev5
         Foug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=t8m+KtiVrw31Xn3NewdF2BWZqvXK1cyoOvfI8U5tikU=;
        b=Hq7Gu8X/eUzh7olqfSCd70ETq9KPq0UMT6A4EJ4iKXbBhkAx6PC/CbIwWtIAWp0kX7
         KanP1aYs2YYlw10OymBEWJJxkV9m8sfb/NfF6x+0owt8q0U5CrdpV0mJEOOG1d/yiApk
         xVqBvcAwLEnwXFPQfBXiHylfsYevp/S84d5ORUaWFmK1jy7sL+/Rs00Eozk6XxPqHjyg
         MFhgLie1i9y7sF1ZpkgdbqYxAkUuZL5lNZrD6VL+N74k0dMywiqIS3pxXB0QXhEbBBLY
         yuMntiENtvlqEZxFziGfYoDejhDR6f/ApEr2dnOfJ0zu/SwaUqgN/q0yJoUriBP70CVj
         60aw==
X-Gm-Message-State: AG10YOSQk7Ch93eRezuAMxsIL/Wu7Xogs1holHem/88MNCL+vX4isQ6TwD7TwjszmVUnNA==
X-Received: by 10.98.9.92 with SMTP id e89mr36240143pfd.34.1456126953808;
        Sun, 21 Feb 2016 23:42:33 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 19sm34351312pfb.64.2016.02.21.23.42.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 23:42:33 -0800 (PST)
Date: Mon, 22 Feb 2016 13:13:06 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lusture: osc:  Use list_for_each_entry
Message-ID: <20160222074306.GA10769@Karyakshetra>
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
iterator name list_for_each_entry;
@@

- while (list_empty(&E1) == 0)
+ list_for_each_entry (I1, &E1, I2)
{
        ...when != T *I1;
-        I1 = list_entry(E1.next, T, I2);
	...when != list_del(...);
	when != list_del_init(...);
}

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry_safe;
@@
T *I1;
+  T *tmp;
...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, tmp, &E1, I2)
{
	...when != T *I1;
-        I1 = list_entry(E1.next, T,I2);
	...
}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lustre/osc/osc_page.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/staging/lustre/lustre/osc/osc_page.c
index 5cb0ccc..ae4b868 100644
--- a/drivers/staging/lustre/lustre/osc/osc_page.c
+++ b/drivers/staging/lustre/lustre/osc/osc_page.c
@@ -575,14 +575,12 @@ int osc_lru_shrink(struct client_obd *cli, int target)
 	client_obd_list_lock(&cli->cl_lru_list_lock);
 	atomic_inc(&cli->cl_lru_shrinkers);
 	maxscan = min(target << 1, atomic_read(&cli->cl_lru_in_list));
-	while (!list_empty(&cli->cl_lru_list)) {
+	list_for_each_entry(opg, &cli->cl_lru_list, ops_lru) {
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


