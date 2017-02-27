X-GM-THRID: 6391853165907542016
X-Received: by 10.98.29.7 with SMTP id d7mr4328251pfd.7.1488219286172;
        Mon, 27 Feb 2017 10:14:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.6 with SMTP id o6ls6901935otc.47.gmail; Mon, 27 Feb
 2017 10:14:45 -0800 (PST)
X-Received: by 10.157.30.164 with SMTP id n33mr6795966otn.45.1488219284971;
        Mon, 27 Feb 2017 10:14:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id h79si604403pfh.2.2017.02.27.10.14.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 10:14:44 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o64so4750465pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 10:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+MB0qPJP1GKpAijtrnjszAiOMh4HL9NIsMZwob8RwaI=;
        b=mWPnDEbQ0F02ioElS2nvSQ9FbpcoJFI6lSR1v6PllK9wcJHFJRlEyszLV/1Mv3KOdz
         NyKcRAlsGg07yvKW42Bflh9nvDwHTlls9tiCCKBifnk25JdMlQBiLXo1tDpwtiFXMTXo
         XMXzQP9JYq1LOJa8pQyn/X/am4gJVkC1rxcQs0SvDRRupxiY74pfxnD+1cKLlX53KyST
         l/49yx3Fb6OLg5jW3fI9yGwa/wc5Rh2ZKL2G0Nk2D0D4NGWyMc2RgO08sviGrAE+5NXb
         1DhiZIFDnffSx6QLvUxERo7ywOgjIczDRrqtLkTOrJPZkJDweJV2lHb5Srw5Xk7hZyMp
         3uDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+MB0qPJP1GKpAijtrnjszAiOMh4HL9NIsMZwob8RwaI=;
        b=akKjVkfkM38Rg3YeSRTvnW8opSFE+9CJQLGIEkke8nF9baBfCh3Dqc4NUugXG1cHgR
         Tu/6HW1m0eNQElzsRUzumcdYHsc07YpbZ7N0idFuQcPGzmeHifI/oqMoeubWdksE58kQ
         VMDvbogv2xlqy9hYeMQ6iHxFcR9nMTKUcwypUyCWO1i7nRyQV6AiIuPh4GWuSjj5IfIi
         ie/L1ZEBP8nApGrt6mSHq+ueOHGmY/LBLoYJ7UIahbsC28RAnVaBm624Thz8cqAiHS0U
         c3RYbpAzWSwjJrsXV+SrSArKm/9BFILfcAE2Ad/mUoGnmT16lBhgw2YHoOikMca+q8YQ
         3lWA==
X-Gm-Message-State: AMke39lPHc1nps73XTrkN5Dgv8lcPapKwFuArRrq5iw6DE/5I65aDzkJJToN4wWI29FCyA==
X-Received: by 10.84.215.15 with SMTP id k15mr25763089pli.58.1488219284735;
        Mon, 27 Feb 2017 10:14:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id u24sm31973907pfi.25.2017.02.27.10.14.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 10:14:44 -0800 (PST)
Date: Mon, 27 Feb 2017 23:44:36 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: dgnc: replace usleep_range with udelay
Message-ID: <20170227181436.GA5704@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace usleep_range by udelay in function cls_flush_uart_write as it
called under a channel lock

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index c20ffdd..f116ce1 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -609,7 +609,7 @@ static void cls_flush_uart_write(struct channel_t *ch)
 
 	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
 	       &ch->ch_cls_uart->isr_fcr);
-	usleep_range(10, 20);
+	udelay(10);
 
 	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 }
-- 
2.7.4


