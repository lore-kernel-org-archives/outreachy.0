X-GM-THRID: 6391853165907542016
X-Received: by 10.200.48.85 with SMTP id g21mr2131903qte.47.1488359847300;
        Wed, 01 Mar 2017 01:17:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls285999otd.28.gmail; Wed, 01 Mar
 2017 01:17:26 -0800 (PST)
X-Received: by 10.31.140.19 with SMTP id o19mr1544738vkd.33.1488359846890;
        Wed, 01 Mar 2017 01:17:26 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si568826pfd.3.2017.03.01.01.17.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 01:17:26 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so5230321pgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 01:17:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QKxnr6+nv87qF6cBFxJo6mA0Fwj4o/jlBCTxZeeIE6w=;
        b=fRnCGxp0pmG3JZjhJYe6uxN7ZLkCBWNk1bZ4zSbaMkp/7CC7NKUg9tMpx0XViXYdm1
         p4XFuy+RG5rCs23MN6QGZ++5S+LpoXxBKhPQgVlj9SZXsEG5Qqyi03R9thucWBdYMks8
         E75pSu8j8ODPj3zc22duc9ar3PjVon1xhP1BiQGlnNwaSqQyep40nD+7PRuF6TLlU3pT
         np5Pd0mBM8KWotMv8a/GbMW+S4as/vRus/S4KqKuXpxRP6DFes2bDABDdCinaHLJeXTM
         FinTJ+tse6Y5y2+MfioRyEHgJjJM8kKu0tj27uAyP6R6iNnurGRpwg0YqlKfc5VrjjDC
         kwhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QKxnr6+nv87qF6cBFxJo6mA0Fwj4o/jlBCTxZeeIE6w=;
        b=EH7P4ZiI47565vDSz/lXu25at7J/B25N1glHi20VGdd3rBkFUgywAMw0DD22WulOZK
         TRD+rzjktY9Je6j7PCM7jGOI4TgHdQXOs/VmUmLyy0cAmawqqi3ocOeQ9r/17HXHWxut
         qVOl+IIKEYh5u371a6IIXuznW+joixyqXOW8SrBbWTrtVqJRgcuvm/ZjjXrcOyu6Gplf
         Z8ck0nrFtBQWOEfijPRKZ9ZsXKIph8djXmv/wvbMk/L8/WAm3fXVu6PdxmLEAOUv+efO
         3lFbfCRXbnDQ9VaVl1JFAHDpK91OD0VSlvElfiOPebZM/u88pATh1t260Rt9tt3yjQHV
         +PFQ==
X-Gm-Message-State: AMke39lCTu/QGYVj9PxHXp3qgravFoVYNEmwAWoUq7B5+vaedqVHXN4/FWVbcTCB4wtyHA==
X-Received: by 10.84.162.204 with SMTP id o12mr8925341plg.132.1488359846596;
        Wed, 01 Mar 2017 01:17:26 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.227.121.243])
        by smtp.gmail.com with ESMTPSA id k76sm9078801pfg.42.2017.03.01.01.17.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 01:17:25 -0800 (PST)
Date: Wed, 1 Mar 2017 14:47:16 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: dgnc: replace usleep_range with udelay
Message-ID: <20170301091716.GA3860@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

udelay is impelmented using a busy-wait loop and consumes CPU cycles
while usleep_range is implemented using interrupts. cls_flush_uart_write()
is called after a channel lock is acquired i.e. an atomic context.
Hence delay in this method should use udelay instead of usleep_range.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Change in v2:
	- Edit commit message to explain why udelay should be used

 drivers/staging/dgnc/dgnc_cls.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 28a3e16..7068c3b 100644
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


