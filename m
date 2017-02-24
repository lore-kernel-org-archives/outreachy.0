X-GM-THRID: 6390781740145704960
X-Received: by 10.129.92.197 with SMTP id q188mr1717111ywb.148.1487969826107;
        Fri, 24 Feb 2017 12:57:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.168 with SMTP id n37ls7598758otn.25.gmail; Fri, 24 Feb
 2017 12:57:05 -0800 (PST)
X-Received: by 10.159.55.145 with SMTP id q17mr1242280uaq.18.1487969825784;
        Fri, 24 Feb 2017 12:57:05 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si1893398pfd.3.2017.02.24.12.57.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 12:57:05 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id z128so4310306pgb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 12:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RHoAphxl+GaaDQFRhME7Ng3O96R9v+pJwrzC27xkeBs=;
        b=X9b4b+rAPSwx2bwIi9KLl9wt8AnydYmnSjft5GcEampSTeAhVezwoZ5uYa5Wmp32oc
         3KOX67mGvID5/dh//CYpUF7tRq78CmJVVxqL5heiKi2+vj+bmZNLUVsxTj405f588OER
         x8sJ2cm3DFOMYCmNQQS9fm9KbiUupvpWp/A6tDaCMQyVBY4U+0N/xA5BvCuqtGhzbHC+
         fpGxhAB1X22TIB+lqLnruNrO1TniPth+rwXt9dWog+9G6AuY5PVsxMlaxv6b2G/+h6WF
         wm6ltFox6CBbq/bBeKql4VL6+WNWYOoFsH9YQxj30GxwCg2VgResC0e6l3RWYB6ozsCD
         Vwbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RHoAphxl+GaaDQFRhME7Ng3O96R9v+pJwrzC27xkeBs=;
        b=bYpyoUuEFAlrwT7GRk5qfJClHrYQrmhFkJRSck6tOPVAVY57EfSwssd5dIa1C2AqrO
         BtPoe38UmfAsb4N6MJi62RoDhKF6gZO4WS4buuP5awqKtFa1SxlAJhzc2mSR2HKlGXKa
         keekfa4Jv3BM5ohEUFuEmA2hVZYVcIRpQQagf65mP4WAIawkTaCK8Va5DP9k3AlfFtfd
         PaETOYwk6GCclLmoDUftDKjP0o/Bc2R/43wmck2bN5HnCjjim2gx9uAQKAZIi+rh7jei
         MVyZlWpp14QAVZGTZH0fY6nmrq4oH350OCIfLHxxWTPgXXzwdzWfw8LGDn/BbH1D2O9p
         CPxQ==
X-Gm-Message-State: AMke39n6/EvWIXKefjnO6RbndHIfuKfXh7QRiSpMt04hvff2kdON/wh2aJ7QPx7bmGB1rQ==
X-Received: by 10.98.4.71 with SMTP id 68mr5942526pfe.92.1487969825551;
        Fri, 24 Feb 2017 12:57:05 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a76sm16604036pfe.131.2017.02.24.12.57.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 12:57:05 -0800 (PST)
Date: Sat, 25 Feb 2017 02:26:56 +0530
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: speakup: Clean up if conditions
Message-ID: <20170224205656.ukn7vyqoicesli7z@stayawesome>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (2016-08-21)

Put logical conditions on the next line,
remove useless parentheses, and
align the tests

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index f5156bb..0565767 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -163,17 +163,17 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		}
 		cur_item = letter_offsets[ch - 'a'];
 	} else if (type == KT_CUR) {
-		if (ch == 0
-		    && (MSG_FUNCNAMES_START + cur_item + 1) <=
+		if (ch == 0 &&
+		    MSG_FUNCNAMES_START + cur_item + 1 <=
 		    MSG_FUNCNAMES_END)
 			cur_item++;
 		else if (ch == 3 && cur_item > 0)
 			cur_item--;
 		else
 			return -1;
-	} else if (type == KT_SPKUP
-			&& ch == SPEAKUP_HELP
-			&& !spk_special_handler) {
+	} else if (type == KT_SPKUP &&
+			ch == SPEAKUP_HELP &&
+			!spk_special_handler) {
 		spk_special_handler = spk_handle_help;
 		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
 		build_key_data(); /* rebuild each time in case new mapping */
-- 
2.9.3


