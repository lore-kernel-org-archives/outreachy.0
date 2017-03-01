X-GM-THRID: 6391853165907542016
X-Received: by 10.36.192.68 with SMTP id u65mr940333itf.0.1488371795660;
        Wed, 01 Mar 2017 04:36:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.124 with SMTP id z57ls2973828otz.38.gmail; Wed, 01 Mar
 2017 04:36:35 -0800 (PST)
X-Received: by 10.200.34.203 with SMTP id g11mr2394567qta.14.1488371795239;
        Wed, 01 Mar 2017 04:36:35 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s64si647397pfk.0.2017.03.01.04.36.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 04:36:35 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so5734852pgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 04:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=UKsAmFcfLZvyTBmp54wGQajxVxU3CwUp2LAtxTyRepI=;
        b=Zewz1cYp6X5ghUidgJIY3lo9wcadKsL2uy5w0DF+AbKGVXnYSk9oRem/zZJqZVrGxX
         Y3TjV/ZsZwycQGI9nUMe9XCBI1yxxGf5tSJ1GV9k1vvLssqApc/sr/YuLgyJcMjHkjRu
         zsOVl8DBaBd9PsiwTigiCSCo3lOX/SSU/OwyLGF4xyJ70o2dQs/ywKUvDFSG7uixC8xQ
         f7LImgUupJITYjDk/qBflyxDj+WbWbZatnvlrLJmTBO0PPJAKs43wAO6vJwnUKjyUZu2
         0/Ld0Zi3H6D5XxbfSo4KhTnH6Sfi9fX9wIZpcUQ4GEa6GElvMY+hJcXvU9rUAJ1XQn0K
         UTeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=UKsAmFcfLZvyTBmp54wGQajxVxU3CwUp2LAtxTyRepI=;
        b=XxfTqQ0fG1n1l+tWaoWumJzKwdFcU6gp+gg8M5RQQf/ljNk0nbe8VA3TiQM7CQL2AP
         hvMnWSsKURXFsYDd4vmHvG0z+RiJNDrzyW4Up1VBRLlrU1OVOvIFKiiR7+Kb+ts5ox6Q
         in9hLSZDrET3Ph8NoMxztdyQ8Enanczqnr8E83Cd8u6Og42nvVXqZ14P2/iQ82gLgjzZ
         lHV7eAptifDIeMZsgummK22Zf7vRhhZO1Jk8U2h+/2/MX0mXP/ShXwWXS+83Vzf3zb2W
         I8DeDMDPkKnSNZIOw05bOenRY61V3Vl5hVlxu8yvsC9ZR7n4/NnMk/6CQRntDSZS2OIz
         LXFg==
X-Gm-Message-State: AMke39maEHg3MDhA4Rl4ewLACwo4Dd4P4hDMTs3njzO7be8IMJNgy1MYb7cjAb2/Hx25Tg==
X-Received: by 10.99.114.70 with SMTP id c6mr8605943pgn.163.1488371794929;
        Wed, 01 Mar 2017 04:36:34 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.11])
        by smtp.gmail.com with ESMTPSA id m74sm10476610pfk.41.2017.03.01.04.36.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 04:36:34 -0800 (PST)
Date: Wed, 1 Mar 2017 18:06:30 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: dgnc: replace usleep_range with udelay
Message-ID: <20170301123630.GA3820@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

udelay is impelmented using a busy-wait loop and consumes CPU cycles
while usleep_range is implemented using interrupts.cls_flush_uart_write()
is called after a channel lock is acquired i.e. an atomic context.
Hence delay in this method should use udelay instead of usleep_range.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v4:
	- Fix comment format
	- Edit line comment in code
Changes in v3:
	- Add a comment in code udelay to ignore checkpatch warning
Changes in v2:
    	- Edit commit message to explain why udelay should be used

 drivers/staging/dgnc/dgnc_cls.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 28a3e16..3112c25 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -609,7 +609,9 @@ static void cls_flush_uart_write(struct channel_t *ch)
 
 	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
 	       &ch->ch_cls_uart->isr_fcr);
-	usleep_range(10, 20);
+
+	/* Must use *delay family functions in atomic context */
+	udelay(10);
 
 	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 }
-- 
2.7.4


