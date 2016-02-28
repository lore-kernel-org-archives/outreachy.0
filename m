X-GM-THRID: 6256432219438448640
X-Received: by 10.107.135.209 with SMTP id r78mr15446545ioi.19.1456689140571;
        Sun, 28 Feb 2016 11:52:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.135.196 with SMTP id pu4ls13625obb.13.gmail; Sun, 28 Feb
 2016 11:52:20 -0800 (PST)
X-Received: by 10.182.199.70 with SMTP id ji6mr9863725obc.32.1456689140288;
        Sun, 28 Feb 2016 11:52:20 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ff2si3441393pad.2.2016.02.28.11.52.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:52:20 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 184so2010805pff.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 11:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=g2Z7MtEAseKs+ej18ugz/JKEAbE8Ao6irUmtO0gxDRw=;
        b=hGShocS9U6xWlLuPZlLTAQivxo/MogUJkJIzzPOrlB5wlXqo5MYRZKs+in/VpjgoYe
         XoXUPVKtRnXy1sDC3GEMlcU7H2rtEmReTmWnujNW46m5oFVdhyJusIUMGh0R6Gn2Whba
         dWMqrbolVfYHGiTHaVe9rdVAi2KQlvcgRyxillvkTNR9uDhZ/wTBm7l8LKrA/Q6cfTms
         ATI8x9nai+/HnBox6qx2DliafdGK1EnOX/hlA9kdWts+9oM/Pi3AYhsIEt9hTKmnPkiU
         Io/7d6Ysl6EeZT0hIHs1rzXITtdwg/sSyq5JObpGLKuC1eRK48KMx+rwUHgBOyaAzkAi
         U2kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=g2Z7MtEAseKs+ej18ugz/JKEAbE8Ao6irUmtO0gxDRw=;
        b=ghih3owOMK7dR+qIXUXWdCpEBAHEIBf+zFkFk6Rd041UL289BAUt+DbcoMx7GiUt/s
         HdTKeWnByhdgGYJpXnDEq5VRyM0CzVmboCxmswkamGr8CUNnb9qEBxiuxR85cqjk51Qj
         LL1mETa1Z/jajpZdlRIo4SZPysWSD4jpldtNXViuUK9O44NlSmmfwWAWBWDgzWMsDrRZ
         I0lcUJqWgSfbbQ01WE57w7UAaHmwDmsLkS/Pp4y4NqZ0qx4GTsRwIjb0DhFJlvz9p3JT
         OP8B6Ub0NNR1iikaNocX5bKWMLrxppaBiDm2tZlkaoTqb4ovYCTz+eaIYmhJaTHB3NBG
         EOJw==
X-Gm-Message-State: AD7BkJI46lC8pwdOoZwnosjneXUzTeFNXZPTTgJGrI6VzKn4Z8fF7IEzP25VhWht9Hv/bw==
X-Received: by 10.98.44.151 with SMTP id s145mr17248833pfs.17.1456689140128;
        Sun, 28 Feb 2016 11:52:20 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.168])
        by smtp.gmail.com with ESMTPSA id r68sm32801013pfb.51.2016.02.28.11.52.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 11:52:19 -0800 (PST)
Date: Sun, 28 Feb 2016 17:22:15 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: rtl8192e: Use ether_addr_equal_64bits() instead
 of ether_addr_equal().
Message-ID: <20160228115215.GA4726@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use ether_addr_equal_64bits() instead of ether_addr_equal().

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_softmac.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 25b5b5e..07514e8 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -1837,8 +1837,9 @@ static short probe_rq_parse(struct rtllib_device *ieee, struct sk_buff *skb,
 		return -1; /* corrupted */
 
 	bssid_match =
-	  (!ether_addr_equal(header->addr3, ieee->current_network.bssid)) &&
-	  (!is_broadcast_ether_addr(header->addr3));
+	  (!ether_addr_equal_64bits(header->addr3,
+		ieee->current_network.bssid)) &&
+		(!is_broadcast_ether_addr(header->addr3));
 	if (bssid_match)
 		return -1;
 
-- 
1.8.3.4


