X-GM-THRID: 6465584009265020928
X-Received: by 10.202.81.78 with SMTP id f75mr11757032oib.92.1505386086665;
        Thu, 14 Sep 2017 03:48:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.201 with SMTP id p70ls4843713ioi.16.gmail; Thu, 14 Sep
 2017 03:48:05 -0700 (PDT)
X-Received: by 10.129.160.151 with SMTP id x145mr13208176ywg.214.1505386085886;
        Thu, 14 Sep 2017 03:48:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505386085; cv=none;
        d=google.com; s=arc-20160816;
        b=Y5v9fsWUQ0Vd0jcGWGK5MwElw+IdW0lDa4mrYIG9K5lEyHBpwFviv/sT+qiUF22Zz+
         I9YS2cdwCb1Xun9/h16Fzl4v/2C6aK28LD2/waiC9m1GF+14X8KJNH2izuuVo5cABUll
         mHgAYsN7L2bdjfKj/Nd+lz69BNiHk62GiWiCh81EmAeCp5GRQ/cc9t1++fB38F8NXqKe
         t0+7FdjUqmGgJKwsuKcmmymW0ySVeEUtW45jfJzqZZJkti+VmmWX8l5j9BglszKv4sUX
         KiM6ZwhVBtWUAIi3rctwXmZfXpMgJ03NJzi/VB5XlNRij6R3vrL1Mu6lgkfL7O4WSyUV
         AuZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=SgkyiSbh7RKqDej+/WmS2DNC1kBWI/w7yMGMzCRIfyg=;
        b=jUI7d0OLzwCiXi3WifgoJZgzcFDRFq3kIYLgH1q/RPbinETsCPXz5LhIBhQUOXBNDL
         RJ1VhPfJb364gkw50ZZ/738H9DYYxx8OMdNc0ye7BXss4xYdZSgRtoXTMH3v0RSXV2r8
         cTSkSJOMGYPtD7YkcbIqg4+jt0/RfB64FidkTwF2iSTlNvGFhN/+YOb/tZnALdul0FTl
         r9OYwRqzOZLEWOcqThwCXBPdiEQA4Gf/v4/DmxEQ0eYMGQqN1OxZMVVFerZXAavJCJ0d
         hbWlsD8UatUgBSztAglVo/efySf+cnD7SXLmVvIiO5dzGbXzGFri5jOV4pqVPEpgxUz3
         ZscQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vexrVlo4;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id t77si1616158pfi.13.2017.09.14.03.48.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 03:48:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vexrVlo4;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q76so1334725pfq.5
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 03:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SgkyiSbh7RKqDej+/WmS2DNC1kBWI/w7yMGMzCRIfyg=;
        b=vexrVlo4i+bCO0ni3uvU9HSOWo63gO2W5kaYEYIO7MEt8HTWkGJmH+wRg7ELCyRE4U
         CM7WFN6i8aRt9/VMhOlPSYN5nc77zj2ndL5HapWXGd/v0hONuT2T+exIAiEmea1Ja9Qg
         RWb2DRulYE6+Qakp6HXedPb2af0DXW7qQ53uMRpxEUuu1QkXdtI1dCyfxRIiy4f7xoj/
         1+iCEFml6eGmmF/DcH+a+4nQ/dEtNE2XB3qTaPGzMAsBww07CVKoKiZk/cS85w/d821a
         4Lsn9wf/ykw78L1xWhuX4Oe/K4OkggDObOjiivOsyuLg9LF2xk1KA5OR2ufYn54UeEvW
         dFFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SgkyiSbh7RKqDej+/WmS2DNC1kBWI/w7yMGMzCRIfyg=;
        b=sywom5J9c3jaO+S+9IZqZ0vL0I6jXX/ldIDsCPIzx8Rfj8XLiV5o2L7qzoSPeVZJ0f
         BkfToDap0OCaYF9aCOiRtEC7FjGZS/t3tjpOLL/NCcIXSiAgoXWWU9gnI0TZ8qIMGMSh
         Bd9TkxjhsOXdNqDf3opfUjLRjPoc9U5G9Cn4uw0uxn3eIH+NwfF8qUw+y43av4rwX5gQ
         /ldY59DbJXDYqlwuD8qkx1O5FO9gLaYlEToY/xAoG6y1tVKYnX8nhUjM9jbEK1XiMaN7
         HNEwxjWSLXmZkRkaqDeYRZ1KlTyfFRY0QkfPK2xKau/4lEGQH5ajNnhZYV2DZJKLDLi3
         srUw==
X-Gm-Message-State: AHPjjUhEep2pRvPW6Ng1g1AJQzAvZAUljtuguzbrZdS1lOGtb+ms0gQv
	R8Zx0loUDAk9bQ==
X-Google-Smtp-Source: ADKCNb6DxrP2EBTY6TmxkGMgRd2A0fhdRuwdDdRCgvVuEXfcfv/rKKUL5lYwoI5otIn4zGR81TvWxg==
X-Received: by 10.99.121.141 with SMTP id u135mr21074473pgc.262.1505386085425;
        Thu, 14 Sep 2017 03:48:05 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([122.176.131.114])
        by smtp.gmail.com with ESMTPSA id f9sm865493pfe.150.2017.09.14.03.48.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 03:48:04 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: lustre: fix incorrect multi-line comment style
Date: Thu, 14 Sep 2017 16:17:51 +0530
Message-Id: <1505386071-4571-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes the checkpatch.pl warning:

WARNING: block comments use a trailing */ on a separate line

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


