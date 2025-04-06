Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3CE414A4F9
	for <outreachy@lists.linux.dev>; Sun,  6 Apr 2025 13:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743946438; cv=none; b=pw+WCR5jSsnSXETTq0euDddlkExzc4hbzQveTXejbWuwEiHyA6+328IMSO+MOoe3JHba7H/NZfrtUFqOJ96JaOtOjMshPp0yzY0yPgM3JWevF6sJ7YFs4msEtMp0Ud9PYYNP2OcqoUXzCwLqTB1yV3V4FBc6cmN72YMhOBkDp+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743946438; c=relaxed/simple;
	bh=oVs63TJb+8rEmfOa+5VXdRzdrh2UJUbxLRr+CvG1dOI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iR9x+YGvUS/tVIGMhtWTYJadZLVZXg1dfgBCYZ9qTl5FEDU+WlVTij3EO0h9wlkz0lFsGAcswIGfaMwcT8Pip2cBkGEJwsi7yhFd4DzrPKyfJ++8wcRlwVSsBuB3/Ob7JGPaFm39j72S8WtrcVSUp4aHp/7dUoJTA4sMDrHkfPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VaswL2SM; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VaswL2SM"
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-736b34a71a1so4234783b3a.0
        for <outreachy@lists.linux.dev>; Sun, 06 Apr 2025 06:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743946436; x=1744551236; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nTroQOij2iPJWIzxj/pE8sWckT4rZyQZIuXMZDZdXNc=;
        b=VaswL2SMKJBcteYgTI6pGTO61Zm9xHJYLRVTdJvkZ2h+A3Rpg0TPv8h9JVplymjDIC
         LFEd9cEsKVPnow3/NJQ5RCVFtrsT90/A4hhfBK7O7nCJoIOi1JD9/e6etsJvp69C3ae7
         lVYHw4Hb4pHosuR1tD6qVL29vnfdsBB5OEEB8AKOhzZb4YF/tJnf2osXSNCzE735SXpx
         SEARItbXoWURwXa0qzUJn55qWRjhbgX1oVB1W6FXK90itxtEFxrL1w4vbFS1FkFkUE+R
         oEM44R2hOy+q6wK261sJ9wSUQba9B7UagGWKUi6qLlkj+2A3En+7icADK1iiiaTJAvJR
         EI/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743946436; x=1744551236;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nTroQOij2iPJWIzxj/pE8sWckT4rZyQZIuXMZDZdXNc=;
        b=XXSksHsBqJ57s4ZX2WDypDxF9KuDLbA/mhTw1oLQDWKohe4n2y8ndw8JNikXWmLvUq
         bSXAbKBULpF6LA++Zp/XM6cYVj4pXIp047y6lkzC/UFpBzbXom9AVIiYem0XPgZJabaV
         eLj5fFqo8PRcLTDyGOCF4DtrmPQ4WzvcrksuK09hf6XBsXgbwkAulfOks91nkffBUqVQ
         TA0nzUKBLjCoCr3Z4rdN3IEX5XIe70m0CIkkBBg9dUeeP6quYwbs9Wl7WsI0mBc2rqfu
         OgL4LUkalhqSmG09+j60ZwRR2OBiAdindpLKE/1oUDLAO0qnCMiv6Aj8vBZZbd3FannP
         3wDA==
X-Forwarded-Encrypted: i=1; AJvYcCUGQ2i06QGJgjcFnvf2rCxZKo8DCSEo5PV0cO9ejDwrD/R0xFNPqroG42ftrEg++P4ZWlkyWDvopSI=@lists.linux.dev
X-Gm-Message-State: AOJu0YzmUo9cMJPP1vdJLjuj+oJSrdwOpCB9YQZQGhfuCtdtjYFEjwk+
	9GUaz76h7uSdwvFcNNX0Uso1uk7aFIZM6/MYVe1aiibrNzZfRW2O
X-Gm-Gg: ASbGnctUDyAZqWYMYlR3mCGwnPPwsUSwDWjEfWC5AjyuKo6UbsPLiUELjbzEz5rU3fC
	BHv7rUR9O4/Lmo7Dn3KrHuf8m3+68fsy+ln8tEPKJvd1um8LugbPi4UUtPCEaG37MtEjvCrs9ET
	KFdRvM+pLaDf0Rw2yIEmqo7bdhPv73xsMo9NFJWx/zwBp09N7TQg8dv+3fLDtoUyL7YmayjMRiU
	EPDnEOyUCUHiPaegIGJxTw9LdetwI3XF6NdpyBIhf5pGaNCZst5EiAMWVs06AoRqphfLirkmW8w
	erwLvuz83/XQVXcu4RHaxLkWQ7USHVrIAGYth0/Eotsdg2s3+GZJi/4GnrfF0grqrN+vz3Z6pSc
	sYdE=
X-Google-Smtp-Source: AGHT+IEG6wqP9wloF4vsipirfwzY/0h0GR5lJVHBMqgOJ5xIaTHoeaVJtZM9RQhKuWrfo7hoIOlo3w==
X-Received: by 2002:a05:6a00:2381:b0:735:d89c:4b8e with SMTP id d2e1a72fcca58-739e48cf25bmr11714220b3a.5.1743946435783;
        Sun, 06 Apr 2025 06:33:55 -0700 (PDT)
Received: from brajesh-IdeaPad-3-15IAU7 ([103.205.130.17])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-739d97ee1d1sm6683887b3a.38.2025.04.06.06.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 06:33:55 -0700 (PDT)
From: Brajesh Patil <brajeshpatil11@gmail.com>
To: linux-iio@vger.kernel.org
Cc: jic23@kernel.org,
	lars@metafoo.de,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	Brajesh Patil <brajeshpatil11@gmail.com>
Subject: [PATCH v1 1/1] iio: dummy: Add 3-axis compass (magnetometer) channels to the iio_simple_dummy
Date: Sun,  6 Apr 2025 19:03:49 +0530
Message-ID: <20250406133349.50633-1-brajeshpatil11@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds support for 3-axis magnetometer data (X, Y, Z) in the
iio_simple_dummy driver. It introduces three new IIO_MAGN channels and
populates them with dummy values for testing and prototyping purposes.

Signed-off-by: Brajesh Patil <brajeshpatil11@gmail.com>
---
 drivers/iio/dummy/iio_simple_dummy.c | 71 +++++++++++++++++++++++++++-
 drivers/iio/dummy/iio_simple_dummy.h |  6 +++
 2 files changed, 75 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/dummy/iio_simple_dummy.c b/drivers/iio/dummy/iio_simple_dummy.c
index 8575d4a08..713b764c9 100644
--- a/drivers/iio/dummy/iio_simple_dummy.c
+++ b/drivers/iio/dummy/iio_simple_dummy.c
@@ -222,7 +222,7 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
         * Convenience macro for timestamps. 4 is the index in
         * the buffer.
         */
-       IIO_CHAN_SOFT_TIMESTAMP(4),
+	IIO_CHAN_SOFT_TIMESTAMP(DUMMY_INDEX_SOFT_TIMESTAMP),
        /* DAC channel out_voltage0_raw */
        {
                .type = IIO_VOLTAGE,
@@ -265,6 +265,48 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
                .num_event_specs = 1,
 #endif /* CONFIG_IIO_SIMPLE_DUMMY_EVENTS */
        },
+	{
+		.type = IIO_MAGN,
+		.modified = 1,
+		.channel2 = IIO_MOD_X,
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
+		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
+		.scan_index = DUMMY_MAGN_X,
+		.scan_type = {
+			.sign = 'u',
+			.realbits = 16,
+			.storagebits = 16,
+			.shift = 0,
+		},
+	},
+	{
+		.type = IIO_MAGN,
+		.modified = 1,
+		.channel2 = IIO_MOD_Y,
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
+		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
+		.scan_index = DUMMY_MAGN_Y,
+		.scan_type = {
+			.sign = 'u',
+			.realbits = 16,
+			.storagebits = 16,
+			.shift = 0,
+		},
+	},
+	{
+		.type = IIO_MAGN,
+		.modified = 1,
+		.channel2 = IIO_MOD_Z,
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
+		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
+		.scan_index = DUMMY_MAGN_Z,
+		.scan_type = {
+			.sign = 'u',
+			.realbits = 16,
+			.storagebits = 16,
+			.shift = 0,
+		},
+	},
 };
 
 static int __iio_dummy_read_raw(struct iio_dev *indio_dev,
@@ -294,6 +336,22 @@ static int __iio_dummy_read_raw(struct iio_dev *indio_dev,
        case IIO_ACCEL:
                *val = st->accel_val;
                return IIO_VAL_INT;
+	case IIO_MAGN:
+		switch (chan->scan_index) {
+		case DUMMY_MAGN_X:
+			*val = st->buffer_compass[0];
+			break;
+		case DUMMY_MAGN_Y:
+			*val = st->buffer_compass[1];
+			break;
+		case DUMMY_MAGN_Z:
+			*val = st->buffer_compass[2];
+			break;
+		default:
+			*val = 99;
+			break;
+		}
+		return IIO_VAL_INT;
        default:
                return -EINVAL;
        }
@@ -378,6 +436,11 @@ static int iio_dummy_read_raw(struct iio_dev *indio_dev,
                        default:
                                return -EINVAL;
                        }
+		case IIO_MAGN:
+			// Just add some dummy values
+			*val = 0;
+			*val2 = 2;
+			return IIO_VAL_INT_PLUS_MICRO;
                default:
                        return -EINVAL;
                }
@@ -562,6 +625,10 @@ static int iio_dummy_init_device(struct iio_dev *indio_dev)
        st->activity_running = 98;
        st->activity_walking = 4;
 
+	st->buffer_compass[0] = 78;
+	st->buffer_compass[1] = 10;
+	st->buffer_compass[2] = 3;
+
        return 0;
 }
 
@@ -732,5 +799,5 @@ static struct iio_sw_device_type iio_dummy_device = {
 module_iio_sw_device_driver(iio_dummy_device);
 
 MODULE_AUTHOR("Jonathan Cameron <jic23@kernel.org>");
-MODULE_DESCRIPTION("IIO dummy driver");
+MODULE_DESCRIPTION("IIO dummy driver -> IIO dummy modified by Me");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/iio/dummy/iio_simple_dummy.h b/drivers/iio/dummy/iio_simple_dummy.h
index 8246f25db..e05d8b5cc 100644
--- a/drivers/iio/dummy/iio_simple_dummy.h
+++ b/drivers/iio/dummy/iio_simple_dummy.h
@@ -12,6 +12,7 @@
 struct iio_dummy_accel_calibscale;
 struct iio_dummy_regs;
 
+#define DUMMY_AXIS_XYZ 3
 /**
  * struct iio_dummy_state - device instance specific state.
  * @dac_val:                   cache for dac value
@@ -39,6 +40,7 @@ struct iio_dummy_state {
        int steps_enabled;
        int steps;
        int height;
+	u16 buffer_compass[DUMMY_AXIS_XYZ];
 #ifdef CONFIG_IIO_SIMPLE_DUMMY_EVENTS
        int event_irq;
        int event_val;
@@ -107,6 +109,10 @@ enum iio_simple_dummy_scan_elements {
        DUMMY_INDEX_DIFFVOLTAGE_1M2,
        DUMMY_INDEX_DIFFVOLTAGE_3M4,
        DUMMY_INDEX_ACCELX,
+	DUMMY_INDEX_SOFT_TIMESTAMP,
+	DUMMY_MAGN_X,
+	DUMMY_MAGN_Y,
+	DUMMY_MAGN_Z,
 };
 
 #ifdef CONFIG_IIO_SIMPLE_DUMMY_BUFFER
-- 
2.43.0
