X-GM-THRID: 6388168612914397184
X-Received: by 10.36.70.136 with SMTP id j130mr3635387itb.21.1487427260789;
        Sat, 18 Feb 2017 06:14:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.34 with SMTP id f34ls1964513iod.36.gmail; Sat, 18 Feb
 2017 06:14:20 -0800 (PST)
X-Received: by 10.107.148.134 with SMTP id w128mr4206312iod.59.1487427260174;
        Sat, 18 Feb 2017 06:14:20 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h130si1286067pfe.1.2017.02.18.06.14.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 06:14:20 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 1so216950pgz.2
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 06:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=oUW2djEIl6K2aUnRV6jCpqQBty8KcCykcT3dxNxed74=;
        b=S/jraC8tMyoK5D8E3N/EQj6CoPaDAL+z/V+8wxdwdbgiq4VEuSdBJWeybu02/cIn3R
         N/xY/ksV5AjSH1qc5jrQhKgkgQ4Nm1sFvAdfTfNg/5uqTvn+pQWJq/y6/hOJhib4aMv5
         yTQLiyYbIpyA+ecmWquEx3mUqX3mi/aVjOF4/pfeTT3sUO9ZpXHvrwvehcuknkhU/Old
         +g1hPw/cce7TL/j5AS5nZmEi/zHpR6F62H6/uXAzFhbSc0oeJ4Fxd6LgMsUCH0IAdWE2
         kkco/p7gTfk/rjZzX895bIR5cvO8w55N6EfLdbyktvALw1z+gTZ/OQyhdj5lRlpPQMqv
         ncAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=oUW2djEIl6K2aUnRV6jCpqQBty8KcCykcT3dxNxed74=;
        b=m5+7I/MrggdqR3TnAFDMLfjvihQS90zfg8cBAnhSRg2lMqmZlIUc3wqdykS6f5nqNO
         EO9tLlKjul0zZSLh5wqiNhycUzQsopq+BwiqPKX6/1x8p8C2akx/uPzDMQKunRu59vZK
         QduEhfHvq22IqDY3fvLJ4ezeqItJKzQZ1XAsmvYJXz3OK0GVimjPAv49IbeaIkgRUdVI
         OdJiOa85fl2N06ienguaNI5KOBWY0LfJBAC+EFdeY9d27ttGLnW9vbbQV42vNb4bLdUD
         NhK0hOpECIrzfXFtjzO17cmi4h1/2NoJI37vsV5jHJ5GcEXswEEgpIWD9urBYMDboSD4
         uayw==
X-Gm-Message-State: AMke39nGt2o0MkgXRnnQ2rmkM7gQxNUThDE0R1AtPZnbbX3vhpnpYyi+0IrcLYRubw+yBw==
X-Received: by 10.99.140.77 with SMTP id q13mr16281401pgn.179.1487427259961;
        Sat, 18 Feb 2017 06:14:19 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.2])
        by smtp.gmail.com with ESMTPSA id m6sm25764170pgn.58.2017.02.18.06.14.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 06:14:19 -0800 (PST)
Message-ID: <58a856bb.467d630a.b9397.9603@mx.google.com>
X-Google-Original-Message-ID: <20170218141415.GA2694@<rvarsha016@gmail.com>>
Date: Sat, 18 Feb 2017 19:44:15 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/4] staging: rtl8712: Remove unnecessary parentheses.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Removed unnecessary parentheses around pointers to fix the following
checkpatch issues:

CHECK: Unnecessary parentheses around padapter->xmitpriv
CHECK: Unnecessary parentheses around padapter->recvpriv

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:

 -Make commit message per line shorter.

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


