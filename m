X-GM-THRID: 6472300341971910656
X-Received: by 10.101.81.70 with SMTP id g6mr1494080pgq.155.1506958285084;
        Mon, 02 Oct 2017 08:31:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.179.36 with SMTP id a33ls4101264plc.10.gmail; Mon, 02 Oct
 2017 08:31:23 -0700 (PDT)
X-Received: by 10.99.176.6 with SMTP id h6mr1321601pgf.45.1506958283978;
        Mon, 02 Oct 2017 08:31:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506958283; cv=none;
        d=google.com; s=arc-20160816;
        b=z+nXpPQT9NyEM5o2oNF1pSqnQVbs83gQ/enT6PZCFN2pciAU1LfUbjzrAJ8PzVvpEL
         1vHpCzqZOVWHGIhZD3I1RO6fGledA7/5rlakRAv5gSvd+XVBxqFrsc/xmNXUhiJdj+UE
         vQ9A8E2kVoja9aqize/dkB5U5lt5V4MRROCv7SRJS5ZwgoiUnwecy22oGi6oM0RBxWNG
         7/UhZx578R5Wql6WCVp3aXeFHP996xc2NczO84GiYzN6wEDoIanoJjnJ5HAoHGDKJWfd
         /aLKlXf+Mt9VIbDhzn075f+9mqHfoPSEdeSviH5eEhWrZAfUkcaAQTr0oUCJ6s6Vbor3
         oEHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=+aYZpmvJrdQwVyW+avF1T8j42SbJUv0LfwOz2PQQ1bQ=;
        b=sytUWt6d9qMVjBhVw8HUy7zFg/8Vpkz5zZXrhDy8iY5qCdej0HAwqDGW37sSCXkZNQ
         ErQnIdPS8ky9UGr/kXi2TLdID3oUIEmLODGdg9YCtcdZOEUqHV851LrYqsQX68YwhZLd
         2yF5XgseGCosasC5JvBRYDwMWWHbqB5rY4qvertzHBC7nUEzkW8tHtntQ1VcaHRzdeuL
         uUWdyeh5z8SXBWTcQpQrpYWu0tdelcUgI24Qs1Q7tkFP34BOEFTu6z04TCmQQrN1vo0a
         HXOqLk482mOBi03V/L4krxJKR5z1UEut1ejnB4cJZKbS3yJMYss8Rg7J6yacZ4NlHhrl
         qjeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HJFILS7K;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id b6si1233645pfm.28.2017.10.02.08.31.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 08:31:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HJFILS7K;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id p5so4113189pgn.2
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 08:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+aYZpmvJrdQwVyW+avF1T8j42SbJUv0LfwOz2PQQ1bQ=;
        b=HJFILS7KatEk9V2OT6vRWf2329pkCAU4KvRtF2E5jD5lsRIY+moNQ8P4VwT81lx56h
         BrCROD0le0VhJm+7M6nAoIgdnthGkwvep2y/RLXer6+GtJ00aPvuQYxVTIhrGNIzz+Tj
         xRo7Qxsq9BMxrKw1l0rrw7rwAGHVhusbC6WX1oTe7pz6bnRG2iJY8WjREHazIc4nE/tE
         f6vGN/pPxowdECOXq+DUuLWn+rXJNEQ52pLoSrPThUQlFIVgAikVp66CPhJJCMRgE5UH
         3YuXRUNe1fSKEQHpkdX1bVL7nJfWPtwfnVEB696Igpv7I/ZavPUB4QAwgsOtxCqKfOhV
         x2xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+aYZpmvJrdQwVyW+avF1T8j42SbJUv0LfwOz2PQQ1bQ=;
        b=lDyD3p9fHzUSpZ2xeUzVZk7q6eRhHPrvsCF57xfFb0Qk49KfXK60HtTgPr78j0tveb
         IaFHMQq6by6rhu8e19+M8GrTBl+2wIpoEQYtGGF402RRaoY6ICPEfiRm7lsr0tsl3N1f
         rTAgGw5eIiT8agRhl5sf+eA9qvf5nb/FTa7K4alQwDgG/bw2MXcPsUUxYijiW4IZ3lfy
         GfZ9I4uDS4PtBzAMb7DV3ZcFwVNdQFPOHoLNypFEZv8+lxzbPNhB7rAPl7nW533NgpuS
         ykfD32jHcWxKUmZdLCLev+ThPPA902uoXpUyXsme3/ZGKW+kFXO49eBkE9586UnnTq8q
         xBwQ==
X-Gm-Message-State: AMCzsaWoylbDIpeBztYwxnjvwO2G87oZwDlu0S8hd11fOZPTiq1lteHY
	0TJCO7Y8WQ1nGLnBUCUW/fmFMEgz
X-Google-Smtp-Source: AOwi7QDa2e9bqV71Qr5aylcvkjUxst98hgVbGtfay08jM2PJhwSkrqk+aziKr343ybt91EBda4G8cw==
X-Received: by 10.84.234.130 with SMTP id n2mr5249248plk.189.1506958283589;
        Mon, 02 Oct 2017 08:31:23 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id h1sm15966999pgp.37.2017.10.02.08.31.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 08:31:23 -0700 (PDT)
Date: Mon, 2 Oct 2017 21:01:17 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jsimmons@infradead.org, andreas.dilger@intel.com, oleg.drokin@intel.com
Subject: [PATCH v3] staging: lustre: use BIT macro
Message-ID: <20171002153117.GA2109@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This commit changes changes left shift operator to use BIT macro

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 changes in v3:
 move closing comment '*/' to upperline.

 changes in v2:
 convert multi line comment to single line comment

 .../staging/lustre/include/linux/lnet/lib-types.h  | 28 ++++++++++------------
 1 file changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
index eea3b8e..99414c7 100644
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
@@ -440,23 +440,21 @@ struct lnet_rtrbuf {
 
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
-						 * request portal
-						 */
+#define LNET_PTL_LAZY		BIT(0)
+#define LNET_PTL_MATCH_UNIQUE	BIT(1)	/* unique match, for RDMA */
+#define LNET_PTL_MATCH_WILDCARD	BIT(2)	/* wildcard match, request portal */
 
 /* parameter for matching operations (GET, PUT) */
 struct lnet_match_info {
-- 
2.7.4


