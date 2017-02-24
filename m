X-GM-THRID: 6390781740145704960
X-Received: by 10.107.4.145 with SMTP id 139mr1719730ioe.90.1487971625454;
        Fri, 24 Feb 2017 13:27:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.17 with SMTP id g17ls846788ita.21.canary-gmail; Fri, 24
 Feb 2017 13:27:04 -0800 (PST)
X-Received: by 10.107.149.16 with SMTP id x16mr1884414iod.72.1487971624668;
        Fri, 24 Feb 2017 13:27:04 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id d63si1683533pfe.2.2017.02.24.13.27.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 13:27:04 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o64so1423095pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 13:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=N0Ci9n1aNSDtHKLGeoGav5iLhVHfsI073npxso9YLPo=;
        b=Pq1EPY260EBqV77oZbiwp4miEgsEbRWnHD1m6O+x0Ian64G7Fld7yvtf1GZO7X4KpL
         CCm+6G3C/hYnFHNU13ELoJVZkGDNPhZJLfXOke5VVf+gpgiB89AbQbU0SpmH7PuSko0W
         /UQkThi2W2rCZdOagPOhLtNyqLtLTGNYnmac9U1rspYziMzniucEQNjPYFH82crvFth5
         A73B9rKtVUspkDNWcyuUny/X46YCzLQ2ey8J1ynD9J7qe8YLPSE3eAJe0xihVSn5xaje
         3+NaI4tEF8k7W1SgZRXWj0ygh6DX9P0R89iq6g46LAG3p7OjorCxjNb9NX8KpMtBchPf
         dwWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=N0Ci9n1aNSDtHKLGeoGav5iLhVHfsI073npxso9YLPo=;
        b=Iwi9XwwPKq9OP5eUroCVBWWcgBbDkAjipvHime1xBA3NFjxPNIy5oTWmqPmxw04Q5L
         KcqVJ0Ef27K47o7wwS2MiID8h+gQxY9IScg4S7UDfEA3bc6Bhf/ZbTyDQmVz3d4NpiRm
         Dn6irsSgji7/PW80KIPHqv/oKZCajTQ4Vx6gThqyVTKjsqa0ibnknf9BAmUJWM/qREHt
         iGREl+GG0mV6pdp1lr3Urs7zzWXBYIiVszOwNHt5sgnztnkO+6Ne2BL0Z2dEFI0PJaLD
         uhnWxkoAXvL39FNHLskkMzv/oPNI9Th3ra2bzxfIorNoDfRATu+o6kExbGQdhVe6yPTL
         1NVg==
X-Gm-Message-State: AMke39la2nZICkTRqafvU5PYiRm1YJD2BqZQw2kwW4gkWa2oesnZwzVba/1QMAW3DMCWpA==
X-Received: by 10.84.210.33 with SMTP id z30mr6672254plh.79.1487971624462;
        Fri, 24 Feb 2017 13:27:04 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n123sm16817170pga.9.2017.02.24.13.27.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 13:27:04 -0800 (PST)
Date: Sat, 25 Feb 2017 02:56:55 +0530
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2 v2] staging: speakup: Clean up if conditions
Message-ID: <20170224212655.l6n2ibp52uwha6ru@stayawesome>
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

Changes in v2:
* More elaborate log message
* Fit MSG_FUNCNAMES_END) on the previous line
* Fit ch == SPEAKUP_HELP && on the previous line
---
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


