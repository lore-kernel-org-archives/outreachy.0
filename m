Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.180
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793892329;
	b=S2ZdPCyFDHfZcDmxcEWx+ojoexjpyyw9tHlkaGyPpbCmz0GcRWU7/aXiXmurrYDIXBab
	 NSzalzRoHPz/xizRRfM7E+IDb0/kYM5FiCcGMpcmpkXxgErJoOiEwlqLpUdUhdcV4EAkg
	 n9kYurRh3pj9IhI2bwhC4dNXp9XqazjpQUxuvAYczEY1WaYtF3PtXG6OQXl8yfDffU8Sx
	 gqxcF9gBog4fNEc0tErfIMEK+fx4Tin52oKLpdRp9Md5nRfanm4rKsHDc5WYn1wrFmcOn
	 MJ97L0dEIwGIgQObB8vCs2xF9vrOEsZxwjkbNMBBO+atxxnvSTWcRb6/7DX8xnUjtFA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793892329;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=fUq2fGxSb2/NcTlvV1YtV3DNYmmgnliEIRSPS9wFg44=;
	b=Ci2M6RTvtQl87SrzpmnHcJqo+deszY0HotKAoO6OFvJ7qiPH4NwQpMNWjtmUjnlsxn12
	 u4ZZaVl16IPzSzpD25rs167o9JN9RykHCcg7d7DgFe1w8BCH8t2VFDzIoJ1fs14KDKPhp
	 +QmmaToNsV5c8EgBxN41sMOl1+WCkA4WwKWYzAuhv9CNmg2564ZkSuw3gZLfvplPLEwl1
	 +EXBynOPmRp+vr3WJ0LfhJ6YR6zKY1lk0GGM1nOqm4U1WCRH2hBcSM8ZaN2wq/3OFmPDz
	 b+mPRdUFE4W3z6edzBiXckKu48kVWODDKlrH/BZqrk/ry9cBmDXzeY+udkBTTwBEVww==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=e55sfc3A;
	arc=none smtp.remote-ip=74.125.82.180
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098FB606EE8E
	for <outreachy@lists.linux.dev>; Thu,  5 Nov 2026 15:25:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 098FB606EE8E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=e55sfc3A
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-33bf40b0c8bso5436501eec.0
        for <outreachy@lists.linux.dev>; Thu, 05 Nov 2026 07:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793892328; x=1794497128; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fUq2fGxSb2/NcTlvV1YtV3DNYmmgnliEIRSPS9wFg44=;
        b=e55sfc3ArbzOYKcPt4tZDgizkUewl1RoMqiEmUsEumqavJbj5pEv1avvZMjuj/ACmv
         wynJTPWN82k6THBHcv7AmBaBuyUzsJvIsMaD2z2Ti7qkuJ5IJ7mnpnhBxaYZ9lX68lDu
         AIu39Y8S2PcgDPliQsAbTMQhgqbs0X8e24Ti2lEdZim/cDF70Z7J2lqDufWY3Bl3+CCT
         EwBiQNH+xX9vhbsKn33sQy/0ul1fR3zlOqQr8eakWxVEsVYzmn+uled42U9ycmYvEVOL
         eXxUe3cJyzGvjA5M+26opkHSymaAbZg/Sxgqkj6C3AvGfdPYdlqhzOJbVbQFsr4zejNt
         vpJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793892328; x=1794497128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fUq2fGxSb2/NcTlvV1YtV3DNYmmgnliEIRSPS9wFg44=;
        b=0zRiqzqcB7ouFVGPeJI4BrsAKz0Wt/uwpt0EEYqLyCDnqO2ETrZlyA7mpa/HzYhGaw
         s3fksgnpN+7JwckseOOFfqY8xqqsTGSiuRgrslA2U5MRlxX2nKnF1qmJPUpRiys0R3MS
         OWj1ySGqPuxY6M6t4PEXtLk37UKNd68yBi6YFPzYmNBD6rXusoTlOWeBh5gXoimZtqYA
         DcValrStzR+hJnu3/sqYtecGzU3hx9t9sXQFMGmerh54mlHyHJkv9Ot3PUTq0OxegnbG
         pEt8oO09kqfdKFgdLAW7idtwb4iSKefmjJJD1z/irfBQxTJEByhq9PArF022ZlHmh+nY
         UuDQ==
X-Gm-Message-State: APuU4Z/vd4CZxmIpx+03w0FkVwJBRQMBbhubl5CxKvCVr/iRFshg4oKp
	TFN/toKGA7Dv2laNrFAdCUfwLsSjS3tqqRnT48Gvk9T2LSpmlBQ0/hhaJHiKePi3MFw=
X-Gm-Gg: AYBFou0msvNdBBLZObVwAfftW3rY4HygzN05mdIz48/KcViTks0/loxAohOyDBzTJiM
	L/3Fxl4at0jU2m1PTGIFZdEDs9IJzFDkAwX1KsAzqQsDKCm5/NkjGt3bUDsdSFzjOyUAoiwY+sW
	dYxv4aZuD6yrZuUlbfDp6te+gZuSWjINvkp8eujiKU7lpPqm+MXpu7I1zUEm5K/V1fQU0b4+rwG
	8TW47vHLQR/RMh75+eCnmSP8zwtACQc08f+GOCZxjfTm4lZMireihO3pL5dE4KmLk93LuG2NuXg
	HaWXOpJDXkf8Ldwa1M5eTsS573wzaAqBDFGbQ3IPUvoyU5RUBjRlRW0es+I301cJvKNcYqAiMdk
	VxZWn49tDRLiUXat93bAr8cfRU2LKpuxx87VRAi/DsPPAhW7DhtrJVBzCeSzipRz75jfo7cE5z9
	8bi1zFqJgIRnjKi6o4PYmVommMBnciimaKc3L0+CruolTgncI5XSntxhE5XFPFPWZdsoGPwOkyn
	bvDkPintdQDUji+Hlngzmc7DrftdTluM1JoLl+fS5XEUJjxLL/7LnnbH1frjTyUQ+wWhXJNZ/2X
	IFAJ/5RrUT5ehT9hSaN+va6PYoSO+ykHGOLHVEFp2TgebV8L9YtNUdE=
X-Received: by 2002:a05:701b:4182:20b0:1a5:52f6:db9a with SMTP id a92af1059eb24-1ac5ca23c29mr30743988c88.22.1793892327393;
        Thu, 05 Nov 2026 07:25:27 -0800 (PST)
Received: from Anonymous.localdomain ([223.181.63.167])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b245c1c272sm17432491c88.8.2026.11.05.07.25.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 07:25:26 -0800 (PST)
From: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
To: outreachy@lists.linux.dev
Cc: parthiban.veerasooran@microchip.com,
	christian.gromm@microchip.com,
	gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	error27@gmail.com,
	Hussain Sitamouwala <husainsitamuwala21@gmail.com>
Subject: [PATCH v2] staging: most: video: document lock fields
Date: Thu,  5 Nov 2026 15:25:14 +0000
Message-ID: <20261105152514.11704-1-husainsitamuwala21@gmail.com>
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

Fix checkpatch.pl checks:

CHECK: spinlock_t definition without comment
CHECK: struct mutex definition without comment

Document what each lock in struct most_video_dev serializes, based on
how they are used. list_lock serializes changes to pending_mbos and the
mute check in comp_rx_data(). lock is set as vdev->lock and is held by
video_ioctl2() around the ioctl handlers.

No functional change.

Signed-off-by: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
---
Changes in v2:
 - Replaced the short comments with ones based on an audit of how each
   lock is used, as Dan Carpenter asked.

Audit notes:
 - list_lock: comp_rx_data() takes it to check mute and add to
   pending_mbos. comp_vdev_close() takes it to set mute and empty the
   list, and comp_vdev_read() takes it around list_del().
 - data_ready() and get_top_mbo() read pending_mbos without the lock
   in read() and poll(). Only one client can open the device
   (access_ref), so this looks benign, but I did not change it.
 - mute is cleared in comp_vdev_close() without the lock, after
   most_stop_channel(). I assumed the core delivers no more buffers
   after that call. Please correct me if that is wrong.
 - lock is set as vdev->lock, so video_ioctl2() holds it around the
   ioctl handlers, which covers ctrl_input.

 drivers/staging/most/video/video.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 3a0445ff62f4..94f1dc994217 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -33,6 +33,10 @@ struct most_video_dev {
 	bool mute;
 
 	struct list_head pending_mbos;
+	/*
+	 * Serializes additions to and removals from pending_mbos, and the
+	 * mute check in comp_rx_data(), which runs in MOST core context.
+	 */
 	spinlock_t list_lock;
 
 	struct v4l2_device v4l2_dev;
@@ -40,6 +44,7 @@ struct most_video_dev {
 	struct video_device *vdev;
 	unsigned int ctrl_input;
 
+	/* Set as vdev->lock: held by video_ioctl2() while it calls the ioctl handlers */
 	struct mutex lock;
 
 	wait_queue_head_t wait_data;
-- 
2.53.0

