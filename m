Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.182
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792666971;
	b=ni4nF+Z2Yja978VXftG4E6utDiB8jkeY9y05BlkGeNWGTQdiaFwcdTZEfDuMgRueAYs+
	 3j1cbrV3Ii8NULnK07QBmgMFRUJBn2Ln/DXPjY3wztksTsL2FAv004TOma6VMjJc/T39+
	 UzKd9nncEpsGgq5f3SMLTtHDuziSR+IBG8Xzdbsj02fOs7xaAyv+7m8JcE9sAP79M3973
	 9PaR9dWk/7qZpXrYHrPPeIB3fXUO05QhAnWRGjyQccPq7wMc5312fgsmxnhrij1+aPSBd
	 qKXUPSl0efZE0m53aPkibNYXVQqb621MH8fSmk56dA9dg7pPkC9JFcjOlFXo6dxovSA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792666971;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 From:To:Cc:Subject:Date:Message-ID:X-Mailer:MIME-Version:
	 Content-Transfer-Encoding;
	bh=VjsNzQid7B5tPfkBZr2VjXdGxhrE7sZgV8VwRF7Xii0=;
	b=xjg9V+bLUrBarMtsyFSIC5AyYCmUJoLJc3HVncxy9s1CoUu9VDCh28nTqBqy2iR9h8dX
	 1vNBDNZYWE/m3qGaaaykhhQ7yf15lUmCVCVQHouXWFRu59QHtOamZokHIF9klOZ7+zYRJ
	 K5XqUjDePvygXadwe920jbY/GkeGmXw7A3JsE6mzGslT7eGNNrYuZ6EI4r1rYH9wZ7uZB
	 0jzn9Hpcu/pCz+Ay3d33BgVSgrsYQQupcaSd9n+89TeHJunRKcGlyZ0cBiCGmK8unTCAi
	 +dLiW6jV9YPRQmZ2V8ah6/Zq1TA1aVhwDS/MlyIPCGxoXrZJY3ZTRQVaMii1RebX1+A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=pK7j11qp;
	arc=none smtp.remote-ip=74.125.82.182
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B5D606A31B
	for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 11:02:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org E9B5D606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=pK7j11qp
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-35f036b17easo1301893eec.1
        for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 04:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792666970; x=1793271770; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=VjsNzQid7B5tPfkBZr2VjXdGxhrE7sZgV8VwRF7Xii0=;
        b=pK7j11qpev9sO8QW9KD+8LaWx2fWDVK0eEy661rn/PL5k4cOORZSb7gsFcOroGf1tu
         yT9ISyVr4yXT839ZzGFrQC3dcN0Wt5wjPG/+1AHSzuwQF2BMM/y5y3dv9ycHAw3Obvq7
         grdhlGYEa5k/yI4ryXnqXBN/VksNKNHb7wxCfajGNs2uYZVjt3+fFQrJTgjnK794o2d7
         chwvmgVq2GdyNYckhYFxRBwqb52qsVF7VLb2B6/yLIDhnIBnFwWvEmtsX9Mx3qxu4fVU
         gfoT7n9mODMsWH2YeFrDqgabXbJF6dZckM/WPahYktNmhHvfaSpop1p4R8RvF7/qYZHN
         ZdaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792666970; x=1793271770;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VjsNzQid7B5tPfkBZr2VjXdGxhrE7sZgV8VwRF7Xii0=;
        b=YMSdVyDXDEZUX7nWKP5sa2OoSNFiT1rZ3qPq2N39Yh+3+ySyCAGca5E2LTOWC5Gndx
         nC3lqsgwgFIwvog/pqYZasjB8VkV1vid1tDUCD+JMVK6wZfYy8GfZcmlsK6F9VRrReGa
         +SK0dlRmtX/Npp4fuNN2OmbzGzoZrtb4qecQEE/k8ZZJII8IHXYreOgAN7RuIRFgJtR9
         xrWyAUjfQFhUfgVPmxtw/QJoYuFCxLSBD0zQTg/MjiA5iJ/fDVDflm0iyxuQw7vgfbG4
         iyWVOok50Xk3JhOCQaJNkr58c/pail6o1C8D8JbiHTd7lyfF9AYxqKuKEG34Oj9SJCxJ
         9+jw==
X-Forwarded-Encrypted: i=1; AKwUvBxXUlVTWlr6+EHz6CFnv16oAddEx3Uz23zvVN9sR96y9Q70SR5sVElWGfq5A1IiCesOSlWZt9JOFc4=@lists.linux.dev
X-Gm-Message-State: AFq9FYLkMbj44AZK1R/ikd9AeJ+BqSmyv3RJ/5cMBHygG4JB4vvIUGXS
	ZPXY6cOAfidei2mxOgFGMxfOgq+EVxnyI4hQ05gLAAK+IrqoRoIcczCR
X-Gm-Gg: AYBFou303AvidpMp/XDz6RRWsVeUu3nVnR8wxSm6cHuZfynUw2sESLVYf/1lYmfprtn
	RxCasZd9VRW8AsLLYQxNWpqoyA4qDeO4lf4idSFtyIB5LMPxPNKuf0hEhl8BuQtOPn34EM9ytuM
	B4VcahUzpr0zvh8kMzei1uLgZXmNLahlaT7/qPN13WgVTOWugbeyLsyxmympj+6AleedW2ICdXS
	obv3fG4REo7XhKJDffHlUrErPgMJlgWsMIroEqNrTU4FHeVU/qbgWaNUG3rD6rbqbnegcXpwm5N
	Wchi/3D8vwaXRTC2mIOuNsmclviyUO4ElZzkmMv70/0StUxpKFjgRuZY1N3F0HoTGr3+wW8Ub//
	c8vkalpYvnQozARMJ7x93Z5C82/3TbT4zOjj9b01rs0vzpojavlHIDCxpRoNpFkV0lQKp29QCkw
	mFPzpPbxt2jqwbF7C+WJHZYWFQWFPDEjoulMqxJ0bq/lxE/p6z2kCr73e53Do9fjEotIc0iY/6F
	84hDFfFARGxmaCCg6U6OS9GKjakI+m1EsiScxgDeIJmTIk7Zn0rYYlqUhytzJlD
X-Received: by 2002:a05:7301:d183:b0:369:860e:47c9 with SMTP id 5a478bee46e88-369861d8ad1mr627733eec.17.1792666969949;
        Thu, 22 Oct 2026 04:02:49 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:1eb2:a1a0:7ebc:597e])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-367411b4145sm17907353eec.15.2026.10.22.04.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 04:02:48 -0700 (PDT)
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
Subject: [PATCH] staging: greybus: Use fsleep() for delay
Date: Thu, 22 Oct 2026 16:32:38 +0530
Message-ID: <20261022110238.38824-1-pavankumaryalagada@gmail.com>
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

In the loopback function, usleep_range() is used for short delays
and msleep() for longer delays. This requires choosing the delay
function based on the requested time and converting microseconds
to milliseconds when using msleep().

Replace both functions with fsleep(), which selects a suitable
delay method based on the requested time. This avoids the need
to choose the delay function and convert the time manually.

Suggested-by: Alex Elder <elder@riscstar.com>
Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
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

