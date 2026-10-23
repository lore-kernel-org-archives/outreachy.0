Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.180
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792766943;
	b=NgwNfSYPm5gmPP9e6MD+Z4bOVPQJPJJdjbVeZ6hGu042K3kpMxLQrhbZrQ7uB9Un0+5C
	 7l+3r4F7F8FAguzDK5DRlQyxzI08iSzNMLq6wVZo6XOupK5oqE8ePBW2GW8e23T6BEbbL
	 ChA8joAJ4rANUr2IIvUFrhznxpuKqb0JAjAsk9AKZO3CXfzeo2U95ODixpOLQ4tP1He17
	 zBUD188Aob1Riqv5BmCbLmDgNWqqqv1tKv91KxexKNBsYG0ty+RJlBiY84LIiEGhKda+2
	 bkkFSBqcxTvNf8bXZ+IqzDfxFPe43AgbEn0IddVWqOwHv0XXaIjcx9feIKEEBF4msyg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792766943;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 From:To:Cc:Subject:Date:Message-ID:X-Mailer:MIME-Version:
	 Content-Transfer-Encoding;
	bh=IdkYUYs5y4Iem1sFLDu3Lx/OAa6FaPFzLzgcEXfMeNg=;
	b=IXkfGb0+BbDb8RbbwlmSShi/UL2+o3RCD0jhuYcD7lI/RLWCadjIIN1ajQQdKDvf0bu+
	 l3k929bh5dnRZr6F9F30lCExtbkiI/irU8mYANXszTS/cf1jqPuHF+4BBkG5BxLshdXAL
	 S1uKbE7PaFjI1iMeL1TRftkXI6W0FzCWrITZFo0eJQmwidzvrBDB7Hu9cVehE37BbB7Qb
	 s4TGvqGpfO4HsqoLKSYHwea6cg5kIow2gfSon+YQKsfOFOuXLxVw5hYO3hAblbpQERhuZ
	 kp3pTIBMDzrUDlqG8CkhDR3on1GMbajv7l8VsDzkQPQy6+aVeDfDLJ+g1JiPf6bgN+Q==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=cm11sDsS;
	arc=none smtp.remote-ip=74.125.82.180
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8C3606A31B
	for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 14:49:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 5B8C3606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=cm11sDsS
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-35cd4e8bdbdso1581884eec.1
        for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 07:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792766942; x=1793371742; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=IdkYUYs5y4Iem1sFLDu3Lx/OAa6FaPFzLzgcEXfMeNg=;
        b=cm11sDsS4sgWBMBhXsM/5+5pswWpyMT1y77kDbvbVfnZE1vdjr4eOzrjYEVfixaeTa
         6cdIFpYb2zeqdBvrIKA9zh/b+pa/IGFYdanXS4AzkfJlJvA/GphGzaVyZoUUAPsHB+ms
         9l5iZqGXiW+sloshxhwJVpsF5yh9l2avHxmWZN57YSfd17ngE9MnhiDhCEUBJHvc62D9
         mgGbyIXAkMTmGGY0YwQERya7Ko3YKFuw/JiD/+YD8DmBSEcPttlZG9vouaiM6MSVXTTS
         YqVXeW7UOe+OtiqERQ5lu5MWd1sLemB9dQ9VePsboZCeCZREuBNnW12u+D1qJJ/xJHeY
         u9LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792766942; x=1793371742;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IdkYUYs5y4Iem1sFLDu3Lx/OAa6FaPFzLzgcEXfMeNg=;
        b=aCIVcPNOQIyS/dIa+RBVXpnCqgN96gcRso3sBtxkAFGSmCKJmcnMgU1uBDmNx6ozJ/
         Zoghy1YfVJzSgkrQZnraEDh+SK7o7eIQ0sYeNlEsIBAOdNIdit7CJxKuFsIGZ19/Bcx8
         h3yk0K/HaMKRsjfKSeZJgJ5Qg3TBz5s8Hr9hNqC4iRsWEohVkb2v3xeMSTOHKt7wIy5f
         TIsvGlKlyS501mm+SPl4+A7saHUDyKMBcpRwaWu98sXv9ogiZHnj33TzrWgnuxNPjZ5J
         O9ZCUt9P3EIdOHxTeqkNr4zkaLsXkWFCEy6APsX2hIuOsy7CAz/h72yJKIWfeHtN3lep
         79mg==
X-Forwarded-Encrypted: i=1; AKwUvByt5i56DqTi/ASrO0hstBKn/L7xa8p9+oGybGaq8llKQpwCEwpFvfTePv0QlWZrVvilu6sQL5Lv/jY=@lists.linux.dev
X-Gm-Message-State: AFq9FYKxBByMdmdEeRW6HCk9z9rqiTJpzpffSY2VWYSiCe6vPkPRjW6p
	VOVC9QqdIJdp4ZNekfYuA59hc8rhy6iatM7HLByOkKyRgS3aqofTgcOj
X-Gm-Gg: AYBFou1cxVbOIKOVRZwrf3Awxyr65tOl6vHDm+3rdFX9LiMVtJqnjVwWaQoUVJkyQoa
	/JWsgcae3VqMfb57hjOAKWGQ2SyClivI8KJiub96vLyZcReVYDp2IMkjrVKkLONxJiC9Yn+2qU+
	T0AOpFKolaIIdJdrwqSaL/g6HRlzzp25r3/s2TP1MFDHySy10DP8VfQpFFZT8CHNPuNci8MOsAU
	D3RxXGK/im2Fj6UNhqO6xQWb0futEfq++qef1q2Alz4oGXrgF1oLaN4U85CFrTvbq2NMh9XB0SI
	sbMbHHvuRwwvvAx8zdYTUv2UMSyfaJNLH7gMzcCVzfSx6WvYInj/y9VtgA5qPXPrU7kE9ZNClXE
	/TVrlZHQviEQZBUc5704aSSiZVyX4SqRFRKXl0tc3yFokMVlzZKXJFGWwaJisf+4GJ7WS2vUck9
	y6AlSlvrj4dBG0emVGGF4sqVs0dC4SD7I2IV4mLbka+r46o3MfNQ6iTWSO4rOiQX1qiyf5xHqND
	RcLeJGylKfdbQCJGTjeJ26ugGmvoAbeCJCyadLHoLAoW/83qJf3AYpcdIyd3DiUrgW+P9RNPyHc
	fLJ8bu+L/w==
X-Received: by 2002:a05:693c:811a:b0:35c:7d45:c6ea with SMTP id 5a478bee46e88-369d973b2cbmr3142150eec.19.1792766942375;
        Fri, 23 Oct 2026 07:49:02 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:4145:da00:43b2:a151])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e6db0d87sm338792eec.4.2026.10.23.07.48.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 07:49:01 -0700 (PDT)
From: pavankumaryalagada@gmail.com
To: greybus-dev@lists.linaro.org,
	outreachy@lists.linux.dev
Cc: pure.logic@nexus-software.ie,
	johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>,
	Alex Elder <elder@riscstar.com>
Subject: [PATCH v3] staging: greybus: loopback: Use fsleep() for delay
Date: Fri, 23 Oct 2026 20:18:51 +0530
Message-ID: <20261023144851.51019-1-pavankumaryalagada@gmail.com>
X-Mailer: git-send-email 2.43.0
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

From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

Replace the existing usleep_range() and msleep() calls with
a single call to fsleep(), simplifying the code and letting
fsleep() select the appropriate delay method based on the
requested time.

For short delays, fsleep() allows up to 25% extra time instead
of the fixed 100 microseconds. For longer delays, the old code
rounds the requested time down to whole milliseconds, while
fsleep() rounds it up when using msleep().

These changes may affect the time between loopback operations
and the reported performance.

Suggested-by: Alex Elder <elder@riscstar.com>
Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Reviewed-by: Alex Elder <elder@riscstar.com>
---
v3:
- Clarify the reason for using fsleep() in the commit message

v2:
- Add more details about how fsleep() affects delays.
- Update the subject to include the loopback module.

v1: https://lore.kernel.org/outreachy/c482704b-903e-413d-ba7b-5bf31c0a6104@riscstar.com/T/#t
---
 drivers/staging/greybus/loopback.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index efc69c10cffe..2fe845eaef29 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -898,12 +898,8 @@ static int gb_loopback_fn(void *data)
 		gb->send_count++;
 		mutex_unlock(&gb->mutex);
 
-		if (us_wait) {
-			if (us_wait < 20000)
-				usleep_range(us_wait, us_wait + 100);
-			else
-				msleep(us_wait / 1000);
-		}
+		if (us_wait)
+			fsleep(us_wait);
 	}
 
 	gb_pm_runtime_put_autosuspend(bundle);
-- 
2.43.0

