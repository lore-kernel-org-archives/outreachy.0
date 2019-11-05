X-GM-THRID: 6755642568101330944
X-Received: by 2002:a67:2e90:: with SMTP id u138mr14950033vsu.207.1572920612224;
        Mon, 04 Nov 2019 18:23:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:d883:: with SMTP id p125ls564704vkg.3.gmail; Mon, 04 Nov
 2019 18:23:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqyuuacV5udq4QkusAtVbHHptLhCgyARQDIdEeXCplyRCJdby3c9aj/qINN77n1IWF1ezUR0
X-Received: by 2002:a1f:1e52:: with SMTP id e79mr4346363vke.64.1572920610754;
        Mon, 04 Nov 2019 18:23:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572920610; cv=none;
        d=google.com; s=arc-20160816;
        b=Vm4T77fWSJL5jmSqldsbl+tZqbxqL3l5Fk4fsB2DicShzVdQW0nKum7WzbuU3AA2QD
         KMCSS1oL5QejiKF+ckPgTgKAyx1T+gmtOnnUpYWwkzsPnm807GUxYWN6v0i0xxRLHBJV
         OvpBr8anLi3L2/NuPqm7JYLg+A6bzmx2Xb09UUcj0eNw3LeFoQwtBK68O0VQ+QupcNsi
         uO0BJhKlBKcEbXybrN8RPUqPzR8U8mitnweQm9C7XMh8Ie/zhYVQklyYt/4/V+dBciey
         NpgnEly/SZeJRur3LQ3pA6pqKwpz49LSEBF5UzVEoO6Hl2H2ekR61AaXDyhIhlFErPWx
         b7Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=f98IpOl/9+gXYcX8/ivKEdHBj5iW3HvmpYgUIqlIatM=;
        b=XxEhVCkfPM4YpCKcEG7JiUp6P56aWp6b0DIcOh/hUPTukudvvL2TDzlGwGUXYEAUHB
         UM9ieSHeTKCTVYmeD65JOf2R6lS7H6VWxBZzAIIuqS7I7LYy45tpACQNRRyDAGtc1gV2
         Me2MrwedbFxQCAEdmBa0n3lIDUkPJpeYu3kcKpeCGC1xgL32d5snLueSASleHlR9gHME
         6rhcrPPi1feA1U+ReunuWM6XaL6g6/8PeHhmAjgZbSjSaZh81cpvaqj2kQu0RfILQili
         AcG7UiCyZKcuzy4GIvVBD3x2cRcv7aXLkry7iDxqQwooWKeHpR/k1OVkdOlMnWWdxG4w
         pE9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vCVrjbyU;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id p78si1110532vkf.0.2019.11.04.18.23.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 18:23:30 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vCVrjbyU;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id y24so8600580plr.12
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 18:23:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=f98IpOl/9+gXYcX8/ivKEdHBj5iW3HvmpYgUIqlIatM=;
        b=vCVrjbyUj+2qAHqMaTKE/b/psTgR3h/GS6T5mraLk6s1vnrkzZczu8UHzD5xSKRXnE
         NO+NvHRHXCDp5zzI+Ua7s3ZNXay6ziN8OiKCSYd8XT5/VoZxxiNhikOmgB8EOMLyEaWY
         6BUMp6nje3RpaMKio6gOADxOizjVfEExDB9x3GU8hialDCkYGmMMuiYU+XCKZPJiME4e
         BKc7WGFcDYRSYO46OtGOdsKSA/ST7Y+rGT+fBwZXUdBfXrT7IJReouvIc8hzlqQX0bEw
         XPLEOTA3BC7S0jo9MNED1oc0G4Utl3kdi/Z4o9P+3LU0eU0Qz3EuPffMfz9SOTpEdQtu
         SzDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=f98IpOl/9+gXYcX8/ivKEdHBj5iW3HvmpYgUIqlIatM=;
        b=WWSTonlq8w4+iIFQqFVS11NOmfD/MqSDEjxtfXpoGbfBKlSqTQKDW0cA5P8MHGpxDL
         fTAv/PdoRVGsANbhEwqvbm5Uf+5CBhHAK14xlk9bWJAYhkkrdxIvCxsVKSLY/5UjX6dS
         X6xU/alF2vrJx+LFzvuv7vY0WYhES6cMpz6cE0T8c8mz/O3RKj+iXzvmgstzZSAt1pE2
         dD1GyD19hfzIFjHOShx7WBRKUni6c1hmthb2qEIDl9csrsJh/9QyYn4v/BSivXVGGoH3
         tcf9ypcOFwjwOutNXs4nO0FI5uaFdtQ6JMj4gAa+pUI8IL7KMXRWWTkJE+ILVtRVMP3b
         KU1Q==
X-Gm-Message-State: APjAAAXD/u+I/fuLwHF9Z/kjF3G/H3XYvaMuL2jtN9MVq0e1/RWR1B1F
	gRMQZkq5XxC0wqBxYrUKOy4=
X-Received: by 2002:a17:902:6946:: with SMTP id k6mr1009136plt.60.1572920609663;
        Mon, 04 Nov 2019 18:23:29 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id v14sm11995297pfm.51.2019.11.04.18.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 18:23:29 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: thierry.reding@gmail.com,
	airlied@linux.ie,
	daniel@ffwll.ch,
	jonathanh@nvidia.com,
	dri-devel@lists.freedesktop.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 2/3] drm/tegra: dsi: Remove space in open parenthesis
Date: Mon,  4 Nov 2019 18:23:21 -0800
Message-Id: <4357d243bdb0ac22a36f3edb0f08820fbc31348b.1572920482.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572920482.git.jamal.k.shareef@gmail.com>
References: <cover.1572920482.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572920482.git.jamal.k.shareef@gmail.com>
References: <cover.1572920482.git.jamal.k.shareef@gmail.com>

Removes space after open left parenthesis. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/gpu/drm/tegra/dsi.c | 60 ++++++++++++++++++-------------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/tegra/dsi.c b/drivers/gpu/drm/tegra/dsi.c
index a5d47e301c5f..5966d33831e4 100644
--- a/drivers/gpu/drm/tegra/dsi.c
+++ b/drivers/gpu/drm/tegra/dsi.c
@@ -283,32 +283,32 @@ static void tegra_dsi_early_unregister(struct drm_connector *connector)
  * non-burst mode with sync pulses
  */
 static const u32 pkt_seq_video_non_burst_sync_pulses[NUM_PKT_SEQ] = {
-	[ 0] = PKT_ID0(MIPI_DSI_V_SYNC_START) | PKT_LEN0(0) |
+	[0] = PKT_ID0(MIPI_DSI_V_SYNC_START) | PKT_LEN0(0) |
 	       PKT_ID1(MIPI_DSI_BLANKING_PACKET) | PKT_LEN1(1) |
 	       PKT_ID2(MIPI_DSI_H_SYNC_END) | PKT_LEN2(0) |
 	       PKT_LP,
-	[ 1] = 0,
-	[ 2] = PKT_ID0(MIPI_DSI_V_SYNC_END) | PKT_LEN0(0) |
+	[1] = 0,
+	[2] = PKT_ID0(MIPI_DSI_V_SYNC_END) | PKT_LEN0(0) |
 	       PKT_ID1(MIPI_DSI_BLANKING_PACKET) | PKT_LEN1(1) |
 	       PKT_ID2(MIPI_DSI_H_SYNC_END) | PKT_LEN2(0) |
 	       PKT_LP,
-	[ 3] = 0,
-	[ 4] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
+	[3] = 0,
+	[4] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
 	       PKT_ID1(MIPI_DSI_BLANKING_PACKET) | PKT_LEN1(1) |
 	       PKT_ID2(MIPI_DSI_H_SYNC_END) | PKT_LEN2(0) |
 	       PKT_LP,
-	[ 5] = 0,
-	[ 6] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
+	[5] = 0,
+	[6] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
 	       PKT_ID1(MIPI_DSI_BLANKING_PACKET) | PKT_LEN1(1) |
 	       PKT_ID2(MIPI_DSI_H_SYNC_END) | PKT_LEN2(0),
-	[ 7] = PKT_ID0(MIPI_DSI_BLANKING_PACKET) | PKT_LEN0(2) |
+	[7] = PKT_ID0(MIPI_DSI_BLANKING_PACKET) | PKT_LEN0(2) |
 	       PKT_ID1(MIPI_DSI_PACKED_PIXEL_STREAM_24) | PKT_LEN1(3) |
 	       PKT_ID2(MIPI_DSI_BLANKING_PACKET) | PKT_LEN2(4),
-	[ 8] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
+	[8] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
 	       PKT_ID1(MIPI_DSI_BLANKING_PACKET) | PKT_LEN1(1) |
 	       PKT_ID2(MIPI_DSI_H_SYNC_END) | PKT_LEN2(0) |
 	       PKT_LP,
-	[ 9] = 0,
+	[9] = 0,
 	[10] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
 	       PKT_ID1(MIPI_DSI_BLANKING_PACKET) | PKT_LEN1(1) |
 	       PKT_ID2(MIPI_DSI_H_SYNC_END) | PKT_LEN2(0),
@@ -321,26 +321,26 @@ static const u32 pkt_seq_video_non_burst_sync_pulses[NUM_PKT_SEQ] = {
  * non-burst mode with sync events
  */
 static const u32 pkt_seq_video_non_burst_sync_events[NUM_PKT_SEQ] = {
-	[ 0] = PKT_ID0(MIPI_DSI_V_SYNC_START) | PKT_LEN0(0) |
+	[0] = PKT_ID0(MIPI_DSI_V_SYNC_START) | PKT_LEN0(0) |
 	       PKT_ID1(MIPI_DSI_END_OF_TRANSMISSION) | PKT_LEN1(7) |
 	       PKT_LP,
-	[ 1] = 0,
-	[ 2] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
+	[1] = 0,
+	[2] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
 	       PKT_ID1(MIPI_DSI_END_OF_TRANSMISSION) | PKT_LEN1(7) |
 	       PKT_LP,
-	[ 3] = 0,
-	[ 4] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
+	[3] = 0,
+	[4] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
 	       PKT_ID1(MIPI_DSI_END_OF_TRANSMISSION) | PKT_LEN1(7) |
 	       PKT_LP,
-	[ 5] = 0,
-	[ 6] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
+	[5] = 0,
+	[6] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
 	       PKT_ID1(MIPI_DSI_BLANKING_PACKET) | PKT_LEN1(2) |
 	       PKT_ID2(MIPI_DSI_PACKED_PIXEL_STREAM_24) | PKT_LEN2(3),
-	[ 7] = PKT_ID0(MIPI_DSI_BLANKING_PACKET) | PKT_LEN0(4),
-	[ 8] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
+	[7] = PKT_ID0(MIPI_DSI_BLANKING_PACKET) | PKT_LEN0(4),
+	[8] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
 	       PKT_ID1(MIPI_DSI_END_OF_TRANSMISSION) | PKT_LEN1(7) |
 	       PKT_LP,
-	[ 9] = 0,
+	[9] = 0,
 	[10] = PKT_ID0(MIPI_DSI_H_SYNC_START) | PKT_LEN0(0) |
 	       PKT_ID1(MIPI_DSI_BLANKING_PACKET) | PKT_LEN1(2) |
 	       PKT_ID2(MIPI_DSI_PACKED_PIXEL_STREAM_24) | PKT_LEN2(3),
@@ -348,16 +348,16 @@ static const u32 pkt_seq_video_non_burst_sync_events[NUM_PKT_SEQ] = {
 };
 
 static const u32 pkt_seq_command_mode[NUM_PKT_SEQ] = {
-	[ 0] = 0,
-	[ 1] = 0,
-	[ 2] = 0,
-	[ 3] = 0,
-	[ 4] = 0,
-	[ 5] = 0,
-	[ 6] = PKT_ID0(MIPI_DSI_DCS_LONG_WRITE) | PKT_LEN0(3) | PKT_LP,
-	[ 7] = 0,
-	[ 8] = 0,
-	[ 9] = 0,
+	[0] = 0,
+	[1] = 0,
+	[2] = 0,
+	[3] = 0,
+	[4] = 0,
+	[5] = 0,
+	[6] = PKT_ID0(MIPI_DSI_DCS_LONG_WRITE) | PKT_LEN0(3) | PKT_LP,
+	[7] = 0,
+	[8] = 0,
+	[9] = 0,
 	[10] = PKT_ID0(MIPI_DSI_DCS_LONG_WRITE) | PKT_LEN0(5) | PKT_LP,
 	[11] = 0,
 };
-- 
2.17.1


