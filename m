X-GM-THRID: 6469021492969472000
X-Received: by 10.107.3.228 with SMTP id e97mr1363236ioi.27.1506186438456;
        Sat, 23 Sep 2017 10:07:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.73.1 with SMTP id w1ls1072270ywa.21.gmail; Sat, 23 Sep
 2017 10:07:17 -0700 (PDT)
X-Received: by 10.129.88.6 with SMTP id m6mr1457109ywb.42.1506186437686;
        Sat, 23 Sep 2017 10:07:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506186437; cv=none;
        d=google.com; s=arc-20160816;
        b=EKyt8BwLzPJqPzedgWLROeq0QYIKL4m+MqQuW7nTBKidUamI3bUVu6LqGcSnGl3Wwx
         x+aScXg4EGmHvI8zoYM+2lrRCf3AvMlKVJ1UktQi7n3kdPOe2QiQnRczcxPZ1l+LzOYJ
         KYpesikjax0Fqeo8S1X5o94DjOmYMWPvpE8H7iyHBdEkjKNZHOBWaZy/AayELbCWZuEV
         bQtdMlQCq/O3Qv/d/mTrfMR2hNZCV1/7drgeP4n8UKaOsHJTWaP/89ZIG4KNBMIMAlnJ
         iTx3FsJAbbuS/uPjI734wYIhs649ocI1Xhh+YxREIoBmgtxzy/NG6jkiRjIKlLhdFw+6
         Tg2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=GvXxb1W6EldBp0JVx3rroHhpfErwQj2T5ymqUFnChWA=;
        b=xbI6QlkrguIt9+r+t3daxjcv7TEtRJ6AAPy/O9Z+X7LbhkRx8udVCP9DMxFvCgH6kZ
         6piJy5bYNb5yRIMEGeH4+GVUM2b/sTipfIhtUDopPZNi9VHwnzeyJzsQimltRdjUdULI
         CYirENOTsbP7vUulLEe1dsJHopJBxnmMm4ZQxhNn3PRXRdu3uqhJXeIOztfL4piOMu1U
         ZwMby3+YYsxy98zgfFI5VB+Dsv2WiO6WtJGgmwkNbXKzopLhDgo7uYJzAf0+qU7UXJN/
         e3jka6MV8Y0XapGlP/k5UjOeICQyjrzXpek/c8uCW74mvaSQIMUoOJ3fbK7H7jAPHjky
         soQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nK3ejEZG;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a17si180258pfk.15.2017.09.23.10.07.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 10:07:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nK3ejEZG;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id a7so1787324pfj.5
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 10:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GvXxb1W6EldBp0JVx3rroHhpfErwQj2T5ymqUFnChWA=;
        b=nK3ejEZGY6Svrgac5+MDiYRr+XDmUG3YIuTE7K3B5b+NwN/krbCtHQDhjfq/4GPHHC
         JyCGloZxb6XSYDSuXMnSZ0HIVzGGof6pPKOSBN3OjIl1eLA7QpBmKQbJLrD/u2G8mpSC
         ApnhIUkP4mA0/nbzQjuTqbG0DNAyMVOHjU2iZ4TFdR9OyCGflQhStmsC2xzkQZq+g9HX
         NByFTd/KDiAq7hLiAk1n403ORakhlTKY4nPK51g9Nxt+eyp/uZn6a5tTpTo3hA9vhdlM
         rKK3u8+jNeJjjAqUb1FwQcwA/Zyigv8/IwCZ1ZdIlEt4PbaApoP4S7cWrt82vjWwHFVd
         e7jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GvXxb1W6EldBp0JVx3rroHhpfErwQj2T5ymqUFnChWA=;
        b=Sg19FElGNbAPQ/hvrwxFMq6yUfhBbwu06aUDXYXKwi6Keqf51jcPzko5zvRCEXPpH7
         n0GnV9R++gBpN7a9RVzzt4roz6F0b6nyajowykmHV1SAeEUL7LxKrEbK7CHwdr3SweoX
         bckavzdSnhP7423y/eBq4XOIzeqv1TLqUynTUKyhqAZtY1GvIStT9/UqSWlXUHr+1yP8
         LdcrPDcAUneZhsXXT0kk0hl2dy5DtI7/3ihRFlyvM5r2W2dtZ5KQBTIRRKm2Hp+fTaVU
         8Aqu2dpXAxLaOhfO5jaAj4cH6Eee1bby7KHwaQRR5cBZaydlYjgSg7LbFWpJj9vHipw9
         tsTA==
X-Gm-Message-State: AHPjjUjWUrDPNRN32v/7eH93JWaQbQBUxqXCkEkldyBw4y1PCOwr9dAO
	T8XHdSIoaNiv/vd80rS0Qlon0Src
X-Google-Smtp-Source: AOwi7QDIMRW3U0V+jALXPuNuV92YW4vLiDSRLOGqpByQ6WXvxP8JVuBGLZ7VSCZXGYmZSzlnAY/dxg==
X-Received: by 10.84.241.201 with SMTP id t9mr2683851plm.154.1506186437127;
        Sat, 23 Sep 2017 10:07:17 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([14.139.122.139])
        by smtp.gmail.com with ESMTPSA id g66sm5132452pfj.161.2017.09.23.10.07.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 10:07:16 -0700 (PDT)
Date: Sat, 23 Sep 2017 22:37:15 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com, johnny.kim@atmel.com
Subject: [PATCH] staging: wilc1000: No space is necessary after a cast
Message-ID: <20170923170715.GA8329@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

A space after type casting is not needed. All the other typecasts
in this file don't put space after typecast. so remove space
after typecast at this line.

checked with checkpatch.pl script

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index ac5aaaf..36dc2a0 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1617,7 +1617,7 @@ static int mgmt_tx(struct wiphy *wiphy,
 
 	*cookie = (unsigned long)buf;
 	priv->u64tx_cookie = *cookie;
-	mgmt = (const struct ieee80211_mgmt *) buf;
+	mgmt = (const struct ieee80211_mgmt *)buf;
 
 	if (ieee80211_is_mgmt(mgmt->frame_control)) {
 		mgmt_tx = kmalloc(sizeof(struct p2p_mgmt_data), GFP_KERNEL);
-- 
2.7.4


