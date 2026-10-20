Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.49
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792514236;
	b=cN3tq2aQVVfT7Kes6de6+Ww3tvo9OGeTYIf5CEGI3dveDPY26Qd+rUCTWYnr1eKHpRoK
	 wWB4uPIkhLaruz5BwT4PvkMTRJTqbdeGr/+g1s03LX0M6xBBDeI5OU2h8NzydmhtTumsH
	 JyehpbqRmlRpmlefnn4UqFuqJKUFa3zx5pUVKH33JIEoQOkkp/3a4Dhoxc8B/W9pf0cpu
	 YoyVvqwvVlwTBjSJAgvhJPrHAa0h4N1qMW+dEqmct2ohKnmbybmH4PF5Wj2vb/Xoq/4/l
	 +u8jQievJeo3PvLu2UgSOkLwGcMDhKG4hlolJee0yq4GZPSvYIOWa87FzRKLF3G7kzg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792514236;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 From:To:Cc:Subject:Date:Message-ID:X-Mailer:MIME-Version:
	 Content-Transfer-Encoding;
	bh=rDJB4+RNQq+2GGn7bCoZbRLSivKXqiepj5wyQ8N3btg=;
	b=BFkiKjltkckCiz8whzHdgmwJQHXWREDalTG3J40P0+JIXGi4UDZRLsUgVnH/tpF9aUS+
	 RVzJKrTCIgL+nMgBn42D1MDIgf5uT1L6ZPHRtN5Z/8zpqpSBc/TS7EcYxIPWMJvW175Zv
	 q09AJVQerpw75VZ0zu/Grptg/I49yNII0+5fIi2naXyq5t/4WRsGHODPf2N80PXdmqOBz
	 Uy7vk6JAdcuiF+xupV+bvpU8OAB5PuHAyltaKvq232C9CbapxUYJ9HCUuTlPfUWdFIv3n
	 bXCRxKIuVeA9YKz94HtKgLvj5pt1/8UMtJIc6JuG9Tb7dIy3qQyOgwuUikEuZclXcxw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Pkc9O+RY;
	arc=none smtp.remote-ip=209.85.221.49
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386E960A3830
	for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 16:37:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 386E960A3830
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Pkc9O+RY
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-48e00eee27dso2055656f8f.0
        for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 09:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792514234; x=1793119034; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=rDJB4+RNQq+2GGn7bCoZbRLSivKXqiepj5wyQ8N3btg=;
        b=Pkc9O+RYQtKNU/j641vzYuzhLdhDYesLEqjuCUeuVZyZmI5AprpLQzZb+ckGof9JH/
         pfU7pKl9+ceNOwAXLTE/st4NULTu20lsLzYix4/ZxT9KqUqLFLDC0wMsXpwLMG2X7dIC
         oiiPYEzXW8LakuZni4pc7UPwpVYYV378IXNJfiuryNtz4FvaYOsWnUvz/pq5/xsO2uIb
         IIQAo9wvTTJYSHnaLrEa4siKXXt+Rc+FG7DJZPnX7EhpNsLWIXxoEJh1SZbXPAJ8dBDP
         J9qk4RMkizcuKBrdsO/2gPbGYnm7CfvCUylG63rNC4MQIDFrIVLInQuBQN/HBOlyjdA8
         y9kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792514234; x=1793119034;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rDJB4+RNQq+2GGn7bCoZbRLSivKXqiepj5wyQ8N3btg=;
        b=NiVmqdbICGpLpese84iE6hytqSRw6z8YeOy3Bmo4PjAuRRb4GUNoyXOMBzUHesnQZl
         4VWzZ8p6jUyiuTcfcVyKA9znVMLyC0YuMoxPa0Q8UX62Zf3ovWriBIY1LjllBk7ASuy9
         g+td01UIl5QQ6PcJ+D5GmFObJKfH8HCDEkjahrlLpF17eJ/eHjjUeiVjov3AeEtL03D1
         75jJ2oRrSQ6L3TTcVtBXPZ/A8ur7oQubpclVRLCXABFoNm1tEQv+m5vIHKl7/9bMnPtC
         teM66D04b/Fd+3RT3b1z01eEImTxIm7f2JE3n+4/+MlVDJ/zETTzjEykHdB7PVpDasSx
         NyDw==
X-Forwarded-Encrypted: i=1; AKwUvBzcKpl8s8hYyXQc4rY5XpQe3EcSYb+zZqpO0f6X26pZg1JJast2XC6nSxg4aUXtF1X5Pn/4qaOdJfc=@lists.linux.dev
X-Gm-Message-State: AFq9FYI1A2nBFkJ56CFPpbQo8uofo0SML6MekJnlrLBc4l6cZGP12JNd
	jnrgBcVTdT6TkalNXGAzq4QMGSsn03oqtmHBVVCG7l5sTvZWMEF6IF9C
X-Gm-Gg: AYBFou3yBztskDiDoxG2dYmVtqN87FbayPMTdo6YU3BSCzizmkxQmIzOPkl2uZUVVl6
	uFZD9OI0BHWF2RGDuMxIOoSGtKT75AzXQo9VHNZyN1T9gYRYoiHr/cOe+TC3/KdEpUfA88txWl9
	oQ2IWqPkX81Uag3ovdOQR7EBuu5M3wxRYNVQGMc4RlzaEFHZvxh5CIK3UkyBANFns+UwpZuf4yF
	6/BXbaAdTodmTEA5qB6ZeZSnFzcJt04mL5YIO4STRtj+jc87BrZFdQurJThnmAd2xZVUahYekyq
	KVX6FZQfPT7zpz4EK9+HIQA87XcdzRLb7GGu8UTecUsqfC5+hZerv0VKokwAQsiUdTBckrKGGlt
	IVr3kVtijdgKk6eC/6ZKaocpiZPtlpUSo66YREHWOW6bxQSf4PivdJ9OcacRNXuFsI4b/yTxx5V
	b7I9TPgFMedUaEOjwQtdRRZ08RLmgLAZzhtrazIryMaJt3F+l1MOx+/TaYiPB0E/K6UcMHRp1bb
	dYz0rLsVchGI+TotzwB7Dd6J823iNR8Wrg=
X-Received: by 2002:a05:6000:29cd:b0:48d:ff71:dd8e with SMTP id ffacd0b85a97d-48e079800c8mr15957718f8f.3.1792514234297;
        Tue, 20 Oct 2026 09:37:14 -0700 (PDT)
Received: from Ubuntu-vm ([39.62.145.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e1d6db78csm7471967f8f.2.2026.10.20.09.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 09:37:13 -0700 (PDT)
From: Haasham Khan <haasham93@gmail.com>
To: pure.logic@nexus-software.ie,
	johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org
Cc: greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	Haasham Khan <haasham93@gmail.com>
Subject: [PATCH v2] staging: greybus: remove unnecessary goto
Date: Tue, 20 Oct 2026 16:36:36 +0000
Message-ID: <20261020163636.7629-1-haasham93@gmail.com>
X-Mailer: git-send-email 2.53.0
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

Remove the conditional jump to gb_error, as both success and error
paths proceed to free the request and return the result.

This simplifies the control flow without changing the function's
behavior.

Signed-off-by: Haasham Khan <haasham93@gmail.com>
---
 drivers/staging/greybus/loopback.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index efc69c10cffe..284935fded12 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -609,10 +609,6 @@ static int gb_loopback_async_transfer(struct gb_loopback *gb, u32 len)
 					     request, len + sizeof(*request),
 					     len + response_len,
 					     gb_loopback_async_transfer_complete);
-	if (retval)
-		goto gb_error;
-
-gb_error:
 	kfree(request);
 	return retval;
 }
-- 
2.53.0

