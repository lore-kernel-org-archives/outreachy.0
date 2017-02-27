X-GM-THRID: 6391115303185547264
X-Received: by 10.176.82.241 with SMTP id w46mr851351uaw.15.1488190255983;
        Mon, 27 Feb 2017 02:10:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.176 with SMTP id 45ls3854238otd.37.gmail; Mon, 27 Feb
 2017 02:10:55 -0800 (PST)
X-Received: by 10.129.75.9 with SMTP id y9mr6089282ywa.28.1488190255624;
        Mon, 27 Feb 2017 02:10:55 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s64si3077501pfk.0.2017.02.27.02.10.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 02:10:55 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so491804pgz.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 02:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gRgA6UQk8fhxtA/MljUIbxUmXH/jpFjTFADGMUFJrbk=;
        b=fbayImFtarDr3suCGwNWJ26f6ih6jQUFuKgtzRHO489ETI3aGu0THG1oOWU/900Qnr
         Jx9k7Ylt0v6vecm6XnkAWR5Ba/XUfzopx3ELVzkMicGSx/JkRZgQDVMc105ZsSCeXc2F
         E2YesMFfLA3Uu9YOnR7PdrsNt/FUY9NNlfv5rIAf8xz75vjbsEF2ODmEOmxfWLxYc2Qt
         l5GKAwyziyYNsXbFUvFONybDmz+wIAxvwlizfNaMtl+Zk6ALibucbaXa4tuhhQPAhSSS
         lOkcrLcM6iQ9WFfHjZcGQxcvOhZcCqEIJgCOqssungvYYQSD0yuXwSuerUfD8ezUyiZE
         +VjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gRgA6UQk8fhxtA/MljUIbxUmXH/jpFjTFADGMUFJrbk=;
        b=AEy00siHctwr4FiZLkkRUNPLbgdBAoZGVZ3dheXWB4OI1YEhUo+OQiFba6I56RVzBd
         d0BxUUnuUPfdPKoi134kF6FxMvEqNKU7/psNefy7pJTFTr+QqjE4aRhPLY9OF9K5oPKR
         WDf2MtgQ1hBl/ZOdjHPR7B2z+6sXzN7LGhc1eQYoeDJOxz0xSsdogFDImtP4SAVWhq1W
         +DzIa4y8b/erwCsY4Q/EUInepJw2fB7p1vdPYWymuG8WkT+/G+WI1dCZ32Rs2dJZg1Z2
         hOAFAxSf6183AvR/LKPncJtcyLuDm2G5esX53lO3oIpnCylzcwIlBlga4VmT9g8d3O3b
         ZBng==
X-Gm-Message-State: AMke39lMrqh35PY+o4q/CtzZ1XKCp00eK6HkXdSYeHrpZCKhP8CcytI1FHJSrNqaKgPNPQ==
X-Received: by 10.84.212.136 with SMTP id e8mr23200426pli.140.1488190255401;
        Mon, 27 Feb 2017 02:10:55 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.171])
        by smtp.gmail.com with ESMTPSA id q194sm6908813pfq.43.2017.02.27.02.10.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 02:10:54 -0800 (PST)
Message-ID: <58b3fb2e.cb2a620a.152c3.e7c4@mx.google.com>
X-Google-Original-Message-ID: <20170227101051.GA2837@<rvarsha016@gmail.com>>
Date: Mon, 27 Feb 2017 15:40:52 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v5 5/7] staging: sm750fb: Added spaces around arithmetic
 operators.
References: <cover.1488189320.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488189320.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added spaces around arithmetic operators (/, *), to fix the checkpatch
issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/sm750.h       | 2 +-
 drivers/staging/sm750fb/sm750_accel.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index 28f4b9b..306711e 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -177,7 +177,7 @@ struct lynxfb_par {
 
 static inline unsigned long ps_to_hz(unsigned int psvalue)
 {
-	unsigned long long numerator = 1000*1000*1000*1000ULL;
+	unsigned long long numerator = 1000 * 1000 * 1000 * 1000ULL;
 	/* 10^12 / picosecond period gives frequency in Hz */
 	do_div(numerator, psvalue);
 	return (unsigned long)numerator;
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index af0db57..57ae743 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -384,7 +384,7 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 	/* Write MONO data (line by line) to 2D Engine data port */
 	for (i = 0; i < height; i++) {
 		/* For each line, send the data in chunks of 4 bytes */
-		for (j = 0; j < (ul4BytesPerScan/4); j++)
+		for (j = 0; j < (ul4BytesPerScan / 4); j++)
 			write_dpPort(accel, *(unsigned int *)(pSrcbuf + (j * 4)));
 
 		if (ulBytesRemain) {
-- 
2.9.3


