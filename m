X-GM-THRID: 6754760383787958272
X-Received: by 2002:a1c:152:: with SMTP id 79mr18401339wmb.70.1572804815907;
        Sun, 03 Nov 2019 10:13:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5382:: with SMTP id d2ls10279388wrv.6.gmail; Sun, 03 Nov
 2019 10:13:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqyR31T7Ffy+dHL9A1pwZFzBpYr/E7DWsXhSOel8TBFWCtzSJpPlUuiXjG5Wg8V67RDIWw0E
X-Received: by 2002:adf:9ec7:: with SMTP id b7mr20112860wrf.221.1572804814840;
        Sun, 03 Nov 2019 10:13:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572804814; cv=none;
        d=google.com; s=arc-20160816;
        b=wEB8yHnXuppp3YjA7CgpNoCu/YNRLk00zwyCyKh0jfS+fBSVUp2pNEeHpR2Nm2OcOd
         uUjqVYn6HdlOXOmJNnkM55bjX+jF0Qi557mEZWA+4033MMU95yW/rjmL3QpZjNjsA44D
         cKREu9qjoH2Od4SItwQjCYSdQqYjJrDOyZnBJra/Q+8arIplTk9LppOSVlWT6KUtqU7y
         eXtJkezrUVNLWA/hw+jc5nPtR0avRZiiSP+dLh9+y0zyUh2X63GyKgtj7MbxKTyk2azw
         MpPE41IJ7TJqMTBjf2AW/OSE0Ck1JUYUOsrQ9C2DGcezoSWki8O+O/tapGo/j9dPTsQ8
         jd1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lAB8/rHaGZeFyPil7DZKUbOJiYz4qtBYdoO13fIbAvE=;
        b=KuYhfZJuNY/wTFYJNHJ7iWrzEn97T9VqVAuYCPH6Mke6l6xEqd/7EIZjaVZfs15Y8h
         exTawhnV4dGqmZDf/rKyXcJg2tggPrzXIL5kdSYPiTmqaPejtFlwSjn+BEax9Tfj6S56
         DcugfSIg2RJeQfVLMk45NvU2olITXHNedj8Iob20z6orOs3OGS9bzz9igy/nmbf0kKAI
         AYOYzJnGvLlzHiTucOhG8f6z+xBtaFl+jEZ3JUXMiWRRAa2IcmgQi2ViEHCCo7VmAat7
         1kVOTlgqDEGcILm/vWLFbOPUe+1KVrwdEtM0APl9gpl6GoahGUXl03Vs2kGENl+0UY50
         1gTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WQjqjD2K;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q3si830277wrp.5.2019.11.03.10.13.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 10:13:34 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WQjqjD2K;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id w18so14589278wrt.3
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 10:13:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lAB8/rHaGZeFyPil7DZKUbOJiYz4qtBYdoO13fIbAvE=;
        b=WQjqjD2KdzKYZP74JRWps3nD8/UbTEjdvm8fTr4ZvHGSdBgzIBG3jLssUXAjOC1GYg
         NMeS5RMR2peGdGTfeYdz/5fViUaVeWC/dQbR2NEZ8dg731nr9mhTDCqBt3/31+A8QvGk
         34daNn1DrcqiP9yt1XTrJ7/uId/bVkR6U1qmD9m4drqJ3Ukg2AyJGa8mys9nSSYhmOf9
         QOMf4sgdowg/JWOJVykQqCzbu/s3TsCSk1nauHJdpMFKrh2MDpcFtaIWNMWAUUFxeV88
         HGMCL5GqBbjJ+V1CCVOCUERB2NKVsiJNB/u1sw0nWhgR8fiZkhwUoDa+0S3p0qom3Xh/
         J8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lAB8/rHaGZeFyPil7DZKUbOJiYz4qtBYdoO13fIbAvE=;
        b=UA2pMWUasp3HkWr5NOXSeY+5t+dTjH1TlxS/SyCTe/jBcJfqPJ2tD9u+XHsa3jNMaq
         VDOcAbr+5I2VqFmHgiot2tMGuFGKNR/5kPA81d2KIWEI74i8yQCxADKbzBJ4UP9loP7/
         f6rikvx42kTPGODQPagxuVJas/hqpHnEG8GI0iWpXDkXcEZhaW5KXgfIDkC/aM1jEyZm
         m8NsWm9IXcCBFWhBABwtaLq4lQ1l6YtNhAfT78XkPNBBXLuySkUSEp+yhHP/ypMfQF2m
         incj42y4e9a3TCAUjGHyyPAaED6yKbmTQFbtH0otyKxurXEUCNBvVwChbRalaFEi5AyK
         vWDw==
X-Gm-Message-State: APjAAAVKzvQuEHxJxj0Ps6bJq1qpHQUle5RNiFCeCKyzLXXfrGFj0QXT
	2qcOHoS5pOunSdFrGcsRty2NrbbbGjJ2
X-Received: by 2002:a5d:4584:: with SMTP id p4mr1776709wrq.345.1572804814172;
        Sun, 03 Nov 2019 10:13:34 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id l18sm18467087wrn.48.2019.11.03.10.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2019 10:13:33 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com,
	jerome.pouiller@silabs.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH V5 1/2] staging: wfx: replace 0 by NULL
Date: Sun,  3 Nov 2019 18:13:14 +0000
Message-Id: <20191103181315.26434-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191103181315.26434-1-jbi.octave@gmail.com>
References: <20191103181315.26434-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace 0 by NULL as the return value of a pointer-returning function.
Issue detected by sparse tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
changes since
v1 submits change of zero to NULL with no accurate log message of what
was done and title.
v2 improves on log message description: remove the word "fixing", rephrase
log message and title.
v3 gives accurate log description on changes and reason behind.
v4 includes a log of changes done on each version.
v5 shorten subject line not to be identical as commit log

 drivers/staging/wfx/queue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index ef3ee55cf621..5d29bce65f71 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 		}
 
 		if (ret)
-			return 0;
+			return NULL;
 
 		queue_num = queue - wdev->tx_queue;
 
-- 
2.23.0


