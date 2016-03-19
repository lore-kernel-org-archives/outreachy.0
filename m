X-GM-THRID: 6263750571303370752
X-Received: by 10.140.228.7 with SMTP id y7mr15532884qhb.27.1458393187355;
        Sat, 19 Mar 2016 06:13:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.100.214 with SMTP id s80ls3138407qge.94.gmail; Sat, 19 Mar
 2016 06:13:06 -0700 (PDT)
X-Received: by 10.129.152.16 with SMTP id p16mr15175307ywg.27.1458393186752;
        Sat, 19 Mar 2016 06:13:06 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id sf5si2806137pac.1.2016.03.19.06.13.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 06:13:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n5so21418396pfn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 06:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=X2J3sHSbj9EWllc31otA/9jZYMwrdwFeDw8IOj2l2S4=;
        b=UsGB/1Bu9DoXzavfOicZ7IupJkNQrEqn5ECeTSkKzo4HeFkxvwY285GHzsVLampOw0
         MR0uU3YkM5JYWOA3kWC+rheAuvSL5xKO4c9Dq2NJ+oPrHd9845UThh91uUzL9whIlLQk
         VapCnOyQM52bBbDUpvb4AQxmSDnZPgUvAhDQt13jaxTFd+PohDaumxbrligMIomdrgSX
         UdoWlNWWsEyT0yYTay6JALPvQi88nVMSgyZRhBbtlcF63xbPb7uJb6YkZBH7PEL+r9uh
         x9nAobry46a8ftewBXYw8LKQEMhbwDWzSYdNI8xAtwxqOYKoYDqgXr96p69e8lMoifxV
         wVBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=X2J3sHSbj9EWllc31otA/9jZYMwrdwFeDw8IOj2l2S4=;
        b=Ts6D4jfUWNaNXotHg1xgtFSor1sZ99qZV7RhBDVJ7yy/oSu1PUwxrkiOhytfuYDhLP
         YfpkkK6WtCKanF9ZdfBZBMdDehQODldY+DZNqkl/PO5hefqQq9Gy6sVTQo+WVlpeaF2z
         Fh8oWKtrZL/h08aSat4sbqrK8dl/oJfbUS3FKhxBx6pi0hCbJyQEzhOyKMn4JtUZTtVP
         npk8SNMwXrRf03tahF+YKGdAVLBfMnQypRqx1zCIlQAH0rAhQGuUXcWLPKMDo5c/ksuY
         lzUqmU7P8Khg6SxXsY3s3wh5yiLTF9UxaApm5YbhTdnIjnv6vdBgb5+zXTjKK7plyHxS
         H4cA==
X-Gm-Message-State: AD7BkJIOo7vUd5XCGoCu7LZznorsARuiVlZj1teTRhBqho2FNQlUzRUmvCieD2FlEaTkMQ==
X-Received: by 10.66.145.68 with SMTP id ss4mr31374408pab.79.1458393186575;
        Sat, 19 Mar 2016 06:13:06 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id ml5sm28229788pab.2.2016.03.19.06.13.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 06:13:06 -0700 (PDT)
Date: Sat, 19 Mar 2016 11:44:05 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: netlogic: Remove & from function name.
Message-ID: <25663f5b328e9303816dac3c801b15d4f1df8801.1458367377.git.bankarsandhya512@gmail.com>
References: <cover.1458367377.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458367377.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove & from function name,when function name passed as an argument to another function.
Function name is used as pointer without &.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index aa1cdf6..99445d0 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -850,7 +850,7 @@ static int xlr_mii_probe(struct xlr_net_priv *priv)
 
 	/* Attach MAC to PHY */
 	phydev = phy_connect(priv->ndev, phydev_name(phydev),
-			     &xlr_gmac_link_adjust, priv->nd->phy_interface);
+			     xlr_gmac_link_adjust, priv->nd->phy_interface);
 
 	if (IS_ERR(phydev)) {
 		pr_err("could not attach PHY\n");
-- 
1.8.3.4


