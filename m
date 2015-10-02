X-GM-THRID: 6201108859850850304
X-Received: by 10.129.125.130 with SMTP id y124mr13646823ywc.14.1443808189819;
        Fri, 02 Oct 2015 10:49:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.136.196 with SMTP id qc4ls609248igb.25.gmail; Fri, 02 Oct
 2015 10:49:49 -0700 (PDT)
X-Received: by 10.50.61.230 with SMTP id t6mr149155igr.7.1443808170262;
        Fri, 02 Oct 2015 10:49:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id wl2si1850386pab.1.2015.10.02.10.49.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 10:49:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacex6 with SMTP id ex6so112428157pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 10:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=fVIyVARLRiZxKllvvq++I9vJGrJ/BfDB4LdF2h9WieM=;
        b=KDpPXEPYg333MWS+zpk1rsSNKvQlz1LzoScjPePj+V40UFPrc6Yiyset/geVbkeFew
         epMa8alcJ/EuCjmoLNkVqwHDbiCigrni77GDXhNqPAfv9gKvxwUq9DfUvbrtWX+u9k8j
         8gCK6yS6p4yrIO6cr7Z55b8wBTNfc1GosOZM/6uH9iPJw/a0HkYVgTazfI8Z3i4tbJtL
         FxwtjuWePIh0MMhXnCm8PenmaP3FeVdjlRrr6svPCNFtUtUbqS9dWVvvHsGf+Fc2AwwS
         XlDuQZir5UxJ4pPHX0feJtAmiGwJAoario0ns3fGsTJiCnVheOWrNK27rrvlifrum+ZZ
         +bjw==
X-Received: by 10.66.97.73 with SMTP id dy9mr21524227pab.115.1443808170121;
        Fri, 02 Oct 2015 10:49:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id pq1sm13027912pbb.91.2015.10.02.10.49.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 10:49:29 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/5] Staging: lustre: obdclass: cl_io: Declare as static
Date: Fri,  2 Oct 2015 23:19:10 +0530
Message-Id: <1443808154-13944-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com>
References: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.560EC3A8.0079,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare cl_page_list_assume, cl_io_cancel, cl_io_rw_advance,
cl_page_list_del, cl_page_list_discard, cl_page_list_fini as
static since they are used only in this particular file.
Also remove them from corresponding header files

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/cl_object.h |  5 ----
 drivers/staging/lustre/lustre/obdclass/cl_io.c    | 28 ++++++++++-------------
 2 files changed, 12 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/cl_object.h b/drivers/staging/lustre/lustre/include/cl_object.h
index b073313..75c59df 100644
--- a/drivers/staging/lustre/lustre/include/cl_object.h
+++ b/drivers/staging/lustre/lustre/include/cl_object.h
@@ -3125,13 +3125,8 @@ void cl_page_list_move   (struct cl_page_list *dst, struct cl_page_list *src,
 			  struct cl_page *page);
 void cl_page_list_splice (struct cl_page_list *list,
 			  struct cl_page_list *head);
-void cl_page_list_del    (const struct lu_env *env,
-			  struct cl_page_list *plist, struct cl_page *page);
 void cl_page_list_disown (const struct lu_env *env,
 			  struct cl_io *io, struct cl_page_list *plist);
-void cl_page_list_discard(const struct lu_env *env,
-			  struct cl_io *io, struct cl_page_list *plist);
-void cl_page_list_fini   (const struct lu_env *env, struct cl_page_list *plist);
 
 void cl_2queue_init     (struct cl_2queue *queue);
 void cl_2queue_add      (struct cl_2queue *queue, struct cl_page *page);
diff --git a/drivers/staging/lustre/lustre/obdclass/cl_io.c b/drivers/staging/lustre/lustre/obdclass/cl_io.c
index a822a0b..ef66ac9 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_io.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_io.c
@@ -570,7 +570,8 @@ EXPORT_SYMBOL(cl_io_iter_fini);
 /**
  * Records that read or write io progressed \a nob bytes forward.
  */
-void cl_io_rw_advance(const struct lu_env *env, struct cl_io *io, size_t nob)
+static void cl_io_rw_advance(const struct lu_env *env, struct cl_io *io,
+			     size_t nob)
 {
 	const struct cl_io_slice *scan;
 
@@ -589,7 +590,6 @@ void cl_io_rw_advance(const struct lu_env *env, struct cl_io *io, size_t nob)
 								   nob);
 	}
 }
-EXPORT_SYMBOL(cl_io_rw_advance);
 
 /**
  * Adds a lock to a lockset.
@@ -936,8 +936,8 @@ EXPORT_SYMBOL(cl_io_submit_sync);
 /**
  * Cancel an IO which has been submitted by cl_io_submit_rw.
  */
-int cl_io_cancel(const struct lu_env *env, struct cl_io *io,
-		 struct cl_page_list *queue)
+static int cl_io_cancel(const struct lu_env *env, struct cl_io *io,
+			struct cl_page_list *queue)
 {
 	struct cl_page *page;
 	int result = 0;
@@ -952,7 +952,6 @@ int cl_io_cancel(const struct lu_env *env, struct cl_io *io,
 	}
 	return result;
 }
-EXPORT_SYMBOL(cl_io_cancel);
 
 /**
  * Main io loop.
@@ -1076,8 +1075,8 @@ EXPORT_SYMBOL(cl_page_list_add);
 /**
  * Removes a page from a page list.
  */
-void cl_page_list_del(const struct lu_env *env,
-		      struct cl_page_list *plist, struct cl_page *page)
+static void cl_page_list_del(const struct lu_env *env,
+			     struct cl_page_list *plist, struct cl_page *page)
 {
 	LASSERT(plist->pl_nr > 0);
 	LINVRNT(plist->pl_owner == current);
@@ -1090,7 +1089,6 @@ void cl_page_list_del(const struct lu_env *env,
 	lu_ref_del_at(&page->cp_reference, &page->cp_queue_ref, "queue", plist);
 	cl_page_put(env, page);
 }
-EXPORT_SYMBOL(cl_page_list_del);
 
 /**
  * Moves a page from one page list to another.
@@ -1167,7 +1165,8 @@ EXPORT_SYMBOL(cl_page_list_disown);
 /**
  * Releases pages from queue.
  */
-void cl_page_list_fini(const struct lu_env *env, struct cl_page_list *plist)
+static void cl_page_list_fini(const struct lu_env *env,
+			      struct cl_page_list *plist)
 {
 	struct cl_page *page;
 	struct cl_page *temp;
@@ -1178,13 +1177,12 @@ void cl_page_list_fini(const struct lu_env *env, struct cl_page_list *plist)
 		cl_page_list_del(env, plist, page);
 	LASSERT(plist->pl_nr == 0);
 }
-EXPORT_SYMBOL(cl_page_list_fini);
 
 /**
  * Assumes all pages in a queue.
  */
-void cl_page_list_assume(const struct lu_env *env,
-			 struct cl_io *io, struct cl_page_list *plist)
+static void cl_page_list_assume(const struct lu_env *env,
+				struct cl_io *io, struct cl_page_list *plist)
 {
 	struct cl_page *page;
 
@@ -1193,13 +1191,12 @@ void cl_page_list_assume(const struct lu_env *env,
 	cl_page_list_for_each(page, plist)
 		cl_page_assume(env, io, page);
 }
-EXPORT_SYMBOL(cl_page_list_assume);
 
 /**
  * Discards all pages in a queue.
  */
-void cl_page_list_discard(const struct lu_env *env, struct cl_io *io,
-			  struct cl_page_list *plist)
+static void cl_page_list_discard(const struct lu_env *env, struct cl_io *io,
+				 struct cl_page_list *plist)
 {
 	struct cl_page *page;
 
@@ -1207,7 +1204,6 @@ void cl_page_list_discard(const struct lu_env *env, struct cl_io *io,
 	cl_page_list_for_each(page, plist)
 		cl_page_discard(env, io, page);
 }
-EXPORT_SYMBOL(cl_page_list_discard);
 
 /**
  * Initialize dual page queue.
-- 
2.1.4


