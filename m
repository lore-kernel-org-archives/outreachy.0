X-GM-THRID: 6253655179876368384
X-Received: by 10.112.189.104 with SMTP id gh8mr4951366lbc.12.1456333872859;
        Wed, 24 Feb 2016 09:11:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.132.74 with SMTP id g71ls655763lfd.5.gmail; Wed, 24 Feb
 2016 09:11:12 -0800 (PST)
X-Received: by 10.112.158.138 with SMTP id wu10mr1961560lbb.11.1456333872322;
        Wed, 24 Feb 2016 09:11:12 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id v197si1249377wmv.1.2016.02.24.09.11.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 09:11:12 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id a4so3901693wme.3
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 09:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9l4GKzI4PgG1c4F+i0saUE1PCK6kFGwzeWPudWU4U+o=;
        b=R+cMXcjhaNpXVKWfnKU7KuQqpjbJgRcZtYfzCj4SZqwmS+24UHsZz7Wh7PkrEXr6/a
         xEq9a1L+EMzPVYhhRRpmAfiqkGoHfJBPbtdHu6LJxy+n5mKPbARSGsrQfnbkXuRkM/KI
         TFdvgjCNqmwzCK8e9OwSsccXcGvEqKp2nZii88eLIPzSJHy6roRhcBSsxqB9SpO1SOS9
         c0qFdJgRDtcOaH/qYlx35fM+7mvT3vksPb62XhSgDmNaOkPu/GyXP2LHwJvYZS3ClNJp
         N3kubHPjxz6OGG+4y1tJMgYEEeSNnL1RyMwfHF6lLBMnoPX7/OahOpZ08lkgT13eqtM5
         GxIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9l4GKzI4PgG1c4F+i0saUE1PCK6kFGwzeWPudWU4U+o=;
        b=lJzyZR1ODSxcYo9g15TzCVba3HVe5GNQJlXZJLsLkkYqCN1X9ZS2fZNys2Fihha2Yz
         RPktWQNBS0Vpr8iJQtusdPhH2zX52ZsLcZzPJABdA2aUZfkKhFOAMNGE4YQm46NZHc7z
         SYX0dS8mcy8o2Vn5OJWTiMSPp6j7AVnWJbWXPrsN1oKBE4KZYgOTZF0fnnv0/3K+kDSr
         PvgerCbauNM5/a1SDTdbbXwOdkKzlt7Cc9z/1k330Filey3KPC9aUw1xC8BVKq6BDNow
         xIIM5Sz7dvPjH3S6i43JbEsD/DcIJG37WIlrQuqGDDOg8XznbZ2oPbNiRCF5xrwxt4p2
         xtMw==
X-Gm-Message-State: AG10YOQlAZe8jkAv+SFeqHjTxPEwb6VJtoWwaIJmssqNqZmldpyvED9jw7i1+lBDfcEaCQ==
X-Received: by 10.28.17.198 with SMTP id 189mr24787387wmr.47.1456333872154;
        Wed, 24 Feb 2016 09:11:12 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([213.143.50.70])
        by smtp.gmail.com with ESMTPSA id ys9sm3906368wjc.35.2016.02.24.09.11.10
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 09:11:11 -0800 (PST)
Date: Wed, 24 Feb 2016 18:11:07 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com, devel@linuxdriverproject.org
Subject: [PATCH v4] staging: nvec: Avoid the use of BUG_ON
Message-ID: <20160224171103.GA3822@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Prevent a kernel panic by avoiding the use of the BUG_ON macro.
Checkpatch detected this issue.

The BUG_ON macro is not needed as such cases shouldn't happen and they
were introduced for debugging purposes.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
Changes in v2:
	- Remove the BUG_ON macro used in the module, as Marc Dietrich suggested.

Changes in v3:
	- Include detailed commit message according to the reason of the macro removal, as Fabio Estevam suggested.

Changes in v4:
	- Commit message adjustment in order to avoid the WARN_ON macro which is not used, as Julia suggested.

 drivers/staging/nvec/nvec.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index c335ae2..f6a1dbb 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -641,11 +641,9 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 			nvec_msg_free(nvec, nvec->rx);
 			nvec->state = 3;
 			nvec_tx_set(nvec);
-			BUG_ON(nvec->tx->size < 1);
 			to_send = nvec->tx->data[0];
 			nvec->tx->pos = 1;
 		} else if (status == (I2C_SL_IRQ)) {
-			BUG_ON(nvec->rx == NULL);
 			nvec->rx->data[1] = received;
 			nvec->rx->pos = 2;
 			nvec->state = 4;
-- 
2.7.0


