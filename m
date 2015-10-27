X-GM-THRID: 6210359704363728896
X-Received: by 10.129.56.7 with SMTP id f7mr34315423ywa.52.1445962182465;
        Tue, 27 Oct 2015 09:09:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.103 with SMTP id l100ls2040134iod.22.gmail; Tue, 27
 Oct 2015 09:09:42 -0700 (PDT)
X-Received: by 10.66.146.73 with SMTP id ta9mr20307054pab.18.1445962182125;
        Tue, 27 Oct 2015 09:09:42 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id vy6si4239888pbc.1.2015.10.27.09.09.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 09:09:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hk11so226828747pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 09:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=DZDiQUYOlTIb7yKouJCzEJbELhWi2u9VzR1ooUzWoDA=;
        b=QZaQyZAufcDP9kDqwZgbX6BDQqvisNtOO8HktziKNuwLh/7R3uyxb4KIne0O23I6jQ
         TdUWtCYwizkYyGqSXj221jEUFArt/ieaep7vAg60XFRjcBkBuXmsFECEJ2YuV/P8dFxS
         C/yP+igkpEqBvLgYUb1Y8M6OJrDq/zUEJWHpSOMIEZrhjZjTfkIUniiy3E3rITgHkwKo
         vNyjSzP5m84shrdcY/+VY/0izjExkel6eQNYvKhMpTD+F1Y82DS0TIMcr6YDR8aTFMNk
         pXFRd5sZatvnkOgt2y0DtFSuSk0R91mg4HHTgTEzaLTymcDEIkc17WeXKQIAUs/u2rKI
         wayA==
X-Received: by 10.66.102.38 with SMTP id fl6mr28937950pab.49.1445962182037;
        Tue, 27 Oct 2015 09:09:42 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id be3sm40435681pbc.88.2015.10.27.09.09.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Oct 2015 09:09:41 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/5] fs: nfsd: Replace time_t with u32 in nfsd4_lease
Date: Tue, 27 Oct 2015 09:09:35 -0700
Message-Id: <d860ec8de84b6ac84510505a1fef14c8ccc60a67.1445960986.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445960986.git.ksenija.stanojevic@gmail.com>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com>

Replace time_t type and get_seconds function which are not y2038 safe on
32-bit systems. Function ktime_get_seconds use monotonic instead of real
time and therefore will not cause overflow.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 fs/nfsd/netns.h        | 2 +-
 fs/nfsd/nfs4callback.c | 2 +-
 fs/nfsd/nfs4state.c    | 6 +++---
 fs/nfsd/nfsctl.c       | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/fs/nfsd/netns.h b/fs/nfsd/netns.h
index d5cce15..85b114f 100644
--- a/fs/nfsd/netns.h
+++ b/fs/nfsd/netns.h
@@ -94,7 +94,7 @@ struct nfsd_net {
 	bool in_grace;
 	struct nfsd4_client_tracking_ops *client_tracking_ops;
 
-	time_t nfsd4_lease;
+	u32 nfsd4_lease;
 	time_t nfsd4_grace;
 
 	bool nfsd_net_up;
diff --git a/fs/nfsd/nfs4callback.c b/fs/nfsd/nfs4callback.c
index e7f50c4..8a177c6 100644
--- a/fs/nfsd/nfs4callback.c
+++ b/fs/nfsd/nfs4callback.c
@@ -681,7 +681,7 @@ static const struct rpc_program cb_program = {
 static int max_cb_time(struct net *net)
 {
 	struct nfsd_net *nn = net_generic(net, nfsd_net_id);
-	return max(nn->nfsd4_lease/10, (time_t)1) * HZ;
+	return max(nn->nfsd4_lease/10, (u32)1) * HZ;
 }
 
 static struct rpc_cred *callback_cred;
diff --git a/fs/nfsd/nfs4state.c b/fs/nfsd/nfs4state.c
index 8245236..4bceb878 100644
--- a/fs/nfsd/nfs4state.c
+++ b/fs/nfsd/nfs4state.c
@@ -4332,8 +4332,8 @@ nfs4_laundromat(struct nfsd_net *nn)
 	struct nfs4_delegation *dp;
 	struct nfs4_ol_stateid *stp;
 	struct list_head *pos, *next, reaplist;
-	time_t cutoff = get_seconds() - nn->nfsd4_lease;
-	time_t t, new_timeo = nn->nfsd4_lease;
+	u32 cutoff = ktime_get_seconds() - nn->nfsd4_lease;
+	u32 t, new_timeo = nn->nfsd4_lease;
 
 	dprintk("NFSD: laundromat service - starting\n");
 	nfsd4_end_grace(nn);
@@ -4399,7 +4399,7 @@ nfs4_laundromat(struct nfsd_net *nn)
 	}
 	spin_unlock(&nn->client_lock);
 
-	new_timeo = max_t(time_t, new_timeo, NFSD_LAUNDROMAT_MINTIMEOUT);
+	new_timeo = max_t(u32, new_timeo, NFSD_LAUNDROMAT_MINTIMEOUT);
 	return new_timeo;
 }
 
diff --git a/fs/nfsd/nfsctl.c b/fs/nfsd/nfsctl.c
index 9690cb4..6e0cfd6 100644
--- a/fs/nfsd/nfsctl.c
+++ b/fs/nfsd/nfsctl.c
@@ -932,7 +932,7 @@ static ssize_t write_maxconn(struct file *file, char *buf, size_t size)
 
 #ifdef CONFIG_NFSD_V4
 static ssize_t __nfsd4_write_time(struct file *file, char *buf, size_t size,
-				  time_t *time, struct nfsd_net *nn)
+				  u32 *time, struct nfsd_net *nn)
 {
 	char *mesg = buf;
 	int rv, i;
@@ -964,7 +964,7 @@ static ssize_t __nfsd4_write_time(struct file *file, char *buf, size_t size,
 }
 
 static ssize_t nfsd4_write_time(struct file *file, char *buf, size_t size,
-				time_t *time, struct nfsd_net *nn)
+				u32 *time, struct nfsd_net *nn)
 {
 	ssize_t rv;
 
-- 
1.9.1


