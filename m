X-GM-THRID: 6390780050561564672
X-Received: by 10.200.51.164 with SMTP id c33mr817257qtb.85.1487969432847;
        Fri, 24 Feb 2017 12:50:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls7461720otb.8.gmail; Fri, 24 Feb 2017
 12:50:32 -0800 (PST)
X-Received: by 10.237.52.130 with SMTP id x2mr1401756qtd.73.1487969432344;
        Fri, 24 Feb 2017 12:50:32 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h130si1774354pfe.1.2017.02.24.12.50.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 12:50:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o64so1405592pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 12:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jSi/lk9fymHNNItlHomPYXD2lLGXB310e7r2bZuTPfY=;
        b=U4Zac8IpSeD/760h/omvGoxIDQb/YKPY68++H4U6z/oqR15Xl0xaYO/E/NSO7HS36F
         aR3G4T5eun5XCjPORRbK+9QaAy4H+CUmnEs3p5Ccg60J1/UhA+T39kRen+VRyVXz5g5z
         rzgT9Q03y202orYuo7Mz31RcwSswuafT80WLRSDN21JJ/ztXuIdd1qzXIu3C6dpKRf99
         1FBkfAFLy3DOnH1I64/xFXyg9ggHEu+vlZZpJpGy/YysdckB8zjTSgNEmRsCNCPkgl3n
         epO8mNfPqIa4dRk0wcb2hqy5S9WS6I4JTxRh0PzlfQPlmknhhknpCSrS3jvJqHkUpcfe
         G22A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jSi/lk9fymHNNItlHomPYXD2lLGXB310e7r2bZuTPfY=;
        b=NaZZQ9Z9qVOK6DG7wMNGkqY4lRg8lYLZtEj/Tr0bC1aEPYYBSD8C8OdH5RAlsf6YDz
         kDG6AIQM12kS7sx5VMeueSBtpVO99ZemvIuqrZHqZ4f1dUzy5v8V2w8si8Df3n9KtT/R
         cPzy2cGFqIAXECEoR8qCz6uE07lVQWzEZ4fB0hEIejh94hHHmXkYkW/98RruRZU53nCz
         LL5S7ws03Wi3i+4nn5Rt9thb1EzPxzwQayqB6nzBbZL8d+OnUnFZUizUu4Y/iuh6Fulh
         fWlLXii+Dq9AjD3aYAPRORjNk3ilgiujoLvgGL/NygG/EVuT9FuYpXWBcuJfV0wcKQvD
         UDdA==
X-Gm-Message-State: AMke39mGRrBkCoPxaBXaE78xzCA3k5L/K/R2wh9aMQXQYrxTR1vd1MNXkh6XhTeGyKtcOg==
X-Received: by 10.84.205.70 with SMTP id o6mr6507822plh.56.1487969432103;
        Fri, 24 Feb 2017 12:50:32 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o24sm16671531pfj.78.2017.02.24.12.50.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 12:50:31 -0800 (PST)
Date: Sat, 25 Feb 2017 02:20:21 +0530
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: speakup: Align with open parentheses
Message-ID: <20170224205021.fjs7e4ih2c4ntxfu@stayawesome>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (2016-08-21)

Align next line of print statements
to the right of open parentheses

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


