X-GM-THRID: 6388168612914397184
X-Received: by 10.157.9.167 with SMTP id q36mr1609665otd.34.1487361409680;
        Fri, 17 Feb 2017 11:56:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.89 with SMTP id e86ls1506126iod.48.gmail; Fri, 17 Feb
 2017 11:56:48 -0800 (PST)
X-Received: by 10.36.80.78 with SMTP id m75mr2079606itb.9.1487361408920;
        Fri, 17 Feb 2017 11:56:48 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h130si907978pfe.1.2017.02.17.11.56.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 11:56:48 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id y6so4572010pgy.2
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 11:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XPS2h71DsGC5++UYLbOAFjImQ2NJqbPQ0ZtJyCDiNxQ=;
        b=fBiuSPvgK/y1NT3hCtPeb1JCruZZfg2eOnOkNOcDlGG07Y41Ico09QxCXWuCBiej57
         xVGqDcTrBWPExszFwuoh8jWnSOLQcGPjvA4csB35yp4lZm8ejs6ao2eedISHCXP8NDhJ
         pNtFPI8aOAA4v4J+plpH4SKvLVjYLbhkJ1CRSInoE5u/6MKFRFIyfD7wFORbz2pZlhjR
         m+KjyH4UR1pKlRX3qMqrn2t2xBUmLCBOEtmyToLXUdXl6/a6MPAQiY+tYj4ha5JvJQPI
         LzQ0CR++bahDBNb1It+lEgGVS/JXc8FnytPD4j5S+9FLdes43+vJOUBraKjn0FKbJexh
         eaEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XPS2h71DsGC5++UYLbOAFjImQ2NJqbPQ0ZtJyCDiNxQ=;
        b=gpjJKkqujMuD94sREp/Yj3ZeZ4h+8KEuU1iBOHb3QCVPmy8j3Aex4H/zMMjdRjZBiL
         lcf7yQcJz2OJtqysrFDHfR7FVBmb5MD0VRCPOtFFU+Gv+zVExwsJIGDWNgRDwZ1z6/Qz
         moootwm5qsACS3jho7Y/98rfOGZ27uZDG4W3FfG3TZlGltzGIl2IA4R6bZHfzzjgOlvn
         CwQ+sPX4vxFRBm+rjrpSYN5LcpPJpCaFxhcqbYS7NI0FyTFEeML6mZwFVfmfsItAEyHK
         1JIcee26il+2qxlqV9dFms78D274utEDn8hd4N0xEvuZllBsH4Iy4GbAMlxFHJ35kwy9
         L5yg==
X-Gm-Message-State: AMke39nh8LKLeOczSITFFByAzV07x2X/s5x4+w2+8WKumiVz2Ls10+O8kJxGfhZSQTDGvQ==
X-Received: by 10.99.131.198 with SMTP id h189mr3647955pge.226.1487361408734;
        Fri, 17 Feb 2017 11:56:48 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5206:c79d:5773:ab8a:9cfc:4b88])
        by smtp.gmail.com with ESMTPSA id n189sm21049192pfn.108.2017.02.17.11.56.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Feb 2017 11:56:48 -0800 (PST)
Message-ID: <58a75580.c627620a.da3ab.f2da@mx.google.com>
X-Google-Original-Message-ID: <20170217195644.GA7347@<rvarsha016@gmail.com>>
Date: Sat, 18 Feb 2017 01:26:45 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/4] staging: rtl8712: Remove unnecessary parentheses.
References: <cover.1487359493.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487359493.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Removed unnecessary parentheses around pointers to fix the following checkpatch
issues:

CHECK: Unnecessary parentheses around padapter->xmitpriv
CHECK: Unnecessary parentheses around padapter->recvpriv

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index cbe4de0..5638fb6 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -185,8 +185,8 @@ static int r871x_net_set_mac_address(struct net_device *pnetdev, void *p)
 static struct net_device_stats *r871x_net_get_stats(struct net_device *pnetdev)
 {
 	struct _adapter *padapter = netdev_priv(pnetdev);
-	struct xmit_priv *pxmitpriv = &(padapter->xmitpriv);
-	struct recv_priv *precvpriv = &(padapter->recvpriv);
+	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
+	struct recv_priv *precvpriv = &padapter->recvpriv;
 
 	padapter->stats.tx_packets = pxmitpriv->tx_pkts;
 	padapter->stats.rx_packets = precvpriv->rx_pkts;
-- 
2.9.3


