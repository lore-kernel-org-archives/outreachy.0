X-GM-THRID: 6252998244395122688
X-Received: by 10.50.154.2 with SMTP id vk2mr6097382igb.9.1455889653506;
        Fri, 19 Feb 2016 05:47:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.132 with SMTP id f4ls100291obe.75.gmail; Fri, 19 Feb
 2016 05:47:33 -0800 (PST)
X-Received: by 10.182.24.199 with SMTP id w7mr12227949obf.48.1455889653177;
        Fri, 19 Feb 2016 05:47:33 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id u66si1699581pfa.2.2016.02.19.05.47.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 05:47:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id e127so51529763pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 05:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+g8aYkTAxjPSTdixX0JRrRmByvQCys0TZSjHhWMyVLA=;
        b=Mwnw2xcHiNljqgI4Ga6TCwRltiXodFyAaaOyD/X/AaEKvySl3jPwqmpkNEiRUrMne6
         NSnMZx431O2ZJkYGv+j2BGw9/sVDWg6tRjuZTa9NUqcjtVdvMQ1BPj1afkW42JZJjCNz
         k+nJycikA49ytoIxEPgCTHX1Q0+dP8tVAae8GDreh5UhPznW/hcaNffz+WM6LIfr4nM4
         ehJH7cMy7g+ouXJW4PdzfgY7uJrbmLkL3j70GMpVboSxHB3b0FX9DpuBnSKgTKUujnOL
         sy1e56Gss4UHJOplIZgTa/i+yHm4av18JpkV9T1rXXtyhzCebhLDU2L+5qOhkjd/mMn7
         tFEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=+g8aYkTAxjPSTdixX0JRrRmByvQCys0TZSjHhWMyVLA=;
        b=LX2KXvr1dAcXCXQxOgf9bMNAasnfw9MRgRzZSPDpfaeDq8eKw4iwyzplYlLK7cDtU4
         vTOs5Uxs18qgu4qbxlK/GTopVEZngYBmrhM3PLnSmKFPyiLig5FFBH20nMnMvW6KRCm5
         tM1gTcNs5jHYsbSifXgHb9IMPvS5mVk6xC/G6hZuNCCobGh0yFoE5iteosI1BMUovG2L
         XQ39F7gulD1gQltWfrfIRl86fa1rr+ORyNFRZgBCdTLi8OgnMrK2+mUuyazmp6zcD0T/
         NxJAh8GdbOQcCI9LuBlyajFtJrTfTlvhN0s3x/Oli6dqHovQsdRKyVXJiAaxED6eAgXA
         fl1w==
X-Gm-Message-State: AG10YORRvvDza7pBSBDwhZGRL3BYgPKu5YYfRH8Pq2H7HslqC8dNLy7VcCx1uqJ3tiC+Gw==
X-Received: by 10.98.65.206 with SMTP id g75mr18200731pfd.94.1455889653052;
        Fri, 19 Feb 2016 05:47:33 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 6sm18045003pfo.58.2016.02.19.05.47.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 05:47:32 -0800 (PST)
Date: Fri, 19 Feb 2016 19:18:03 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: rtl8712: Place constants on the right side
Message-ID: <20160219134803.GA20012@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move constants to the right of binary operators.
This issue was identified using the Coccinelle script:
misc/compare_const_fl.cocci

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
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


