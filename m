Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F282963C7
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 12:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bJKfa+ni"
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-53df747cfe5so5987728a12.2
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 05:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698583763; x=1699188563; darn=lists.linux.dev;
        h=content-transfer-encoding:signed-off-by:mime-version:message-id
         :date:subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kvGslAkSO5/GVCAS8NrwRFkgz5ZQQL9hkBl+qGy12PE=;
        b=bJKfa+nieR1xNCAo9pNudMF4UAnNVa3SgofSSq9Uae7SGLBmaHpPZQ6sd2tU9k6WAc
         FZ6dBOAVMVzOIBB7EzyMiF+4Uau7TfH1dje6YRwLurva9nc1pZVrwUruSyu7+L5Fptns
         ZlCn614Kb4rJmB03XD0KFYn2sGpiv4SlNCG4D2dDoU6/grIECzguZJJY0WaZR1YbQKRW
         URX8YlPHz8974aIXeMtUa3P1EH36RDyC7YeyZ/pFp3QoA7aFtkGjmUyPKgwTgx72IiSe
         I0ft1u1vcvUvlmZ2jTlFdOAH9T2QIHvj4aerGrDJ8V+AHzgd5dPNmAnGkZSxapP/Xa5N
         O7Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698583763; x=1699188563;
        h=content-transfer-encoding:signed-off-by:mime-version:message-id
         :date:subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kvGslAkSO5/GVCAS8NrwRFkgz5ZQQL9hkBl+qGy12PE=;
        b=AnIxP56A/G1tbtzyXi00/hj34b1SMfHNdFzTPX6knsRLFdPWXevX+l3AJsyonomOzd
         VFSCYYP6qR0mxmWCPBfYEHVtRi+lshj2QNa3chdccPJtyh0mwacFK1N/hDXIon+Qga0o
         mWPmn7ofUxqa+eKZSAQ1GY8y0p1x6UCJckUHpzCqAbuj/+d/6YqoVn2GBkZdN7Z4JP7J
         r68d7bwQ+r8kx4HufXs9mc75av1eY1M+CaxqRi3ji9OXaqG1Xu+D5/jUywQ62VrWKtDi
         mx+VzS2X7LavL4M8Nz2yo9QDsDcDDWVkRAILddHPGc1GxcwkE9vkh0HRZFKajueofD4c
         Tkpw==
X-Gm-Message-State: AOJu0YxS8GnabICRz/jMQuadqQXLYixPu75pnA5Ldh3c9bMV/slcvrrN
	vhj5UgG8M1zvdBpLw7Tkwm0=
X-Google-Smtp-Source: AGHT+IHGOaf3Z4W+iL3P/rYZB3cS12F5b2UNxlTeF+sshlebuqeyuLy5zAUiNTd0ZuL9aB1nWlcPbA==
X-Received: by 2002:a17:907:720e:b0:9bd:c592:e0ce with SMTP id dr14-20020a170907720e00b009bdc592e0cemr6100753ejc.51.1698583762729;
        Sun, 29 Oct 2023 05:49:22 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id m8-20020a170906234800b0099cce6f7d50sm4270348eja.64.2023.10.29.05.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 05:49:22 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH]: Remove multiple blank lines
Date: Sun, 29 Oct 2023 12:49:00 +0000
Message-Id: <20231029124900.2674-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
Content-Transfer-Encoding: 8bit

This patch removes multiple consecutive blank lines from the code. It improves code readability and adheres to coding style guidelines.
---
 drivers/staging/vt6655/rxtx.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6655/rxtx.h b/drivers/staging/vt6655/rxtx.h
index a67757c9bb5c..be1e5180d57b 100644
--- a/drivers/staging/vt6655/rxtx.h
+++ b/drivers/staging/vt6655/rxtx.h
@@ -19,7 +19,6 @@
 #define DEFAULT_MSDU_LIFETIME_RES_64us	8000 /* 64us */
 #define DEFAULT_MGN_LIFETIME_RES_64us	125  /* 64us */
 
-
 /*---------------------  Export Definitions -------------------------*/
 
 /*---------------------  Export Variables  --------------------------*/
-- 
2.25.1

