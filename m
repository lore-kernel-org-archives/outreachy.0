X-GM-THRID: 6261344132026859520
X-Received: by 10.140.41.69 with SMTP id y63mr12965917qgy.26.1457832784387;
        Sat, 12 Mar 2016 17:33:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.52 with SMTP id v49ls3688547qge.71.gmail; Sat, 12 Mar
 2016 17:33:03 -0800 (PST)
X-Received: by 10.140.150.210 with SMTP id 201mr12949954qhw.28.1457832783842;
        Sat, 12 Mar 2016 17:33:03 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x22e.google.com (mail-qg0-x22e.google.com. [2607:f8b0:400d:c04::22e])
        by gmr-mx.google.com with ESMTPS id q187si908333ywf.4.2016.03.12.17.33.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 17:33:03 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) client-ip=2607:f8b0:400d:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22e.google.com with SMTP id t4so128212909qge.0
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 17:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2FEKrUmqNIbc2bwnQWzx4rHfTy/s/RNiFoqdWMeKraw=;
        b=KG7IxPEoWM+/6Ssc59iuxXd/BqJZNCi+yBNxhMnQTbkBm+r8H8jarklR/e48qyY10/
         gGWt9TVKy4pV2NOJH3X3Gx8UtCHXd0eI1XjrqVojKwJKBnYtZHL7hFglSxQpLqWb5A5K
         DtNcvjojzXZyBhLVozNAcIRfo+rPs3Trz0fCaSVd7UmMtNy13l4LkIRpQlzCJoxl7deO
         kSXbYbT8+ZhThl9HG40Il3nbLQTEvZVVBs/Dr3i8Ozgd5+ySiWtG4PfWIFlhbDlZCt9N
         nfewPAEQKBPnSUDzbFSIVIgXMIPfwtSddYUbJRF/ONFTmAsy0VCpLf23joMPt/AjutRl
         JaDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2FEKrUmqNIbc2bwnQWzx4rHfTy/s/RNiFoqdWMeKraw=;
        b=RMzge1mJ0gqdAixOmp/HpGXniL4txqDVmK5hRl2X87jbd8v8uOz4eXzteRtPP9P1eQ
         /3P0OCA76gGTIKRf5PHgWc4KvOvZxRNWgY5/PqncM7lC+hTyTKtwuLKccmfhqRbLriYb
         BvIWtM8n+U1+fsVGOE4mAbeHWEOeInaItz67qYSH6u6Rl8fy/SDMmIimycIianUd2ezk
         ruxqO3dJD4gJPmp6HOZ6rcosuLWmvDlUQ5+kD53WdtbMKem2up2DFmhlcQyLB17WZzwk
         rx0x73+EkYYYXQzy9AHCtVgIh7cVcYddVvRc/DIzqMJ8bhWgatD4KWzefRHmm5IopyMr
         l5Jg==
X-Gm-Message-State: AD7BkJKPnxmGjMfbFjeHvDRGxLsGmM20ANwc22sWompUi12hV+akba5Ll5SLGRcLnoqzvg==
X-Received: by 10.140.254.9 with SMTP id z9mr22506801qhc.5.1457832783531;
        Sat, 12 Mar 2016 17:33:03 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id f4sm7253584qkh.23.2016.03.12.17.33.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 17:33:02 -0800 (PST)
Date: Sat, 12 Mar 2016 22:32:58 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH] staging: dgnc: fixed spaces before and after "|" in
 dgnc_cls.c
Message-ID: <20160313013258.GA17143@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following issue while maintains 80 characters per line:

CHECK: spaces preferred around that '|' (ctx:VxV)
+       writeb((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR_XMIT),

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 51db98b..6e1e475 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -1168,8 +1168,10 @@ static void cls_uart_init(struct channel_t *ch)
 	/* Clear out UART and FIFO */
 	readb(&ch->ch_cls_uart->txrx);
 
-	writeb((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR_XMIT),
-	       &ch->ch_cls_uart->isr_fcr);
+	writeb((UART_FCR_ENABLE_FIFO |
+		UART_FCR_CLEAR_RCVR  |
+		UART_FCR_CLEAR_XMIT),
+		&ch->ch_cls_uart->isr_fcr);
 	udelay(10);
 
 	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
-- 
2.7.2


