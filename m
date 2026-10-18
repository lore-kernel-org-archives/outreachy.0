Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2383D5244
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 22:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792363369; cv=none; b=oZdvNJUIEh5pWftCR6xrZjFKlJSpBmEqpWF8SmOit6EpC2fZkecnKPnoYE3H8/wX+QZud5o+LbSvdr9yKh7JNl388J6DlMpeb4ULnJvVOipIj8ISJy0pZLwLmEAsnqev78RpCXNx/AjLyg8+BPw36nGUowP0NsmqX8mE71XGkCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792363369; c=relaxed/simple;
	bh=LLL8YnAyUQxPSK7+xdsfZLm9pB6HUgKQPfbKvkRhwDA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OYJcwDespMsIWj6226mZp7THjThBVE8M1AIfx2Ddtfg5rAuTpqihCMIYQWT1EwkWHRvFCZkwklNHs4IsiBvF9TGuvDw0/mZ5wNgaY3x96/Fvx2cRIwapuUmxNEHrYcpAl2au/yjtaT9dD7Iqwd5lYSgS2XexpWyL/ioOMgoUS4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PdyMfspR; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PdyMfspR"
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-49d0da752ffso11847485e9.3
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 15:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792363366; x=1792968166; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=m1qlXxPCKnyZBMqZS+UI2tKQ3hqkztlpBKb9IkUQpHc=;
        b=PdyMfspRfTrtapIRztgcZ2MR21XQDuMZ/pRFA9NSiMJi6fNIAJffmc2nafSAYQb1KS
         KYCZN9/Ndu0a4hXzEuAXk1AnB//eqWZuGjuLUS3103g1s77fbe3zULSZsjzY/d/ub1DF
         6bQA13Mk6ry6j1z3kWYwiNbzg78PDdI6jNpBNLarXc0rvsChxwtibIk5e1wh2fbEGkBc
         ssRwyMKoqFIpP+sA++mMgeaqaobn9H+z92yh/54S9ChnOo24AeHPVVaCdI8OjUjTC4y1
         n6CXtO85/n3Ac5YnNcHVzrRDhnWlecuJijFEcXFwAeUFIgZxbedj57OY334YKFHfiWa/
         DjMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792363366; x=1792968166;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=m1qlXxPCKnyZBMqZS+UI2tKQ3hqkztlpBKb9IkUQpHc=;
        b=12LCHCQ+rRmI0gCxpZioYB+SsSdprhGwcIhIdxOleMim3EfR+2tYuWe+gj2tlH6pm0
         umLugYNC63nhLKII2CNvaI30YayOuDf+xWOV4SwSVK2cd7+8WFjF67E9a1wOXc31x6vw
         SI1a736CGe9bAbJaLvJjLU5TxciFkcjfpSnJ+zIx93jgW7mStDDoGo1UKiHExnlgCNE5
         Hco3ZSjQQOzbbX2qWJbYEPhHP2gwb/gTJt3D3Hk8sCpB3ayaX20U1nT0wPuLWKK4rKgn
         MYbybGEnDGMnu/0V626iF0VaYJYUfsj45KQEA0f4wYkwYEmpa7fOniBspFLEi9kONnP6
         sUsg==
X-Gm-Message-State: AFq9FYIf2MVvobrz534Kz7bgLq7xmJ7Gj7FOCXGJqDnRfAfTH4gkxC/+
	VRMksTXeKG7aYPZ/eJrqgN0qyobwDFxFz31fi9/qfgCt7AbVjvK2MT2oLSLwPIKbF3K9Gw==
X-Gm-Gg: AYBFou2qxRsR9qrvkFpwKPpMpthIjN9V4sCQ3nlEEv+lEGj4N2RYeNpj2mcDMHgJ8sC
	oY+IzboQs9uUIXf6W375PV6yoqYYKxWYXP/7Vt7zxRdhssUBMiwRMP6pKZWoCLKHVbHNOXsVd59
	qsCV9hb56jlbUF3M4o9dNc1xDwpxIy/kJlZXTg0VjN+M4p7dVLd3AFendfUUjRg32oMNBuJdp1a
	6Ig3+ZPM7WxVwU3eKZstW0tAWgsu7eRCCkun7injoF4hRFeLAFuJQqxNo4bQn/mzUtRe/dH3EJS
	uD3XGNygrdUo3YTGX2uAY7vS9ky6MqDzt84Y3jdUkAZ4tYxDy1+X+4A8PoCCle2bqdu/s2jxyuv
	nW0b7G9Hq3OFjBW9oTG8TEljxwm1+HarjdKkkRlKIwhxStPUt0WE26QsNJwHXpUGUT6ZLJowGhq
	HTp6zml352HRMciJ1tLqjZOqv7b8Q8qWpeE0dEFqPKik5hwSC0APMJW3zDJHZNWI0LflccC482e
	SvqnDA7AWUe4BqUXFo8ZJGZQJDdTd0bEr9LM9yEgvQ+sM13mF79ltWa/C/EoQuKnVy+iVP5dOAG
	F96kjh4ccNz08UJT4AdQ56ab8xftYIJQOpD7zlYvENnlE8AFMgW/ddSC/ISK8dMyW+jzmPiW
X-Received: by 2002:a05:600c:4f82:b0:4a1:df52:3e36 with SMTP id 5b1f17b1804b1-4a1df523fa5mr94086665e9.27.1792363366271;
        Sun, 18 Oct 2026 15:42:46 -0700 (PDT)
Received: from localhost.localdomain ([102.88.166.8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1df164777sm140396685e9.5.2026.10.18.15.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 15:42:45 -0700 (PDT)
From: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
To: outreachy@lists.linux.dev
Cc: Viresh Kumar <vireshk@kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Okhuomon Ajayi <okhuomonajayi54@gmail.com>
Subject: [PATCH] staging: greybus: fw-management: fix argument alignment
Date: Sun, 18 Oct 2026 23:42:41 +0100
Message-ID: <20261018224241.46011-1-okhuomonajayi54@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align the arguments of the fw_mgmt_load_and_validate_operation()
call with the opening parenthesis and split them across separate
lines to avoid an overly long line.

CHECK: Alignment should match open parenthesis

Signed-off-by: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
---
 drivers/staging/greybus/fw-management.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/fw-management.c b/drivers/staging/greybus/fw-management.c
index 5d01da6b6eb9..e20e9136c106 100644
--- a/drivers/staging/greybus/fw-management.c
+++ b/drivers/staging/greybus/fw-management.c
@@ -434,7 +434,8 @@ static int fw_mgmt_ioctl(struct fw_mgmt *fw_mgmt, unsigned int cmd,
 			return -EFAULT;
 
 		ret = fw_mgmt_load_and_validate_operation(fw_mgmt,
-				intf_load.load_method, intf_load.firmware_tag);
+							  intf_load.load_method,
+							  intf_load.firmware_tag);
 		if (ret)
 			return ret;
 
-- 
2.43.0

