X-GM-THRID: 6250276130683617280
X-Received: by 10.31.15.11 with SMTP id 11mr46941365vkp.3.1455255814852;
        Thu, 11 Feb 2016 21:43:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.104.97 with SMTP id gd1ls769458obb.24.gmail; Thu, 11 Feb
 2016 21:43:34 -0800 (PST)
X-Received: by 10.182.221.129 with SMTP id qe1mr47348934obc.7.1455255814469;
        Thu, 11 Feb 2016 21:43:34 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id u66si1430174pfa.2.2016.02.11.21.43.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 21:43:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id zv9so996785pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 21:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dEE8Cc0FrRBsLYQEkoWDjA8skAS9I823zz9Pf/fAWCk=;
        b=0gJC7H6bS//9ZoVl8DGn3I6RbBfa9EFsRKDAQxV/0KGFL+YldT0eQuGAp/a/ZzfVfA
         aC8kp5HuJ7ivq6HRJFF7LXBOXuy98/5ixVFc9qIlD0AAyYbvabmcp5D3k9CecpvpqyEr
         QIdz+iDQPOoRodkGrJ8x9pgU0Knv9rUxWzdv9aLCR3Uokf2i6UE+BGrib2Eev8q0NJcO
         HK1FqA05G3yORuYfcUejfir2TRtTZburcHZa2rK10VZ8lNftrcpYgfgv50ppOxDtA54l
         52xSrhFUa9CBpmGZk92G7LsnUZH53lSS4X6hH5cURGJx6UjTzWDuc5pGkB3Kq5ivQ6Vi
         7wAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dEE8Cc0FrRBsLYQEkoWDjA8skAS9I823zz9Pf/fAWCk=;
        b=knpOu8yBEJ3nRhSVXCX39z4oPkl61jHLuFwY962NopkuSITHgise5YzsvfiSWliULp
         /eVg/Wcb0SufeNMrFBHTo3mTexzgDWOoxWtA8WPq8t5t4Yon9g1C/5ovYkPtxDE4R9ue
         qbiSIycfn2Vn6ACs7aG0v5LNiRpsspIEFMkIAGdODNb0QEo/HrkepmWX0ZY6ugHU7d2M
         7GRc/EtsUOMf7xSKFhw3YKomXiU707Ep+Ku3GdmZWK5p/UHMTQoLZ9KChkBegfstKa8e
         mOOUj7o+vKyfLuVAQbGeVypxnddCVB0kYq4FV2I7RQcwX3e9xN2S/drwJ/AoKq/Mt+Gp
         ZpeQ==
X-Gm-Message-State: AG10YORJOcUHeidbpqdo34s5/jn3IKFwagVLSZjKOcE4kRN9HOWJWAB6Gidr14G2mGiYUA==
X-Received: by 10.66.235.36 with SMTP id uj4mr73472871pac.85.1455255814309;
        Thu, 11 Feb 2016 21:43:34 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.160.156])
        by smtp.gmail.com with ESMTPSA id xr8sm16138956pab.26.2016.02.11.21.43.24
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 21:43:33 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 12 Feb 2016 11:13:10 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/2] Staging: lustre: osc: Declare structure as static
Date: Fri, 12 Feb 2016 11:13:09 +0530
Message-Id: <1455255789-6050-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Declare structure as static since it is used only in this file.
Problem found using sparse. Used grep to find occurences.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lustre/osc/osc_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index 3ae00fc..beabb1c 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -3256,7 +3256,7 @@ static int osc_process_config(struct obd_device *obd, u32 len, void *buf)
 	return osc_process_config_base(obd, buf);
 }
 
-struct obd_ops osc_obd_ops = {
+static struct obd_ops osc_obd_ops = {
 	.owner          = THIS_MODULE,
 	.setup          = osc_setup,
 	.precleanup     = osc_precleanup,
-- 
1.9.1


