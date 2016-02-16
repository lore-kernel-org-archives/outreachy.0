X-GM-THRID: 6251650339458514944
X-Received: by 10.112.77.169 with SMTP id t9mr2887748lbw.8.1455662325845;
        Tue, 16 Feb 2016 14:38:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.205.78 with SMTP id d75ls237731lfg.2.gmail; Tue, 16 Feb
 2016 14:38:45 -0800 (PST)
X-Received: by 10.112.167.136 with SMTP id zo8mr2862820lbb.10.1455662325216;
        Tue, 16 Feb 2016 14:38:45 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id v197si749704wmv.1.2016.02.16.14.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 14:38:45 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id g62so131537534wme.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 14:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=JXxKqLjJ6v6I7/Lmy4VOzHxSe7HPZOvBDVFdUttSny8=;
        b=JUWRcKY1UJdJd0VoMWbvnt+2U+kicw7gI7f1CmILc52xVU9aL6EWC40NoGY0hrXsKp
         SbgA170pDy4fNpKNQcsnxCzJIW1AFT9TtYWDhi8VOsX+lKAYhq2228R1FEKtetjP5Lyq
         3Hc/Xm+rx2Jcerh2Lwt5qyLISYC/Je9rb7T7ix26RPz13QY0FHM6F8uqhHJqGiVmzhVl
         4B/Nr1puWTfMJVKYlYfuvmFhCiaIHrDEDeTqq4rj1tW4qnhjRiV86yVTzinGRVn4OLbz
         /nE6f/Lb+nQio69p8EqnvlJ4AupznuzKoXCmVf/zXrA7hg0sFjxpTJbDo3IAHBYRYuxu
         zScQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=JXxKqLjJ6v6I7/Lmy4VOzHxSe7HPZOvBDVFdUttSny8=;
        b=FtqnpqWEQtAcWY4J/dTUrQNtAXrphidOqba9Kh+FXZQwcY+2tLtHeFwxNwCVjcfmvP
         duOj/EB0aeGYIgeo4XGu8xU4sxA1j9fEfUEdXayIQ+yKFlK9jdS9xMAyOW9efWdxwWCE
         4AiRJppkSNG9cCCm+MUI6cKYhW7z2Re6YIRy3uo4oEIyXGlinLIMMwGgQjccWzmp2y76
         6yYNzKgjldKDFbqdUpMsbTBE5ZJGW78pYoWUhMUgcKvuSPXNiEZ3pzNW2oPZo5ICY7m2
         ZPsYYZY3A6s3HzJhLh5++yzLKOIAc7IbFwpncSPQO3RgA7A98lzpSBPZ/TxzqljYEVtp
         aNQQ==
X-Gm-Message-State: AG10YOSLjcCxvz1wAvjC4wJZNTcS8uTY3rx57ZJwJ/c/qRbsDU/pv3TlLi8rR/sMAzeIjA==
X-Received: by 10.28.188.195 with SMTP id m186mr20681957wmf.64.1455662325127;
        Tue, 16 Feb 2016 14:38:45 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id 74sm121324wmn.17.2016.02.16.14.38.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 14:38:44 -0800 (PST)
Date: Tue, 16 Feb 2016 23:38:42 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 6/7] staging: netlogic: Insert spaces around operator
Message-ID: <e541691fc99de31594d133b308836588d845d9c2.1455661648.git.nevola@gmail.com>
References: <cover.1455661648.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455661648.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Spaces preferred around that '/' (ctx:VxV). Checkpatch detected these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index c5a98bd..b218e84 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -206,7 +206,7 @@ static int xlr_net_fill_rx_ring(struct net_device *ndev)
 	struct xlr_net_priv *priv = netdev_priv(ndev);
 	int i;
 
-	for (i = 0; i < MAX_FRIN_SPILL/4; i++) {
+	for (i = 0; i < MAX_FRIN_SPILL / 4; i++) {
 		skb_data = xlr_alloc_skb();
 		if (!skb_data) {
 			pr_err("SKB allocation failed\n");
@@ -1023,7 +1023,7 @@ static int xlr_net_probe(struct platform_device *pdev)
 	 * Each controller has 4 gmac ports, mapping each controller
 	 * under one parent device, 4 gmac ports under one device.
 	 */
-	for (port = 0; port < pdev->num_resources/2; port++) {
+	for (port = 0; port < pdev->num_resources / 2; port++) {
 		ndev = alloc_etherdev_mq(sizeof(struct xlr_net_priv), 32);
 		if (!ndev) {
 			pr_err("Allocation of Ethernet device failed\n");
-- 
2.7.0


