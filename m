Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC6965E
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 10:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WeTa5xRS"
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-9d2e7726d5bso49104766b.0
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 03:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698576501; x=1699181301; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qcIE7kVrVmLZ6pZP3xiLvchNa38mGFRB9NSmQcU4aMk=;
        b=WeTa5xRSwTPLWp5XFH8fhgMzNY5f0CdEyL4FevYvu19U67htvX1POjdy6FZAXtvaSg
         2znLEW3sVmQP0FtSulnT2dsiEi3OUfkJDsKDE5ZVjFcG3xHcEQXat830+djVqf1MZJrQ
         /CQB+PNv6mpkp2UME+E5VyyiBoH4qWCz+UxUxKj92jLW/lh7pfmcaoLupwfeXdRdUpll
         Z0f2ONQcRCLB793W7c7C3PawfWqPKIb6ffFqRXC69E95XFxZLSZz+XJ4PGnHtXa79kc+
         mpg1OMfkV8drxxMga/mXPHZdCom4jfzWwZv4xK3C4wmmRStOx0jH1TU0fYoGng/H8Cy9
         5TQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698576501; x=1699181301;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qcIE7kVrVmLZ6pZP3xiLvchNa38mGFRB9NSmQcU4aMk=;
        b=T4e4Bn6v0bV/X/CBJQdoIhrsBhpb31BbNR7lTZRvfWBHM2z9fcs77+Bn5O70HuKOxp
         ZQJNANipB1r6osxoxG0O2pcCShB8428990BzifPTs00dUNwz2cRQ2eqOWF+HRAvkI39H
         9lM2mvKOOpxiZCoEzAqRciISerh8HN9bxR6JYxLzhcGGe5H5KQVklaoNf0sKstSYy9k0
         wpT0Yn/W7rAo5HDHxToagLpvF6XAxHEtrlUhpEc7ngtW+UxKaCjMy3qmfgiV/Eetl1Lm
         NXDOAQXomK76it4FVLlruGiQ4ZdT6touQKBDhLDO67JvLaYsRoY38dnc0wlqplewGeHF
         k9aA==
X-Gm-Message-State: AOJu0YwrEp2KFEwm0Z+eXraSJVJNdx4VLDe+FeFLkEXsjWsjVluxX8+x
	hM4U6aCLF9A0UxIk9Iw1iFo=
X-Google-Smtp-Source: AGHT+IHCgQ/J8f93Fc6rrzbF7HlNsQPUHQjs1M1G5m+COur+ZsSWqXdoRcFeNTBwezB+VST6txUqHA==
X-Received: by 2002:a17:907:96a5:b0:9be:4eb8:5b1e with SMTP id hd37-20020a17090796a500b009be4eb85b1emr6242941ejc.59.1698576500729;
        Sun, 29 Oct 2023 03:48:20 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id k21-20020a1709065fd500b009c5c5c2c59csm4186116ejv.149.2023.10.29.03.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 03:48:20 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
Date: Sun, 29 Oct 2023 09:47:13 +0000
Message-Id: <20231029094713.18818-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix multiple blank lines warning
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

