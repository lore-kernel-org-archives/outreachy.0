Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065FC221272
	for <outreachy@lists.linux.dev>; Wed, 16 Apr 2025 12:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744805876; cv=none; b=P9t/bNPegoS00DJ+ln8Fu/IQasXaFGG16bVCGXJwvOQCfv8mRyNSglfca+V1i2v/2r3EIlZzSHQfAJxkwJIbaqz/5829N+q+KI23n9GYDBWUmHZGOWwqh/kLO4UHY7mhg7aZTR+QxO0CElwCwAp9zAm9CApwXRTiM+heO15ZDsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744805876; c=relaxed/simple;
	bh=MVvx9T54fdEIGYtKwKMpuXHplfYO85cEEUEAKFTkBy0=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=ts3nkQaMBrNWVpXCYzIEG8mO2PZDEsb71tigqFgO8GjwA75MQHp6y7zq2v1LEdi5a77SM5pKRk6gqdoeobzLzk05YGPyFk7QfbUdVsz+29JIkJs0ndWdxqvDT5jtI9fsiTOt33XGDV1vWc+dtoyIoKzFNs79A+ZlLhGfId0JDpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XDPOc5iG; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XDPOc5iG"
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e726895a6cdso1321047276.3
        for <outreachy@lists.linux.dev>; Wed, 16 Apr 2025 05:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744805873; x=1745410673; darn=lists.linux.dev;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wlP+HD1QHGE6iO/Q40BNz/pkmIckE06sYeotHoDiylw=;
        b=XDPOc5iGLXjl2z8Mq684li2cqiQy5OrUhOJ/34D27rLDI3X7v9O0Z//4/PVT4FLqgg
         u60Z9rTBdFvKBWCYdUShGR0b84tH+8TxypGAnrAhlDmTBaY7++kin+logb1a0hbvlGth
         bF4YzClyf2C6cjhG4SYG//A3uixfWC56MJZD1aXYi7bpOm1XrBqVaZtzO1sUyUnslcnC
         1Y35dBUUcngm7taJL5zSv9SsMY19Iu3Mr7jtcmlpGocAUyiT583e6Ab2OmBDD+Molz8V
         36VpZZTJv0T0idRO23r4VqJd59v8yYYyuNXtim2bHsZCQ9nOW/rBv9jets8WDsYldo9Q
         BDZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744805873; x=1745410673;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wlP+HD1QHGE6iO/Q40BNz/pkmIckE06sYeotHoDiylw=;
        b=pkHu5kaPTDb7J74Jbst/kVLs807aIArvKBBnViK+a/6XgOvAX1VBRrnRTq6bXE2uTh
         6W5pSCRCnKv1hDmS9Qt2CJIvawPjmYO3k6gcbr4Sv/C7n6dY7l2h3OHdwC5vQOdCJA6K
         lebAYUg/I5cOUh/+e8y8fKub+U0wzrAW5WHhG377yIQW/bJdZY/Uln/bIHlTd+yYIj33
         ++v/NwryQTI2E3GeCAKEBf45AHOq0UxcPXgP/JnFxS+VnI2JzLHN+cCwxoU3XGawtArW
         sVlPwPdrlz6u+dX88Pc712YBAkSGRiRMm0JjPGemzpcmNXbQOfNHZ6iGePYaSdJw1AR+
         rslA==
X-Forwarded-Encrypted: i=1; AJvYcCUle6iZmwuvR7oJSVRc3iPfMrXLwGDGpCeNPdN21yjind4f0Zjm/RtOJKcBPCoHYG+2aMMsM3kx5jA=@lists.linux.dev
X-Gm-Message-State: AOJu0YwTsn96Sw6HNZK6BOOj6BRgez9jpPL/yF1uNnvSNf8MBJ3GwcRv
	jG4714QDVk1GGEIT6IBBxC5nSoflHDIaM2T/Ys4T5PzrlhC47QLbDrgw7/dPA3jvyvNEelP92+p
	HujJBg2XvB0fLNcfde7mKS9lCFPk=
X-Gm-Gg: ASbGncuRtqhNreayBzI/bZGvwnjqKbieXk1GW5Mo9XMsdtR89PDKOXpgQvbXcUjhEj9
	VcVArO5id6wfBJJc7CC0v4iRLoJYSKHHXGtnKuuc9Otv96PDn3GTD6tMUHGl/LRcgbF0qu7CVaF
	6eDuxCfKPcOzY1fDR9ZpQuRg==
X-Google-Smtp-Source: AGHT+IFf7/9q05WuLCBinmHHyeGqSzOB+G+Hb0UXzu8jeUcFvWiFNYdqGcy/Eywb7M0FxO5atgSkOuOsVuLpd6U1hlU=
X-Received: by 2002:a05:6902:2e85:b0:e5d:c97b:78a8 with SMTP id
 3f1490d57ef6-e7275e0091emr1955667276.36.1744805872702; Wed, 16 Apr 2025
 05:17:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: rujra <braker.noob.kernel@gmail.com>
Date: Wed, 16 Apr 2025 17:47:41 +0530
X-Gm-Features: ATxdqUHrKwJ4jWPaIt1lbeiS0wqqDkS38kmrf-1Bx-1WG1dvU1m4yJHUelL3ApE
Message-ID: <CAG+54DbvpWHyX8+ucEQpg2B6rNTJP11CRpYxcYVrKpKehzrK-A@mail.gmail.com>
Subject: [FIRST-PATCH] staging : greybus : gb-beagleplay.c : fixing the checks
 as first-patch
To: ayushdevel1325@gmail.com, johan@kernel.org, elder@kernel.org, 
	gregkh@linuxfoundation.org, greybus-dev@lists.linaro.org, 
	outreachy@lists.linux.dev
Cc: linux-kernel@vger.kernel.org, rujra <braker.noob.kernel@gmail.com>
Content-Type: text/plain; charset="UTF-8"

added comments on spinlocks for producer-consumer model, rearranged the
lines on function calls where it should not end with "(" this bracket,
also removed white-spaces and aligned the arguments of function calls.

Signed-off-by: Rujra Bhatt <braker.noob.kernel@gmail.com>

>8------------------------------------------------------8<

 drivers/greybus/gb-beagleplay.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/greybus/gb-beagleplay.c b/drivers/greybus/gb-beagleplay.c
index 473ac3f2d382..fa1c3a40dd0b 100644
--- a/drivers/greybus/gb-beagleplay.c
+++ b/drivers/greybus/gb-beagleplay.c
@@ -73,7 +73,9 @@ struct gb_beagleplay {
        struct gb_host_device *gb_hd;

        struct work_struct tx_work;
+       //used to ensure that only one producer can access the shared
resource at a time.
        spinlock_t tx_producer_lock;
+       //used to ensure that only one consumer can access the shared
resource at a time.
        spinlock_t tx_consumer_lock;
        struct circ_buf tx_circ_buf;
        u16 tx_crc;
@@ -642,8 +644,8 @@ static int cc1352_bootloader_wait_for_ack(struct
gb_beagleplay *bg)
 {
        int ret;

-       ret = wait_for_completion_timeout(
-               &bg->fwl_ack_com, msecs_to_jiffies(CC1352_BOOTLOADER_TIMEOUT));
+       ret = wait_for_completion_timeout(&bg->fwl_ack_com,
+
msecs_to_jiffies(CC1352_BOOTLOADER_TIMEOUT));
        if (ret < 0)
                return dev_err_probe(&bg->sd->dev, ret,
                                     "Failed to acquire ack semaphore");
@@ -680,9 +682,8 @@ static int cc1352_bootloader_get_status(struct
gb_beagleplay *bg)
        if (ret < 0)
                return ret;

-       ret = wait_for_completion_timeout(
-               &bg->fwl_cmd_response_com,
-               msecs_to_jiffies(CC1352_BOOTLOADER_TIMEOUT));
+       ret = wait_for_completion_timeout(&bg->fwl_cmd_response_com,
+
msecs_to_jiffies(CC1352_BOOTLOADER_TIMEOUT));
        if (ret < 0)
                return dev_err_probe(&bg->sd->dev, ret,
                                     "Failed to acquire last status semaphore");
@@ -765,9 +766,8 @@ static int cc1352_bootloader_crc32(struct
gb_beagleplay *bg, u32 *crc32)
        if (ret < 0)
                return ret;

-       ret = wait_for_completion_timeout(
-               &bg->fwl_cmd_response_com,
-               msecs_to_jiffies(CC1352_BOOTLOADER_TIMEOUT));
+       ret = wait_for_completion_timeout(&bg->fwl_cmd_response_com,
+
msecs_to_jiffies(CC1352_BOOTLOADER_TIMEOUT));
        if (ret < 0)
                return dev_err_probe(&bg->sd->dev, ret,
                                     "Failed to acquire last status semaphore");
--
2.43.0
