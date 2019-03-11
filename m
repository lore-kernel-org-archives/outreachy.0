X-GM-THRID: 6667148493451165696
X-Received: by 2002:ac8:2c29:: with SMTP id d38mr19108594qta.17.1552316489658;
        Mon, 11 Mar 2019 08:01:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b55:: with SMTP id d21ls4533707qvc.2.gmail; Mon, 11 Mar
 2019 08:01:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxPidPEMqrCUc1XoHda7zm9vHJJ2ZZZL6RiajP7f8C5WVeM7vsNbOwIU3YccPiF3ZDliK7h
X-Received: by 2002:a0c:9de5:: with SMTP id p37mr19211691qvf.50.1552316489042;
        Mon, 11 Mar 2019 08:01:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552316489; cv=none;
        d=google.com; s=arc-20160816;
        b=d2XqpLoMvWzLSOVwhCR5hRIfueMfSSey+NPRwXwU7b6d8JDYXXo2aUkeabEQjkDzAs
         ghIRC/m5E3BOIPGmAk52Oclp5WZcTu96jEIrLUq5cpG8grjqWxpRopCsdopZYJ3tGxfh
         EEZLWnYDuVv8yQG9S5YhZR4k6d5eX3S3bfmo9LPk1ubFF0jPB81aolZkL4HoIvfUTSUo
         JI/M+7BMPipAWT6N7iVHL7i/69rpmZvyKQC384muYAlSEhZagj+9nGMeva3KD9Yej7KH
         T8dXzgbiBB5KyxEETq9MEZOyYlp06rz3YBfayGmOsWlv2JosowRtLhEdZ163nS6eQVhW
         Aqdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=3rLX1qOgwV/RjVcMTzxvVEPOx908luZmISmqodFccyk=;
        b=FU9uLKovRPiOy5iGvNhRFMYi9utZDVNRj8WPdwe0c8wLGc6f3avAolDlIOBMSkeqZ9
         1UuFaJArzJ2jjBOfZFf03GqrJW7+OB7tHDraW342Gn2W1OGYbdSDwVbTwHycu9ZgMYge
         cpMNPHSId7a3sExMToB8yLPRlg82hbWVZUZ0VdTIWQzm343eAWW7+pz7foWeI6bnSLoS
         duXe0NciBEW6T9PARtGREfWv/xFdBlIunz9mO4rUmFIIzSGkvELd6sUgZSVxY6ktqNd+
         7BYNyjOCBJ5p61rRFrPXpJE+9k0pKBCjLluLq9iY05Xd9+ilH2bykHciv71pqVXolpqp
         bz5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o+wQWYfi;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a62si276891qkf.1.2019.03.11.08.01.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:01:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o+wQWYfi;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id m2so4240130pgl.5
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3rLX1qOgwV/RjVcMTzxvVEPOx908luZmISmqodFccyk=;
        b=o+wQWYfin3YCZjEzde5qHySkfzJFplD5xbmg50cOtKocqEmhhycFi8IOA5qiuURXMb
         z/+x2d++x0IG/sKHJERPSMoUd3QhPolLyty08KbmRUy3z6t79vCswLj7OUel5v2OiwEt
         EQe7G4aS760f7NrnL2eIH3uQjEYRkfL5v9lPyV4x8tepUelSG00hkH8uRt0WwFeJbSNo
         tWIebOMbJ7n+vwv10w7oYJNoLdKHdCTs90Ic4sqNkyTW6rp8fg+coIWLc/RYlFE4ugG7
         O2Zr/5W0Y+GmMQNcCcERUUtMwupalxgV84fUwHpEwlqWVo6YHN8z3/4EzelLEletk1ZR
         zajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=3rLX1qOgwV/RjVcMTzxvVEPOx908luZmISmqodFccyk=;
        b=PuTeN2LlyIR8jmIyU6tA6aSuxvHDf3e1hm5+Hhb7ZUp7gGWi6YrOgMFSo8rjCs9PKM
         PF5Kr64CK+HJe0+WJqls82/6FkEm09WL5jjeX35Jr8brenLcsQ/iA9UGHU5M09S7hTdO
         ypErEErycRr/s+jRyhm7HU7S3nHFaoWm4WAwoMh8O6RyfEhNsCNVkRlaw1FicIhi75/o
         2qAvYzn2jYaakavHtktqZbslQmhKv7Om6YSg3aA2SSn2acSMo3hcsTeh0NNXHxHxVqSz
         zmW0/zxFfQbZzE0gi+ex6Dbwm4DcHq93+6X95+GfBMuqJZbC/TQeOCLIzFmceSohiggH
         4WJQ==
X-Gm-Message-State: APjAAAXBoyPP+BCcGYxKBzzDqHsPz3jfKyH1GZ/YFVWlAnRBCV3pR+4X
	IfbOB9k5D1qKbLosWg+OO4o=
X-Received: by 2002:aa7:9286:: with SMTP id j6mr33055595pfa.47.1552316488221;
        Mon, 11 Mar 2019 08:01:28 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id u14sm8434305pfm.66.2019.03.11.08.01.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Mar 2019 08:01:27 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 2/5] Staging: most: i2c: Replace '--help--' in Kconfig
Date: Mon, 11 Mar 2019 08:01:05 -0700
Message-Id: <20190311150108.4717-3-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190311150108.4717-1-etsai042@gmail.com>
References: <20190311150108.4717-1-etsai042@gmail.com>

Replace '--help--' with 'help' to silence checkpatch.pl warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/i2c/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/i2c/Kconfig b/drivers/staging/most/i2c/Kconfig
index 79d0ff27f56d..f723f99711bd 100644
--- a/drivers/staging/most/i2c/Kconfig
+++ b/drivers/staging/most/i2c/Kconfig
@@ -5,7 +5,7 @@
 config MOST_I2C
 	tristate "I2C"
 	depends on I2C
-	---help---
+	help
 	  Say Y here if you want to connect via I2C to network tranceiver.
 
 	  To compile this driver as a module, choose M here: the
-- 
2.11.0


