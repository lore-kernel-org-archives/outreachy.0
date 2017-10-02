X-GM-THRID: 6472300341971910656
X-Received: by 10.101.73.138 with SMTP id r10mr1486029pgs.124.1506949854738;
        Mon, 02 Oct 2017 06:10:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.201.87 with SMTP id k84ls3576123pfg.14.gmail; Mon, 02 Oct
 2017 06:10:53 -0700 (PDT)
X-Received: by 10.101.71.131 with SMTP id e3mr584217pgs.1.1506949853444;
        Mon, 02 Oct 2017 06:10:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506949853; cv=none;
        d=google.com; s=arc-20160816;
        b=MeDTvIUuI4yCST285yNUrKqiSx0as0zy5RNKEdMuGYWndVid9Kil9FakK2jFCwADe1
         mxkVdMU+DcFj6009BlKD4kGNV7yl0XBdOt1oxhZxTVCLKBKEseQdR8dSgwq2aCWYURXT
         hpPjpAWIfcLL8Hf+lGhm/OpxUtXXakSyhIOHSfKmqppTGtWP1z42hTvwZ0qqqJkDUaW3
         ssaEZfThyJf4dHVySbM2tjaQPhBLsTuHCj+veLswWgE6qTZeo+IvnRA/ukbmBD8zfMM+
         sYJNUG0OKGPjjJlJOlI45UXRX1SvwF8tFvh1O1uW0YY6vwtXYYGoAD+Zi79U/hQrrp+Z
         dt6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=YL1r9i8xOff8NY4oHbtuWAZY0gl4Mmn5nsc+hZu3Axw=;
        b=MjFu4nBNZNqPQTD9BwfrHHF0CMyYrC8qNzVtDXy+b1uPx5vBCgL+EH9MdZpldQHV2i
         oOt+jimxCObP39mmJ8Ahwe7C0acbSzaJir/FvYhvvCyVG1f0SrDQp/KIyhkxOlYY5fhu
         NrIHpCasxJ5jhxmkiPeTuwAtKqXMtQVaMprjZqfKO41SF4jdLk8pTgFHq3f902zyJu2K
         IdJcBitq1/flD6Tuf+C/uH1VgM2YGVmuB3WdVpiEMwUs9i+UogkVmTIpg7dlxc+yLlvy
         3pCbkrS86Xa9wSTjF14zJSPHOBDKGfqJACYVC/liWoTeJJ6D1KYcB++SOaSm5DRLbJCM
         dP8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HZl6Eisk;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y12si1103747pfe.23.2017.10.02.06.10.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 06:10:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HZl6Eisk;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id m28so5568271pfi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 06:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YL1r9i8xOff8NY4oHbtuWAZY0gl4Mmn5nsc+hZu3Axw=;
        b=HZl6EisktZL/oZpvPh5ooyRSRr1pvOBkmpMVRVZRFmzaaCiSv54yNgqEkBHVSe0Yv6
         vB9BXfAe4yEyOG24NWjQvh353zwBUBG+6j4tnSNuQpFJb+xofDII+scOX9wrLFFDe9Qc
         0zFcBXsER5jMdTTs8OfMQsc5zcy1+dngpEf9R1tAFZ9wJ4904Fv8PNQn72gwLm9TUxuG
         GcT5rb+eO1u3j6Bj3UgtZCd6PJffSBDhm32yUTU4xoprNHDutX9iolLPieX/DFYXAhoT
         6+ORKJJHzWIga3kXRaFUvc8J5DY0sqi1SxVcu1Hfy0w9gq0oeYk+ZBWx7JIDXotWcx9j
         tmCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YL1r9i8xOff8NY4oHbtuWAZY0gl4Mmn5nsc+hZu3Axw=;
        b=U7bw7h4AhfvDDpzqCC+Y20zSNBKYua4qYHURjzomQufJbJI8e0rf2gi1xht4wEEztA
         094NrgoT3qztDOX68zXz1ukb3ZynyEjorgl8D/TLSP4IUl3Od/U80AuucTLwb9nAzCsg
         OQX10w/CajkMek/3pGzd6/7nB1pG0p29PEJDA3aeAiLLpJMMzKJqnKL+wbxS+csdOzrd
         VYOpv8brCgUJZqZljtC1CtfKBRuoPF6o8M0M8yK7B2FQxl6VohTpHKGQfDeleuHWY6H+
         /m1QHRHcL4Q/o/AHp2uq8dWt3IAncHC06CG+S0eV6ca6pqf85ejI9rARuCKQXbk6YCff
         vGwQ==
X-Gm-Message-State: AMCzsaXs+1AiqpBcOQ3WSvEzLXkR3p1OF6xW/Ie56fH9wajoYqS8G6CR
	j+2df2Q/Avh0BfraCCwP3PjgsEz4
X-Google-Smtp-Source: AOwi7QAyn3KTvw5JNJpfJlhTvNGlBhy3r1TE6+L3MnVAcKlmCyH9NskRMnIKngbyo9MoJnyMH50y+Q==
X-Received: by 10.84.210.227 with SMTP id a90mr1871797pli.356.1506949853004;
        Mon, 02 Oct 2017 06:10:53 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id 13sm17063094pfm.138.2017.10.02.06.10.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 06:10:52 -0700 (PDT)
Date: Mon, 2 Oct 2017 18:40:42 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jsimmons@infradead.org, andreas.dilger@intel.com, oleg.drokin@intel.com
Subject: [PATCH] staging: lustre: use BIT macro
Message-ID: <20171002131042.GA12477@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This commit changes changes left shift operator to use BIT macro

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 .../staging/lustre/include/linux/lnet/lib-types.h  | 26 +++++++++++-----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
index eea3b8e..15837a3 100644
--- a/drivers/staging/lustre/include/linux/lnet/lib-types.h
+++ b/drivers/staging/lustre/include/linux/lnet/lib-types.h
@@ -160,9 +160,9 @@ struct lnet_libmd {
 	} md_iov;
 };
 
-#define LNET_MD_FLAG_ZOMBIE		(1 << 0)
-#define LNET_MD_FLAG_AUTO_UNLINK	(1 << 1)
-#define LNET_MD_FLAG_ABORTED		(1 << 2)
+#define LNET_MD_FLAG_ZOMBIE		BIT(0)
+#define LNET_MD_FLAG_AUTO_UNLINK	BIT(1)
+#define LNET_MD_FLAG_ABORTED		BIT(2)
 
 struct lnet_test_peer {
 	/* info about peers we are trying to fail */
@@ -287,9 +287,9 @@ struct lnet_ni {
  * of old LNet, so there shouldn't be any compatibility issue
  */
 #define LNET_PING_FEAT_INVAL		(0)		/* no feature */
-#define LNET_PING_FEAT_BASE		(1 << 0)	/* just a ping */
-#define LNET_PING_FEAT_NI_STATUS	(1 << 1)	/* return NI status */
-#define LNET_PING_FEAT_RTE_DISABLED	(1 << 2)	/* Routing enabled */
+#define LNET_PING_FEAT_BASE		BIT(0)	/* just a ping */
+#define LNET_PING_FEAT_NI_STATUS	BIT(1)	/* return NI status */
+#define LNET_PING_FEAT_RTE_DISABLED	BIT(2)	/* Routing enabled */
 
 #define LNET_PING_FEAT_MASK		(LNET_PING_FEAT_BASE | \
 					 LNET_PING_FEAT_NI_STATUS)
@@ -440,21 +440,21 @@ struct lnet_rtrbuf {
 
 enum lnet_match_flags {
 	/* Didn't match anything */
-	LNET_MATCHMD_NONE	= (1 << 0),
+	LNET_MATCHMD_NONE	= BIT(0),
 	/* Matched OK */
-	LNET_MATCHMD_OK		= (1 << 1),
+	LNET_MATCHMD_OK		= BIT(1),
 	/* Must be discarded */
-	LNET_MATCHMD_DROP	= (1 << 2),
+	LNET_MATCHMD_DROP	= BIT(2),
 	/* match and buffer is exhausted */
-	LNET_MATCHMD_EXHAUSTED	= (1 << 3),
+	LNET_MATCHMD_EXHAUSTED	= BIT(3),
 	/* match or drop */
 	LNET_MATCHMD_FINISH	= (LNET_MATCHMD_OK | LNET_MATCHMD_DROP),
 };
 
 /* Options for lnet_portal::ptl_options */
-#define LNET_PTL_LAZY		(1 << 0)
-#define LNET_PTL_MATCH_UNIQUE	(1 << 1)	/* unique match, for RDMA */
-#define LNET_PTL_MATCH_WILDCARD	(1 << 2)	/* wildcard match,
+#define LNET_PTL_LAZY		BIT(0)
+#define LNET_PTL_MATCH_UNIQUE	BIT(1)	/* unique match, for RDMA */
+#define LNET_PTL_MATCH_WILDCARD	BIT(2)	/* wildcard match,
 						 * request portal
 						 */
 
-- 
2.7.4


