X-GM-THRID: 2273030701056
X-Received: by 10.180.89.194 with SMTP id bq2mr480104wib.4.1424569944304;
        Sat, 21 Feb 2015 17:52:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.194 with SMTP id a2ls437260lak.108.gmail; Sat, 21 Feb
 2015 17:52:23 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr503261lbb.24.1424569943876;
        Sat, 21 Feb 2015 17:52:23 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id l8si594733wia.0.2015.02.21.17.52.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 17:52:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f42.google.com with SMTP id n12so19663391wgh.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 17:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=4dq5URpZSkAQOrzrhnlxdYMTjjACYBESyjxRfFCQQpU=;
        b=Vs9N3Eh4zH9pMoUci+HjUqsvufq+bihgeLIa+2tuCsEAS2Qjpz5XVViuZlJYF/Msnd
         YZhhhMlOcsY0TobYEPBid8kbS++Z1vk8Vm1002To3im3knaxYlme0v4smqWmjpT9IiIh
         tHtZ12zzJk/LaYnjCae73h9qUd0QTw4DC0vsSRAD/tuE5fdCVZjqDAQYi6KtENCabLvs
         HUWPEL1OPgSwHdid3g/ff7XTw9shFm9kSfh1WGN9Xb/ELylPSqnqSJvYq5qviS1kk2+O
         A0yHTflsLbh1dIPBcIU7WaEHhi4Dx9qpSnA8QxEFujuNRrdKI1SZkDHWG0kA+sTYqYgU
         AUwQ==
X-Received: by 10.180.211.101 with SMTP id nb5mr7895353wic.37.1424569943777;
        Sat, 21 Feb 2015 17:52:23 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id dm6sm9227136wib.22.2015.02.21.17.52.22
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 17:52:23 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 6/7] staging: ft1000: ft1000-pcmcia: Removed unnecessary parentheses.
Date: Sun, 22 Feb 2015 03:52:02 +0200
Message-Id: <c15788d0a38f9799155ec26c26c3456686a176a9.1424569663.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>

This patch removes unnecessary parentheses from control expression.
Removed following checkpatch.pl warning:
WARNING: Unnecessary parentheses

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
index 29cca41..1d0d46f 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
@@ -910,7 +910,7 @@ static bool ft1000_receive_cmd(struct net_device *dev, u16 *pbuffer,
 	tempword = *ppseudohdr++;
 	for (i = 1; i < 7; i++)
 		tempword ^= *ppseudohdr++;
-	if ((tempword != *ppseudohdr)) {
+	if (tempword != *ppseudohdr) {
 		pr_debug("Pseudo header checksum mismatch\n");
 		/* Drop this message */
 		return false;
-- 
1.9.1


