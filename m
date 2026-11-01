Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.174
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793558177;
	b=H005rpm8Qhj6okmeMFdu9b+jNX+Rh8ktkJzScd2xI5ypPxAnX1p2eIImKuUUqZwD3lzu
	 JpjTd1btjj7VAgnv5bzCUpmqkyGQ7HGpAdiwDRQUvbQBR9asBipug/BcKpfFLnBlPuVvq
	 4GMo1nGIEjNsSlVD0BT4t8J01eumJgQ3Y3BmZFpiyNJh5r1wYVJDDo9bQTqh+F4SZnkxd
	 YQDfNruRIULzZMz6aIDaUc9lQGjJsI7OaYk4s8GM0zHDlSFqQxcG6ey5uOLE300rZWWs8
	 flWrio+v/4j++w5LCRmy2H49Bvy+U832QsUI3pvZw4mb67Rc9DlLGLloHO8v1UwXB/Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793558177;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:In-Reply-To:References:MIME-Version:
	 Content-Transfer-Encoding;
	bh=t5Ap72l6GhHxxhUo1DkBpiY8YchPjjyX/iEkUQeryiE=;
	b=lF/pvp1XhfYiwowML4SobkvZAPxbKpPNd7fV6RaYaW99KWvwj04b4yOL85gA7RjK0ZfC
	 pJYSM4rfzGzgO0FG5qtOOj/vG9DqrgCPfrT0YDraGqWHc+WC7uBkUQxWqofpwdBi+FaDA
	 J7jM0tH+/bgInEdsI2ztOpv9B+5UKBs8Y1oHeDeCOkZMRbI1InqMF/QOc+iVQPSkTv6pI
	 YaMiL9O8OlW3BdxRh1CgdDG274v4Y8tV3OE0HCO29dgulKNtprNaEESYyNP3rLMnDWe/r
	 Yxe67VzVLmD4+ez+DyQh93+Y7XXud6/+LYdAuFZwesk5cj+Y6JyBmx+rdToRKaMcemg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=y9pDkppO;
	arc=none smtp.remote-ip=74.125.82.174
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97C8C606A324
	for <outreachy@lists.linux.dev>; Sun,  1 Nov 2026 18:36:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 97C8C606A324
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=y9pDkppO
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-36a1947498bso1391184eec.1
        for <outreachy@lists.linux.dev>; Sun, 01 Nov 2026 10:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793558176; x=1794162976; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=t5Ap72l6GhHxxhUo1DkBpiY8YchPjjyX/iEkUQeryiE=;
        b=y9pDkppORkm3HURnCPCGNcNU9eq1OKv0jjqpe5wDIgPTWz6t5RatfqUaRyfGSLTCm8
         /y44QjCSDQRNyXnPSx00EU3sBX3pK0R0XasSX1qqV1kGo3l9RSq6BXbRTRjHPEs2QzDR
         kr6Op6g2Rmy9GKmkWun73GcykU83/4KlZNFEOOSpLK9GOzpeCurvgVbDWGnRRfSzgLsg
         2eX7nzT8DkkOUO9nvHnZ0z8wlslaGeXZTiH2XbbImFUVudwv08FZwkOTTh/PUzRufxV+
         Q+bm0WDLRKTQj1rjYiXyyH4bXuijiGq82fL0GyHnYun78JTz4KXc1ZcMn7Nmf9o86aPa
         SiSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793558176; x=1794162976;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=t5Ap72l6GhHxxhUo1DkBpiY8YchPjjyX/iEkUQeryiE=;
        b=S13NvreO0tJsKj8wwYdNvPYaAS0iU2l6mWUxHEs2sctCjSXyPcD591hBSWfU1hknIo
         ch6Wo9EvGNywDQL7jxN6T5V5Fmic8LlSZ1eKaubabzHk1zUejrUzYyasFv/vxQQRT7MD
         q+pZIdn7k25DXJZxAYp57eD3gdnqRC5VNoOBPGAkXBBrcCWhX7IuQOu3d2wcf4xqwAFO
         hOeTt9xjOWuEuSfNQwTdO3SevRUBUNlfCDeW6Kf9WwIdjNXAnYWf7NEHKyGkjvf2Cf3S
         cGICgxHKGvWSpuk7l8XRGO5P9A8o2JnS74yIFGyumRxBZh1e2PjBXQiyRYGECIgQfZri
         IqkA==
X-Gm-Message-State: APuU4Z8E9ED3kiz7tt1LXJt/kyc9VdU1TnhJgbnWJeqXlPxFbEWQIo/W
	cqPRXbzQx68G4A13Zt4GohYTotbepyis2eFPchTEd1EQ2jG/5VXDl8G7eMEBLle83M4=
X-Gm-Gg: AYBFou3Frh4C+tSHuSZcj4pT38kMGsNwTXZ4CoxX/aIo+erdi14TJy8f5TqRTfneem1
	yT5Q30dXdi/wVc2r0/JtamdyQ9bVqXWq9Y4wJs6NhZGx3OwXvhJ0+wZrwA+yP7St021OcRY76VO
	ACOBrnmyxO0wBmpRKY5fUBLOZtaxkWlikdWiMfdtr9w8Dsl+bDsuDmPPNyYPeKfbySXIqhsP/HX
	gAEyG3Q+yZvRxOef/WvdI23lO8CUkzqtQaBpjxezK43qNrlZqYC7bOXiS4WVPHNjY6dJ58uW1VK
	50lVjggu/NPUbvuELKKFjJFkiK7Qc/ICGqE8Agn+cfBy/jXzeSizUYF8J69SYpu61dLtlmcjQG2
	FBvevH7iFxJdF3JkOkX8SibJtnPjQxB7HBa6fFHOKpCClKn7IUNbmqFRD8B/mKCi3qWXzDG4mEg
	YQcpTu6J4waWq0ZZJLteGEX2aAq//9Chk4KkaKuTepbQHFMmiP5uEOfrYMkiaLcOCsSRa2dj4Xy
	6IfiOPVqgsfRpkOBgDV61qmRqSjkzxFmB5Uq1DA+XNBnFcbRCrvXnrENvIYAedmtPgsuOc2Oaqx
	cml3FiQPHYRtwdcle+YylQGJykV2PkVRM4GaYss6eaNTjeGsi+XMm6H3nTN74aBmbjBIxZt2xYi
	1EaSXY+EEL1XWgHHhU8q3D31MSg==
X-Received: by 2002:a05:7300:a945:b0:35d:d9a9:e455 with SMTP id 5a478bee46e88-36a423b3556mr21557594eec.21.1793558175508;
        Sun, 01 Nov 2026 10:36:15 -0800 (PST)
Received: from localhost.localdomain ([2406:b400:d4:acc8:a024:59b8:c312:eefd])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a429000f8sm29328190eec.13.2026.11.01.10.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 10:36:15 -0800 (PST)
From: Torra Sowmya <sowmyatorra@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	julia.lawall@inria.fr
Subject: [PATCH v2] drm/xe: Remove unused xe_vm_restart tracepoint
Date: Mon,  2 Nov 2026 00:05:17 +0530
Message-ID: <20261101183517.4649-1-sowmyatorra@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261101125808.9770-1-sowmyatorra@gmail.com>
References: <20261101125808.9770-1-sowmyatorra@gmail.com>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit f3e9b1f43458 ("drm/xe: Remove async worker and rework sync
binds") removed the call to trace_xe_vm_restart(), but left the
event definition behind.

Remove the unused definition from xe_trace_bo.h to avoid generating
code and data for an event that has no callers.

With the tested x86-64 configuration, size reports a reduction of
436 bytes in xe_trace_bo.o, from 20262 to 19826 bytes: 140 bytes
in text and 296 bytes in data.

Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
---
Changes in v2:
- Add the measured object-size reduction to the commit message:
  436 bytes in xe_trace_bo.o (140 text, 296 data).

 drivers/gpu/drm/xe/xe_trace_bo.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_trace_bo.h b/drivers/gpu/drm/xe/xe_trace_bo.h
index 86323cf3be2c..fa91dd2b2174 100644
--- a/drivers/gpu/drm/xe/xe_trace_bo.h
+++ b/drivers/gpu/drm/xe/xe_trace_bo.h
@@ -228,11 +228,6 @@ DEFINE_EVENT(xe_vm, xe_vm_cpu_bind,
 	     TP_ARGS(vm)
 );
 
-DEFINE_EVENT(xe_vm, xe_vm_restart,
-	     TP_PROTO(struct xe_vm *vm),
-	     TP_ARGS(vm)
-);
-
 DEFINE_EVENT(xe_vm, xe_vm_rebind_worker_enter,
 	     TP_PROTO(struct xe_vm *vm),
 	     TP_ARGS(vm)
-- 
2.47.3

