X-GM-THRID: 6394061646033059840
X-Received: by 10.200.40.194 with SMTP id j2mr4256944qtj.36.1488733508863;
        Sun, 05 Mar 2017 09:05:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.26.99 with SMTP id u32ls2620510otu.28.gmail; Sun, 05 Mar
 2017 09:05:08 -0800 (PST)
X-Received: by 10.129.89.65 with SMTP id n62mr4495665ywb.72.1488733508550;
        Sun, 05 Mar 2017 09:05:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c123si943835pfa.4.2017.03.05.09.05.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:05:08 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so15089238pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 09:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=MHNd6BbRnD3gIqnin8t93zwyXdTmOTMKTdGc6tXzkbU=;
        b=ZpDgt0QOR/W66HTyvzvvSwwgiJB+PRfLu4giWLFsxc3BE8WjCurAiz2i2bWUrW+1NP
         eo1M36CR+RLGzrFtTr1b43BGJck3ObH74ETwVWDJJiDUJchk8Hs/mWz9cbR5umJNzYUO
         bXyw3+byShdXiy5KvwcdFGj0g9e7THDueoJ27FfxycH5a3ugSao0txijNm+bBMJXXKrk
         VZNgmefGgzDH8r3etuFZORY0o+b0/k8jDVi2pfAI0/dnZq/DOo1uz/8xZuLqND2NZ8NO
         LykL2eORmiDkipcBYWIYx1NAV7N7YC8m+EgOSyEzb6HAAzm3dfGxKiv+Rbay/RVhekJ/
         L/Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=MHNd6BbRnD3gIqnin8t93zwyXdTmOTMKTdGc6tXzkbU=;
        b=l6h0GUcs8XydCZOLtoKdw2jX5HkyXZecWuzlV9FUod9JvGaYpv7fwuadpT7VQBEG49
         mdf1ZYI49gSXkOETf/vtUiBbbI2h1UfGVRlPHk18UeOR1iL/Jvky3CxsQJroVH/gD+fB
         Q7y+tdxlZzrDPHL9XjMK5PNZsbr0nXb23+cBOITH7VPQiQkLd3JaFBImSt1ATQFetfHz
         hwsIlwKkpFDHyyAwxeuBFjVf2JQHnx2Nhr2tJ7J23B5D8k7P3WCsGYQ5JOEOZPmImo7Q
         fd+c4UkyB2j4LRLXwEEmKLuGUU3PEBu80nT2704ml48+uHHrRH1r2mVlWEOfcYnB+PCm
         rp/w==
X-Gm-Message-State: AMke39kwIK3NfnkOC7ONeYVoL3wMA3F9zm0rAkHQFCkmQKIFUjDTGIV01BDNNm33Mpio/g==
X-Received: by 10.99.40.198 with SMTP id o189mr8799706pgo.21.1488733508289;
        Sun, 05 Mar 2017 09:05:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o125sm34486728pfb.109.2017.03.05.09.05.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 09:05:07 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: oleg.drokin@intel.com
Cc: andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] staging: lustre: osc_page.c:  Use list_for_each_entry_safe
Date: Sun,  5 Mar 2017 22:36:50 +0530
Message-Id: <1488733610-22289-6-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/lustre/lustre/osc/osc_page.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/staging/lustre/lustre/osc/osc_page.c
index ed8a0dc..e8b974f 100644
--- a/drivers/staging/lustre/lustre/osc/osc_page.c
+++ b/drivers/staging/lustre/lustre/osc/osc_page.c
@@ -542,6 +542,7 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
 	struct cl_object *clobj = NULL;
 	struct cl_page **pvec;
 	struct osc_page *opg;
+	struct osc_page *tmp;
 	int maxscan = 0;
 	long count = 0;
 	int index = 0;
@@ -572,7 +573,7 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
 	if (force)
 		cli->cl_lru_reclaim++;
 	maxscan = min(target << 1, atomic_long_read(&cli->cl_lru_in_list));
-	while (!list_empty(&cli->cl_lru_list)) {
+	list_for_each_entry_safe(opg, tmp, &cli->cl_lru_list, ops_lru) {
 		struct cl_page *page;
 		bool will_free = false;
 
@@ -582,8 +583,6 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
 		if (--maxscan < 0)
 			break;
 
-		opg = list_entry(cli->cl_lru_list.next, struct osc_page,
-				 ops_lru);
 		page = opg->ops_cl.cpl_page;
 		if (lru_page_busy(cli, page)) {
 			list_move_tail(&opg->ops_lru, &cli->cl_lru_list);
@@ -1043,6 +1042,7 @@ unsigned long osc_cache_shrink_scan(struct shrinker *sk,
 {
 	struct client_obd *stop_anchor = NULL;
 	struct client_obd *cli;
+	struct client_obd *tmp;
 	struct lu_env *env;
 	long shrank = 0;
 	u16 refcheck;
@@ -1059,10 +1059,7 @@ unsigned long osc_cache_shrink_scan(struct shrinker *sk,
 		return SHRINK_STOP;
 
 	spin_lock(&osc_shrink_lock);
-	while (!list_empty(&osc_shrink_list)) {
-		cli = list_entry(osc_shrink_list.next, struct client_obd,
-				 cl_shrink_list);
-
+	list_for_each_entry_safe(cli, tmp, &osc_shrink_list, cl_shrink_list) {
 		if (!stop_anchor)
 			stop_anchor = cli;
 		else if (cli == stop_anchor)
-- 
2.7.4


