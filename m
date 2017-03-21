X-GM-THRID: 6399861794390671360
X-Received: by 10.129.104.85 with SMTP id d82mr18608262ywc.9.1490083964487;
        Tue, 21 Mar 2017 01:12:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.2 with SMTP id u2ls2627467itc.10.gmail; Tue, 21 Mar
 2017 01:12:44 -0700 (PDT)
X-Received: by 10.99.37.5 with SMTP id l5mr17533845pgl.165.1490083963974;
        Tue, 21 Mar 2017 01:12:43 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si3203213pfb.7.2017.03.21.01.12.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:12:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so24045294pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kC6W4NgMa737J8TBipUuOCNHFwWeh02EOES0W0GUmVc=;
        b=gXYIdR3ZSUdGVrIbmqk6eJJOivKYzsuaDrcpk1FUA90YTE+uA2cfL2ZiuyAq95CBff
         8xgsziFDAURHic8txqMlJ/ea5UuBropCe2fHSOobimurSHjU3OpImy1SWl9zn+ZPd4KW
         Vi6M3+/BghSqJPC+rW9/Sz3J1mW0PcCfW452KrOb2MLbJYbfZhYryZvPlqz+TJ8eKAwJ
         FNQ9YZv27Z/h7rCxifbd6BSgp+5wJFn6dk4hNlRHv9dmFnzgb8XUCRCS+16KfYbEz3Qp
         4RzPg5z7UqCvsuF1w7k9Sf/AZtQZzrD6hyrLxposQwxc1HHLcRQ5UrlEGIDJiNeGKq37
         2tMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=kC6W4NgMa737J8TBipUuOCNHFwWeh02EOES0W0GUmVc=;
        b=RQNXRjnpkR6y86RUKCBYR7XVYgMN8HHyNnvxVfQDC2W27g4fdseKOxyMpg1jh+jSi0
         q4nwUqW3s/cbEq5SJRsf8Weg4MUTI9F9skQrdSgG9H29Bf7EuMyFMC4uo6nTWYeR8Vwq
         mO64Uqyh4hhnK1JTgOstMeUDL7n5FIb7F3ZCnvuxMHuonePtUq5IanL00iVXR78a789f
         RrFv2HmGAfZmT5N5O2qhBZvUvUCeX4gr3Ca4zgxfFB8x0SyxDPkPKMbXdKVxgQ04lm4x
         MJuY9Vrfb+blvEPY+Qa3o7XjBAlzTW9K5Ja84vhyJDhRPIdOopcLmQEBdT7+PZa1x7/v
         NW0Q==
X-Gm-Message-State: AFeK/H2SAtGKIywpwhfDC5tAkE+WXf1J5Z8Zl1PTN9G+kEeHsovN9rIHZhmaJxK0f8/o8g==
X-Received: by 10.84.236.79 with SMTP id h15mr30046045pln.110.1490083963803;
        Tue, 21 Mar 2017 01:12:43 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f21sm37645783pfj.111.2017.03.21.01.12.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:12:42 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 5/7] staging: speakup: Remove multiple assignments
Date: Tue, 21 Mar 2017 13:42:12 +0530
Message-Id: <20170321081214.25231-6-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321081214.25231-1-arushisinghal19971997@gmail.com>
References: <20170321081214.25231-1-arushisinghal19971997@gmail.com>

This patch fixes the checkpatch.pl warning "multiple assignments
should be avoided."

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 21e76b031449..c10445624e92 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -2106,7 +2106,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 			spk_keydown = 0;
 			goto out;
 		}
-		value = spk_lastkey = pad_chars[value];
+		value = pad_chars[value];
+		spk_lastkey = value;
 		spk_keydown++;
 		spk_parked &= 0xfe;
 		goto no_map;
-- 
2.11.0


