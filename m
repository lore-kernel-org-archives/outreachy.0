X-GM-THRID: 6253656990552162304
X-Received: by 10.129.4.201 with SMTP id 192mr20823358ywe.15.1456042982026;
        Sun, 21 Feb 2016 00:23:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.14 with SMTP id q14ls545148ioe.44.gmail; Sun, 21 Feb
 2016 00:23:01 -0800 (PST)
X-Received: by 10.98.89.132 with SMTP id k4mr21162877pfj.4.1456042981748;
        Sun, 21 Feb 2016 00:23:01 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id 79si2511199pft.0.2016.02.21.00.23.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 00:23:01 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id yy13so74044972pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 00:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=WWYeAYe0IYU8QifNtx0la+EL4tQQZAJ11zl2GUsfaKE=;
        b=l8TGit6W+AqWrZJb9YAHY7qTltfI4qhky0w0wyl3cu34lPtjK/YTaA5D4NqTz2DdIG
         BRAE9eJNKhKbw1gUHnoEIXQ0ZkJwS2koMDVEMsjurJnC8LKp5L++TaM7SAUdgWrRp6nx
         0JybwTQN/KbHEtIAiexnNiWYIZu3+pMxkb8HhNfPECtW7X0uWBr9vntPmU+ar1prl2C9
         xNOprPMJG2507tl30LsBT70jUFR0zfkNcqbJc/FAfuNgsmhRqHLCaXl8VremEPmR4a5+
         lVFHKicCYDpuBK8iOGaHOLdVUZdZCtT9fC93MouvBixRvKHxlOEPLm5bVHQW407USOVY
         aGUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=WWYeAYe0IYU8QifNtx0la+EL4tQQZAJ11zl2GUsfaKE=;
        b=OQVoKBmWyN1pF9B06y7SzxZaywP9+UZJ1iYRhC+GGppp343btXPthomnVLJi/ZOWTi
         zttUzMVUUoYK9wboAKiQdVIRmgzCOstlAtgeWS0JBZVLoOZD3i9IM+7x4fnYE07BgAnc
         fpxpXWzwp565wYnZgVkqOVl6t/7RBCpAIk8wL4PUfdvEFAkuxjA/WLIBIr0w54POtcuC
         MxPilfRuACi96Htx8v6L22ZwV0pcMUanN6yj9dfq+dxpcYkDwAT4kGU/ctWWQQEjqyWw
         7LcY5/IsNMGv0oU+6iHi2n3NW/pBPDoA6pN9kDIqyAvUoeP6lPK3tfnrSlNmKpQUlshx
         ZOww==
X-Gm-Message-State: AG10YORQq3x6QUA4uVKkIL4eXEBxqfXwDVLlXl967Hnu7PPYCtAp1IjRzQ0kMMgVoK4h/Q==
X-Received: by 10.66.141.11 with SMTP id rk11mr30297112pab.75.1456042981653;
        Sun, 21 Feb 2016 00:23:01 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 79sm28621732pfq.65.2016.02.21.00.23.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 00:23:01 -0800 (PST)
Date: Sun, 21 Feb 2016 13:53:33 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: rtl8712:  Place constants on the right side
 of '=='
Message-ID: <20160221082333.GA24262@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move constants to the right of binary operators.
This issue was identified using the Coccinelle script:
@@
constant c,c1;
expression e,e1,e2;
local idexpression i;
binary operator b = {==,!=,&,|};
@@

(
c b (c1)
|
i b e1
|
c | e1 | e2 | ...
|
c | (e ? e1 : e2)
|
- c
+ e
b
- e
+ c
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
        -change subject line
	-inserted Coccinelle script
 drivers/staging/rtl8712/rtl871x_xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 7089ebd..506136c 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -241,7 +241,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 	}
 	/* r8712_xmitframe_coalesce() overwrite this!*/
 	pattrib->pktlen = pktfile.pkt_len;
-	if (ETH_P_IP == pattrib->ether_type) {
+	if (pattrib->ether_type == ETH_P_IP) {
 		/* The following is for DHCP and ARP packet, we use cck1M to
 		 * tx these packets and let LPS awake some time
 		 * to prevent DHCP protocol fail */
@@ -250,7 +250,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 		_r8712_pktfile_read(&pktfile, &tmp[0], 24);
 		pattrib->dhcp_pkt = 0;
 		if (pktfile.pkt_len > 282) {/*MINIMUM_DHCP_PACKET_SIZE)*/
-			if (ETH_P_IP == pattrib->ether_type) {/* IP header*/
+			if (pattrib->ether_type == ETH_P_IP) {/* IP header*/
 				if (((tmp[21] == 68) && (tmp[23] == 67)) ||
 					((tmp[21] == 67) && (tmp[23] == 68))) {
 					/* 68 : UDP BOOTP client
--
2.1.4


