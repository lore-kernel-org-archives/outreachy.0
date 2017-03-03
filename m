X-GM-THRID: 6393301758267883520
X-Received: by 10.99.163.10 with SMTP id s10mr1490518pge.75.1488556563374;
        Fri, 03 Mar 2017 07:56:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls8263331oth.13.gmail; Fri, 03 Mar
 2017 07:56:02 -0800 (PST)
X-Received: by 10.129.107.134 with SMTP id g128mr1388631ywc.139.1488556562955;
        Fri, 03 Mar 2017 07:56:02 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 207si97415pfu.8.2017.03.03.07.56.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:56:02 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so13025401pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=el+2iKck81p8WSSPPNDCTqeTsKWINCG7g1L9IFUcS50=;
        b=knXPgT3M89nsAyBp7OEf1fzXweM2oFeeF1Fk8EtLTPI8TzqcGyNDCiv4nbM03CDhuY
         m7eOCyYGhU6Nj19O+IQQ9sBoh6kuNs59uXoY8CbPUlSV5O7gEHNiDVS1k5uLAsElnvV7
         GkoaBn/g3JLT8OjFg8LRedG2OTKT8mNZ176USOwUIANY7cm7xa4AR22zTlZ7xX57CiOc
         7IoEjT8oehrEXFtBWaIRL2Fi+GK+NuihHXd2fizolMd9vGb1v+nqLbfFtWSAIbTaVyYJ
         Bz+zex2JabGp8fJqiHan1uBJ0dlSQCV4gKnYVyDUwDs8bXz90EJDUMJlibSsj1p2JNyl
         w2oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=el+2iKck81p8WSSPPNDCTqeTsKWINCG7g1L9IFUcS50=;
        b=m69Lq1SVf72fWfVqGPq0h1a8rwYViLui4kuIWfDwrgubb3eaGhK4jhE0HDTyhz5vZl
         kyeJCS9Nb6EFjt7v2IWb0hOcU88mSlx43438YM6lYjc7FHvMSeVNWuAqYphgml24d6Gp
         0WH+ut/qUvNgwyaSySlGtq3Tf04woZZGuaynqgf86IPu/u/01eHFWygkvXYJ+9Lz8QTK
         fTc/R9woSLuhiMA2KgIVM7cP2KQrfrJaRT7MFFq6CQ/wH+MO2axzgjSYuDqNCeYqig8N
         8HKxzKUmOv1wbzlVafooaAUKPUawRKQ47zKiabqVEEm8UMy1HqGEn4OvwOsj/r44d0/2
         ApDw==
X-Gm-Message-State: AMke39mJ52dwwNki4gH0umC2sbl2rYprSBaONPcHCQECt8O6Qut/fvtk4nhyUnAg+vRiuw==
X-Received: by 10.98.144.218 with SMTP id q87mr4312903pfk.51.1488556562684;
        Fri, 03 Mar 2017 07:56:02 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m6sm24258295pfm.22.2017.03.03.07.56.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:56:01 -0800 (PST)
Date: Fri, 3 Mar 2017 21:25:57 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: else is not generally useful after a break
 or return
Message-ID: <20170303155557.GA23744@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

fixed checkpatch.pl warning: else is not generally useful after a break
or return.
Removed the else without affecting the logic.
Dead code is also eliminated.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 53 ++++++++++++++-------------------------
 1 file changed, 19 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index 4e6e5daba50c..ad3efded37c1 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -176,43 +176,28 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
 		build_key_data(); /* rebuild each time in case new mapping */
 		return 1;
-	} else {
-		name = NULL;
-		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
-			synth_printf("%s\n",
-				     spk_msg_get(MSG_KEYNAMES_START + key - 1));
-			return 1;
-		}
-		for (i = 0; funcvals[i] != 0 && !name; i++) {
-			if (ch == funcvals[i])
-				name = spk_msg_get(MSG_FUNCNAMES_START + i);
-		}
-		if (!name)
-			return -1;
-		kp = spk_our_keys[key] + 1;
-		for (i = 0; i < nstates; i++) {
-			if (ch == kp[i])
-				break;
-		}
-		key += (state_tbl[i] << 8);
-		say_key(key);
-		synth_printf(spk_msg_get(MSG_KEYDESC), name);
-		synth_printf("\n");
-		return 1;
 	}
-	name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
-	func = funcvals[cur_item];
-	synth_printf("%s", name);
-	if (key_offsets[func] == 0) {
-		synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
+
+	name = NULL;
+	if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
+		synth_printf("%s\n",
+			     spk_msg_get(MSG_KEYNAMES_START + key - 1));
 		return 1;
 	}
-	p_keys = key_data + key_offsets[func];
-	for (n = 0; p_keys[n]; n++) {
-		val = p_keys[n];
-		if (n > 0)
-			synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
-		say_key(val);
+	for (i = 0; funcvals[i] != 0 && !name; i++) {
+		if (ch == funcvals[i])
+			name = spk_msg_get(MSG_FUNCNAMES_START + i);
+	}
+	if (!name)
+		return -1;
+	kp = spk_our_keys[key] + 1;
+	for (i = 0; i < nstates; i++) {
+		if (ch == kp[i])
+			break;
 	}
+	key += (state_tbl[i] << 8);
+	say_key(key);
+	synth_printf(spk_msg_get(MSG_KEYDESC), name);
+	synth_printf("\n");
 	return 1;
 }
-- 
2.11.0


