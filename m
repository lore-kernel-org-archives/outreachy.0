X-GM-THRID: 6473410411176656896
X-Received: by 10.99.157.136 with SMTP id i130mr332946pgd.46.1507782701393;
        Wed, 11 Oct 2017 21:31:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.112.14 with SMTP id l14ls767855pgc.19.gmail; Wed, 11 Oct
 2017 21:31:40 -0700 (PDT)
X-Received: by 10.98.86.9 with SMTP id k9mr4965pfb.10.1507782700720;
        Wed, 11 Oct 2017 21:31:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507782700; cv=none;
        d=google.com; s=arc-20160816;
        b=wyzUQZIydusqs0CK0T4ePDrS5rD2rqPB5OMGfC+XvDKLG3sFvrDlKkhzW7ZuTSzOZD
         Otmi9FSQkvknJCLqEePsh/M8HDyPhw8e6n3zXB2RykfIXTKhdISYMyT9lzr37YxmFNPQ
         QMTtZxPFHNrDFHPQKJefbzV61zMA8HCpdalRpbVbR7dviRfTtyny4MocRvHCl1pTQgXK
         +d+k5sYqfymMwbp481YGFxLfuo/ysy2cNUf/YzDlW3BvM62Z8S3KC4yAzHjYQB8zz3bi
         k6bkaxPfGgCXbFmst5xb4CUqOb/cRXYQ1Tuv/cslkiBlJpeM4je4E/cT6lTLtJbWtWS6
         NvtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=fi3Ym6en2G29KdM2A21KPv5O35krN49seZNaZHhBxj0=;
        b=oqkrUHf9CkMKefB5O+EcNOeYQMKO+aNzof5z2jLLXUp7PvPtfPYttNAixVhLjaK6dD
         2PwIz3St+XoxvOo3iy474Da7C4lLSEg6wiiScNbUE7prjBglWsB+ZuTF3h5S/70j1Dyk
         p1zB9x+PEOPEONMn8JN41GuIHwGeEVQNfjT8sxjdL6fL/vmTFAx4Fg2kF7ZRzi+ZnTVu
         B8sxLJHq1Q0xFfbKQjrphw/p81ToVm43lFe4bt9l3L9UzBl2PMjEdYC+GeKDp2k7OMQS
         u2iU+Ct0VPQuqd77hNTK2k4aUAls0NFwBHNkR9IWsl1E65bYXjTStbbFg9ZY18+s0OHs
         7kvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k9GooJza;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id w124si1525874pfd.18.2017.10.11.21.31.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 21:31:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k9GooJza;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z80so4427728pff.4
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 21:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fi3Ym6en2G29KdM2A21KPv5O35krN49seZNaZHhBxj0=;
        b=k9GooJzataiba2R2kKIgjBGeJR6R5UfdYFXA73izbLWdmBfskgUGTQv++QrUYEu96V
         TF+p8NOaf8Bm0jwEIklwviWJnwTzARJGqBOwFD94H5H8tU4ZG9vGyXGaizrPE53Qmrno
         9cjIcXmxN81ekqjiyOfE6TgZFtbCrqGC9nzxspirLiR0nKcIOh2v9317MOLn+bvlXB92
         cCJpjVG0jBJKdEs2p+bKHWu536BGwMFM0rg/mzfIcmF20YCfTiK+nee0KBmmuwRsyeaV
         aWbz65pqh5dbghYvPeI8eGSaoIeR+krwKstRnSOlFaC9SvhLbbGRHI9ktAUD6oQGNS/f
         gNQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=fi3Ym6en2G29KdM2A21KPv5O35krN49seZNaZHhBxj0=;
        b=gQDwZh1fR0IgTmL3Ivn8HxvFLVOYwyY6FuwJCfVzHZNrBGtP6ZHx08SveLsje05Na/
         ByqwyNrDozrDBoQ0trzuPFqB2e+puRkjmtmwNwntLlgB8FOWcGTMV3cxH8WtMHqjm39j
         OUDICcYnUIvF4ziSGXyTXVDJL2Rb/Oqhk7AuT4Wk3JjXX35lD15b8yUD0UVLVeVGNKM1
         IjuLI5ycRYB5sSDjhtSmFHRh6N12tgqH85Yx7Mb6pg8OkbMGwbjrrObU2yPPuS1mkKDa
         Bj3wj9tGZ0NpQ8v8Jls7EgK87Kn52Su81nxwXi9OsjYQe8Dy5QyGQxj9EGjfmaqHvygs
         KWrQ==
X-Gm-Message-State: AMCzsaXeRX+zARWdZY/CcrmD5f03aV+X8hoQPZTedL22xxnGPW1F5IVj
	ZYx52Hd1NV6Fvo7gTbXZCaU=
X-Google-Smtp-Source: AOwi7QDKU7Pdug2i92jNvkdLjhZtWotRc9gnYP0IN/eAiRSYsOkzt8oGLyzUQCwpJH/6yG9zjV9dCQ==
X-Received: by 10.84.178.4 with SMTP id y4mr1118648plb.142.1507782700444;
        Wed, 11 Oct 2017 21:31:40 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id m67sm26169215pfc.38.2017.10.11.21.31.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Oct 2017 21:31:39 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 01/10] staging: lustre: fix incorrect multi-line comment style
Date: Thu, 12 Oct 2017 10:01:14 +0530
Message-Id: <1507782683-12754-2-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes the checkpatch.pl warning:

WARNING: block comments use a trailing */ on a separate line

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 .../lustre/lustre/include/lustre_dlm_flags.h       |  6 ++-
 .../staging/lustre/lustre/include/lustre_errno.h   | 51 ++++++++--------------
 2 files changed, 21 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h b/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h
index 11331ae..635eca9 100644
--- a/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h
+++ b/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h
@@ -136,7 +136,8 @@
 #define ldlm_clear_cancel_on_block(_l)  LDLM_CLEAR_FLAG((_l), 1ULL << 23)
 
 /**
- * measure lock contention and return -EUSERS if locking contention is high */
+ * measure lock contention and return -EUSERS if locking contention is high
+ */
 #define LDLM_FL_DENY_ON_CONTENTION        0x0000000040000000ULL /* bit 30 */
 #define ldlm_is_deny_on_contention(_l)    LDLM_TEST_FLAG((_l), 1ULL << 30)
 #define ldlm_set_deny_on_contention(_l)   LDLM_SET_FLAG((_l), 1ULL << 30)
@@ -144,7 +145,8 @@
 
 /**
  * These are flags that are mapped into the flags and ASTs of blocking
- * locks Add FL_DISCARD to blocking ASTs */
+ * locks Add FL_DISCARD to blocking ASTs
+ */
 #define LDLM_FL_AST_DISCARD_DATA        0x0000000080000000ULL /* bit 31 */
 #define ldlm_is_ast_discard_data(_l)    LDLM_TEST_FLAG((_l), 1ULL << 31)
 #define ldlm_set_ast_discard_data(_l)   LDLM_SET_FLAG((_l), 1ULL << 31)
diff --git a/drivers/staging/lustre/lustre/include/lustre_errno.h b/drivers/staging/lustre/lustre/include/lustre_errno.h
index 35aefa2..59fbb9f 100644
--- a/drivers/staging/lustre/lustre/include/lustre_errno.h
+++ b/drivers/staging/lustre/lustre/include/lustre_errno.h
@@ -70,16 +70,14 @@
 #define LUSTRE_EROFS		30	/* Read-only file system */
 #define LUSTRE_EMLINK		31	/* Too many links */
 #define LUSTRE_EPIPE		32	/* Broken pipe */
-#define LUSTRE_EDOM		33	/* Math argument out of domain of
-					   func */
+#define LUSTRE_EDOM		33	/* Math argument out of func domain */
 #define LUSTRE_ERANGE		34	/* Math result not representable */
 #define LUSTRE_EDEADLK		35	/* Resource deadlock would occur */
 #define LUSTRE_ENAMETOOLONG	36	/* File name too long */
 #define LUSTRE_ENOLCK		37	/* No record locks available */
 #define LUSTRE_ENOSYS		38	/* Function not implemented */
 #define LUSTRE_ENOTEMPTY	39	/* Directory not empty */
-#define LUSTRE_ELOOP		40	/* Too many symbolic links
-					   encountered */
+#define LUSTRE_ELOOP		40	/* Too many symbolic links found */
 #define LUSTRE_ENOMSG		42	/* No message of desired type */
 #define LUSTRE_EIDRM		43	/* Identifier removed */
 #define LUSTRE_ECHRNG		44	/* Channel number out of range */
@@ -112,23 +110,17 @@
 #define LUSTRE_EMULTIHOP	72	/* Multihop attempted */
 #define LUSTRE_EDOTDOT		73	/* RFS specific error */
 #define LUSTRE_EBADMSG		74	/* Not a data message */
-#define LUSTRE_EOVERFLOW	75	/* Value too large for defined data
-					   type */
+#define LUSTRE_EOVERFLOW	75	/* Value too large for data type */
 #define LUSTRE_ENOTUNIQ		76	/* Name not unique on network */
 #define LUSTRE_EBADFD		77	/* File descriptor in bad state */
 #define LUSTRE_EREMCHG		78	/* Remote address changed */
-#define LUSTRE_ELIBACC		79	/* Can not access a needed shared
-					   library */
-#define LUSTRE_ELIBBAD		80	/* Accessing a corrupted shared
-					   library */
+#define LUSTRE_ELIBACC		79	/* Can't access needed shared library */
+#define LUSTRE_ELIBBAD		80	/* Access corrupted shared library */
 #define LUSTRE_ELIBSCN		81	/* .lib section in a.out corrupted */
-#define LUSTRE_ELIBMAX		82	/* Attempting to link in too many shared
-					   libraries */
-#define LUSTRE_ELIBEXEC		83	/* Cannot exec a shared library
-					   directly */
+#define LUSTRE_ELIBMAX		82	/* Trying to link too many libraries */
+#define LUSTRE_ELIBEXEC		83	/* Cannot exec a shared lib directly */
 #define LUSTRE_EILSEQ		84	/* Illegal byte sequence */
-#define LUSTRE_ERESTART		85	/* Interrupted system call should be
-					   restarted */
+#define LUSTRE_ERESTART		85	/* Restart interrupted system call */
 #define LUSTRE_ESTRPIPE		86	/* Streams pipe error */
 #define LUSTRE_EUSERS		87	/* Too many users */
 #define LUSTRE_ENOTSOCK		88	/* Socket operation on non-socket */
@@ -138,26 +130,20 @@
 #define LUSTRE_ENOPROTOOPT	92	/* Protocol not available */
 #define LUSTRE_EPROTONOSUPPORT	93	/* Protocol not supported */
 #define LUSTRE_ESOCKTNOSUPPORT	94	/* Socket type not supported */
-#define LUSTRE_EOPNOTSUPP	95	/* Operation not supported on transport
-					   endpoint */
+#define LUSTRE_EOPNOTSUPP	95	/* Operation not supported */
 #define LUSTRE_EPFNOSUPPORT	96	/* Protocol family not supported */
-#define LUSTRE_EAFNOSUPPORT	97	/* Address family not supported by
-					   protocol */
+#define LUSTRE_EAFNOSUPPORT	97	/* Address family not supported */
 #define LUSTRE_EADDRINUSE	98	/* Address already in use */
 #define LUSTRE_EADDRNOTAVAIL	99	/* Cannot assign requested address */
 #define LUSTRE_ENETDOWN		100	/* Network is down */
 #define LUSTRE_ENETUNREACH	101	/* Network is unreachable */
-#define LUSTRE_ENETRESET	102	/* Network dropped connection because of
-					   reset */
+#define LUSTRE_ENETRESET	102	/* Network connection drop for reset */
 #define LUSTRE_ECONNABORTED	103	/* Software caused connection abort */
 #define LUSTRE_ECONNRESET	104	/* Connection reset by peer */
 #define LUSTRE_ENOBUFS		105	/* No buffer space available */
-#define LUSTRE_EISCONN		106	/* Transport endpoint is already
-					   connected */
-#define LUSTRE_ENOTCONN		107	/* Transport endpoint is not
-					   connected */
-#define LUSTRE_ESHUTDOWN	108	/* Cannot send after transport endpoint
-					   shutdown */
+#define LUSTRE_EISCONN		106	/* Transport endpoint is connected */
+#define LUSTRE_ENOTCONN		107	/* Transport endpoint not connected */
+#define LUSTRE_ESHUTDOWN	108	/* Cannot send after shutdown */
 #define LUSTRE_ETOOMANYREFS	109	/* Too many references: cannot splice */
 #define LUSTRE_ETIMEDOUT	110	/* Connection timed out */
 #define LUSTRE_ECONNREFUSED	111	/* Connection refused */
@@ -185,8 +171,7 @@
 #define LUSTRE_ERESTARTNOINTR	513
 #define LUSTRE_ERESTARTNOHAND	514	/* restart if no handler.. */
 #define LUSTRE_ENOIOCTLCMD	515	/* No ioctl command */
-#define LUSTRE_ERESTART_RESTARTBLOCK 516 /* restart by calling
-					    sys_restart_syscall */
+#define LUSTRE_ERESTART_RESTARTBLOCK 516 /* restart via sys_restart_syscall */
 #define LUSTRE_EBADHANDLE	521	/* Illegal NFS file handle */
 #define LUSTRE_ENOTSYNC		522	/* Update synchronization mismatch */
 #define LUSTRE_EBADCOOKIE	523	/* Cookie is stale */
@@ -194,10 +179,8 @@
 #define LUSTRE_ETOOSMALL	525	/* Buffer or request is too small */
 #define LUSTRE_ESERVERFAULT	526	/* An untranslatable error occurred */
 #define LUSTRE_EBADTYPE		527	/* Type not supported by server */
-#define LUSTRE_EJUKEBOX		528	/* Request initiated, but will not
-					   complete before timeout */
-#define LUSTRE_EIOCBQUEUED	529	/* iocb queued, will get completion
-					   event */
+#define LUSTRE_EJUKEBOX		528	/* Request won't finish until timeout */
+#define LUSTRE_EIOCBQUEUED	529	/* iocb queued await completion event */
 #define LUSTRE_EIOCBRETRY	530	/* iocb queued, will trigger a retry */
 
 /*
-- 
2.7.4


