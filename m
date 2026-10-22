Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.179
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792700708;
	b=5rBkPJnCl2bPi6BOh/iTOlz8dFuQlGVsjcLhBatZxEQUpEHuuQ1x45oLLH2lhMByo4Mz
	 xsMlUbae91jZWqD4iQr+trb1TwpGmMYoFVp5yt/7A5SOimg3aCNwKNRpYV2LwxbL+e142
	 OY41Usw/rOk/wd6Jz2T7w/A4aO4O2cHISvel1DsloDGqzDIvhMpeDw/DXGP2CUVaJ15jK
	 d1E1BIe133o474M45RjZhgTQMx/m7WG5MlrPCiJtNA0YMxKGQtGyCiLtH9lSRE/DYQMWD
	 8GqIjxPLsw20zvsaUxKCJCO4fechLYrB2olCjscBHHBqa+1Qlr7tIWcb3LAr3CJIGXg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792700708;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 From:To:Cc:Subject:Date:Message-ID:X-Mailer:MIME-Version:
	 Content-Transfer-Encoding;
	bh=YlblYhcykHoL947/Q/nvx+AeatTsVJAcpdiRSXriyMw=;
	b=ucfHrRnP68SmhL5NjWs4pRU5n2S/KCFHT2IEqAeWeSwkgSal0OQ1IivOObQum3js8YV4
	 liuYd4VWOQ2AsW1swqjmvVt0gAzhlLW7GYMP04okJj+xXxSvpiL0H2W2xio2tHWrnsqP+
	 6pN8tPWl4y16IfaNzB9biPCElmapUnyZeEfdGZ1xoueHvuolDsp17NNL/VIxIHK28rlDy
	 d4dI3yVnsfex3r0i1jokDTRL7V3TnO2p0YcqyL5lf3SqZma/luIcVDQKQOnhC3JJzoRp1
	 VBaXJEiA2ByNNeuCCrp4WRnzMdwK/EVI7zukBUUrsF2fOIV/NYwqa/RIKBFqg8Iqt7w==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b="cb/sJzCJ";
	arc=none smtp.remote-ip=74.125.82.179
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A68D5606A31D
	for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 20:25:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org A68D5606A31D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=cb/sJzCJ
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-35f036b17easo568292eec.1
        for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 13:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792700706; x=1793305506; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=YlblYhcykHoL947/Q/nvx+AeatTsVJAcpdiRSXriyMw=;
        b=cb/sJzCJ1ikCZ5Me6mqMTd/K2S/CDiOZ2EMRFXfEcIvoNdRPhPmz22A7Xtp8hhViBL
         J2qevdgnQBAlb1LupW0pr/sa5Q8d+ZUWIpaIxBn0X3m81HRf7TQfa4q90UhQJH1PCJ8f
         Z5dhEEUtsuyYD1T/qZTUsetEPxYr3hiJCLw+oMWHkL/A60WPjIwknf3TLHUAFUk307DY
         j056fuwDXO49PnippAMcums/JM4jS+b8XPWFhahY266zD+JPOTYIcP72MXR9nkA/30v3
         EIrJFhLn8d3cdLB1f59+xtXC0+lis8XD4RUS42Xt75qfzv73o0bNV0sYVavwVoGo8x4d
         X1Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792700706; x=1793305506;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YlblYhcykHoL947/Q/nvx+AeatTsVJAcpdiRSXriyMw=;
        b=WjuVvrL0TFObXPLK3EPhkvTtqhWE/Cm2fnT5V6cQgwPsaYowd3SlKSjkF/EteApfgX
         nEmx6I4SftOwI92z286ugMda+Qdm5HRMvTN1J1LAIDUuuYv5W/Oy4Jrwzaa6yvbsa/og
         oWLAYN0Z5tk2XEtPW91NWPPtyduR74E7OZEf4rLYyCJKSOrMd4VKT9agirWbX96lsiPu
         //5jiKjAFm9oJs1Uox+NzXyhFjodAWpFvzhe21uj3GlhdbeDh2g+cnf50r/b9ZFUATf/
         Xt1iISpu9HFQZbjRQ2zSUT3GOxOw6iVFZtimFB5KT1aP28uVtvR0wKKwEOziQh++MWZN
         BwHw==
X-Forwarded-Encrypted: i=1; AKwUvByk+v35j+lD84Fv4i8xHG/BXfw+tl6aUMjQ8B2K32v9S4V2fm6WqeIphjx2gXqlRwHQAJkZW0oqTFo=@lists.linux.dev
X-Gm-Message-State: AFq9FYITEMjgckO0IFynBmGniKuVZq26ehtHMYXNXJR9f9q79pppOIpO
	gBMOOqNdsFu5NZkU/rU9h+HCy5keMg/rmTm56TgLYX5GtrUIEwgHNTGX
X-Gm-Gg: AYBFou16MxDa+GlI6K5VfawsSeDCeqlObyrzAUx3Et+QVvr6bcHHsu3n9YSTvmOxkBx
	yjv9ET2RLvYn+YbIn6fJaoHAiTNgi3R3sGnwodptRVLVLzyuUkWv8uDAqOaJXYm5nTi4g70dtR2
	CXYF6myE73Y2gQMLVgtraOp6TRPxm6xiy2hf9jevRpHSOh879Vu8XiYZsEu4IySxJXy1XnxpQK3
	GZ5Gmsmz0EyY6WlyId454mgkVM84w4hynsUWRe0kKVFF5wAjHH9hBAMhDgu+rl5j0IIAflpGa3J
	TVkeYTgHVD7hyibdeEUub4ZMHV62Y+hhBOduu2DLnHW17BlCc+ETRHYz8OOY+Pm0bXAjPpo2R33
	JDzxOQwZR5O2NOB+yVi/7oiJeHq2H+rXm1aZX1aOYmWpOs8q45omSlnPprXCCBAkJMUUZE1/iD5
	lnPewI100hL7gWybZUys+tgy6Z8Bb/1uI3eqISEYMD5qP2FYYJCLQEfIh1cam3cjCT5mKxGkZZE
	z0eMEnMEuHYLmSI3UKZ8b03qp6jHn0Tmn+Zf2xOHwt+JN8g8qCKCFf+DeDiwxCX
X-Received: by 2002:a05:7300:e9cf:20b0:365:f73b:510b with SMTP id 5a478bee46e88-369d971f2a0mr324415eec.13.1792700706330;
        Thu, 22 Oct 2026 13:25:06 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:5e95:3be4:ff57:f0a5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369d9c0e60dsm331332eec.2.2026.10.22.13.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 13:25:04 -0700 (PDT)
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
Subject: [PATCH v2] staging: greybus: loopback: Use fsleep() for delay
Date: Fri, 23 Oct 2026 01:54:55 +0530
Message-ID: <20261022202455.104142-1-pavankumaryalagada@gmail.com>
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

Replace both functions with fsleep(), which chooses a delay
delay method based on the requested time. For short delays,
fsleep() allows up to 25% extra time instead of the fixed 100
microseconds. For longer delays, the old code rounds the
requested time down to whole milliseconds, while fsleep() rounds
it up when using msleep().

These changes may affect time between loopback operations and
the reported performance.

Suggested-by: Alex Elder <elder@riscstar.com>
Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
---
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

