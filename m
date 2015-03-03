X-GM-THRID: 6291009306624
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,68accf254aa6984a,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.157.194 with SMTP id wo2mr8482224pab.17.1425394134548;
        Tue, 03 Mar 2015 06:48:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.80.229 with SMTP id u5ls37921obx.23.gmail; Tue, 03 Mar
 2015 06:48:54 -0800 (PST)
X-Received: by 10.182.78.69 with SMTP id z5mr32005906obw.4.1425394134303;
        Tue, 03 Mar 2015 06:48:54 -0800 (PST)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id m1si152860pdc.0.2015.03.03.06.48.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 06:48:54 -0800 (PST)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id eu11so10679500pac.4
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 06:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1QKRCBenLNWkMsYx3J10qf6LaN+cWhS+bDH0WDw3UQE=;
        b=ryMHkoaTYnQ1LtbJfwdUsLZpQfh/VvUAlYBc3jvoGWpd3kqI+ll6q1OLM704CApF10
         OXUXqgV5wbWMHBw1Y0INd+6oyHowauV+Dl2Kj6oAJx/TC/xdx0qi2X+Yg6iMK0tLaEOK
         b+bzuNPV4dPLT1Xx1LKOKF5mcxqGKrRWi+8A9MjNGrKDAnVpCqsmSu8/Z+2eGY/A+ruq
         SFA8sLcpeL84gWZ6DYMx93JEkqkXDOwlUtV4ux0zyMqLo3wVbTP0yR2PGdHra7ZgF4+s
         v+4MkQiHCk+Lw0pla1y8lCmZVAgivzZjuk2eANe9Eo+ScgnFAaXIZ99IVNbQsayJN0eS
         zD8w==
X-Received: by 10.70.4.226 with SMTP id n2mr56667337pdn.11.1425394133752;
        Tue, 03 Mar 2015 06:48:53 -0800 (PST)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id rs4sm1236713pbc.42.2015.03.03.06.48.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 03 Mar 2015 06:48:52 -0800 (PST)
From: Supriya Karanth <iskaranth@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Supriya Karanth <iskaranth@gmail.com>
Subject: [PATCH] staging: lustre: remove initialization of static ints
Date: Tue,  3 Mar 2015 23:48:21 +0900
Message-Id: <1425394101-8180-1-git-send-email-iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0

static ints are initialized to 0 by the compiler.
Explicit initialization is not necessary.

Found by checkpatch.pl - ERROR: do not initialise statics to 0 or NULL

changes made using coccinelle script:
@@
type T;
identifier var;
@@

-static T var = 0;
+static T var;

Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/linux/linux-proc.c | 2 +-
 drivers/staging/lustre/lustre/libcfs/tracefile.c        | 2 +-
 drivers/staging/lustre/lustre/llite/statahead.c         | 2 +-
 drivers/staging/lustre/lustre/mgc/mgc_request.c         | 2 +-
 drivers/staging/lustre/lustre/obdclass/genops.c         | 2 +-
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 2 +-
 drivers/staging/lustre/lustre/obdclass/lu_object.c      | 2 +-
 drivers/staging/lustre/lustre/ptlrpc/pack_generic.c     | 2 +-
 drivers/staging/lustre/lustre/ptlrpc/pinger.c           | 2 +-
 drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c          | 2 +-
 10 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-proc.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-proc.c
index 0f65929..3100cb1 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-proc.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-proc.c
@@ -165,7 +165,7 @@ static int proc_dobitmasks(struct ctl_table *table, int write,
 				 __proc_dobitmasks);
 }
 
-static int min_watchdog_ratelimit = 0;	  /* disable ratelimiting */
+static int min_watchdog_ratelimit;	  /* disable ratelimiting */
 static int max_watchdog_ratelimit = (24*60*60); /* limit to once per day */
 
 static int __proc_dump_kernel(void *data, int write,
diff --git a/drivers/staging/lustre/lustre/libcfs/tracefile.c b/drivers/staging/lustre/lustre/libcfs/tracefile.c
index eb65b50..86c38e1 100644
--- a/drivers/staging/lustre/lustre/libcfs/tracefile.c
+++ b/drivers/staging/lustre/lustre/libcfs/tracefile.c
@@ -53,7 +53,7 @@ char cfs_tracefile[TRACEFILE_NAME_SIZE];
 long long cfs_tracefile_size = CFS_TRACEFILE_SIZE;
 static struct tracefiled_ctl trace_tctl;
 struct mutex cfs_trace_thread_mutex;
-static int thread_running = 0;
+static int thread_running;
 
 static atomic_t cfs_tage_allocated = ATOMIC_INIT(0);
 
diff --git a/drivers/staging/lustre/lustre/llite/statahead.c b/drivers/staging/lustre/lustre/llite/statahead.c
index 6ad9dd0..fe732fa 100644
--- a/drivers/staging/lustre/lustre/llite/statahead.c
+++ b/drivers/staging/lustre/lustre/llite/statahead.c
@@ -84,7 +84,7 @@ struct ll_sa_entry {
 	struct qstr	     se_qstr;
 };
 
-static unsigned int sai_generation = 0;
+static unsigned int sai_generation;
 static DEFINE_SPINLOCK(sai_generation_lock);
 
 static inline int ll_sa_entry_unhashed(struct ll_sa_entry *entry)
diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index b244575..0375bfe 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -479,7 +479,7 @@ int lprocfs_mgc_rd_ir_state(struct seq_file *m, void *data)
 #define RQ_NOW     0x2
 #define RQ_LATER   0x4
 #define RQ_STOP    0x8
-static int		    rq_state = 0;
+static int rq_state;
 static wait_queue_head_t	    rq_waitq;
 static DECLARE_COMPLETION(rq_exit);
 
diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
index 8250821..6d440b4 100644
--- a/drivers/staging/lustre/lustre/obdclass/genops.c
+++ b/drivers/staging/lustre/lustre/obdclass/genops.c
@@ -1559,7 +1559,7 @@ void obd_exports_barrier(struct obd_device *obd)
 EXPORT_SYMBOL(obd_exports_barrier);
 
 /* Total amount of zombies to be destroyed */
-static int zombies_count = 0;
+static int zombies_count;
 
 /**
  * kill zombie imports and exports
diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index 55e8081..c171c6c 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -223,7 +223,7 @@ EXPORT_SYMBOL(lprocfs_write_frac_helper);
 
 #if defined (CONFIG_PROC_FS)
 
-static int lprocfs_no_percpu_stats = 0;
+static int lprocfs_no_percpu_stats;
 module_param(lprocfs_no_percpu_stats, int, 0644);
 MODULE_PARM_DESC(lprocfs_no_percpu_stats, "Do not alloc percpu data for lprocfs stats");
 
diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
index d2311f2..20c0779 100644
--- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
@@ -1308,7 +1308,7 @@ static DEFINE_SPINLOCK(lu_keys_guard);
  * lu_context_refill(). No locking is provided, as initialization and shutdown
  * are supposed to be externally serialized.
  */
-static unsigned key_set_version = 0;
+static unsigned key_set_version;
 
 /**
  * Register new key.
diff --git a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
index 2f45f765..eb6ff90 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
@@ -117,7 +117,7 @@ EXPORT_SYMBOL(lustre_msg_check_version);
 /* early reply size */
 int lustre_msg_early_size(void)
 {
-	static int size = 0;
+	static int size;
 	if (!size) {
 		/* Always reply old ptlrpc_body_v2 to keep interoprability
 		 * with the old client (< 2.3) which doesn't have pb_jobid
diff --git a/drivers/staging/lustre/lustre/ptlrpc/pinger.c b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
index 340d98a..9dbda93 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/pinger.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
@@ -545,7 +545,7 @@ void ptlrpc_pinger_wake_up(void)
 #define PET_READY     1
 #define PET_TERMINATE 2
 
-static int	       pet_refcount = 0;
+static int pet_refcount;
 static int	       pet_state;
 static wait_queue_head_t       pet_waitq;
 LIST_HEAD(pet_list);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c b/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c
index 4621b71..8f7be84 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c
@@ -85,7 +85,7 @@ MODULE_PARM_DESC(ptlrpcd_bind_policy, "Ptlrpcd threads binding mode.");
 static struct ptlrpcd *ptlrpcds;
 
 struct mutex ptlrpcd_mutex;
-static int ptlrpcd_users = 0;
+static int ptlrpcd_users;
 
 void ptlrpcd_wake(struct ptlrpc_request *req)
 {
-- 
2.1.0


