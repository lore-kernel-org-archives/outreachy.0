X-GM-THRID: 6472300341971910656
X-Received: by 10.98.196.204 with SMTP id h73mr1141885pfk.35.1506956793537;
        Mon, 02 Oct 2017 08:06:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.85.142 with SMTP id j14ls1210966pgs.3.gmail; Mon, 02 Oct
 2017 08:06:32 -0700 (PDT)
X-Received: by 10.98.1.198 with SMTP id 189mr34885pfb.59.1506956792299;
        Mon, 02 Oct 2017 08:06:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506956792; cv=none;
        d=google.com; s=arc-20160816;
        b=nsxdthyhHx4yaY6/RKyzyEAI6udtiUryeZGYi8aurvD9Cqv10yjsHIcR0VOGNJsoFp
         Xles38+fN5MCPEpFQcLZnn+Bz7b9tklPxQapj7J7A/utNyq8EzsGvc7fSqN2iBdd+eKw
         fBaFVF5FYt7Rdu5YbLIFOXRtTo8mgjd75gk4W4OGqaomP61EW3lkN2F7oLq5NoFh+s62
         0d6vdA0LKGwi+CrPPEhfy5+l2992F6AOshr059Egu+YL5Vut/wcReGKLS5vChpn8fZUW
         8ZC5T6dPumNsFI9OAEUaBr3LStZx4CNiZKRWoku4eL8ZKQmfwwPH19SUetv+RoQc9WKX
         kTUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=i9WnxJD2ya529m+W+Sc+W9jC3NmmiFkf2i9bpd+qRks=;
        b=qBayuAiWP6pY5rKW/l59q5Vr34zZU5dmPenIPECmMnkE6hX8Shje411veyRosP856U
         rR9Y3c+Vz3O2ZOvKekvJ9izWplYQX6WZzXufTEV+bYVJqH2kUrrQ8qxQBORUIWI7hfBN
         6vXkmCH/Oet95XX7E0X1cBultSVMPTQb2AdNbqxs4OSM/vTUWi4/vigSXvd1Dd+zh1dN
         06ZOEcdBQhu8rDPGVWzn07sylSn/lLRmo64PUhGamxaLbEQr5BKIQWFwQgsR3QRdnUsP
         i+gG9OB2FUPJIBBLZiwJBa9DzkqIETEjuHipoH93kA7NeF4+hJ3sna2WXkHChHSgvpTL
         z/pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=co2slpp9;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id s81si1135344pfg.19.2017.10.02.08.06.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 08:06:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=co2slpp9;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so5999533pfg.4
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 08:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=i9WnxJD2ya529m+W+Sc+W9jC3NmmiFkf2i9bpd+qRks=;
        b=co2slpp9P4kD6dzaIXo/baV+zBhvJWZH3A8G8DHFlLTUREPzG8CQ4BBRGuT7yop8MR
         WsZSePlzQjDi4vU5Md539NaezC7R2r4OnciRl+qkAz2+XzzrhidwjXtO/Jy7MQVVjfKt
         ku982QBwl3LE/A0/SbD4HD22SLCndNUJTqbf8CUGTEZTgr6tkBPwjpdhkrAYqyYfRUAH
         61NoJh3xDdElQQXWLLgtqSfpFX0P2RsjQXTgPXcEUcFCGY8BQNUpee6tS1/D1r5ZwLJ4
         UJzo8f8uMue/vNr7pVmj+cFLkWf/g9KM24a4YpibalRxECDCEtcb9YQFv2f17fSDv3cy
         lVLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=i9WnxJD2ya529m+W+Sc+W9jC3NmmiFkf2i9bpd+qRks=;
        b=VkcNYexSxJ4eWJhhOFG5jwSGiMrLi4xmIZtUkdPjSzITn8G3AEue1mTYQ8Xkx2VeW/
         Wzmeu2D2b6c2dnEHdLAtFHunFc7NOsg88Tmga3FfJn6pST6Qdxlbc5rp2pIJSqRD2s9t
         GT0FTufR1UU1TTvi7NjsgfWCC1oX7cWdyIo8rBgIj3zM6DQZ39PGzFKKNYkTBVoSFcFS
         HhQf+Vo/UR6t64OIMNjduX9nbJW5erp+LfaP4lTBiZYMkCkFzUZPruGEPaBLB0b8C3cx
         vGpDn93fH/tCl+Ex3H10s3wU0VVn9TR3qutmHe58JhXInVXeRyJVZXXXSH11eGVXCPAx
         FqzQ==
X-Gm-Message-State: AMCzsaXdZpXp3zpWvOu0UFiKF682mw0ZKvtGiqIytQCV95HSeXBwS6NJ
	vngQ6IoOaViYDY/AAe3Sx1XXuqaL
X-Google-Smtp-Source: AOwi7QApj6nD30guYfvMpKttCZuA+SfsTkGuj9LHM8YjD4nkoe8UEng7pF1BnnmDbkiteewzelbtbA==
X-Received: by 10.98.92.7 with SMTP id q7mr1962203pfb.87.1506956791843;
        Mon, 02 Oct 2017 08:06:31 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id a68sm17371174pfe.71.2017.10.02.08.06.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 08:06:30 -0700 (PDT)
Date: Mon, 2 Oct 2017 20:36:23 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jsimmons@infradead.org, andreas.dilger@intel.com, oleg.drokin@intel.com
Subject: [PATCH v2] staging: lustre: use BIT macro
Message-ID: <20171002150623.GA14363@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This commit changes changes left shift operator to use BIT macro

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 changes in v2:
 convert multi line comment to single line comment

 .../staging/lustre/include/linux/lnet/lib-types.h  | 27 +++++++++++-----------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
index eea3b8e..72f5b22 100644
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
@@ -440,22 +440,21 @@ struct lnet_rtrbuf {
 
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
+#define LNET_PTL_LAZY		BIT(0)
+#define LNET_PTL_MATCH_UNIQUE	BIT(1)	/* unique match, for RDMA */
+#define LNET_PTL_MATCH_WILDCARD	BIT(2)	/* wildcard match, request portal
 						 */
 
 /* parameter for matching operations (GET, PUT) */
-- 
2.7.4


