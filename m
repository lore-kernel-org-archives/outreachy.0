X-GM-THRID: 6332371296265961472
X-Received: by 10.200.45.232 with SMTP id q37mr5534166qta.78.1474370113802;
        Tue, 20 Sep 2016 04:15:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls1725944otw.9.gmail; Tue, 20 Sep 2016
 04:15:13 -0700 (PDT)
X-Received: by 10.129.121.70 with SMTP id u67mr16854476ywc.2.1474370113459;
        Tue, 20 Sep 2016 04:15:13 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si6158534pfw.1.2016.09.20.04.15.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:15:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so847222pfj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 04:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0wcoAEgQzMiQaCjk46m2PA62sv4EwuJSFYA+j8lSyDU=;
        b=RDghRx91pn+HSqnsbRn4yxn4QkZQTX7x0KjfMtJvghn2Q3F4wPjKLFz2SEdDyJV9Oz
         2a3g9+dEd5PJADdbl2e89hz3D6qhBr95r0z2GUXmrS61lvhZfbw9ncj7TI043qhGJBL9
         j4q1D9CRDOrXfk4h5AprohebtX+sEvB5pEJ/P0/IoBxs6Sq3BNc0iw+xWhgyihRS1fmD
         z85zKFxzgV1oHEB5UuG8tKxePjLRAD+pAt5fU615Ar6Ih8p56qUJt9yhnY09g94B1IpM
         JeOZ4C87z2/eKxKD0YN1EUSPdBGLfbZjIgaMKq6IY3PN7hnGcZfJ6AzGD2gFaX+Ec+ZD
         8KqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0wcoAEgQzMiQaCjk46m2PA62sv4EwuJSFYA+j8lSyDU=;
        b=gTCLwV3Q3QmpTR2+HkvU8B6T7oEJC7ViXTrgH4qK+DXtoR1raWilvuid7YBeuO9kWm
         Z0VpzACSnUOoP9gbVdOf189Mlb7HypmnZW6WbxpgNq/hg384GcL1vCWHqD+3arJRtvDg
         ZWGTcrMORG3/SoBwIILUxXD4RB+cWlOW135E5CN8aU7AwS9vKetIfKgOwpg+U1tJNfPs
         2XUFCAuZbi5dBMEHdS5GUPYZkteQojQzLsOC1MO9/jzOICnefPmda+PW+yKy4UahY+Rd
         JGQGs4Lr3FXrMzZD1hXEvFskDyjUWEi9nX10T1+v7zZRYYtufWGQrOWV3bMSjiY/61ou
         Pp2g==
X-Gm-Message-State: AE9vXwNDpz6c5Hb3sSC45GvaxuiAWX+85GeWcIpIwRr9dSXj8U4AFxHM+UeJaVmbkj12xQ==
X-Received: by 10.98.26.139 with SMTP id a133mr41155722pfa.167.1474370113099;
        Tue, 20 Sep 2016 04:15:13 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x66sm78404813pfb.86.2016.09.20.04.15.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:15:12 -0700 (PDT)
Date: Tue, 20 Sep 2016 16:45:04 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/7] staging: rts5208: Add spaces around operators
Message-ID: <9fd66e3f3f2c7d8c44c85f66b784e247dc3ae9c0.1474369970.git.aquannie@gmail.com>
References: <cover.1474369970.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474369970.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Adds spaces on either side of arithmetic and relational operators like
'-', '<' and '*'. Issue found by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/rts5208/ms.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index 7923230..91cd37b 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -2711,7 +2711,7 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)
 		us2 = extra[0] & 0x10;
 
 		(void)ms_arbitrate_l2p(chip, phy_blk,
-				log_blk-ms_start_idx[seg_no], us1, us2);
+				log_blk - ms_start_idx[seg_no], us1, us2);
 		continue;
 	}
 
@@ -3986,7 +3986,7 @@ static int ms_rw_multi_sector(struct scsi_cmnd *srb, struct rtsx_chip *chip,
 
 		for (seg_no = 0; seg_no < ARRAY_SIZE(ms_start_idx) - 1;
 				seg_no++) {
-			if (log_blk < ms_start_idx[seg_no+1])
+			if (log_blk < ms_start_idx[seg_no + 1])
 				break;
 		}
 
@@ -4648,8 +4648,8 @@ int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 
 		rtsx_send_cmd_no_wait(chip);
 
-		retval = rtsx_transfer_data(chip, MS_CARD, buf + 4 + i*512,
-					512, 0, DMA_TO_DEVICE, 3000);
+		retval = rtsx_transfer_data(chip, MS_CARD, buf + 4 + i * 512,
+					    512, 0, DMA_TO_DEVICE, 3000);
 		if ((retval < 0) || check_ms_err(chip)) {
 			rtsx_clear_ms_error(chip);
 			if (ms_card->mg_auth == 0) {
-- 
2.7.4


