Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B42B38DC52
	for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 22:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792103272; cv=none; b=sExQTaG0aAN8xxAc9p7gwlz8kub5/XX7+4dbBaqhMy3H8eAQj/iJ3lCK8VRDaDikw546Xf2zgHHZnjD5nPJTPW2El3zbYoUA/UExy2bVmiz/8Gd0cGlBnKfsLYYuX7xcuitGcteG9VEOZDftOOdyN+2IfXPNKxXbixj+DbcXM8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792103272; c=relaxed/simple;
	bh=rJMZO0VgIuzF0WSOhbe5gXe0SOTu6iu5Wck6NzeudBQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YqeW0bDQ8cljIRy29nEc/VPTMsRZH4/bWpKKVUHS/ALXm/fDoWi2H+BRlcCyCJWa39TbBRTFJ59kmSg54OuuYVTjJZf4I9s+fatk8Ruwdh4KIo+u9275/JYVOTW16pcctJpLLOB8WQ6rqLsIi6Nihrb0tQ1vEgiByawmKFnf3JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=p9UMobBe; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="p9UMobBe"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4a02667ccebso42666355e9.0
        for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 15:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792103269; x=1792708069; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=vTeoZs89HS3SYDzrwek7OhSrNhRzVN8YqVYgGwhyqS8=;
        b=p9UMobBeeHs2cJPi47h3thODj1nwDpThbslorKZNlW+FkOylEU0OHaOMZg6tHuygw8
         4w14pRFJTd1bbcXHn50w6VKo/taGeyskTJkbCyRv6501vNa8KFYTO916vVuXxe9vUmOe
         auO4z24fTomRRri9BTSP0S1JK4YK/cGsKqh+kMEddZyFEpHfqgt8lkOX+Ts416iEB+/f
         nq5LuHD5fJXKmfFHgJhYOMfsA5WN10JfMhWkZnyEowe1JJ9NMs56iYeGp70tZ3vQtI1I
         4vkGuTV5p0g90AFlEnu1DJ8WF/jmAxV0LKJ3wfsTCFwikO/3gz6nzPEZG+v8z0ZaXXHH
         Nnkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792103269; x=1792708069;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vTeoZs89HS3SYDzrwek7OhSrNhRzVN8YqVYgGwhyqS8=;
        b=i3/3FHq3BzLK1sTjkflL+VCDxKtHj9SQZ+2R0U3F4AFgEug+X8uuNZ6A5zyES7b0h7
         EKugoLcKPUP2ZqADMhZ4P3LK+YOJ8MGqFcwEFuQeeNbn9L2qE1X82IP5EVB87D5Ger9U
         Tqa+2sfBByU/4OKHgECH9ocL75FL+LOgnnm/yahFyj7n9NbMrKYy4nyTzrPpnxE1R+zP
         fXCm79c1COxnaAfzJNc3qGOV3tCWSW3CybwEfo9gK2MM0oczEnMO3VD1F9ocpg+CDVEx
         BbfmObR9DEZgDCsBnf5r0vfXp3Qf/i04j6bGp9BgnGe9guvLCcrZAYqWoMT3Oo+lxjye
         6aAQ==
X-Gm-Message-State: AFq9FYLHQTU/dRvqHqNyw2c/h5wMVS/hvgY5rq7UoHakeOurGIlAKSjA
	RJz18jf7teiT5DnnU9fPN2YdssDihXXO6ibBgQok9n650OM/5f9wNPrvogZIq2PS1HM07g==
X-Gm-Gg: AYBFou0xvVH/fSaBDiL2Y7YtUR1RR1MZoHn1gYNYCbpR/ZAQlmkUg5j+S3vB/aH8znX
	7AQrEMG2W7r5hScFFTtrgESm9P5iu5l3BYjihUP8AA47XR8e51tC24la2tvIFHxPiJVt+QLYJ8l
	llDPDFH9OvA5SkF89I/82VlO3lKzmA6xhsXlXkG2BySoDMKjyMGVayqr3JS4vxfAEBEHC3o5Cnm
	ihSD5hdz9jhgUs9eT8HwLzgAWJteEo2YQBlatzqtyDLORC7dBd/gC/burJjmHSn0Qf9xCX9LzZc
	D48K3akAuJ70rxQEHk9mb6/UbdBf5XbIsDr+aLSrFjWKhi5hPiOiuJWPR3D5cunW0Z0OQkG6XBu
	Oe605krUUM85KoehlAqDhOtGr0PKTB+7a49zWQElhh7eaNaM/ciMFppt01f/+mvfc5SAvI6OgYh
	CIiFnsp1e0F0lBci9qIXEvnBmHa5oqI2G7n2uKPkJYI6u0HgkvjaVNnuUCR5GFG0EVULIh9Vduh
	oIlUrT5gr8eSorY2FE97rLkHz2KLRGWE8iNDesCSovVqfjNVhfv66/D70Inv2mfZL/YID1vv75S
	Y2NQ4tHaxstJnUg2/g2M34seXZzQhzLbwsZpPx7cp5R+K40PVr3ueZxwo+635j36ZuC+W0m4Fw=
	=
X-Received: by 2002:a05:600c:3f06:b0:49f:bc43:9e96 with SMTP id 5b1f17b1804b1-4a18e4a3bfbmr435955355e9.8.1792103269119;
        Thu, 15 Oct 2026 15:27:49 -0700 (PDT)
Received: from localhost.localdomain ([102.88.166.12])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1c8ac19c9sm5917375e9.0.2026.10.15.15.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 15:27:48 -0700 (PDT)
From: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
To: outreachy@lists.linux.dev
Cc: Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Okhuomon Ajayi <okhuomonajayi54@gmail.com>
Subject: [PATCH] staging: greybus: add blank lines after struct definitions in gbphy.h
Date: Thu, 15 Oct 2026 23:27:35 +0100
Message-ID: <20261015222735.89251-1-okhuomonajayi54@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add blank lines between the structure definitions and the
to_gbphy_dev() and to_gbphy_driver() macros to improve
readability. This fixes the following checkpatch warning:

CHECK: Please use a blank line after function/struct/union/enum
declarations

Signed-off-by: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
---
 drivers/staging/greybus/gbphy.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/greybus/gbphy.h b/drivers/staging/greybus/gbphy.h
index d4a225b76338..1de510499480 100644
--- a/drivers/staging/greybus/gbphy.h
+++ b/drivers/staging/greybus/gbphy.h
@@ -15,6 +15,7 @@ struct gbphy_device {
 	struct list_head list;
 	struct device dev;
 };
+
 #define to_gbphy_dev(d) container_of(d, struct gbphy_device, dev)
 
 static inline void *gb_gbphy_get_data(struct gbphy_device *gdev)
@@ -43,6 +44,7 @@ struct gbphy_driver {
 
 	struct device_driver driver;
 };
+
 #define to_gbphy_driver(d) container_of(d, struct gbphy_driver, driver)
 
 int gb_gbphy_register_driver(struct gbphy_driver *driver,
-- 
2.43.0

