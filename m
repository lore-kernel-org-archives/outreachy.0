Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 915BD37A4AB
	for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 15:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792164200; cv=none; b=VeUj3qvuEC9WPLKLSn00lt2ue1vuAkbp2soZ2XIxMwybD03ZxSu2hR/1bn4G1I0QQTDynHuGWofLni2TtPOgUyddIapQEph8ORpVlyujZhLkcBgWSY5Oe6haScV5jn39dJ7i6QnOExN0OkcymcvOZoP3gKJwVP4WtvPzhVJv+fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792164200; c=relaxed/simple;
	bh=fW9MVBmxxIbTmNAqWz5VG8OkZbPNpl4JZbujQBcKuFw=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=V1UZWHBvHskS7AiWn+tzmfVyaTSsqohsGGvta3AId9Xx6mAmaum2othtMbvNnz6BHbgwp1Wvy7xOeUNR+8J8C2zzZ7PauCHdjyrDbdLS4NJZZh1THMybnsVijUYuro8lbhsxXary/3t8WPRUcNcejI9RI8jDS+Qo6zurq+6Z0C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bhxXIqrR; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bhxXIqrR"
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4a172eb31f0so790775e9.1
        for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 08:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792164197; x=1792768997; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fW9MVBmxxIbTmNAqWz5VG8OkZbPNpl4JZbujQBcKuFw=;
        b=bhxXIqrRAE1BDJBFnRWSJWVsmWRbJ5Sd9WRZVYv6mMnNJKItK3HFyUiAIZi11ob82R
         mSRzunY4Kvn7OCE4u3FnWpmjJ48vmxzxjR8o/fyEmqqsLqqqlBaKOyGdefFyWPgFbcYp
         XbyGLKRaHnrprKkxZMUE9hBeQXfl1r9c+qwJGNaX+UVDA250TrLeo/s45tb09xJi+8IY
         DkKT56R3vuLkgWnr6wUZ1LvtLgPkHrPrsJemTK4HhGWXGNfxWlotFkoybuQzolE6BUVB
         WsI67446l/CWoP6FAsQEC+9iIPfsBf+fQsMbW5hrc+EQlfGem7Vxejc4WSo7gQyeRS7n
         v+Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792164197; x=1792768997;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=fW9MVBmxxIbTmNAqWz5VG8OkZbPNpl4JZbujQBcKuFw=;
        b=T5HPifchn/xujEoAmSCMtfwhB17t5ezFb+ll/akPl8Z20ZGoEc3rvDulFqa4UfKhQF
         4vfKt9Y/9yQMq/x8xiaoRGnLqM/CjM8942xNL06JWddYj7RRLpEgwqImNyWJS4U0EcAa
         +sej9PDsdbI0W8oMhFatAimpPw0Vnnvdlnke81P5FI4qmNnpVkSRIu7JL198u3bZQxdj
         W7PDTsEAV3tgv9jeu1K6y1CJerlwUMhvUsMQzAspD7ONXR6TFy3dTJnH2ESdyr1k83hq
         ubXQj/2JT1GeegFp0JIJNAmnq1uMULqUeaqtGp/Y70x3UWRs1ZWhnN94pjPaIVdQeFVC
         dSnw==
X-Gm-Message-State: AFq9FYKQ5ARCbUDARruORX/QvZK9xcuASyqLsfbf93DWhYmGFaWdcRw0
	pKFn8TwD2KqBVreOYl3BtFu6sAIy0qv/WC8ed5K72Z4sas3lqY/b5RyimlKn6CS5
X-Gm-Gg: AYBFou1XSGraX5cbLAgoZJDrT4OU7qMhsWUn+9w9bwSwFImnVCWzl6XtagryY3t1R/3
	NZu1CXq0qQK9AzO0PqAr5dhADYeCOEBNEu+9QKLswttwqkjNjOm6h2x1bq/80LWjiwNZJpXMdmd
	jFEhpD6PKnAuINS0ZHl45mCAb3uWVT+S+KjaCsjLvtQoRF8qZeOJd+tfg4MQt7dTF6X9bcGFdfB
	UKAcwQ5K79m2/ETs8iU0Jpl1/2bh5EP5yLLa97sLxOXZ2nSrUCYMSixogyzu5adMtKc8hXK/Vli
	x9nRMBVVUuiD1j/kbviBDtvAWRonz0pNtEWF+zksmbpRoMC823asX8sBi8D4YzsEN8diGg/VDZ7
	fejwty9399kfue5EFFvdKHFvf9sLK3wgE4oSdixnAAUh6t7i7uDVmKXyDB+yws7XIr6qZ308fZU
	3YCddQArBPnAPO1bf9hykU2K1nzMRhUVztuermDTL0op/UL3J1IpjTxgjJq5ccZRL1hG5LPgjI2
	ykZqzpbBicZG5HBTdpLm/9AJNg=
X-Received: by 2002:a05:600c:4e94:b0:4a0:1a7f:2abf with SMTP id 5b1f17b1804b1-4a1d75e3996mr3103845e9.7.1792164196584;
        Fri, 16 Oct 2026 08:23:16 -0700 (PDT)
Received: from DESKTOP-0KSTGNI.localdomain ([156.213.131.39])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1cf983b88sm51877915e9.7.2026.10.16.08.23.15
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 08:23:16 -0700 (PDT)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Subject: Re: [PATCH v2] staging: fbtft: Fix alignment in tinylcd driver
Date: Fri, 16 Oct 2026 18:22:29 +0300
Message-ID: <20261016152229.3386-1-obabitemitope765@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

Please ignore the "v2" in the subject of this patch. This is the first version I have sent to the list. I labeled it v2 by mistake, because I had sent an earlier version only to my mentor.

Sorry for the confusion.

Temitope
