X-GM-THRID: 6809949847311876096
X-Received: by 2002:a92:d9ce:: with SMTP id n14mr9523859ilq.97.1585565006953;
        Mon, 30 Mar 2020 03:43:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:e87:: with SMTP id p7ls2257231jas.6.gmail; Mon, 30
 Mar 2020 03:43:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvudEF9xUYX4mwdBlOQ6Jd9wwONfpyDUtmJC1DfyZh1KvYzVN6DZ7ZPM4rJ+OjiqsbAgLnZ
X-Received: by 2002:a02:a1c2:: with SMTP id o2mr9934341jah.98.1585565005833;
        Mon, 30 Mar 2020 03:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585565005; cv=none;
        d=google.com; s=arc-20160816;
        b=VwfjVi0k6ALj+OwVZ8dQggrOJ+89Vw1QwWAPC4sFGUvJIoECq1iYOwlbIh8QGVmYXO
         Sg64YTPRJrrRChkuBtHoCr67FNb+Q9fBZ/dJPTHupPU0s9t0xza1UddaRZuNhmoVAgQg
         LmrnqaO7od6MEal5XHPdENbEqI8L9S9nvvCijNpVYxPQ8hngGRSrq6n1Hn4/FpkRtOlM
         ejiQ/cp7PfJ7fRIp5gSXK2ToIa92aXmyKb3mk186CRqsLLuS8Q6kkkpW+VJs/7nCZtyz
         V+Syuu7hjkT7weWLwIy9+w5MW+5QfjovNJAZvYZiISt2rfOiK//jQSzolj5vx01Hd+7o
         KPaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=SxBpIzPkzU1vl9bySozt1wIiREaZHHXTdsxoYdI/9lw=;
        b=N0BAYuCHsuPrFJA96LdfUtf5G0QyhCLsjPRAprOAq3znRktAbR3yQfIYB6jPmbR3Cp
         hL39dnID4yA/Iw59Bi8P0UNzUgVFhpr1SlAy7fucjhLa5FzsSjZUTOt17uuWxB7ibwfl
         2MhadMIpRt972Sd9rEEUTlpqTkYPVgEvjDCH4+/UroWlH1QO4k46xLC7JTBT+jzlz1GU
         gnR1KxGEgBROB1W9JsjL7cwDuT2uot96qYrWB98CmKbIvmhANU+cjbgngicfhGlkJyfY
         zJIBkCs4aEtJ1pGXR3+NPBgcw66l6Hj0FM8q3gVChfgMfUFMjcADFsttP3yUmKZp+a8u
         Zc7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MaEjSifc;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id s201si769362ilc.0.2020.03.30.03.43.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 03:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MaEjSifc;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id u12so8456278pgb.10
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 03:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SxBpIzPkzU1vl9bySozt1wIiREaZHHXTdsxoYdI/9lw=;
        b=MaEjSifcGOscOl65yWma3+FPGAc2iNPedC49K5dP/XwTurfuNlCQiAfd51ihTo1hAb
         XX9geaEKzGQ3eLNKozHnAnSJP/HeANPraOhjvkR5tAwjydirwsLYtXZRTwBOUzm7DsT3
         74WJZ1TVAUgFzu7Dc3jKTDnYePoSEz7aXjs01BTJ3FXevO+Af/7q3Ky8tCNWYy79gGuS
         56Mzn0URuBLP4qSADpLf7lKzQHRRYdZac3oOinG/pGedktj5JnR6c1NkN+0YHanc371B
         FI9wtRUec8WYdJvxTuo5r1izIWAqlOOBQa2BIiXxgafPj7+G5xgMBgZIzALPXpe0b7F/
         m8ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SxBpIzPkzU1vl9bySozt1wIiREaZHHXTdsxoYdI/9lw=;
        b=Tk9GALczCAlR38OE+2vTYhejJjIJj5sCo7Y5BTLZJo2vs3eAkflFOVW5uunJ8cAPfZ
         I+syL2zhK8EqryDmwR6uCPshENxZqG5AGSmAYgA4V7yMK5dmN6R3P0CdB+6XGaiv7ZAk
         4DbP2CTa/ZuIXjiL1fAv+yde5RXASMpxKeoYxHic/zp4jnY65dAa1/wc+SSYUCMN4wyO
         nUq6gVntKZp37AlxTbHLeawnuHSyicDFhSM62psEjV/zWXl1vLSsAMb8hBbpWxtjLQO6
         ZKYElb/Nwg0Nnta7/XurrBsQxRkdXIVhkqLyHCQQhNreTHvpJJlIvZm9E3/wzBJzBzf4
         qFqQ==
X-Gm-Message-State: ANhLgQ2fsF+ojmWLI67xTMIwC/pqifU4dqlAfyHVU/hG54xwRJgRPEbY
	rFSmji/IqmGm2Wp+OT1ylI5zjsyZTfc=
X-Received: by 2002:a63:8c51:: with SMTP id q17mr12502479pgn.320.1585565005316;
        Mon, 30 Mar 2020 03:43:25 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.199.31])
        by smtp.gmail.com with ESMTPSA id d71sm10012346pfd.46.2020.03.30.03.43.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 03:43:24 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] ipc: add blank lines after declarations
Date: Mon, 30 Mar 2020 16:13:06 +0530
Message-Id: <20200330104306.6672-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix checkpatch.pl warning by adding blank lines.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 ipc/compat.c     | 2 ++
 ipc/ipc_sysctl.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/ipc/compat.c b/ipc/compat.c
index 5ab8225923af..6c03927a4d71 100644
--- a/ipc/compat.c
+++ b/ipc/compat.c
@@ -39,6 +39,7 @@ int get_compat_ipc64_perm(struct ipc64_perm *to,
 			  struct compat_ipc64_perm __user *from)
 {
 	struct compat_ipc64_perm v;
+
 	if (copy_from_user(&v, from, sizeof(v)))
 		return -EFAULT;
 	to->uid = v.uid;
@@ -51,6 +52,7 @@ int get_compat_ipc_perm(struct ipc64_perm *to,
 			struct compat_ipc_perm __user *from)
 {
 	struct compat_ipc_perm v;
+
 	if (copy_from_user(&v, from, sizeof(v)))
 		return -EFAULT;
 	to->uid = v.uid;
diff --git a/ipc/ipc_sysctl.c b/ipc/ipc_sysctl.c
index affd66537e87..ea115dfd3774 100644
--- a/ipc/ipc_sysctl.c
+++ b/ipc/ipc_sysctl.c
@@ -18,6 +18,7 @@ static void *get_ipc(struct ctl_table *table)
 {
 	char *which = table->data;
 	struct ipc_namespace *ipc_ns = current->nsproxy->ipc_ns;
+
 	which = (which - (char *)&init_ipc_ns) + (char *)ipc_ns;
 	return which;
 }
@@ -62,6 +63,7 @@ static int proc_ipc_doulongvec_minmax(struct ctl_table *table, int write,
 	void __user *buffer, size_t *lenp, loff_t *ppos)
 {
 	struct ctl_table ipc_table;
+
 	memcpy(&ipc_table, table, sizeof(ipc_table));
 	ipc_table.data = get_ipc(table);
 
-- 
2.17.1


