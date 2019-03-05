X-GM-THRID: 6664844369829298176
X-Received: by 2002:a17:906:c9d2:: with SMTP id hk18mr2819112ejb.5.1551783462976;
        Tue, 05 Mar 2019 02:57:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8b8a:: with SMTP id m10ls5579867edm.7.gmail; Tue, 05 Mar
 2019 02:57:42 -0800 (PST)
X-Google-Smtp-Source: APXvYqwJ8b+eKTYHW5nXSF0Teic8ZLnCw1uAveDG04xzpuQSqGHuSXPbnnNn2UYjkrsoob95ukbf
X-Received: by 2002:a50:8ed8:: with SMTP id x24mr3225117edx.10.1551783462186;
        Tue, 05 Mar 2019 02:57:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551783462; cv=none;
        d=google.com; s=arc-20160816;
        b=KsuL2VwgQZ+uNzk96WFMg7WpEPE0/RtdT3zoQto6nqQeX4Ql5/aUxd2UYLboGXNu5p
         ZReqTLqs8PtsY6Ni4Tie9Gej9MsPY5BSjumxP3zWwwiFcmFctHC03QbeSBOVPW6XjrjL
         QV7IW3Yg4r7AkJXcPe7D6NY/QKsq17xoFkBunTVxYAcIrzH63iL6+5hfCZY6A2TnapiQ
         wLOi/oOeJgjm7RBKsO7GIF3jZPamH0osj1Lb4+57BC4CdvlScmPP6P6dmHOLtatOrRvJ
         yMFAlCQnucb5qo7UFvAUpR6iDcvj5TxqU2R6nuCkJs7W4inoqrFsECh370fHBwVwpWlj
         7Bvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=l7UkoQNcxzjFWMAilAESW7WjqQD7mP8k2ZmlbiG4z58=;
        b=m/OFALeauOQiOoaLv5eZKf1UCAd7NhlOqEvLMPiWG2UQAlKrdsqjktapSjLB1fE87W
         KzwpyN+uMt/tPnr8hEQKBaDrGTd5jnSSy0vCNMAW+DndVogxjOKWTAa3i3QCh1bwQx1Z
         x0NEkzOgZ/qBcihZFxKHyJzrZAkAVlJ4QGTqDtrlwud457wY0Xr4NZuROU6vo9IoiK6m
         IOPXGwzEHts+KtiJc7gV18CH7ckQpuoEQ+NpBsMiD6J75t9XGqpzG4EypyMON8eZAjv1
         6YVco6FhdwnVxc0us+QDGHPF054tpGaBQXshtvlR/Z+Z/MPcERfsy9eLhQ/vQB5Oh6Xk
         0LIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oN24mEYk;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id c7si321975ejx.1.2019.03.05.02.57.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 02:57:42 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oN24mEYk;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x435.google.com with SMTP id r5so8925469wrg.9
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 02:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=l7UkoQNcxzjFWMAilAESW7WjqQD7mP8k2ZmlbiG4z58=;
        b=oN24mEYkS2qpOfjIyChoOhv9MM0vIq3GOGVU8kdv/LCNYWkAIMKT5dvmJPyg1rRRml
         DyiHx/icuPCmZ13D/+osH3pePszmt8V6PE+JquK3yvWGvinSSeZcIW5MdPohva2pYsKo
         i9q0Rj0Xvc2vZu4gRKOewsIQiQHHcNKL50Oprvwy+cd6MT+gbA2A8+4bMQwRuaOx8Kp8
         LdpKP7Pk89EGL/zScK0HeAFXevK0Nr3hVVvfiJe2W+Ny57luikHwpqcndsIJIpxLT5g6
         N4AEFyPda3GSj+rxR0zUmbgy0YzxjfQObr696uu9vYkVL1K0fBoNk8PnCgJmWoF0y3Uf
         kl0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=l7UkoQNcxzjFWMAilAESW7WjqQD7mP8k2ZmlbiG4z58=;
        b=t98my7kLhZKmJ9YuBnf17JIaC0+3l6ncxkbX1skTxIfciMwdMkpWnxAkeHVwN7XoWZ
         1PGfTUBOx/xQFcNJqzdmFcfkto6H9mLlBkfdUTQO5uSh5gmftPuXVl5pOYqEjVFv7HSo
         wU/RePwBKVbo8fe106t+9LZXuVXaJ6Vf5CBLCUtJ3BivRvuxuYiGyGzd63KGE9OaMzUU
         1YcfWnQKoRgVnk1V7dw6V/E2IC7ne9YLEd0gZ6FQIzQLz8SsYu9a/uc6g/3kYZaXXcjg
         KItFs/IKCAaAh8aBIH5pAoh9Iq+Yvt6IvOqc+ana3xyxEMNr3Ix35kPzS9F1VwWcXja5
         HwfQ==
X-Gm-Message-State: APjAAAXOcTZQUuECCKl0ZBiuj1tE7qBhuK460eWJbjcsUTobfGFrFgvJ
	Xu9p+uGZZwBPy2C/hjnS5NlHUyt9
X-Received: by 2002:a5d:6641:: with SMTP id f1mr16171483wrw.279.1551783461608;
        Tue, 05 Mar 2019 02:57:41 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id e7sm13418278wrw.35.2019.03.05.02.57.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 02:57:40 -0800 (PST)
Date: Tue, 5 Mar 2019 12:57:39 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: iio: Line over 80 characters
Message-ID: <20190305105739.GA15583@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix line over 80 characters, warning by checkpatch

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---

Changes in v2:
-fix wrong split of line

 drivers/staging/iio/addac/adt7316.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 6f7891b..5e5d3d9 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -2155,7 +2155,8 @@ int adt7316_probe(struct device *dev, struct adt7316_bus *bus,
 	else
 		chip->dac_bits = 8;
 
-	chip->ldac_pin = devm_gpiod_get_optional(dev, "adi,ldac", GPIOD_OUT_LOW);
+	chip->ldac_pin = devm_gpiod_get_optional(dev, "adi,ldac",
+						GPIOD_OUT_LOW);
 	if (IS_ERR(chip->ldac_pin)) {
 		ret = PTR_ERR(chip->ldac_pin);
 		dev_err(dev, "Failed to request ldac GPIO: %d\n", ret);
-- 
2.7.4


