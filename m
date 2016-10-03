X-GM-THRID: 6337322750963613696
X-Received: by 10.25.130.147 with SMTP id e141mr1372014lfd.16.1475522935906;
        Mon, 03 Oct 2016 12:28:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.38.66 with SMTP id m63ls290217wmm.3.canary; Mon, 03 Oct
 2016 12:28:55 -0700 (PDT)
X-Received: by 10.28.54.23 with SMTP id d23mr14995wma.23.1475522935317;
        Mon, 03 Oct 2016 12:28:55 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id w79si14301wmw.0.2016.10.03.12.28.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 12:28:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id b184so16227490wma.3
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 12:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZHKgBH3F7qdh87uyu+/AZAGBdMD00Peg+PJgdu48nL0=;
        b=zXmn5/l0pLw8nbfMP1bRzMXkvzoJAYkIeWyVVdeArY8h3aU/0uZt2tqTumMZGxkAmC
         kxnRLXxdwgQ8wmwdBTYykJrdCQ4Nb/anMr6XXJiIE2fE3XbEC2AKcNFAbWznC4XvAC2A
         mC4kipjSGWs6veX0WVmRS6qsEFwXAYFkMTyagO9TU6uMQJ8foWWKgMg7IDtx5K1S1RNB
         dxbznyLMNBDKblHZi8RADPj1vcH5HvBvIFCwe9O8pKh5LPQHRFb0WVvhroCoqeaNH6zj
         t2HI7+8TctqkFbB001Q7WiGE4BneRHuD09dknOQZys8Rulq4KBdAnsMCBfIOYobPbis5
         /baA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZHKgBH3F7qdh87uyu+/AZAGBdMD00Peg+PJgdu48nL0=;
        b=P9myi21L3VagAGhIbg0rbSpnMA9ZShpNajS9PsG2z/0WewDT5CPtfsDysokO5v061F
         0UL8kpYNLY3yx7u0UCTp0fXzdcOdiPEzQ4cOD5TJtRP7AcJpvzwgoIL49lBxrVwzKiUV
         e7vO0LPuIC/9FlAt/8hysTmzklGJyvD/K6/aGOWFxFPNDPF4jYpRp/0H5lV8taznlC/s
         +wWly791vL7Rry23biRQ/Q+QKUtlwHDUU+UJtyEUruR8ehoN750TtmBk8DIaScKeDRUN
         xTBkdvdXCvNM+H1OzSOigwtpxW7ER1l6g1z3oQwvGemDjXi7QotXznevSQW4dZ5T3SQi
         bXtg==
X-Gm-Message-State: AA6/9RnOwZ9ScDP3W1iolp7sxAj5eQ9Xv2W9UtAGJsJmE/C3wK9o2KfaNqZLYahh3U60pg==
X-Received: by 10.194.153.199 with SMTP id vi7mr7880773wjb.137.1475522935076;
        Mon, 03 Oct 2016 12:28:55 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id gg10sm35914338wjd.4.2016.10.03.12.28.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 03 Oct 2016 12:28:54 -0700 (PDT)
Date: Mon, 3 Oct 2016 22:28:52 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: ks7010: add blank line after declaration
Message-ID: <20161003192851.GA11620@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes a coding style WARNING:
Missing a blank line after declaration, found by checkpatch.pl.
By adding a blank line after declaration of a variable.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index dbefc71..e85f4c4 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -294,6 +294,7 @@ static int write_to_device(struct ks_wlan_private *priv, unsigned char *buffer,
 	int retval;
 	unsigned char rw_data;
 	struct hostif_hdr *hdr;
+
 	hdr = (struct hostif_hdr *)buffer;
 
 	DPRINTK(4, "size=%d\n", hdr->size);
@@ -358,6 +359,7 @@ int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p, unsigned long size,
 {
 	int result = 0;
 	struct hostif_hdr *hdr;
+
 	hdr = (struct hostif_hdr *)p;
 
 	if (hdr->event < HIF_DATA_REQ || HIF_REQ_MAX < hdr->event) {
@@ -1117,6 +1119,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 	int ret;
 	struct ks_sdio_card *card;
 	struct ks_wlan_private *priv;
+
 	DPRINTK(1, "ks7010_sdio_remove()\n");
 
 	card = sdio_get_drvdata(func);
@@ -1142,6 +1145,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 		/* send stop request to MAC */
 		{
 			struct hostif_stop_request_t *pp;
+
 			pp = kzalloc(hif_align_size(sizeof(*pp)), GFP_KERNEL);
 			if (!pp) {
 				DPRINTK(3, "allocate memory failed..\n");
-- 
2.7.4


