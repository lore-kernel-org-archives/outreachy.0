X-GM-THRID: 6398937623266590720
X-Received: by 10.129.75.5 with SMTP id y5mr11780166ywa.28.1489898634613;
        Sat, 18 Mar 2017 21:43:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.23 with SMTP id 23ls2949168ioh.50.gmail; Sat, 18 Mar
 2017 21:43:53 -0700 (PDT)
X-Received: by 10.99.55.4 with SMTP id e4mr12582787pga.156.1489898633738;
        Sat, 18 Mar 2017 21:43:53 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y90si2088190pfa.6.2017.03.18.21.43.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 21:43:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p189so7546036pfp.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 21:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kC6W4NgMa737J8TBipUuOCNHFwWeh02EOES0W0GUmVc=;
        b=WYYG2GJ/VWsPHgXjYKLBJeFs6qQT5KDWhZHVOJ0NDQy5qnz8UiulS8g3xPvWLFZUwX
         +g3rvTZCUAw1QaVzv+v0xd3W0zplU6lmZyKIJjRVYYskAjWuk9+lyHCon1qbqvrwWOX1
         AWQuaiTKvEP0O8XsAE13Jp6SqFu7h2MPde6sjG7f/U0R7rX50pt4Kn/GmrFsCys71JIe
         yMWTTaaE3d8VlIzbztlWlUTgunwIzioI+Sn+x836BP02hs98+s4zVuuMmrj2u+gNLkJc
         Qhd9A5qGUqCk2K3xm6+YRKDtRGKmbKnzbGl2g24nfZXswlIrc7quT6jFLoUkW9JxPa53
         3vzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kC6W4NgMa737J8TBipUuOCNHFwWeh02EOES0W0GUmVc=;
        b=auZXN9DuFAGW9UGF8kWY42qj9APXaTPOzKN+T/u+gy4TDsKpac3CkpTw0HKpojvDon
         oekB1Yo21C1mdD2ECsgttKehzV9hZ6RGNAP4Fv2PuexhjmBbDcYcssowtee5ebUS+ftL
         FUB0z/8Am0EoVABhfD0yhC2p7JvL+ek/U5bl9aWZlB9jI7she0V69TZGVqy3HrvtYHj2
         qJf/iQn9QGQX8pk9utfzBBTMjGc4BfBwBQVFwGAa979MOMFseYGXiWIeTM4yW7nN7/bb
         ngaxB1/tY/Vnw1Dju4aE04+I+Hup4SAZZQNIe4FWGltRhwXY6/CEjlmuyG9e3BlDZG0c
         wxtg==
X-Gm-Message-State: AFeK/H1Sz7MhcYKshuCKIMcanIgVN7BLAsPcmdTaI08byxGH7LdBiqrKPE6QE9oZXMHgTw==
X-Received: by 10.99.98.135 with SMTP id w129mr2695727pgb.134.1489898633159;
        Sat, 18 Mar 2017 21:43:53 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b74sm863854pfd.90.2017.03.18.21.43.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 21:43:51 -0700 (PDT)
Date: Sun, 19 Mar 2017 10:13:48 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Remove multiple assignments
Message-ID: <20170319044348.GA13375@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

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


