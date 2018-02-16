X-GM-THRID: 6523279529594585088
X-Received: by 10.55.23.165 with SMTP id 37mr5373585qkx.18.1518819371957;
        Fri, 16 Feb 2018 14:16:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.33.138 with SMTP id f10ls487701qki.9.gmail; Fri, 16 Feb
 2018 14:16:10 -0800 (PST)
X-Google-Smtp-Source: AH8x2279rUstnnNDkfO40HXsqN16JLc51YTHgOTwoBfhUgGPl5IidQJkNV4mB+IJFVmP2CPKB35S
X-Received: by 10.55.149.69 with SMTP id x66mr5561852qkd.33.1518819370914;
        Fri, 16 Feb 2018 14:16:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518819370; cv=none;
        d=google.com; s=arc-20160816;
        b=w9lpOt0enGN3tT8zxtTh0YX51go0RogMQwVsUigc0MeCV0lXh1wRnC4QAZP/JC0dtp
         s9thZ15E3L+mbUQJhAO1zPxh7kSLa04PQWxDgViJ2bhMcjaMbg0nrsnrQRU7pWVUEhd0
         PTZymsLg7TGDH8OtrITQbREZaGK7qY/shgVqxlsedkLnzVj6BUMgBbai9n7qPXkuFnNq
         2dO7UFDy0fk3IgGTMpW9aYAWI3X8qzi4/81Y3gQ3Y5kVKfSCrDN5uk5IukUqzcVHFe3K
         DQMwiSE69S84nEA8UGIMoQcuAAWaYRPpUxVohGOp2sER4vnSD2yj8M9srxdTGjz+ZmSS
         99Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=AyFuFO3KzGerAxHjFn0Xwye9l9mLchdQShGBaYVAeY0=;
        b=Hhi77wmS8GdWsMY+DUgomIL6RD9l8UnkF96sfHC28U59KMTK3Q0dZ5+BZF2lL1AmWB
         IQVdKy7HhF798NSjAfNn9PWzbmoHLB8r0z6qjtO2TUrPLFIyhPKuxrV5oc+xxw3QgyZe
         BSLEM7B6jVXV4ZuyOsl5Q0cJP+jpLQNZSU2izXTrdPQh/8R/o9dYp33OZwP+Dulf7Zcv
         kObwGYCMZW/CWWC/SEogxn+wGTX19FxWZ6PDge8DfxTqz+q5dZTlxGCZwTZ+vbCsLVWI
         gfZH2xblz9RRf3VK+iCRlDoahj1QPNqCE6jU3IPSLC3Ua2l+gw7rVr7CAzFt8jTjBkxs
         g50g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pB+RYgiH;
       spf=pass (google.com: domain of sakurakhadag@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=sakurakhadag@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sakurakhadag@gmail.com>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id h67si466067qkd.4.2018.02.16.14.16.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 14:16:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sakurakhadag@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pB+RYgiH;
       spf=pass (google.com: domain of sakurakhadag@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=sakurakhadag@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x244.google.com with SMTP id v3so2412676plg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 14:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AyFuFO3KzGerAxHjFn0Xwye9l9mLchdQShGBaYVAeY0=;
        b=pB+RYgiHG0NPYlww34zosDaKTtKFqQ2xj2yFxwLjNgm/rAWLxCFhaJ+CmtGLbLwBA4
         etOf3BGxE3oVLNznwuzAXpUI+fRM+fEdPc4I8hwoSsOJXNElpRjtrpqyU5m3piKY/CuT
         JxjXbw3w97A9bWxIsKHOyMDJbWydODmvOT3KV8+ld3BCQjacgOHmo4L5y1ii7XeLgXFB
         TPTh6jSOxqr6ISNQ11n+buOdfRCzAPA3aMrkDYjw0nJ+VHhpeeD7phnj/al5QgOEq1XA
         MnkmEeDwigpvKt2bKOOoDWesCEZQa3AIcrzZ/Ce5M16ZC5tQa2H/tDiH6rgTzCN40jk5
         916g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AyFuFO3KzGerAxHjFn0Xwye9l9mLchdQShGBaYVAeY0=;
        b=ErFqFIKxzp0+oP4K8/xKRUwyeE11f29+lxF2WSHebq9lQL1It0dza5+fZ0IaCjvnqR
         pQn/58VDHyiy/8A67rONnyVx5cNpHaqg+AgnhmO14wetzmyoTrbp5tqEGWmEclhjzoi5
         AuQVzFT1OsdTVrQ8RwWxJvCH9MvZXshErrk9ysX8zM0Xo7K6echwofoZicNwkfkBNjTQ
         PXVzZYcCpSCI3bW2aN4/C0pO2Y1McYJM2QnvzY8yGL8QkVkkkZsgAYHsjTQXmrG3hLn0
         wENO0WdUzgXbhfmsQ0edAOuQxIWyKtGnBuHsEzOZM16Nr0xTFWbccCI932zELB1Qrr8r
         ddUg==
X-Gm-Message-State: APf1xPDcGLxhRKa6cIZZwbWzIctRE61/oe9CRlipyGT96mpYLfoapogy
	dczRwlFl4sDWOJrlYt2l2dkncTp+
X-Received: by 2002:a17:902:678e:: with SMTP id g14-v6mr7014987plk.309.1518819370036;
        Fri, 16 Feb 2018 14:16:10 -0800 (PST)
Return-Path: <sakurakhadag@gmail.com>
Received: from ubuntu ([171.79.78.116])
        by smtp.gmail.com with ESMTPSA id h186sm5334287pfg.15.2018.02.16.14.16.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 14:16:09 -0800 (PST)
Date: Fri, 16 Feb 2018 14:16:03 -0800
From: Ishita Tripathi <sakurakhadag@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Ian Abbott <abbotti@mev.co.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtd520.c: Fix new line after dereference operator
Message-ID: <20180216221603.GA77503@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete new line after the dereference operator (->).
According to https://kernelnewbies.org/CheckpatchTips, it is better to
have longer lines than break at this operator.

Signed-off-by: Ishita Tripathi <sakurakhadag@gmail.com>
---
 drivers/staging/comedi/drivers/rtd520.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/rtd520.c b/drivers/staging/comedi/drivers/rtd520.c
index bb400e0..47b7093 100644
--- a/drivers/staging/comedi/drivers/rtd520.c
+++ b/drivers/staging/comedi/drivers/rtd520.c
@@ -815,9 +815,8 @@ static int rtd_ai_cmdtest(struct comedi_device *dev,
 
 		if (cmd->scan_begin_src == TRIG_TIMER) {
 			arg = cmd->convert_arg * cmd->scan_end_arg;
-			err |= comedi_check_trigger_arg_min(&cmd->
-							    scan_begin_arg,
-							    arg);
+			err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
+					arg);
 		}
 	}
 
-- 
changes in v2:
-changed subject line
-improved description
2.7.4


