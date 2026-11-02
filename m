Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.208.51
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793586553;
	b=FkUYfNuD0iCTpwQQWGVNU2IAghwaW8saxhBlOku9gtoKRkOAS/o1s1chMJiVof9GRiFz
	 aoVn6ua67EkXmhiE5k/7WjoVSem5n1AKL6xT9l/qTTh/GJi4uU3ddRbnLNj9xAFr24wmu
	 QPov8n/Qkhkm6IA87ZRL9QNrqFoo77xdKHNHW3BeOoBJ88Nm2OnvCPIM3ECXxQppYhDM7
	 2dEtnv79yAYqHcaUqOEiv30lCths4K7yMTmlcUrjIQhfTWeAiFRzLivlPzyfEjeggZcds
	 SasWsfJekz2ZCSYVMZ3OK04dgNzfzfn/JfapQPREeeAnATUecYR+BsQuOkw9ijIz7pw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793586553;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=1R/pvYOnxMShbEJj2t9cWr3dLJwjl+MKLrzd1FqSlyY=;
	b=z8zZaiyr0nWguX8pMCcGapVQ+zXoUhtWOr6ElkjhpmCh8/N6jb8paNDjorWMV0eGyAsW
	 WlFwkWbKF3OpacJvMZylnFn/Rr18dQBVRUiKl1fI4kkmYt9Ers1ro2J7GyCGCZWKRLHUD
	 5oyvfBFlNv3PqZWSZJ5j79bOtRk3hCogx6iNledO3XrUwDf8YKUhdjXaxyv6Bj0tuqZai
	 XN6ie0pxC21xSHdR21MrXpsI2Bpk0iY6eit9CDnWJEgRIP/MBU4yW2OfvM0C1Kg64MI07
	 kcmJ2jPy6NeGL32VH9sjlyRPBwXbMDpHfnatXvjc4zw6zN9hIldD7/sjFIjtfhE6GpQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=PiMEA9Ld;
	arc=none smtp.remote-ip=209.85.208.51
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D269606A327
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 02:29:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 6D269606A327
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=PiMEA9Ld
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6afbc363efeso3180743a12.3
        for <outreachy@lists.linux.dev>; Sun, 01 Nov 2026 18:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793586552; x=1794191352; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=1R/pvYOnxMShbEJj2t9cWr3dLJwjl+MKLrzd1FqSlyY=;
        b=PiMEA9LdNOvhdkV20hNpQdrPzL2VK9/1i5mUBxLHKFZ5KkR7F46F6chqu3qhdv4qAC
         0i4O7ttzMvqTdWWmkTQmqluiQJC1ck2NeRRaPTXTgSXv/cvKAHb9jBD/hQqWLIpK6vn8
         sWaVfli/ZIZQ9Zx49bKgGY7gTMTUbY10WdQys4YXWaXs7jY3uytSXT6O+cay7P0BNp4d
         Du7QzFJj3PtEAaHteZfnUCfrdCHash+O5SsrD+9LgaJ1Ne27+MzoAO/gGdPpA+SdbM8L
         fyt8gr+gL6sOLQOvH80Ivsa3xO/eQ27WHr1j71ZPdO1eqlKQD0C367u2T1Vzl1kk4BM8
         o+0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793586552; x=1794191352;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1R/pvYOnxMShbEJj2t9cWr3dLJwjl+MKLrzd1FqSlyY=;
        b=aSAVX43Rd5vlq9ce/m2XapFFJxMxhuXnBWEGAk/fcImsxYc+PSPPRlABRP9BgpZVEK
         ddo3YxOcR47Jt3Xb/p2sJVXHo4rs1qF07wzQugz/R/sqcf6RAGDAdElw9kie8Fm+KqBP
         CQk0NF+dP0X/M/1gow7IAmVkNToC29WxRNcDB3uQ5DdWguAlhGgZDhYxT60t9jxhCGoe
         HrmBDoDDpTJ5aHD5xQ53hQiTytdNVEojCYbgSF72sEvwuf0lXTyD46h9fzpjHv1dhoZ1
         k++QsNlOPehaP923Z8LqfHCUL7K7xyqPdBk84vT0ikGMQyzXRo+HKJE8Pce91aGegFyx
         ZAcA==
X-Gm-Message-State: APuU4Z/P8wqHiafqOgb1uWfVjl/eBtVzpg/R+2BptCLNoU9rF6yMrh5H
	PRk+Mwqfmqihnj4yXLizpyhaIZLq2qripl2YMY20vQ/nh1cUjH/0de3z
X-Gm-Gg: AYBFou1abSAQ90dsIjLQlrOhw0bfHHnVZcQN09m1L+cjYmSYJJ2/BcIuoclQ4BKr5cc
	OA/YzynOhR5U4eYPxLtCMYmEwq+mAU94ktFCbl4PBFHkdfClwiSp6H/9EjizfTlFsb5gYQTPToh
	ZoyzB83a65u9jSaMmSdcli7fcWEntz0MVju7kbaTaBnJJoqdqSweeTxqKJD0+fgfRmHxeOMTZe2
	+FHcsLniHVjdQf8M2BfRSENorYexL9f66U6VnBhg9qv9pXCBimhIGzLMukUzhaK1WMV3AyBPXzZ
	NEnZHTyJCqtgdq75Cg88XRbBixCZuutPdzd8ZxS8D9ue9lLVRT7xsILAoXfEFzvnS3bEvzgWsiI
	KUH9nnkixCe+yVzd4E+9NTIGPQnoPPxNA8wjA3yWfI2ozzcSVEinOY6yUog5Guy6AfKxe07LJcm
	G47ESp8qiEjxK8LE5db1GOBuMWH+0TRy8sJ6SL/1QVePqVjmBf7gOe/l7arp+F0JfMnAdtU7Rjf
	nT8yQGt7ti8/R0cf+esx4xa9Icadu82T+W8ipbg28E3Y+GcRSZvSNq0VnfPV8FhpKQ+oxWTh8dh
	KlLLbAMXZzzVe++A0jS/q5hwE9cZLYMWsdcgjNUUCc11Is/lu2k1Wce8asaevY04fHvIq3Acuw7
	1xgAyVIHz8lUuLGD4TwBxvWnzDI+/opWbUnynGwJgRRBUyCMD/ngukXf8JG0w6ZE+96Q=
X-Received: by 2002:a05:6402:90c:b0:6aa:f0e:a15f with SMTP id 4fb4d7f45d1cf-6b4d534badfmr5935492a12.38.1793586551636;
        Sun, 01 Nov 2026 18:29:11 -0800 (PST)
Received: from maria-VMware-Virtual-Platform ([182.186.37.126])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b4eca2112bsm2803078a12.32.2026.11.01.18.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 18:29:10 -0800 (PST)
From: Maria Sheikh <mariasheikh812@gmail.com>
To: outreachy@lists.linux.dev,
	gregkh@linuxfoundation.org,
	parthiban.veerasooran@microchip.com,
	christian.gromm@microchip.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Maria Sheikh <mariasheikh812@gmail.com>
Subject: [PATCH] staging: most: dim2: fix non-kernel-doc comment in errors.h
Date: Mon,  2 Nov 2026 07:28:33 +0500
Message-ID: <20261102022903.5312-1-mariasheikh812@gmail.com>
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

The comment above enum dim_errors_t starts with "/**" but it is not in
kernel-doc format, which scripts/kernel-doc -none reports as a warning.
Use a regular comment instead.

Found using scripts/kernel-doc -none

Signed-off-by: Maria Sheikh <mariasheikh812@gmail.com>
---
 drivers/staging/most/dim2/errors.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/errors.h b/drivers/staging/most/dim2/errors.h
index d707daaac3b6..af909560aa93 100644
--- a/drivers/staging/most/dim2/errors.h
+++ b/drivers/staging/most/dim2/errors.h
@@ -9,7 +9,7 @@
 #ifndef _MOST_DIM_ERRORS_H
 #define _MOST_DIM_ERRORS_H
 
-/**
+/*
  * MOST DIM errors.
  */
 enum dim_errors_t {
-- 
2.53.0

