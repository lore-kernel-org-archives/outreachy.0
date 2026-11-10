Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.174
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794287101;
	b=YqRBP5aGLlII7uQblQfjeOa+90ajMohuf7OTisTZrBzpsxGS+Bf9Oi4kCRQ7+jdwcOrY
	 C3of5H8Jknrr5ttJIDCaJtKuX36LlOMH/J6UUAvFLDgICV0eU22t/VmyTEPX5X3cxUpM+
	 iq5Xntg2NZVjbjCq9N1wM+pr8xovKmftKmqzHM/XF5Eba1EV9q6n3HWqJ0Rtash5J8/eG
	 FfhMolLOHYz7B1FI4emLwXFke0iFs1CXjU+mOKQrNWGM15JERiL1Ik0rPnb/5CfHQIyR+
	 xsSG6wOvjfVyAd2HmK0Z98JsruivOq9jzG+3PF2veLxRvGAe/Wg92J5lrMBNwEBF8aA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794287101;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=x28Xh8Kl636Xj0Syxm9iILHuaCS0bk0qyS/PVv+3B/0=;
	b=Y9jBj+6u31abTew5nxIWlwj2a/uRcbOcjVT/SGfEIxgNpjLzNITuspOq/uK5cxF20aFz
	 +SENBDqIQtkNaGtofcB6LP/T6CvpSfkyBVqWaeI/oFGyO9dC1tZ5OlaW+nn5ybkZsKxgi
	 3yLXpqJ7zyeGyWCwI7dBfOj5Ti8izNfc3Iixk08anDSkFVKJetRY5P0vbLrSL0b6+mn7d
	 vzTrBz6dlYgz0BjFWhpB4u7pR37eAM/KyoRgmOoRu2Zn7FmQ3z7fvOc2rq4RPaj11F0lO
	 RicIfqRy49GYeqtOD9Y5dnTRdunA5eOZhbTd2v2Dw0vL94TtS0BZEAVS++S4iMbOxgg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=A3gFn72e;
	arc=none smtp.remote-ip=74.125.82.174
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5597606D6B7
	for <outreachy@lists.linux.dev>; Tue, 10 Nov 2026 05:05:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org D5597606D6B7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=A3gFn72e
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-33bf40b0c8bso2858224eec.0
        for <outreachy@lists.linux.dev>; Mon, 09 Nov 2026 21:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794287100; x=1794891900; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=x28Xh8Kl636Xj0Syxm9iILHuaCS0bk0qyS/PVv+3B/0=;
        b=A3gFn72eurXMtrSluasD2njgHMGwLgyxSh20ZtNcUqWs0BRBVU3ar+8OtBWPmq9IUs
         k1y5U+rX9vMPxqY3gPzLxRnw6cqgEcfTxZIUsXY+q/Dyn5ouGwLUsm7W6p0xnqhrj9qT
         +D2mpMq59K2S3hR+5XnixLt+WPNBa9THhaaiRlOeNepI8OmTJKM3RPO1nCGh/I/Ck6BB
         WIxEJ1cFcbDyOwYOlrVlEpl+fUVnpa9H9ub3ZQr+apyw/e3zO42iDqA6g7gK18qAJBQ5
         J1Y16ZXC3rETcpbGHt+YaiutcUB1GRA7SJw816izH+Ow47R4kjJ57PIQuYCm3lxI6xmh
         ZTkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794287100; x=1794891900;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=x28Xh8Kl636Xj0Syxm9iILHuaCS0bk0qyS/PVv+3B/0=;
        b=YcSTKdbLsc1Y8lUzpfY21RgOBx8NYVPu5Ly1Zg9OSkT8VAepIZZx04t0hX1ep7zjZL
         liVOmw9lL14hmcAx2R5YsU7TSKmzlUcQucPNMRcejsM1VM7owUrK8spLY4I0EwRYpx+i
         H5XUYjYhg5rEpN7eqGL+6ZpD7CoR7mAfoDExPahI1AuxbpasPU+1lsWUoSjJ8qb9sC8E
         ByOVy6ZcMlhbUY6x6Icvbx/WqaIW6xZOsZ7zeDSMlMquxjmOP0XzvaKrYN7aicL0rXST
         qPjmwywDEZFIbrhapQzOoPMQfUwIFDzKiVjrIsDlSU94ZkngROLFdv6j1jdZDkvtfdoz
         NnZw==
X-Gm-Message-State: APuU4Z+88JhmsQMaKbQcQUZrE5g/HyEmYAp9OfoL52ppTWJID8XtcIrg
	Zg/HVpZtsnhrBumulw1PjEOZEfiLGujUGm+QvL/lBfJKvEDgsIbZzEqQ+am5Oe67u4Q=
X-Gm-Gg: AYBFou1G3DSz+3IwIA3Lmol/LEA43BlMFso3T19nEFPTsOpjPV6JTgkTw3Ux1nNx/xh
	TZaJjy1yxFS79bGDL99rGMU1o9ljf6tSjVY6W9RMC8dMDmr1J+4inNJckGDID1BBxm4M3E3MPEy
	gUF7TgjyV7hMwfRHPjvk7ndSAO/E/pGRc0nQ44CSGJDWL+Aa5m4ycd0gNWqWUY0sjaz58hLbMYp
	nsfr1ejXCE7jy04ggtZPe+/1FuJyl+WD0N5jb/0rBFxovvj2Q+KihAsJaCHcrhrvVmnUNLnf49r
	zWtwh0SJQ5AqCFnYclLr+mnxpcgTi36rnvTCKjLI1eCxPR/6mUsVPCy4I/69nQV/Dt63+afpdh3
	9Y4N/cwDY3TFsNeq73swFXFFm3biGuFVTFKnoqPqAx1bjqZcu+rJfjTlA6SKe8Hoz8vhi7y078W
	CuZidv9EAz8Ct7YUtMOzlyL8sHeY3SMeM9zUswvKu4FqZYuVRk8bBLPxbvHLuVFzXR2SiGTEfrH
	cfK8V0gNPqyNrvf4FU8yi1vyoKwVkkIYWHnzBL1ufwAqk32uAHogyIve8V0rsCCGJ4LWOfcDp4g
	tu9YSp6S2WExyHPnyE+2Wb+ekyPmyRX2QoHC77x7rzauoR1lZqAuoYhXmVFLFPqgjtCcSGUhFg+
	HJ7ehGoTFCUW6Q8Sv9GjvScbpVUY8b6NolW+FUDU=
X-Received: by 2002:a05:7301:4d14:b0:375:4f3e:643d with SMTP id 5a478bee46e88-3754f3e6572mr1368404eec.27.1794287099742;
        Mon, 09 Nov 2026 21:04:59 -0800 (PST)
Received: from localhost.localdomain ([203.92.58.30])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-375212e9e03sm6550235eec.23.2026.11.09.21.04.55
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 09 Nov 2026 21:04:58 -0800 (PST)
From: Shivani Patel <patelshivani2283@gmail.com>
To: outreachy@lists.linux.dev,
	Hans de Goede <hansg@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Andy Shevchenko <andy@kernel.org>,
	linux-staging@lists.linux.dev,
	linux-media@vger.kernel.org,
	Shivani Patel <patelshivani2283@gmail.com>
Subject: [PATCH] staging: media: atomisp: Fix leading space indentation
Date: Tue, 10 Nov 2026 10:34:48 +0530
Message-ID: <20261110050448.69521-1-patelshivani2283@gmail.com>
X-Mailer: git-send-email 2.50.1
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

Replace spaces at the beginning of the line with a tab in
atomisp_find_in_fmt_conv_by_atomisp_in_fmt() function parameter list
to conform to the Linux kernel coding style.

Signed-off-by: Shivani Patel <patelshivani2283@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_subdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.c b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
index bdd2d9b18..773fcea56 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_subdev.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
@@ -96,7 +96,7 @@ const struct atomisp_in_fmt_conv *atomisp_find_in_fmt_conv(u32 code)
 }
 
 const struct atomisp_in_fmt_conv *atomisp_find_in_fmt_conv_by_atomisp_in_fmt(
-    enum atomisp_input_format atomisp_in_fmt)
+	enum atomisp_input_format atomisp_in_fmt)
 {
 	int i;
 
-- 
2.50.1 (Apple Git-155)

