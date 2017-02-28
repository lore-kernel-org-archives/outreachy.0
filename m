X-GM-THRID: 6392269007149334528
X-Received: by 10.99.147.16 with SMTP id b16mr55932pge.22.1488316112899;
        Tue, 28 Feb 2017 13:08:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls1180733otj.6.gmail; Tue, 28 Feb
 2017 13:08:32 -0800 (PST)
X-Received: by 10.157.12.214 with SMTP id o22mr1576926otd.150.1488316112568;
        Tue, 28 Feb 2017 13:08:32 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h79si229946pfh.2.2017.02.28.13.08.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 13:08:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id y23so1836215pfk.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 13:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VLOf+shIpUbVCPQnfpikSNTZsCyjztj08ybbYYLe6Fg=;
        b=fwInzf2VQPBf+KCZaeZOQwY4nCsGacchN0tXJtV+oINZLM8R4BXHXXWKpA+JfrgqSL
         cl2ojNWCNNPKrm4x3BppXEN91Q3W9ILIO4+LGmLn42wor3+Q5VlcAR1o5/UzK+DgLNCq
         u9UEHki+UzLtqE68Fgwb5DZ1M4UxHJY8zH6/jfxRnie6dFaEiC7cBbsEYfczoKlUxzFs
         1JD79+wdqLO6hP7W5dHAkYJd/n2qhwKVAjKG8PrSfKsVykTSND5waaNyp4KNgzt17xuY
         vQ/NiHQWk5gapE/kL4rveJv/xAefHYwzZlCPEEvprJuq5VzGLA7Q4btVPO6Pet0tJRvI
         zoyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=VLOf+shIpUbVCPQnfpikSNTZsCyjztj08ybbYYLe6Fg=;
        b=P+pcd4OYzok2ANH11Yz47ximyEx4CPxlQAUitSrY4N6rKKK0b6U9wh6x4tBU2HiALA
         SGGbcnX0dxnM+XEI/lju2S2uQ858la6wIG13pdFjesMdxqWL55IZtk2Qitgf2j4Hh+Ec
         DlJzcgGirb+BAz9hsaChLTet7rwVnJSq3L/Xsq1aELs9tqHAue0BJFEoQCNZdwTHgRu/
         oSupW66Kc6ugRnsxAmKdRmSaQLl0c7e9xrE+x0BPjbD5kwOh8mD6+wl65C8cgRDA/FS1
         B1kvoOauuOMVkbZiW34Tv1PnfcB+0G5GxsHrEDzPtvPo7S+vLNy75R/EAutIdnFtCr+5
         uEuQ==
X-Gm-Message-State: AMke39kGkEDWJOjDtQ+1VQgLrfdKXZw2dPCuaUpK+pA6EndL+Ltz48WNulxVg9DhVfyYZA==
X-Received: by 10.98.135.68 with SMTP id i65mr4796959pfe.28.1488316112344;
        Tue, 28 Feb 2017 13:08:32 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o24sm5959893pfj.78.2017.02.28.13.08.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 13:08:31 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2 v5] staging: speakup: Align with parentheses
Date: Wed,  1 Mar 2017 02:38:12 +0530
Message-Id: <20170228210813.9110-2-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170228210813.9110-1-sreyamittal5@gmail.com>
References: <20170228210813.9110-1-sreyamittal5@gmail.com>

Align next line of print statements
to the right of open parentheses.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---

Changes in v5:
*Add the removed parentheses back

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


