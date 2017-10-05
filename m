X-GM-THRID: 6473410411176656896
X-Received: by 10.101.67.130 with SMTP id m2mr2101346pgp.178.1507208316088;
        Thu, 05 Oct 2017 05:58:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.209.206 with SMTP id y72ls6588894plh.7.gmail; Thu, 05 Oct
 2017 05:58:35 -0700 (PDT)
X-Received: by 10.99.164.18 with SMTP id c18mr905540pgf.56.1507208315411;
        Thu, 05 Oct 2017 05:58:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208315; cv=none;
        d=google.com; s=arc-20160816;
        b=GgdjFqTzvuBCX7+GzX0/bNxoKOarSC0JubbOqxfXny39Tu8OfgNZiL91pPIigtQ860
         LldYLmpIxhh3C1HRcbwlk4ZXGK5s4MxwUXV9yJKvuBxAJNjcHgNiHSVQa4LEiu29DSW6
         TeWuHhPzqjQNEoO2kT1MFi9bbUZG+2qSki+0MSVn28lVlq5ptJZ/l+9PFQr8cGDJRMZD
         tjDtGyr0LCdp3MWJWO9ayUbBuRryEqxsq6Nbj8lwPv5GRRp3sbOF8eiti4dqWU/cqGYu
         JNL4lOH6QhUpYMy+96bmgdy2MOU5unMbMBeGuIKfTTBt1NRPY5ETpat6TaaMUHHL0SCu
         /GkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=Dzsc8DcqLzT0KNWlm9pFxr8JKE1+/zUIVUIPbngUKPA=;
        b=FiyjLvpDcn9Z2MOXY9n4k90OgS0iVxbcqjWW8keHpCnb218my2UToySuFlJgIUvpv1
         UCDe6GctK3xXZW21d2BuPvjxZ1MKW+ame+a/4MmtH5+qNZEHPiE9fxc8kana98AGChY2
         NaHXfH3JWdiSHcxz072Kdaja4MP0Zvht203DBJDzLhHnA4NdOrSO7eBpXGt2CV+L+eF3
         55B3JaDfK9DFR+FOd8fykoCYQFsl9YEcLzupzHuhMZgG5/8awBHT36vxD414rsuprKkR
         Odl4yYJOTz9ChqTTfZBahEIhligNWqtGJo9R3r0GSGu1vemnughugAyzN6zM8qcix4Hp
         dp+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uaol/mIN;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id n63si514546pfb.10.2017.10.05.05.58.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:58:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uaol/mIN;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e69so14570933pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 05:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Dzsc8DcqLzT0KNWlm9pFxr8JKE1+/zUIVUIPbngUKPA=;
        b=Uaol/mINnXYrvDow276LLNP6Mc1sVhjMIogoUI1wWyogY2DLKthvaiVGngRI7qGGIn
         yrNN7GStcAP2gPWPgZZlROmEdhpphrySeqOGFr5/LxSGlc+RD8SlRbSq9GtocYdODK4h
         xnxK7967GIfFMv3CGd5iIBcSQYbmyCJXk1dN1JnNm52alnS7E711TRnEQt3vKhkCJEiU
         mWEgTT8iJF1XXROkQLOcr0IXDJ1l5on34oUMUCEu1Di2VmxKJR84tnDBzRjBqiKczPM4
         ofuEtUyH45UUScBJpvOqwYZabzeMbO53oZn1xw5XE/KX2ZqXxDJzCis1Hmu+ljrJ+2b4
         kMVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Dzsc8DcqLzT0KNWlm9pFxr8JKE1+/zUIVUIPbngUKPA=;
        b=G/MNe3P5rX9AWKOAE+uHaTm8K8BvolT1JmgvcJNW0DeKH8qJpolmuwjdGssM4e1ufF
         c4Qt6r7Fs+QwskCXBh8kOjYIY867rmtYtbdTz0MOJ97/u/+sjVXlmjaD6XmNymHJ+14S
         kmVCWx8nqNpg231H0Gy7FFkkovD7F8xLkahi8PRa4780wr3HGjjV1jvFklhuU/oyhcLl
         WKRtFweO1X+jPVsg8HE4S9zjnylxG7Itd3JKdm2vdZId+KRnQe/pC3A59fSzeFHSxmSI
         UgH5GjXG/xiU6skD+ubgRcdgVTeQ0wbgOEMKccmYfaN/YJxq2BHysbQhlK73mijdGHUf
         d/Ww==
X-Gm-Message-State: AMCzsaW1wNtAVqA5erZWC27I13nD/gHMLVLee7gtYAqgq5f5MSwsjVqq
	u+iIvTUR52nq3vloNL3wrsSYShz0
X-Google-Smtp-Source: AOwi7QDdoh3OsFlNelNFLXhdTvttwSaZqpzLnJn89uM+wxhC395N7hcNvAId3towX+yz94QUq5/PiA==
X-Received: by 10.84.217.206 with SMTP id d14mr15610477plj.62.1507208315099;
        Thu, 05 Oct 2017 05:58:35 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id p6sm27814137pga.93.2017.10.05.05.58.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 05:58:34 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 01/11] staging: lustre: fix incorrect multi-line comment style
Date: Thu,  5 Oct 2017 18:28:13 +0530
Message-Id: <1507208303-17615-2-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>

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


