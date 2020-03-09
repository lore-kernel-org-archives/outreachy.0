X-GM-THRID: 6802255880053063680
X-Received: by 2002:a1c:2dc7:: with SMTP id t190mr224133wmt.137.1583773614395;
        Mon, 09 Mar 2020 10:06:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cb93:: with SMTP id m19ls167820wmi.1.canary-gmail; Mon,
 09 Mar 2020 10:06:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuf5HWhzDxENyTemKSoBt5dbfjKatNmDhLFMdKdTCgBJo75gOaXEQU/uFdWTjc5P71KVpUp
X-Received: by 2002:a05:600c:20c6:: with SMTP id y6mr220023wmm.95.1583773612912;
        Mon, 09 Mar 2020 10:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583773612; cv=none;
        d=google.com; s=arc-20160816;
        b=oGRvbNyhLlERYrzrh0TmGVlld0ybNbLgrOHAPyIzb2NJ0984adaxCCY4LCLFqKJQNi
         tbj1Yyn9607r4VHER5PYoDHs6nZTaeDD//hXmJMzYrz5wQ5HwTFI1/TbDz9/T34zB8W/
         rCrIQL9YM/hsgSKtZ0EigVAoGySHM30waMR5IlkAdb/X1wWZewZntavaD1JTKKK2DG8l
         TX+jJxXd77+SenYgXd2Sh9t4xUrrdtUl3bnSSIqFr3G4x/NEzkzfDk7esyWKOOqGh6Ow
         erc+SMd/MsV82sM1jAX18isQ7yoDd7zr1HhnZllZYNm57iB64Y3WR+jvzJeyPJALkc7O
         2sMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=U8ogOP6oqvlOyF5R8K9/1CwjVnJrPzWGjWHU8kIwBUg=;
        b=b/194et1Y6pitlmNHjoFExinMjwg85ozICNb7OlBqnZCADrZtXbDbMA+58q+4TX8dt
         x8JL2gQZk+v2tfqyYI/YLPLBNtNghQi8GHsyh2j4toC/+68JwkgF1qzIEcP2Gbn8D2FN
         +RrDLSOq+kqHRZbP3ykkwNNAbVs+4uvAcNOG7iX3I46pefAoG7+DOyx54pesoCJk0KEr
         tyvF9OmWmAIGHLCOEr3bEl3r3B2nNNjcwS4DYn8Ow9QbORtKUhQAb8N9pe5V4Gp12ayb
         0ZICqc9nDlsiV4+czCxDN06l8DzaFWIcvVhcqsO9k7K8+pNcXG0Uy0WVxHVipf94LFKR
         1Fig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Yz7c6auU;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id s2si151687wro.5.2020.03.09.10.06.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 10:06:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Yz7c6auU;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x441.google.com with SMTP id t11so12206793wrw.5
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 10:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=U8ogOP6oqvlOyF5R8K9/1CwjVnJrPzWGjWHU8kIwBUg=;
        b=Yz7c6auUIHVxX3RMgFe5+Eo9NwlUa9H+qPfwNWHcp5SazeKqI4G9ITaN+V/dt6vxAU
         KR6S6QHd3kMv/aQE0fgygdjyMEnnAokKwd+Io9sWuh/+ms2N1PqKCePyQqLCiNTNa4l/
         oNGSc+0LaSSdVA2hxuiKfKYj8v/q9JXEEUakk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=U8ogOP6oqvlOyF5R8K9/1CwjVnJrPzWGjWHU8kIwBUg=;
        b=sVCUeprYNGlmCj0du0mqHeM9uCZybJ0iOMNywIJUUtC+mZmL6F9TQzilh9GIU+A3tQ
         ExDrdldbRJc0oevP86Ye+XPjjqKBG5OBbZqMXpxtBtOopZc3c2ftHOLrsBcMO3erGUC3
         vF/DGQXY/54YjKrIkQgHaBLnbWlSGcUfaUbiOneWF9/6gRRIGA2Tk3DSUZhdtzM7MgWn
         YGIQ5AtNVXUNdfuXIv6gqyOGtVAIR2/+z6EtT5viiXybx2TmLMwYtinIYajKe6zO9erP
         ZNlIu5GaisHDlrDdzwH+FwGBfzjnj//z8IDLNClyvRbDbogA1cKyo//UY/bPOPQPa9Lw
         dPSw==
X-Gm-Message-State: ANhLgQ0r3J8owTiFfxy4snw5TPMd1BV1xZZJe/eU0PL6M6uvzkpACCZ7
	zuCTNfgeiMyX5RLvZm2tQnaLtbBfzbhj+Q==
X-Received: by 2002:a5d:46cc:: with SMTP id g12mr8442415wrs.42.1583773612356;
        Mon, 09 Mar 2020 10:06:52 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id 9sm212857wmx.32.2020.03.09.10.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 10:06:51 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	vireshk@kernel.org,
	johan@kernel.org,
	elder@kernel.org
Subject: [PATCH] staging: greybus: i2c.c: remove commented out function
Date: Mon,  9 Mar 2020 18:06:43 +0100
Message-Id: <20200309170643.4947-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Remove function gb_i2c_smbus_xfer() which is unused.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/greybus/i2c.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/greybus/i2c.c b/drivers/staging/greybus/i2c.c
index ab06fc3b9e7e..c48fa1de89b0 100644
--- a/drivers/staging/greybus/i2c.c
+++ b/drivers/staging/greybus/i2c.c
@@ -215,20 +215,6 @@ static int gb_i2c_master_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 	return gb_i2c_transfer_operation(gb_i2c_dev, msgs, msg_count);
 }
 
-#if 0
-/* Later */
-static int gb_i2c_smbus_xfer(struct i2c_adapter *adap,
-			     u16 addr, unsigned short flags, char read_write,
-			     u8 command, int size, union i2c_smbus_data *data)
-{
-	struct gb_i2c_device *gb_i2c_dev;
-
-	gb_i2c_dev = i2c_get_adapdata(adap);
-
-	return 0;
-}
-#endif
-
 static u32 gb_i2c_functionality(struct i2c_adapter *adap)
 {
 	struct gb_i2c_device *gb_i2c_dev = i2c_get_adapdata(adap);
-- 
2.17.1


