X-GM-THRID: 6210359704363728896
X-Received: by 10.50.110.6 with SMTP id hw6mr21410815igb.7.1445962123269;
        Tue, 27 Oct 2015 09:08:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.241.101 with SMTP id wh5ls1828688obc.3.gmail; Tue, 27 Oct
 2015 09:08:42 -0700 (PDT)
X-Received: by 10.182.24.42 with SMTP id r10mr35289024obf.42.1445962122909;
        Tue, 27 Oct 2015 09:08:42 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id pe1si4326971pac.2.2015.10.27.09.08.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 09:08:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id la5so33499809pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 09:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4+agi2XT2uN7+n8s5ivf2RcJskzsC8PwI/Q9sw5r/G8=;
        b=cxfEeXp5tmLAIUn+PiGkqhsYvW/w42aUhyweHW6Hoa9L7G7OIJ+poiHI+psaOTXTJ2
         OZv2Uwv7JHCN5Fh4pRqlS+w8I6Z2CqzBzrDN1Ornb+Y34mnCsD1s9ORHjoigQfia8k9C
         PJpkyP0a1sYWZX8Xu0CHOah2dvMbQhKIo90o7RaP6Cq6VMaoxDmAZiee48j8KTkhWbR1
         2lN1duLqC5WUrtRHjp6TO5XLiUz3pxYxt30GjDEL9hzn05SqrIjZ/vGVCWXzMmFirs0l
         oJcD9NQd2LS4gcDQzATM1rAOuqAKppxBhy1oIGFJbx1U0C78p12iwgIu8t/X3FZZu4Cd
         SvCA==
X-Received: by 10.68.254.232 with SMTP id al8mr28839843pbd.64.1445962122786;
        Tue, 27 Oct 2015 09:08:42 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id yz3sm40461938pbb.37.2015.10.27.09.08.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Oct 2015 09:08:42 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/5] fs: nfsd: Replace time_t with u32 in boot_time
Date: Tue, 27 Oct 2015 09:08:35 -0700
Message-Id: <ff2558d603d7352f511a459783bd85a8ede3bd56.1445960986.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445960986.git.ksenija.stanojevic@gmail.com>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com>

Replace time_t type and get_seconds function which are not y2038 safe on
32-bit systems. Function ktime_get_seconds use monotonic instead of real
time and therefore will not cause overflow.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 fs/nfsd/netns.h       | 2 +-
 fs/nfsd/nfs4recover.c | 6 +++---
 fs/nfsd/nfs4state.c   | 8 ++++----
 fs/nfsd/state.h       | 2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/fs/nfsd/netns.h b/fs/nfsd/netns.h
index d8b16c2..d5cce15 100644
--- a/fs/nfsd/netns.h
+++ b/fs/nfsd/netns.h
@@ -53,7 +53,7 @@ struct nfsd_net {
 
 	struct lock_manager nfsd4_manager;
 	bool grace_ended;
-	time_t boot_time;
+	u32 boot_time;
 
 	/*
 	 * reclaim_str_hashtbl[] holds known client info from previous reset/reboot
diff --git a/fs/nfsd/nfs4recover.c b/fs/nfsd/nfs4recover.c
index e3d4709..eec431a 100644
--- a/fs/nfsd/nfs4recover.c
+++ b/fs/nfsd/nfs4recover.c
@@ -1164,7 +1164,7 @@ nfsd4_cltrack_client_has_session(struct nfs4_client *clp)
 }
 
 static char *
-nfsd4_cltrack_grace_start(time_t grace_start)
+nfsd4_cltrack_grace_start(unsigned long grace_start)
 {
 	int copied;
 	size_t len;
@@ -1177,7 +1177,7 @@ nfsd4_cltrack_grace_start(time_t grace_start)
 	if (!result)
 		return result;
 
-	copied = snprintf(result, len, GRACE_START_ENV_PREFIX "%ld",
+	copied = snprintf(result, len, GRACE_START_ENV_PREFIX "%lu",
 				grace_start);
 	if (copied >= len) {
 		/* just return nothing if output was truncated */
@@ -1388,7 +1388,7 @@ nfsd4_umh_cltrack_grace_done(struct nfsd_net *nn)
 	char *legacy;
 	char timestr[22]; /* FIXME: better way to determine max size? */
 
-	sprintf(timestr, "%ld", nn->boot_time);
+	sprintf(timestr, "%x", nn->boot_time);
 	legacy = nfsd4_cltrack_legacy_topdir();
 	nfsd4_umh_cltrack_upcall("gracedone", timestr, legacy, NULL);
 	kfree(legacy);
diff --git a/fs/nfsd/nfs4state.c b/fs/nfsd/nfs4state.c
index 0f1d569..8245236 100644
--- a/fs/nfsd/nfs4state.c
+++ b/fs/nfsd/nfs4state.c
@@ -1612,9 +1612,9 @@ STALE_CLIENTID(clientid_t *clid, struct nfsd_net *nn)
 	 * precisely 2^32 (about 136 years) before this one.  That seems
 	 * a safe assumption:
 	 */
-	if (clid->cl_boot == (u32)nn->boot_time)
+	if (clid->cl_boot == nn->boot_time)
 		return 0;
-	dprintk("NFSD stale clientid (%08x/%08x) boot_time %08lx\n",
+	dprintk("NFSD stale clientid (%08x/%08x) boot_time %08x\n",
 		clid->cl_boot, clid->cl_id, nn->boot_time);
 	return 1;
 }
@@ -4276,7 +4276,7 @@ nfsd4_renew(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
 	__be32 status;
 	struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);
 
-	dprintk("process_renew(%08x/%08x): starting\n", 
+	dprintk("process_renew(%08x/%08x): starting\n",
 			clid->cl_boot, clid->cl_id);
 	status = lookup_clientid(clid, cstate, nn);
 	if (status)
@@ -6603,7 +6603,7 @@ nfs4_state_start_net(struct net *net)
 	ret = nfs4_state_create_net(net);
 	if (ret)
 		return ret;
-	nn->boot_time = get_seconds();
+	nn->boot_time = ktime_get_seconds();
 	nn->grace_ended = false;
 	nn->nfsd4_manager.block_opens = true;
 	locks_start_grace(net, &nn->nfsd4_manager);
diff --git a/fs/nfsd/state.h b/fs/nfsd/state.h
index 583ffc1..5c49ed65 100644
--- a/fs/nfsd/state.h
+++ b/fs/nfsd/state.h
@@ -305,7 +305,7 @@ struct nfs4_client {
 #endif
 	struct xdr_netobj	cl_name; 	/* id generated by client */
 	nfs4_verifier		cl_verifier; 	/* generated by client */
-	time_t                  cl_time;        /* time of last lease renewal */
+	u32			cl_time;        /* time of last lease renewal */
 	struct sockaddr_storage	cl_addr; 	/* client ipaddress */
 	bool			cl_mach_cred;	/* SP4_MACH_CRED in force */
 	struct svc_cred		cl_cred; 	/* setclientid principal */
-- 
1.9.1


