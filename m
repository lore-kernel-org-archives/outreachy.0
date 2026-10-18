Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1783E2ABA
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 23:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792365361; cv=none; b=ciEZijUtw+R6OonD+rR9yemg5A1tHTDr2TQrdG3HIXCLZghd3FyeauSm0KE2nLHM0uFBzXYlCO8GovzE3CAPqyVQ4+AXUdP+yLGTDeWdSZM11scKQz6kph3AZ95c8lksnZjvfZXMDoyGRYV3eDGSvASRsbJ8EkNSXlMeC0vkPf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792365361; c=relaxed/simple;
	bh=S4bE2BgAbV/cAYIRrQlCKFuqyCJ3AdpaNeDWcqSlJtk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KeddRgvhXKi24yoGrEIct/0CVUyxCeaoGUvHd4/ZdbQHqzUh2LPe61pLbPFuWNUec8iOCBXysb8KjhmX9/m7v6E68g5IOCTockfWgAnpO8tVSh0pNCriGoUQxkBZDoQq+IS9ybV6WNrziphwG4RTY1LnX0WrpvsWCCSPfPI535U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LVePqEdt; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LVePqEdt"
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-48c45111bebso865365f8f.0
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 16:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792365358; x=1792970158; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=QtdMrgS5OyN3BgVJlDrKUHEutVSv3PFnuFIUQXZ3F4g=;
        b=LVePqEdtom0Jf9vY1AhZyryhgQIE3ERZZ2bpvRgZDRoXIe7vz8nF96zZAh2gfItd5v
         AqQRTzRH7yBGM35Xw/XO/8GVQIrh89GSNOWRm47n5z/7Qmb7Sqv2+APluM9g75enaYms
         eKPJtNMGCawZBh+EXqGntJ5bo8YaoYVNerEetraaX0YmZ5H3ygk7NPLYhQ4oOT9LjyMO
         bY4hAfS0EUB+B/ZlsCCNvq1nHhb1fhXOAZEbyv71sG8S6TkVHy8AJ0fB0Yh6H7yyVXil
         R6kg0kN+5ncNFx4edrq6Qb0UcIIoiGyBUucyvw6NTFAd/L4vknsTIKGuv32U6nk/InIr
         L4JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792365358; x=1792970158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QtdMrgS5OyN3BgVJlDrKUHEutVSv3PFnuFIUQXZ3F4g=;
        b=CvDAgjVc1tScZsbzZCsBUihH6YTkrSguslXex6WgncrEu2uNUGge2BF0cwr/kgjjX+
         Ap6hBw2AdJgMOUOeq48K+0UatgBuBYo1wjf5oE2wZvb/F+p0AhZYLklbqaFgYq0cmjV9
         5JcK7wZroINQZkb6gZkQz34sVUD0kTxniKH6UFId8m7+F65+7wAQ+NEPMkNjZR2tY+QJ
         ojhUskryQwWyghbASagiCxbERdBj4QdMx7EbwkdWsE+rkI48Wcc0of8zlXkAK2flygVj
         yqQu7CkXy/BsKht1oG5HSmZx/h/rHsVC49xkXihe8/+gfhyNmyl/yOyAKhOGmXM/JDAz
         B+Mw==
X-Gm-Message-State: AFq9FYIFFJWQ8IZnv6f9qT/BNve5xb9R+r5HQMCkhonUf0JR0HxuU6/Z
	iuN7sDeIsFzpz/y4aoI91VR7E/kp8p0hnpbCXLdGFJXRXkxlzbzE9F/BEWaSKd7BBFlZIA==
X-Gm-Gg: AYBFou2LDyi0R3JbOA0LDoEeFuz++Al04iGODfLJGJjOXYUTrVmTk1crycKK/LTvYUj
	pQHRPw5TENGpYPBhXUukXskL5iyagr1DjpRkP3AucU9fCKxxil1vxNwsZZkWHZj3QJvXsAgoMUP
	XA3c7SaklklxTPr8pWEmLmow45PF8LocHvdLrWq3AndpsqJH9gHpKbQkcAVnq4amRV9cHyFwy5e
	qztBaOUBMcQlG+eHV/2NBIn0ITZpjLW4dOf8DB9MZF/n9axgLfdoMtijmTTvAIqK5+f45SR+hYj
	S72dsofhTEx69z5VPm4Htb66RepdI48C9E/5XFlBHqlqSj1A9JSnifrc412QpZsmuHxnRhiRUcU
	v2jRvwnxwCp2eLNDpblq0xsZD6P0xy9fQzyCtgZGMvPCKfXfj4ei2asOwhZHG4THi+w/4AjWnHr
	GWZG3e+dM4dea3IN0idIrtU4RkQu4lCsvjW4V3S1hSEKuyAbl6HpmzHB47fQGs85w1GW4nHtvMT
	scfwmLAbItmVODvO67ycP9spTdZ/YyYPnCdQJd3c6L/SWbHE7iM29bkZQjoIzUdvnHU65tpcCxc
	tVhMfmBkzIln/FVt6QzOqqMEtkJoQVlBpBXeUeagR0Ve2Z6tmoFDrcBpRqbVpejA81t6hAD28W4
	=
X-Received: by 2002:a05:6000:46d4:b0:48d:f9dd:e3b9 with SMTP id ffacd0b85a97d-48e07fb2acdmr8466980f8f.17.1792365358372;
        Sun, 18 Oct 2026 16:15:58 -0700 (PDT)
Received: from localhost.localdomain ([102.88.166.203])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd4e7889sm19432309f8f.24.2026.10.18.16.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 16:15:57 -0700 (PDT)
From: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
To: outreachy@lists.linux.dev
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Okhuomon Ajayi <okhuomonajayi54@gmail.com>
Subject: [PATCH] staging: octeon: remove unused cvm_oct_transmit_qos declaration
Date: Mon, 19 Oct 2026 00:15:38 +0100
Message-ID: <20261018231538.74139-1-okhuomonajayi54@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The cvm_oct_transmit_qos() function was removed by commit
6568a2343639 ("Staging: Octeon Ethernet: Remove unused code."),
but its declaration in ethernet-tx.h was left behind.

Remove the unused declaration.

Signed-off-by: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.h b/drivers/staging/octeon/ethernet-tx.h
index b03d56b0d2b6..498a5d68407d 100644
--- a/drivers/staging/octeon/ethernet-tx.h
+++ b/drivers/staging/octeon/ethernet-tx.h
@@ -7,8 +7,6 @@
 
 netdev_tx_t cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev);
 netdev_tx_t cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev);
-int cvm_oct_transmit_qos(struct net_device *dev, void *work_queue_entry,
-			 int do_free, int qos);
 int cvm_oct_tx_initialize(struct platform_device *pdev);
 void cvm_oct_tx_shutdown(void);
 void cvm_oct_tx_shutdown_dev(struct net_device *dev);
-- 
2.43.0

