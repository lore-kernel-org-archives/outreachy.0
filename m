X-GM-THRID: 6201108859850850304
X-Received: by 10.107.160.72 with SMTP id j69mr14375460ioe.7.1443808172937;
        Fri, 02 Oct 2015 10:49:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.164.164 with SMTP id yr4ls595366igb.27.canary; Fri, 02 Oct
 2015 10:49:32 -0700 (PDT)
X-Received: by 10.66.123.74 with SMTP id ly10mr13081645pab.41.1443808172667;
        Fri, 02 Oct 2015 10:49:32 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id w5si1772240pbt.1.2015.10.02.10.49.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 10:49:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fv12so114493525pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 10:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=I4cxeTO5WallAlJ89EuCaT3J9Sk+TspbH1lee8qzwac=;
        b=WtbTF1jR2ruaulijz0dkzu6zwpJOTyG3MUcarZctbgh16SOjFotC9ySo5lflu4FrdR
         EtogGgQ5FgAU9gkFXfvhugQYC/1ZmB/A1jOLUVax8hl0d/27WeNqq7GbeaWe3EfqQNyI
         TtG7BAtv/YEUp1wB5KvYrpMwOYDj85dEikoOWk9AAi5Tz+YsjAT2L9c7w4YfLMiWA/F0
         7Wd0Yz0VNQlbdKhZWwfnvnTL6ldH1l/F3Y/rjYKIRfYvEcX6OXVk/oM7WshT0ZTfM7bD
         b5qOdMBRbSKYqxp1oLPjMco43POXAfiXAmE+WkwNZlFHaakSHyooUUo4bvE9QuNSTnNT
         h7Tw==
X-Received: by 10.68.237.69 with SMTP id va5mr21218924pbc.40.1443808172546;
        Fri, 02 Oct 2015 10:49:32 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id pq1sm13027912pbb.91.2015.10.02.10.49.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 10:49:32 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/5] Staging: lustre: obdclass: cl_lock: Declare as static
Date: Fri,  2 Oct 2015 23:19:11 +0530
Message-Id: <1443808154-13944-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com>
References: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.560EC3AB.0056,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare cl_lock_intransit and cl_lock_extransit as static since they
are used only in this particular file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/cl_lock.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_lock.c b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
index 4294ca6..b15c990 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_lock.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
@@ -403,8 +403,8 @@ static struct cl_lock *cl_lock_alloc(const struct lu_env *env,
  * \post state: CLS_INTRANSIT
  * \see CLS_INTRANSIT
  */
-enum cl_lock_state cl_lock_intransit(const struct lu_env *env,
-				     struct cl_lock *lock)
+static enum cl_lock_state cl_lock_intransit(const struct lu_env *env,
+					    struct cl_lock *lock)
 {
 	enum cl_lock_state state = lock->cll_state;
 
@@ -418,13 +418,12 @@ enum cl_lock_state cl_lock_intransit(const struct lu_env *env,
 	cl_lock_hold_add(env, lock, "intransit", current);
 	return state;
 }
-EXPORT_SYMBOL(cl_lock_intransit);
 
 /**
  *  Exit the intransit state and restore the lock state to the original state
  */
-void cl_lock_extransit(const struct lu_env *env, struct cl_lock *lock,
-		       enum cl_lock_state state)
+static void cl_lock_extransit(const struct lu_env *env, struct cl_lock *lock,
+			      enum cl_lock_state state)
 {
 	LASSERT(cl_lock_is_mutexed(lock));
 	LASSERT(lock->cll_state == CLS_INTRANSIT);
@@ -435,7 +434,6 @@ void cl_lock_extransit(const struct lu_env *env, struct cl_lock *lock,
 	cl_lock_state_set(env, lock, state);
 	cl_lock_unhold(env, lock, "intransit", current);
 }
-EXPORT_SYMBOL(cl_lock_extransit);
 
 /**
  * Checking whether the lock is intransit state
-- 
2.1.4


