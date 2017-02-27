X-GM-THRID: 6390780050561564672
X-Received: by 10.159.55.145 with SMTP id q17mr4322202uaq.18.1488208298729;
        Mon, 27 Feb 2017 07:11:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.240 with SMTP id g103ls12568858otg.39.gmail; Mon, 27
 Feb 2017 07:11:38 -0800 (PST)
X-Received: by 10.200.50.105 with SMTP id y38mr5456499qta.67.1488208298308;
        Mon, 27 Feb 2017 07:11:38 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id s64si3224478pfk.0.2017.02.27.07.11.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:11:38 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id p185so623161pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 07:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=6/ujqynbsdm3bh0KTqmp/2yRSN7fA9tsTfbxD9dJWr4=;
        b=sg3zl+aMuSkXPnoJRWklX1u4+48qYkTcVpw4gBjKSaBd1/vkbKhSaH8j9JoyVIPAtI
         lfdBkycZ3A/vCBZi/MHSk1MoECuTW1qz1pUrpO+4gwK4kgMT5l7DbuH4Q8LZMB4DhJfK
         CHeh77dTN/o6/T6TJjB7qLZ8wrp0Hou5Jkw8kpjPSoM+8y33fRztiz0SPiXkkwJ9xZAW
         klh/UMDHKBeXKYCV7BWDuYLDoDGme1VPUmXluMI9PGE29buaeYTiK3ItPfrmSeQ2v3NG
         wPuG6v1g/IXQOfQXk41lBqRySv+txXBbe73PnR0SPGreVwaNxruiZyXzh/xWS9ygIsqv
         koBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6/ujqynbsdm3bh0KTqmp/2yRSN7fA9tsTfbxD9dJWr4=;
        b=fMwkjM2zFOwTFuMKN+NLT3Jl+T7PzpkDXm6u1H2ls2AjbbkqI+CzNkw5VQyPUp20Qo
         y5oaqNhWqAuRrKaRcBR45rnt+HDLBZnUPYK0upjUrZCJ7fUmxpMu3VW7nZ3eE4fDEBF9
         x8m3uRQygeD5nk690jBDfXU/YeWebAJqFJtzkXnvV+Af8P4zv+IhDEem9ncx5SIZmhNe
         BOQxCj2HDyn5bjPTYQWx/xcME6vdj80kuLNT9f4C7rs48b+wpgan58aFWpwKhWk4t23w
         jclgdgSWlsxgRA+YUm3LSntM68LwCZvY9bAmgsRaORHreg6s/AjgGjWK5HwER30yTVGC
         VpgQ==
X-Gm-Message-State: AMke39nYMP/+sUzxvsCIfljINdnAMCMPeF3UP63yLcJHsCy+haLzZ1EW4T2+9ySAvp8HBA==
X-Received: by 10.84.217.14 with SMTP id o14mr420211pli.51.1488208296646;
        Mon, 27 Feb 2017 07:11:36 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x15sm31511889pgo.56.2017.02.27.07.11.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 07:11:36 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: speakup: Align with open parentheses
Date: Mon, 27 Feb 2017 20:41:24 +0530
Message-Id: <20170227151124.18063-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Align next line of print statements
to the right of open parentheses.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index ce94cb1..f5156bb 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -117,7 +117,7 @@ static void say_key(int key)
 	}
 	if ((key > 0) && (key <= num_key_names))
 		synth_printf(" %s\n",
-				spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
+			     spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
 }
 
 static int help_init(void)
@@ -182,7 +182,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		name = NULL;
 		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
 			synth_printf("%s\n",
-				spk_msg_get(MSG_KEYNAMES_START + key - 1));
+				     spk_msg_get(MSG_KEYNAMES_START + key - 1));
 			return 1;
 		}
 		for (i = 0; funcvals[i] != 0 && !name; i++) {
-- 
2.9.3


