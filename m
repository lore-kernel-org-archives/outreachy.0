X-GM-THRID: 6389561220722065408
X-Received: by 10.99.111.6 with SMTP id k6mr9258532pgc.131.1487685651760;
        Tue, 21 Feb 2017 06:00:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.209 with SMTP id r200ls2943486itc.20.gmail; Tue, 21 Feb
 2017 06:00:50 -0800 (PST)
X-Received: by 10.99.107.1 with SMTP id g1mr9223820pgc.100.1487685650938;
        Tue, 21 Feb 2017 06:00:50 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 23si3189335pfw.4.2017.02.21.06.00.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 06:00:50 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 1so11235569pgz.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 06:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WkGJAs8MbLEpbn0mRH8l8JFp9A6ZrOQGTQS/lybCh6Q=;
        b=AgyqvGDVmu7MmdiS1GtdOjhdUn8/TJX6OWoQ7c37N6uYPWbnpt5W4GS4KhguAvedl+
         CqundgKGvydh17w1yn4RRWiWYBlxxzYpPDJmMLRLp47Ut7/YVw+5uT1Ovz2ZxMqQqEg1
         4LpcdRFtRUZ/HabsfamJcgAT+y6aWeYgh0fMahykn/5BZB5scjQjwNK7nj3vMD1apaw8
         VHjicCh1W32JuAOBS3ya7FAdCSVPym/2vGJqjWupT5PSGPYcrV4+p7u9mit9BbyCNd+b
         ENpaHcN2FIMzxuFULSgYqMFCZ0PfBgVVEiMNdQUW4/EaEpR0NXSpRMCnGdvekeTSNyxM
         NBTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WkGJAs8MbLEpbn0mRH8l8JFp9A6ZrOQGTQS/lybCh6Q=;
        b=d4vR+KqAPnXzksOdH3Kkm5HQLe6Xcv75C/63DvV+Ook1iCayVyqGcQy9ODjsV7yPQS
         Y9kwVFoxNrYmzo+FQs04MVVr3WlP0DKp4XEpIVuwvRe4wc5FV01DDqsszq8cMPVC/Zkn
         A/Tq7Hdq6Q0l6CGIIuIDIrWh6YkCqjd26Db8dTeuYXdLAB0Wc+WEU4MXUsq3vpZP0T3S
         uCf9icKZvyGM9HgN7265LpEAx1/iK0hlFJ3uHO5DXVDsn2RtujUgrVCwul7kfcZAQXqr
         C9ugesoi2XRZjI+muxoljzjWVmIqiddctvFOggTw107PfUaz1DBI2Ny/QSAuOzVHIlKS
         qtNw==
X-Gm-Message-State: AMke39mddTIfdTz31U5/5K7sIWK2TNbNgwtliaKzldCQ4555eoItIe0b88O72dm51Vnm7g==
X-Received: by 10.98.7.150 with SMTP id 22mr3545500pfh.69.1487685650701;
        Tue, 21 Feb 2017 06:00:50 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t22sm41347418pfa.114.2017.02.21.06.00.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 06:00:49 -0800 (PST)
Date: Tue, 21 Feb 2017 19:30:46 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: ks7010: Unnecessary parentheses are removed
 and also improved coding style.
Message-ID: <20170221140046.GA15208@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary parentheses are removed as reported by checkpatch.pl
to make coder nicer and to improve readability.
Also coding style is improved.For example:-
It's often nicer to read if &(foo[0]) is converted to foo like:
     memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
     memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
Changes in v2:
  - Make the commit message more clearer.
  - And correct the error on line number 116
    in file drivers/staging/ks7010/ks_hostif.c
     changes:-
     ap = priv->current_ap;
     is changed to
     ap = &priv->current_ap;
---
 drivers/staging/ks7010/ks_hostif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index ba283ab741a7..b643a37fb943 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -113,7 +113,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 	int rc = 0;
 
 	DPRINTK(3, "\n");
-	ap = priv->current_ap;
+	ap = &priv->current_ap;
 
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == DISCONNECT_STATUS) {
 		memset(ap, 0, sizeof(struct local_ap_t));
-- 
2.11.0


