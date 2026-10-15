Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674AC53E2EF
	for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 21:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792100224; cv=none; b=GnCSgwuvud1NXMB96Y/4K49wux+wE92o9yCnR5xpLNSy7pm8cx5FjOvTP+7ePGAg2PGgFJ1AJ6kESknO/H356wNHt5c4bxahCVVqerjjhnaDIKNTqPFzO1r2Nox3OkGMlQ//Cu0tP0mDhl/qce7H+qc04kEJWtryEQki/Fya3uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792100224; c=relaxed/simple;
	bh=UlbqX9WXSoK354kqo1a8NtdRc0VTqh95EAURqNFg/L0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Pqj3EDVUbQDzRIlZxbK9W6XFzg77eAA/FlbF35JGN70vQoQbh9heAV/wZS33mvVGuOEX90H36PEUELhf/qx1tj5awMVzKnwMSixtfzpcAPiYOl71yn569+8hcWwbC9gMR97a5LzeQY03TZxB2W2lY77ejSkRw8bmRzZG1ckPRdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IE1mq2bw; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IE1mq2bw"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4a0213948d3so36013475e9.2
        for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 14:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792100219; x=1792705019; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=khX/kyg1Fdhhactu6tDSNm+0C0qyulKzKWkAhiCcNiY=;
        b=IE1mq2bwbZnHNdf+LoJVulnFh3W5rjsA8SoO/VbTd0ccAVXBdvo1R6SEDbo1AxfdQn
         Jpu30a+rKFdYN8c7kBOPBgjLNdPX41MS05AXAS6T00/LDeD9Ibx1xPO5tQdRFEA+up1D
         /uthfE28hxwOeuZ/UDpCuSqvxqAvVLcLaUvQoPCiMjDOgOfWI9nF4loG4vd0rKrsT00i
         kpNg/AHQIDk+poPektx4R8Bg4i7XXV+at9wkxJfyDdvVMYlyJUtEaHCe6qd2iP6Tw/xY
         bBGcJ1tKWZs/4uOzCxxIk54zT3Nz2gPoWI1Kr7fpqIfK3Efu2lhjfa+F1dDwEiLMiR45
         NU1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792100219; x=1792705019;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=khX/kyg1Fdhhactu6tDSNm+0C0qyulKzKWkAhiCcNiY=;
        b=bLPhqB4+Huh1XUVS9Smr6hPFOcfXO920g8wqCi1qIzM1oS7ftLY3l7MHDyil9YEYhQ
         XdnaG84joM8k9zCNvdlzAh+ayYlSZCWbC+PdKCa2VNeTUpOFq4ct5qwBCezXbFu3Lvtj
         fpYRvvKqf1TXOIRhQGvvmjWXvY8U/amhc1vXER8sfpdCCsywviLOIGw7+Ls4NMfJ+ZLg
         uQ5fQtyJZy6fqkEfC3E+ohcEF8LwXKldaT4tnfYBDzIsDC4F47U3zIRgLGs7s7jhc0+R
         Fc7cR1UenIX7SZYs4PPfAnGZPsl899NALPfDZ/ETi0K2Io33CM581rKb4wrKXqbdWzhP
         bxUg==
X-Gm-Message-State: AFq9FYJ1u2OVwa35+K3RzNQ2ZxKEyZnNf+Lb+kvoqg7kwWx0rGLJ1KrT
	jb3kJRPg8K/YdP5ivkKMhdZpoR0DRaYq4FQ+zcbYh1VabWUYqfpeL0M67GeNrcQh+wouAA==
X-Gm-Gg: AYBFou1o8/gZl34HU6A6xoDEnqQqz5o1D15/zy8dina4H7GVDhnFPT3Y1urJIUj4i9Z
	pc6SGOUHCSw2NCbmaUe3Eu/BL6irDXWiM6qXmn9gbt88J/BCoMoQzxrIgXqTbFYixNuI4Q26AYs
	b3KntFyXYWttOhCMqb28FoQ5RRe6pOf9F783wm/tZboIUEVXAOF4FvUvHt/R3m77idM7DA5qoio
	1273+3NTM8U91di0AlVkN0U5irajdwg4IAGOmnqfXF4ZZDVO65y9LpcRCIi7o8F4+KXH1QUlMD0
	Ug5JGWN953SGn1091YDW8dZkgTx13Ect4qIRSlVkqGbS5F9VPLWXUBoUzfzRfK5dOd2AjbSt2K9
	RRiU7ZFiiHgtEtmxLvR7No4+qwvvjkNeg/qlDNH0OjB50T+t7O7jaigAKMixmH/a7nsXh1Lhpp/
	SVQJmK2tWxuk1RRBzS9imkygB9lsvVY//ccLdG8JUjj/luGsibepbHkgNwviGVLPA/n1RErcxvc
	3CEX5aMtkbutUpzXS5s3r3tStB+RfZnnfY2aQCJa4UIA+5y/c4l04GELOZLNfZu/pmDlD0F2OQr
	c5ZLJezvCqhWv0pUm2C/qwHZlzx37I4KAy2j/7/0CANvyUmOY735SnVUmAb/5c9kq4OhDX9Flnw
	=
X-Received: by 2002:a05:600c:4e55:b0:49f:fe39:5bc8 with SMTP id 5b1f17b1804b1-4a18e49c008mr371304445e9.12.1792100219249;
        Thu, 15 Oct 2026 14:36:59 -0700 (PDT)
Received: from localhost.localdomain ([102.88.167.156])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd4f8d1esm650746f8f.39.2026.10.15.14.36.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 14:36:58 -0700 (PDT)
From: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
To: outreachy@lists.linux.dev
Cc: David Lin <dtwlin@gmail.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Okhuomon Ajayi <okhuomonajayi54@gmail.com>
Subject: [PATCH] staging: greybus: uart: fix argument alignment
Date: Thu, 15 Oct 2026 22:35:42 +0100
Message-ID: <20261015213542.68994-1-okhuomonajayi54@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align the msecs_to_jiffies() argument with the opening
parenthesis of wait_for_completion_timeout() to address
the checkpatch alignment warning.

Signed-off-by: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
---
 drivers/staging/greybus/uart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index d47f00751e7a..2448fc9098d6 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -317,7 +317,7 @@ static int gb_uart_wait_for_all_credits(struct gb_tty *gb_tty)
 		return 0;
 
 	ret = wait_for_completion_timeout(&gb_tty->credits_complete,
-			msecs_to_jiffies(GB_UART_CREDIT_WAIT_TIMEOUT_MSEC));
+					  msecs_to_jiffies(GB_UART_CREDIT_WAIT_TIMEOUT_MSEC));
 	if (!ret) {
 		dev_err(&gb_tty->gbphy_dev->dev,
 			"time out waiting for credits\n");
-- 
2.43.0

