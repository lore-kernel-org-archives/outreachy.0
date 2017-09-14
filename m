X-GM-THRID: 6465584009265020928
X-Received: by 10.36.192.10 with SMTP id u10mr1091361itf.18.1505389085411;
        Thu, 14 Sep 2017 04:38:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.0.216 with SMTP id 207ls4857888ita.21.gmail; Thu, 14 Sep
 2017 04:38:04 -0700 (PDT)
X-Received: by 10.233.230.77 with SMTP id x13mr10902676qkl.59.1505389084535;
        Thu, 14 Sep 2017 04:38:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505389084; cv=none;
        d=google.com; s=arc-20160816;
        b=cTzAM4l1vY1oott0A77e4dkhjyGS7jLhdx21WPPhA+PqFrIjwsESmrVdsjzwzqFvzd
         qEIxqIQ5TtmePXMGjxW+Z8SLt+k19Aa11S+QgLSwKTWnzc2OOi6F+u4f3KtnUzofXTWw
         o0EtIhdL+vDFyIl1DvX40HZxYGX1/emIATk/umY95rrc7kh2SfobKczLpLwSwdM6PGMj
         +FdPVmv/SQWO40wzbuNGKrA3ihDMTcEFIqM02dCFadK1VTr/MGjt269+HJCaNqHRfO7P
         4oIHMn3JQvf7Owov5qTkCv1AcNCahiC+wiH/m93xfPgZ7m3W6rYGMVLh1Th5uyD3/CHd
         xTfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Dzsc8DcqLzT0KNWlm9pFxr8JKE1+/zUIVUIPbngUKPA=;
        b=UhyS49csNGwCYS/6AkznS7AhdovQSIEMMpigO/cA8BJ03XyVHSjwgMFh+zkWdBluJO
         WGxsBgziiJCYTdHGDFi61Iw/6A63skYOi9iUCVRf4YxMbn9GQx5nIcSqg5cyGAGrG5+/
         OWHNa+35nBxdy7oHzB0bULzwsoIIKiRKUo3woy9g7JZJVD1HFcmv31H5ebiCIM5nam3j
         r3Xf1jhehhM6ZeZuo/CC4P/q9ZY720KIaRJIVZPeHPLP98GRw97dBF7RVLcxIoqZxK3z
         iVyJsxog4CrBUqIlYB6cTlHdZzMiBVD4lhuS8ihePIs/xNAdCzPfuBS3JU+k4ODzF5oo
         7NjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FDBJfRYH;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id t77si1632723pfi.13.2017.09.14.04.38.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 04:38:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FDBJfRYH;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id j16so1564357pga.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 04:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Dzsc8DcqLzT0KNWlm9pFxr8JKE1+/zUIVUIPbngUKPA=;
        b=FDBJfRYH/v4u998c2115w8mQxrzuIbEWimbwh7i4IlhoCjKlKrSekep/jQkloE7h0F
         X4pyTaHTAVqndbo0ZbctNtXJqdbCZbURjS6YVBAgL37D3Ttkn1cLNeYQADaptIeXvl6v
         ECSzfgBzTemgca7RaWvrqIdAsepFi39UF1BZ+S4g7w4p8YU/1aAVJSbMYZLDSFAdYbc7
         8pfvrfHBC7u4x1/wymieG2VBFYwk85FWa93hhaWOY4AQx7ySs+2PxokUm1jq+kEhVKPh
         uh0800v1sKbnc7tOt4UcuoD0ycTREik+BGo2DNx6nXsvgoJyKjuIb3H7ZRX4ekCL8pUp
         SFbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Dzsc8DcqLzT0KNWlm9pFxr8JKE1+/zUIVUIPbngUKPA=;
        b=FNLVe3c0o1mJGrsBHYNH4hSH/DjPapxodpVdeEXlJmSKoaeZoheiqAKz/9+SzvZv4h
         zzTS/3S0FGrkmlhoOor0zl3iWfOAm2VDBCJxTapIrIbS55kqUuOByLzTe+jV3CO7uMgj
         at//XBngMWkCAs0VkDbNpF0zV0wJjD2YOKENyAV+uDb4+eUJbKjB0CwP80m8BgRxHmq/
         z9++Gb32J6L/3ORHrvqlSR58lZeoBRWv6wqTiG53MKbgG5OmNAd/VQfUis838kEVuHQ3
         Xau30/Q8o7Ou2rkp7r4yFbZaSR2Zy8MscRfB4RY7NsaIMF/aLqLY2baLoIhlc9qo05OT
         3DMQ==
X-Gm-Message-State: AHPjjUgLNGIRRY7qPTaiDs3TOh/+tkHrudOsIYnW51s91QA5ClLGmyZg
	43/K6qyeXm8qJ/ealJtsFg==
X-Google-Smtp-Source: ADKCNb7n75GdWOPgmnWR+VZo7gNYjgaLuvr2OSNNY+qXY+y4MV2AKA+/jZdaA4PjBTByxWDam5lRBw==
X-Received: by 10.101.69.194 with SMTP id m2mr20637939pgr.20.1505389084018;
        Thu, 14 Sep 2017 04:38:04 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([122.176.131.114])
        by smtp.gmail.com with ESMTPSA id v25sm28225197pfg.52.2017.09.14.04.38.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 04:38:03 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [RESEND PATCH] staging: lustre: fix incorrect multi-line comment style
Date: Thu, 14 Sep 2017 17:07:42 +0530
Message-Id: <1505389062-8222-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes the checkpatch.pl warning:

WARNING: block comments use a trailing */ on a separate line

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 .../staging/lustre/lustre/include/lustre_errno.h   | 51 ++++++++++++++--------
 1 file changed, 34 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_errno.h b/drivers/staging/lustre/lustre/include/lustre_errno.h
index 35aefa2..02642be 100644
--- a/drivers/staging/lustre/lustre/include/lustre_errno.h
+++ b/drivers/staging/lustre/lustre/include/lustre_errno.h
@@ -71,7 +71,8 @@
 #define LUSTRE_EMLINK		31	/* Too many links */
 #define LUSTRE_EPIPE		32	/* Broken pipe */
 #define LUSTRE_EDOM		33	/* Math argument out of domain of
-					   func */
+					 * func
+					 */
 #define LUSTRE_ERANGE		34	/* Math result not representable */
 #define LUSTRE_EDEADLK		35	/* Resource deadlock would occur */
 #define LUSTRE_ENAMETOOLONG	36	/* File name too long */
@@ -79,7 +80,8 @@
 #define LUSTRE_ENOSYS		38	/* Function not implemented */
 #define LUSTRE_ENOTEMPTY	39	/* Directory not empty */
 #define LUSTRE_ELOOP		40	/* Too many symbolic links
-					   encountered */
+					 * encountered
+					 */
 #define LUSTRE_ENOMSG		42	/* No message of desired type */
 #define LUSTRE_EIDRM		43	/* Identifier removed */
 #define LUSTRE_ECHRNG		44	/* Channel number out of range */
@@ -113,22 +115,28 @@
 #define LUSTRE_EDOTDOT		73	/* RFS specific error */
 #define LUSTRE_EBADMSG		74	/* Not a data message */
 #define LUSTRE_EOVERFLOW	75	/* Value too large for defined data
-					   type */
+					 * type
+					 */
 #define LUSTRE_ENOTUNIQ		76	/* Name not unique on network */
 #define LUSTRE_EBADFD		77	/* File descriptor in bad state */
 #define LUSTRE_EREMCHG		78	/* Remote address changed */
 #define LUSTRE_ELIBACC		79	/* Can not access a needed shared
-					   library */
+					 * library
+					 */
 #define LUSTRE_ELIBBAD		80	/* Accessing a corrupted shared
-					   library */
+					 * ibrary
+					 */
 #define LUSTRE_ELIBSCN		81	/* .lib section in a.out corrupted */
 #define LUSTRE_ELIBMAX		82	/* Attempting to link in too many shared
-					   libraries */
+					 * libraries
+					 */
 #define LUSTRE_ELIBEXEC		83	/* Cannot exec a shared library
-					   directly */
+					 * directly
+					 */
 #define LUSTRE_EILSEQ		84	/* Illegal byte sequence */
 #define LUSTRE_ERESTART		85	/* Interrupted system call should be
-					   restarted */
+					 * restarted
+					 */
 #define LUSTRE_ESTRPIPE		86	/* Streams pipe error */
 #define LUSTRE_EUSERS		87	/* Too many users */
 #define LUSTRE_ENOTSOCK		88	/* Socket operation on non-socket */
@@ -139,25 +147,31 @@
 #define LUSTRE_EPROTONOSUPPORT	93	/* Protocol not supported */
 #define LUSTRE_ESOCKTNOSUPPORT	94	/* Socket type not supported */
 #define LUSTRE_EOPNOTSUPP	95	/* Operation not supported on transport
-					   endpoint */
+					 * endpoint
+					 */
 #define LUSTRE_EPFNOSUPPORT	96	/* Protocol family not supported */
 #define LUSTRE_EAFNOSUPPORT	97	/* Address family not supported by
-					   protocol */
+					 * protocol
+					 */
 #define LUSTRE_EADDRINUSE	98	/* Address already in use */
 #define LUSTRE_EADDRNOTAVAIL	99	/* Cannot assign requested address */
 #define LUSTRE_ENETDOWN		100	/* Network is down */
 #define LUSTRE_ENETUNREACH	101	/* Network is unreachable */
 #define LUSTRE_ENETRESET	102	/* Network dropped connection because of
-					   reset */
+					 * reset
+					 */
 #define LUSTRE_ECONNABORTED	103	/* Software caused connection abort */
 #define LUSTRE_ECONNRESET	104	/* Connection reset by peer */
 #define LUSTRE_ENOBUFS		105	/* No buffer space available */
 #define LUSTRE_EISCONN		106	/* Transport endpoint is already
-					   connected */
+					 * connected
+					 */
 #define LUSTRE_ENOTCONN		107	/* Transport endpoint is not
-					   connected */
+					 * connected
+					 */
 #define LUSTRE_ESHUTDOWN	108	/* Cannot send after transport endpoint
-					   shutdown */
+					 * shutdown
+					 */
 #define LUSTRE_ETOOMANYREFS	109	/* Too many references: cannot splice */
 #define LUSTRE_ETIMEDOUT	110	/* Connection timed out */
 #define LUSTRE_ECONNREFUSED	111	/* Connection refused */
@@ -186,7 +200,8 @@
 #define LUSTRE_ERESTARTNOHAND	514	/* restart if no handler.. */
 #define LUSTRE_ENOIOCTLCMD	515	/* No ioctl command */
 #define LUSTRE_ERESTART_RESTARTBLOCK 516 /* restart by calling
-					    sys_restart_syscall */
+					  * sys_restart_syscall
+					  */
 #define LUSTRE_EBADHANDLE	521	/* Illegal NFS file handle */
 #define LUSTRE_ENOTSYNC		522	/* Update synchronization mismatch */
 #define LUSTRE_EBADCOOKIE	523	/* Cookie is stale */
@@ -195,9 +210,11 @@
 #define LUSTRE_ESERVERFAULT	526	/* An untranslatable error occurred */
 #define LUSTRE_EBADTYPE		527	/* Type not supported by server */
 #define LUSTRE_EJUKEBOX		528	/* Request initiated, but will not
-					   complete before timeout */
+					 * complete before timeout
+					 */
 #define LUSTRE_EIOCBQUEUED	529	/* iocb queued, will get completion
-					   event */
+					 * event
+					 */
 #define LUSTRE_EIOCBRETRY	530	/* iocb queued, will trigger a retry */
 
 /*
-- 
2.7.4


