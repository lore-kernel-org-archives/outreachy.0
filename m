X-GM-THRID: 6473410411176656896
X-Received: by 10.98.155.146 with SMTP id e18mr1605153pfk.41.1507208353920;
        Thu, 05 Oct 2017 05:59:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.102.70 with SMTP id a67ls5058667pgc.20.gmail; Thu, 05 Oct
 2017 05:59:12 -0700 (PDT)
X-Received: by 10.98.53.199 with SMTP id c190mr281070pfa.37.1507208352967;
        Thu, 05 Oct 2017 05:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208352; cv=none;
        d=google.com; s=arc-20160816;
        b=jX9Pc0zs342OzGeOi8ezfuLncL6RTxz01iyYaFYunH1X6lAB4yi4PachZe3V9O+CA+
         qEi1/5D10gCpz/8mqeyrfCVfTp6gqUBI7ASohFxFE9y7Qg/rAMiIsvexCO/uOe5Td3be
         wkB9o4051wBWAVDM6ZWOYphrLIprihzxOLlXlLuPalCvCQLa3OoKBbzmbu2ZjQcYr01F
         LsHqf4mVpbCmDmC8UKKJffMmBlU/WrFFrfDgvQuIfzLbBsXiVnGQFB3ioLszfMAV+J8B
         wIfihMeOQS+M3oMPucT9r0AelEFY1PuQBwrcjAvO4bE6Ri1Dq+Lds8ixeCC2DhCxZh/C
         C7pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=MGS7+XCk/QDZSb3Q8rcz8QPpyh91JyRKO5xSJbvhrDk=;
        b=k0NVfB51x+Vy7drMLB9Xl85+Y5d1rF8dNXA0iHEeBlDPA9kUeAOpOlZjspNJQi8b4E
         jPOnQ0rXaBgf0uCsuD9KmM1+F+uYzISyWu+DhtNUE8C37GhW+k453YupemDdlcWu/P27
         I4pfksdICmb1EodiR+Qx61/Cn9nJk+AbJL8JMhVoKU+1FJ9qJOOkqGxTJCBdV9pNNko5
         9/6BZz52jWgXgIYveH2XE33R9DoW6SPtOZHoBOsyjXENudItrzGP2rgG6Lh4GKxfefpS
         qRJqI1HxdnIRU3xrXZXoEzWz6dWs8jxRek71YmA+HmYzzsVt1fCu3CRETXm4QnV5NROK
         aSyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N34GiAVd;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f13si2026931pfj.11.2017.10.05.05.59.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N34GiAVd;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e69so14572009pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 05:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=MGS7+XCk/QDZSb3Q8rcz8QPpyh91JyRKO5xSJbvhrDk=;
        b=N34GiAVduN2+61HEDH78pS60ELmLNFwHV4Z64GbabX9rsEnF52A52d+fcowDpvfocf
         kaxmFA3cy/sp8sRFDM44JWhKp/ah4PuFfZJo5IWvrTS0+qQ1jet0ChBAzuKnNdzkxJwa
         5uljytcOADw4PVfKrwgpEyp2RUsTUcHsPOZHVDinhzbVWSct+ocKClTjKAopJOp5cYWB
         iPR7Dp9CZ25smOSu/7jKPx5zeF5IPvUswD3NsxuAt4HCAEClL28ZKI17ybMWacNs47FA
         KjDvuCBgU0aB7tdVd62jpEjJ6WUZMGTlHKm6+pudD1ubpEjM4dabSdK+EAPzU/qgzaqm
         QoDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=MGS7+XCk/QDZSb3Q8rcz8QPpyh91JyRKO5xSJbvhrDk=;
        b=jfQ2b/cF1i241VTe48yzbAAHqmaOn1uQcfrexlfIc5Yk+u8C0FJAHnM92CrSAqvAGs
         9QqpTJf2PlPYzQPnq1AC9EB7VBA7kXWMBdknPZZ8MNr9ZthOgHCafXM1N30ZCG4/MyZ9
         uYj1/gqsbOSFQosVngfu4zHGRV9lSa614x8q1/Gh6XHdJ+J1T7N4nuPtHmpgswMLwizK
         5guMDAdpVIo1ifYKWD2416ZHe4GXHXvPSzW9Th0EyfEPo+v3SQ68roITyGP1jhnTSeqr
         w5JVkyQV3X5dZU94xfjfnTHNpIToKSbEtXQcNxz2wZEeIzLznF+pWrtDFzOih4aBs5Cu
         mu4A==
X-Gm-Message-State: AMCzsaXQqkhndwYObmLudmesNQrojEBSty2BuCj/YnVVyitaRSgmSGc5
	6+rJfw94Tbb8oHtUC8+iMoXyUHuz
X-Google-Smtp-Source: AOwi7QB3wOUYV9NmGu6yK+daeWNxR2jltgwpJYNDj4aMDLZebKhWS6lBCuoSbImUsXH92vdJrDknhA==
X-Received: by 10.98.252.17 with SMTP id e17mr7721622pfh.48.1507208352688;
        Thu, 05 Oct 2017 05:59:12 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id i11sm6328491pgq.83.2017.10.05.05.59.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 05:59:12 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 10/11] staging: lustre: lllite: fix multi line comments alignment in file
Date: Thu,  5 Oct 2017 18:28:22 +0530
Message-Id: <1507208303-17615-11-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: Block comments should align the * on each line

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index bd17b38..d1fa32b 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -386,8 +386,8 @@ static int ll_intent_file_open(struct dentry *de, void *lmm, int lmmsize,
 	ll_finish_md_op_data(op_data);
 	if (rc == -ESTALE) {
 		/* reason for keep own exit path - don`t flood log
-		* with messages with -ESTALE errors.
-		*/
+		 * with messages with -ESTALE errors.
+		 */
 		if (!it_disposition(itp, DISP_OPEN_OPEN) ||
 		    it_open_error(DISP_OPEN_OPEN, itp))
 			goto out;
-- 
2.7.4


