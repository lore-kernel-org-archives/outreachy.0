X-GM-THRID: 6473410411176656896
X-Received: by 10.107.131.222 with SMTP id n91mr12140808ioi.9.1508328881862;
        Wed, 18 Oct 2017 05:14:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.195.206 with SMTP id t197ls453903iof.19.gmail; Wed, 18 Oct
 2017 05:14:41 -0700 (PDT)
X-Received: by 10.107.178.142 with SMTP id b136mr12396421iof.106.1508328881045;
        Wed, 18 Oct 2017 05:14:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508328881; cv=none;
        d=google.com; s=arc-20160816;
        b=BkTYkh+ZyZwySOWCCfsuASZf+hZgR7FvtzGbz7UBmMQag8KDUHgkeZxQi/m3VEogEL
         5yhZlP2vdNwOU6l0Egw6OPKvZTarmRYueP4rOUKK25MoAi3EH4oz87DLOCNwT9F8aSpB
         g6px/wxMrf4rZXSS1SYayUJYpkAxPM2sIpIVKaUmxHq09Y20GGDww8m9grAsc3Mm2Uxo
         KI1/mpTUMgnGflPn+viety41quaRiZVnpsLUp54WHaAW5xuiQI0ktDaIzK1cMqm+3tFp
         p3FQ9h54xmWyvb1eCTMLA+OySiLQVopapdQW/bOpXvjFiB1FmqzGtMU4RZuQNt7DkbDt
         AaxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=fi3Ym6en2G29KdM2A21KPv5O35krN49seZNaZHhBxj0=;
        b=nFI5jKvZw0hPZ+uCEFRzv1QMWDaAGo1BY8DKKq/OfCM2Z8enJKLoMTNNCrlcN8zTW4
         EYJAGzV9LqL/IU+GPIutwcrSXOIZ8hnYXtLG26Bty0H7QjmuLsQBaXIPfVHpoO+XdXfA
         CuFEzCJyej4O7vlH/mki5k6TXMwKGNiNiWYWSdRGAKrdMMP2IF/H8zxgpQORwahRE1it
         BJ2dRz3qKDCm7BoPeEm3ZmCM2i+H8AUfzHKm+QN6xSrI6enE8b1Y9+OHZ0ka0/SEoMio
         rg82FDH6Ti3+h8a5bIm1wzRHwWeYTZp78suv2xQSq8lrnOymwtekywqsLXduxeSzDvk4
         AUtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YrlIqbBt;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si1050256itc.0.2017.10.18.05.14.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:14:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YrlIqbBt;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g6so4132088pgn.6
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 05:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fi3Ym6en2G29KdM2A21KPv5O35krN49seZNaZHhBxj0=;
        b=YrlIqbBt/yYP1SMigSspHZ/Yz6F98MB7P6AleWkqb0wlgM87YGf6kVaRrBNY7LoOEa
         gja0IvJgihJXhQB45H/H6bg6mKvsIOdPzR5BUCnREtGzOl+cfHStDdvstrAJcW2XEC9S
         4v/EvrxMpm0kezZdyOSQtHyaUVog+i/ET7dnuXcMP3OdCoggCr5Vt9/ivFs9JJxTfBaA
         clImONQtw0ZvEIo6BwXH6iy+q/Y/XRovbZoQEk4H3Tup8Fzh4UxrVXVpK9JfnZuCbFgR
         OvvuypGK4VQDrvbeBDPyy9tycgoGqCTeaX3DwuqxpRHLGpX9mFV9UQ3DobVzYa5N016W
         hAvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=fi3Ym6en2G29KdM2A21KPv5O35krN49seZNaZHhBxj0=;
        b=G76Gu5+XZg/q0AeWhJtxTH3eVXZlZ1gLxKOzdsmr9kFSvUbuIMtHHvfvhSwfHinLFA
         LDMzDLF6Dy802feQd8yQoJoSQR6G7aGQrZIc0zeh78aJ9CPmXnntRisqqxKmlBe6pYdC
         /m+WdS/nxiOmsWNOlXuxR3zXSQMck+L/g0vVOWAYMaykC+atnGxP6kT8TYGWMA6Enq/G
         PuFFIji5MnMjtWYFU3j5uRFntPNm1v40q81d11PJcSJ0a3a+zppp0zdwtVpJb+lWeuh+
         FmQv8YFJdsYNccxKVVwn9uSj5EfSD6Cwtl276bkd8Wp8VEEx4A92LMnqe45RevwlqJnT
         8NvA==
X-Gm-Message-State: AMCzsaVKuzTv/HHm+abn+z8MFB1r9LOQv63ciQ4teElr33cLJWkg3Qgx
	+umalolCg0zBLPuHmi7uh8Q=
X-Google-Smtp-Source: AOwi7QAiMu1MK5GnbK1W4k8fsp4Qidr+GHRBKII/oj0tIek16RSiJ+64Z3uzr+7DPbjyYEHiFhHd7A==
X-Received: by 10.98.220.19 with SMTP id t19mr14623198pfg.59.1508328880395;
        Wed, 18 Oct 2017 05:14:40 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id z78sm26831054pfd.178.2017.10.18.05.14.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 05:14:39 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 01/10] staging: lustre: fix incorrect multi-line comment style
Date: Wed, 18 Oct 2017 17:44:21 +0530
Message-Id: <1508328870-9416-2-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>

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


