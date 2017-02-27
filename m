X-GM-THRID: 6391488130164195328
X-Received: by 10.36.6.15 with SMTP id 15mr4471699itv.12.1488210754046;
        Mon, 27 Feb 2017 07:52:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.240 with SMTP id g103ls12643803otg.39.gmail; Mon, 27
 Feb 2017 07:52:33 -0800 (PST)
X-Received: by 10.157.15.4 with SMTP id 4mr6194300ott.12.1488210753676;
        Mon, 27 Feb 2017 07:52:33 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si3407044pfd.3.2017.02.27.07.52.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:52:33 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so1450271pgb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 07:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8kWRTiv1hG9Tfq5MTt6l/7cyvh+r80HIxpQVrrSJSsA=;
        b=GxXWxTGHTgFuNrjw7BIGzmMc9A4untaMRE+pcSP3jH3P8d8fh1f1F1RXjYFsnUL6bp
         +qxCUWWa5LyoKuEZYu3PMpfuu4RdRHL5/RbzgtKC1Or7k7EjpH7JvNyWx+BdwpnFO/0/
         U/8f8eCf0WTHMol72uu8LmqggUwsD1btlZHbTxMIBS9xq9iCvsCGpuuM/cQg5Dxs8VrA
         lFq55nP3Zk7/gekhbwHGMgq7nDmx9IFb8ilP+TOzMuaNwbQ3SlfTb5aT5hnQYPcTAkRC
         9xnBnQWvGvi17s9ECJ+qYF9P2slm/YtErxeje+dW+3AkiFz8Zin0ytDHaLV2Po52pm94
         nFcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8kWRTiv1hG9Tfq5MTt6l/7cyvh+r80HIxpQVrrSJSsA=;
        b=looMlmgg8/azynwz+1+u/sdN1EdyESl88ICJIPik5I+nT6Ob7/kIj7qOZQd4WGYnBa
         lEZzxxhui8neq1to1kz3Hi8P+CSjOCp4RE4SN0/oFd2kPno/XEK7Rk8gwWDhqeebbN7x
         IuV1tGJcNhmKZOebPVkOsp3Qy3pm8zkW9huPo5oPkpfWyldhPd4/LkIac8UBJbgkijCL
         goaMsax5l89R77sy7WgwA+ZjDENY4ziezqEhKQT54YVeleM/Pv0JjX9iBbsIgK+o45VX
         t/6J1znxeGpv80L3u2oEpMRLuJPfoCb8UKMWTJb6o/x5AG0vjr0csvKvPkNg7e+SYqZy
         5DOA==
X-Gm-Message-State: AMke39ngCzJTdFF0l6HqGiGlzgLvUR315RVqk3WuCDrUIhoNjF1iWP2xNuOAWJpKYJc28g==
X-Received: by 10.84.135.34 with SMTP id 31mr25085985pli.50.1488210753310;
        Mon, 27 Feb 2017 07:52:33 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id o26sm3353830pgd.25.2017.02.27.07.52.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:52:32 -0800 (PST)
Date: Mon, 27 Feb 2017 21:22:29 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: dgnc: replace udelay with usleep_range
Message-ID: <20170227155229.GA4214@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning on dgnc_cls.c : CHECK usleep_range
is preferred over udelay. There is one ocurrence of udelay in
function cls_uart_init with non-atomic context that can be safely
replaced by usleep_range(t, t + delta) where delta is t (as t is
between 10 and 20 microseconds). Also replace usleep_range by udelay in
function cls_flush_uart_write as it is called under a channel lock.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
Changes in v3:
	- Replace usleep_range by udelay in cls_flush_uart_write
	- Fix diff in the commit message
---
 drivers/staging/dgnc/dgnc_cls.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index c20ffdd..7068c3b 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -609,7 +609,7 @@ static void cls_flush_uart_write(struct channel_t *ch)
 
 	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
 	       &ch->ch_cls_uart->isr_fcr);
-	usleep_range(10, 20);
+	udelay(10);
 
 	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 }
@@ -1096,7 +1096,7 @@ static void cls_uart_init(struct channel_t *ch)
 
 	writeb(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
 	       &ch->ch_cls_uart->isr_fcr);
-	udelay(10);
+	usleep_range(10, 20);
 
 	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 
-- 
2.7.4


