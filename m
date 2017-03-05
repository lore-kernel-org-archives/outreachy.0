X-GM-THRID: 6394061646033059840
X-Received: by 10.129.181.75 with SMTP id c11mr5017716ywk.57.1488733505227;
        Sun, 05 Mar 2017 09:05:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.71 with SMTP id j68ls1866372ita.12.canary-gmail; Sun, 05
 Mar 2017 09:05:04 -0800 (PST)
X-Received: by 10.99.52.12 with SMTP id b12mr5037169pga.118.1488733504638;
        Sun, 05 Mar 2017 09:05:04 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r66si937583pfb.7.2017.03.05.09.05.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:05:04 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 67so10669938pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 09:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2e+Do+m6eUO1XMqiGeZHRq1CCEoIPHu6RH2hlr3RJWg=;
        b=MVxndA6YDqS/hkUl/h4paDpH2ShCYJho9m5t6UkGpGn14a4Y5DNzAUsFmOzp8qdv/l
         n+6frnk38ORn/IlxlDN5IA5uRi7Y6Jb39WXNbFvcP04I9x3Cz+YmJgHpdUvuJMA+rAQ0
         xiJoy1vV79AJ2GA5Z9p9A1saxewhaz/PSrnD9u5ODgw57XRVYTyQFusgzmDl7aVTyxCN
         HlBL+0ddBCs8na272QDtoqkfHCjxgz6PxW6r2pjmnkEMPsY21g3CVRbxH6wCdWkJRaQ9
         Y8DTAHwOjFmxIOjdkfqxaswALYe8Onssner+s+sOkFzcx8UrFKBuFjhE5xw9ZF9vCfEH
         i9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=2e+Do+m6eUO1XMqiGeZHRq1CCEoIPHu6RH2hlr3RJWg=;
        b=IYFymn1ATe/ep21xMWtKw+o2maAt+zowy1YC0IxMxFoCk/dMxKNh9kbixib1vWwaro
         mCOJJQzFi9jQihqWiVdIcvQoKR10JYQDa5sX07b1ArQTd1HhmIpdpWq4vZfa/x0BCnZf
         AVj8WjMwexIO7WgeF4puxnDmuaMAbYjbk/LINT1WDE8ju7PTsTnBUVLrPgFUqeA4hBSP
         EcxGFjfAmBUuOP8GFiXv0OL4cZ8Yh5dnpSFpAbWoLqH81YF4QdRVjMV38YNDvLb0qpn9
         NbTbRfftFYl4YMLtoAQE9FLtWB/PpMxtTGwcaHHPZTH+otHF36BY0Cwdn3RNnK5Yau/5
         TK3w==
X-Gm-Message-State: AMke39n/x6cNnQMYRLbfAWmXebeH7s3Se2wZ9V/QE/N1bhKnPkjYhZQyGiF0TjJAT/q/4g==
X-Received: by 10.99.117.8 with SMTP id q8mr15691379pgc.9.1488733504118;
        Sun, 05 Mar 2017 09:05:04 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 197sm34473108pfv.19.2017.03.05.09.05.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 09:05:03 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: oleg.drokin@intel.com
Cc: andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] staging: lustre: llite: Use list_for_each_entry_safe
Date: Sun,  5 Mar 2017 22:36:49 +0530
Message-Id: <1488733610-22289-5-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com>

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

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/lustre/lustre/llite/statahead.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/statahead.c b/drivers/staging/lustre/lustre/llite/statahead.c
index fb7c315..d1287b2 100644
--- a/drivers/staging/lustre/lustre/llite/statahead.c
+++ b/drivers/staging/lustre/lustre/llite/statahead.c
@@ -860,6 +860,7 @@ static int ll_agl_thread(void *arg)
 	struct inode	     *dir    = d_inode(parent);
 	struct ll_inode_info     *plli   = ll_i2info(dir);
 	struct ll_inode_info     *clli;
+	struct ll_inode_info *tmp;
 	struct ll_sb_info	*sbi    = ll_i2sbi(dir);
 	struct ll_statahead_info *sai;
 	struct ptlrpc_thread *thread;
@@ -909,9 +910,7 @@ static int ll_agl_thread(void *arg)
 
 	spin_lock(&plli->lli_agl_lock);
 	sai->sai_agl_valid = 0;
-	while (!list_empty(&sai->sai_agls)) {
-		clli = list_entry(sai->sai_agls.next,
-				  struct ll_inode_info, lli_agl_list);
+	list_for_each_entry_safe(clli, tmp, &sai->sai_agls, lli_agl_list) {
 		list_del_init(&clli->lli_agl_list);
 		spin_unlock(&plli->lli_agl_lock);
 		clli->lli_agl_index = 0;
-- 
2.7.4


