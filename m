X-GM-THRID: 6390781740145704960
X-Received: by 10.107.198.69 with SMTP id w66mr1896403iof.42.1487972036751;
        Fri, 24 Feb 2017 13:33:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.248 with SMTP id t53ls8313344otd.42.gmail; Fri, 24 Feb
 2017 13:33:56 -0800 (PST)
X-Received: by 10.200.41.2 with SMTP id y2mr1131169qty.35.1487972036375;
        Fri, 24 Feb 2017 13:33:56 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h130si1794650pfe.1.2017.02.24.13.33.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 13:33:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so4407521pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 13:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1WaljNXTVe7eXN8HtHdxGV6uuDsyc+2iH5sasUCnGxo=;
        b=pcxyBy1BvO5h+i5CZYYP+K7RVk+QUjHYgqbkFP3ZilE9rcc2hmSsVjJHO6DImVsIut
         jvUlwsXTyqQiX0SKFQrALJeFFNSwcI6nwbYSnQvWimzFMAsRBAGMRZLr/T98NZUtqDlr
         9BjnSa5n12Ou8ZM+61iiVMRcSBFwrSEjXaV4whykDZ5LKI7jtHykJagy0mbaS4kxeWic
         jeqfSbYsIROLAhibGT/JRh5KONkAFM0W7OjBBjP6x7wDSYyq95QVpsqZtoj9EMopjkXJ
         lkAfyaijSGOmMnQVuQ7XkBV2IK3R1K0ALmpZTiYboS51A+XrHbHS13+1ePC6zo30scAd
         xJeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1WaljNXTVe7eXN8HtHdxGV6uuDsyc+2iH5sasUCnGxo=;
        b=F/r7OMxnDwfNaeL9ktZgU76cEBitUl6ZiC3MvQUn+6vyWqTctJm0yVMXMNl/xVtgum
         q+d+xxcqNk5GeFSBoZdR3tYTkHEdGc0jeEKSI+eYt308CNKtgHPYfhi9zN2xgtuBbqPv
         CUYmzPzxndxXk7q8jJIHJD8UDObVcrfFzdXfItrzutC3dQT4aQP3w4tU0hUZ86wLEqAv
         GbalvYXoG6EdBhudamIsvjcWzS/jA4jdkTwOv0M1kB1hgz1inygOJX56txLqHaxszSMg
         +flK9Vsi7t6eXHxqTumBt76oyWMl3Cgap25UDpQ/G7ZGKSNljGzGDzyy5D8VackVrBdx
         O5YA==
X-Gm-Message-State: AMke39l4Xsa5VIiykywOVn6ycPhWavH0N2FT5vAne81K4be04j8iITK/5qI2amNFz6o9gg==
X-Received: by 10.99.175.26 with SMTP id w26mr6235611pge.30.1487972036151;
        Fri, 24 Feb 2017 13:33:56 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b77sm5174307pfl.2.2017.02.24.13.33.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 13:33:55 -0800 (PST)
Date: Sat, 25 Feb 2017 03:03:46 +0530
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2 v3] staging: speakup: Clean up if conditions
Message-ID: <20170224213346.7sms5gp76g344biq@stayawesome>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (2016-08-21)

Found by checkpatch.pl
Logical conditions are on the next line, useless parentheses present
Clean up the if tests by

* Put logical conditions on the previous line
* Remove useless parentheses
* Line up the tests 

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>

---

Changes in v2:
* More elaborate log message
* Fit MSG_FUNCNAMES_END) on the previous line
* Fit ch == SPEAKUP_HELP && on the previous line

 drivers/staging/speakup/keyhelp.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index f5156bb..ab56a1c 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -163,17 +163,15 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		}
 		cur_item = letter_offsets[ch - 'a'];
 	} else if (type == KT_CUR) {
-		if (ch == 0
-		    && (MSG_FUNCNAMES_START + cur_item + 1) <=
-		    MSG_FUNCNAMES_END)
+		if (ch == 0 &&
+		    MSG_FUNCNAMES_START + cur_item + 1 <= MSG_FUNCNAMES_END)
 			cur_item++;
 		else if (ch == 3 && cur_item > 0)
 			cur_item--;
 		else
 			return -1;
-	} else if (type == KT_SPKUP
-			&& ch == SPEAKUP_HELP
-			&& !spk_special_handler) {
+	} else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
+		   !spk_special_handler) {
 		spk_special_handler = spk_handle_help;
 		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
 		build_key_data(); /* rebuild each time in case new mapping */
-- 
2.9.3

Thanks for the guidance.

