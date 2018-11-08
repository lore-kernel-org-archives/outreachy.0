X-GM-THRID: 6621600657638948864
X-Received: by 2002:a1c:605:: with SMTP id 5-v6mr3007wmg.13.1541711543751;
        Thu, 08 Nov 2018 13:12:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:da01:: with SMTP id r1-v6ls514463wmg.24.gmail; Thu, 08
 Nov 2018 13:12:21 -0800 (PST)
X-Google-Smtp-Source: AJdET5fV5F04oiz4GX/7KyZTZJQBescuUbRfUXxGkiECZ5XZBRJMVpv6aQuFx2UxzjC6kR+CArSl
X-Received: by 2002:a1c:e482:: with SMTP id b124-v6mr5102wmh.22.1541711541203;
        Thu, 08 Nov 2018 13:12:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541711541; cv=none;
        d=google.com; s=arc-20160816;
        b=PbXe4TmWU1g5y8C/v/T3p32DE+JZ7EVkaPlThBmcnBtNyFOZyqzIA+qva9/ZISLPqs
         zQrn8D7upDVCgi4/VkTI+Xnej+2T2J6smmGALV+JeBIgPHwO+iEfI4N6+1oR/jWR0emc
         6P+RFYqkdGlOP2WwfOKKLa9otKRVK2sF4c4ngyor/VzbqQ1nUTZx/b8l+T47v8RxU6fK
         LzjmdSLK6KAr7FaFLZLZy9O/ykA/s83e47wJxoNmEXJ+xNjUPiXWgznpC25pkd//9hl+
         SS1CB5gM9OMcS6rlAFsutKciDI/XRe/hbcGt/vRjQ+CxY2i8HwZbVEW4UNgk7W2m0OVg
         xbzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=x3hI48tJqX8vlM5wFb8bXH6NqObDdWDmXEE81w/DoqM=;
        b=mz7xW8K1ACBQZi8kPGDAezoyDIHcAvGZLfZ7Fd1VQzRP5OYpVLhpNH+KFi2tL1O8hw
         LG9nMwUsaJXDSXX0wV5u8TWhnFU2xEsG/sKcX++JHk73uSw0PlYkPeaQZdIimEy6up4Q
         7DztAYV8m/6CBN0d3oGrbdfl24QnKPRzlhcywDFxb1q3fbnyYsmAOY84FWARMrIBv5Q8
         fPMy9gDQfnn9lDaixIKIZi1wiI7hPSqf1CSaYKw2ZIR4cBEZjbg81RtvIRPgpt+DUwB9
         jk6TztTGe/HrXjB6d8HIY+/9tPQrH7c5Fwfw84pzOVlrchcp1DvMtApxeTjX13tFXuSQ
         FRmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AAg4q+tn;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com. [2a00:1450:4864:20::333])
        by gmr-mx.google.com with ESMTPS id i190-v6si129197wme.4.2018.11.08.13.12.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 13:12:21 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) client-ip=2a00:1450:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AAg4q+tn;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x333.google.com with SMTP id w7-v6so108705wmc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Nov 2018 13:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=x3hI48tJqX8vlM5wFb8bXH6NqObDdWDmXEE81w/DoqM=;
        b=AAg4q+tn+tR4ugTeNkseBsW2uEYZddg83UODBQ2+Y475O/33K1svyfPxL5oZY1BmBO
         WyBxsTdYWMDyGqBQkc7nWn8PPRGeaPe8n2Awv1ScyA8ccKcUq2qus0rD9uKejNZ2HADj
         BxVwuwic3yEFtlw8Zys9ZA9JqlGlnzeNF/+vOc+oMQgbG2eqDAc4miEunX/WY3HVsXQd
         p2eldDK3s0Q1bVL0zuA0sTIdU8UjTW5/JD/eqCknq4qJmxYVf2ZQkrGbWDLK78Hjsstm
         9UFbJ6Fhg3GadP3092GjKeTVpKzWKpBXBSFTDgwcMfmUujQtOUXGL/pa6TalG1z5lSiH
         HsCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=x3hI48tJqX8vlM5wFb8bXH6NqObDdWDmXEE81w/DoqM=;
        b=bjzK4FesBzvWHNqRTgfhcMkP7wUw/XByqW4oArNr12aAk6/RWVGmjZgM6ShDZqWx/T
         WPsZHnK8pz2njctYGXWn1XSpqc5dEaF27tnu+S1CCoRsMZpKdGFLGUwdyeCOhYM60A7W
         ZEEfJnrC5alGW9QjPmqv/ClNY5JjBxo4u2bXD2SQwfcOXQOLf3y98CLqkyzRvVpWQ66H
         U2VWrwrvdK342U6E3Po08oAnayLzaRYw52z7LoYkaixnrC+YmdHwdhknBKeFnvdfuM9T
         kYcOUXqh9xbXPRpnljDfW6yV3k49WWgu4duXlCQ5ksKDprhAzG3KlBy0CgZsfwhC/6V9
         uGmA==
X-Gm-Message-State: AGRZ1gJPs3Y/PR1DI5ZyF/p5dK8ks/02CGtODsjo716hYIL9aojsRsul
	mkVpuGeW7uKhZVRA+3S1Og==
X-Received: by 2002:a1c:b513:: with SMTP id e19-v6mr2450484wmf.114.1541711540496;
        Thu, 08 Nov 2018 13:12:20 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.gmail.com with ESMTPSA id k4sm7294715wrx.91.2018.11.08.13.12.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 08 Nov 2018 13:12:19 -0800 (PST)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com,
	Irenge Jules Bashizi <jbi.octave@gmail.com>
Subject: [PATCH] staging: davinci_vpfe: Change to !format
Date: Thu,  8 Nov 2018 21:12:05 +0000
Message-Id: <20181108211205.26989-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.2

Change from if(format==NULL) to if(!format) to remove checkpatch warning

Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 81b369b28a47..ccb59fd653c9 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1466,7 +1466,7 @@ ipipe_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
 	struct v4l2_mbus_framefmt *format;
 
 	format = __ipipe_get_format(ipipe, cfg, fmt->pad, fmt->which);
-	if (format == NULL)
+	if (!format)
 		return -EINVAL;
 
 	ipipe_try_format(ipipe, cfg, fmt->pad, &fmt->format, fmt->which);
-- 
2.17.2


