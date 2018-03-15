X-GM-THRID: 6533243345849810944
X-Received: by 2002:a17:902:a03:: with SMTP id 3-v6mr2309533plo.41.1521139253276;
        Thu, 15 Mar 2018 11:40:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.67.74 with SMTP id k10ls1129454pgq.31.gmail; Thu, 15 Mar
 2018 11:40:51 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuqHhyTxno9YoX3QQGWRQ3CXSji/3E8cuRRTKfOQKJAu9Lr1o4Emvz8G6RNueq5fE5v4JHP
X-Received: by 10.101.98.79 with SMTP id q15mr2005637pgv.115.1521139251687;
        Thu, 15 Mar 2018 11:40:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521139251; cv=none;
        d=google.com; s=arc-20160816;
        b=t6gHdpupRnAJsJ0sEED9L/5Hdis8l7MO+p8gfq6ntzw6nLOQXIX0PjO7pRkb+PdI+A
         UKDqQgDex3BkNpQjt/yOfo3sBp9SXATtBUUE6Ft89LBmHWGUyy8bank/u9Xb2OD3xaeT
         WuTkyW8YZDqPH/ZWFbRLubkGz8ezzR2SfFP9v5Rz6dOQwrBZuqz6uoOZVnv6rGjJa4l8
         Nlk7FSGIWMr8fKrWQm2JC8tTiv9km2VhyAeJyxKPOgn8OBc+h7dPYU9ifkMFpZc8ELRN
         WD/+uKvJTAPLjDF6XbDTQPGDSC1XkCHQNZ1RKxqpDDMBjGvReDEnrlXuaHOB/rvaDEAU
         WZAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Mz3I1x30cVlPwZejNodQ1QRYA2kIZwh4S39oOAilfp0=;
        b=gqMzOovTQfozRvDOpj0QX22eEFy4QmYvTGk0p1erLoNIAq/lkvKt6wLm5QfwUNbfQ8
         YW+WbIrmSfQYEKWHmmsCyuCMxeiMpy5Nwc/ivWE8IsnRlDWvlbomXa1956b6w6lfbPJL
         GvWht4ZfYeI5NWKj6Izqkz0uZs6YoNjgM/KG60tX2iSJEketF4PJlW6zSemHANKGw1zo
         T5LsocYmUb8wQuJJPQ+30Ftl1EheRm+x329QPpPmp5K7CIlzp2g2qkPJKw1UglALsV7T
         rLW5CaxY873/VqYL1zSzimsHOWaAfz5RJU90psRGtki3JaB9JLi0IIuk6Pn3qzxZvRfg
         XeKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=HCFXLKuM;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id f4-v6si379132plr.5.2018.03.15.11.40.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Mar 2018 11:40:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=HCFXLKuM;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x241.google.com with SMTP id w15-v6so4306160plq.9
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Mar 2018 11:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=Mz3I1x30cVlPwZejNodQ1QRYA2kIZwh4S39oOAilfp0=;
        b=HCFXLKuMdBuZFoIkpbjA8J/ii5BHnCuXUUN9wv5sNc7OO75t45hmyKg+OtOYqmdsA8
         4vAVc3eoXVTB30xeX5HATG/SEYraZt8VOcb30wQPn51rrK7Wzr3X3zu8LBImjLHgGJ7I
         I46p8xkyBPCLtd5Jw5fgyaBvI0FQJtSu40e1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Mz3I1x30cVlPwZejNodQ1QRYA2kIZwh4S39oOAilfp0=;
        b=gVzCmaIIEPeJ2BOAeqhiGtD68LS4WPfYzqCu/Qyx4qNO4ikdNW1c0UXgSqGBBMP8+V
         dRFREIfGa+Jcvyd8HNEObWuwFaTgsP/4XHg6qYXnKCInUn9V/CgRrujoLVeUGFntlTvE
         IzaNLj6GNpNE0OKyzm8Q2CIn2xQVH7QH34fDi2bygltfhrEHxJvjgJJ6beSoql1g33jP
         zqjNZxIWJ/+d44u8hE3b5LENlYb5j0Q3sWPQm7bLgcbP/pkkN9OvP/WdZRdCXyn2qmuW
         ainE0b30RTKzBc+ujxSmIuE146d4iRvyJ5QuJqQheQRbI9NFbgpQFwKlFTd7FJ7NN04F
         5pyA==
X-Gm-Message-State: AElRT7FzUKkh/shVdz7K0ithbygWMa0ODxO8suOjBH1AcAI2EhJ6clCM
	5QwYCiQSJ5Mjd9AX49McLGe3BA==
X-Received: by 2002:a17:902:7482:: with SMTP id h2-v6mr9304620pll.264.1521139251344;
        Thu, 15 Mar 2018 11:40:51 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id z15sm9823546pgr.68.2018.03.15.11.40.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Mar 2018 11:40:48 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: samuel.thibault@ens-lyon.org,
	w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: speakup: Remove else after return
Date: Thu, 15 Mar 2018 18:40:35 +0000
Message-Id: <1521139235-6133-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Remove else after return and modify code accordingly. Issue found with
checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/speakup/keyhelp.c | 82 +++++++++++++++++++++++----------------
 1 file changed, 48 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index 5f1bda3..020e0ea 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -153,6 +153,21 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 			return 1;
 		}
 		cur_item = letter_offsets[ch - 'a'];
+		name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
+		func = funcvals[cur_item];
+		synth_printf("%s", name);
+		if (key_offsets[func] == 0) {
+			synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
+			return 1;
+		}
+		p_keys = key_data + key_offsets[func];
+		for (n = 0; p_keys[n]; n++) {
+			val = p_keys[n];
+			if (n > 0)
+				synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
+			say_key(val);
+		}
+		return 1;
 	} else if (type == KT_CUR) {
 		if (ch == 0 &&
 		    (MSG_FUNCNAMES_START + cur_item + 1) <= MSG_FUNCNAMES_END)
@@ -161,49 +176,48 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 			cur_item--;
 		else
 			return -1;
+		name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
+		func = funcvals[cur_item];
+		synth_printf("%s", name);
+		if (key_offsets[func] == 0) {
+			synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
+			return 1;
+		}
+		p_keys = key_data + key_offsets[func];
+		for (n = 0; p_keys[n]; n++) {
+			val = p_keys[n];
+			if (n > 0)
+				synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
+			say_key(val);
+		}
+		return 1;
 	} else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
 		   !spk_special_handler) {
 		spk_special_handler = spk_handle_help;
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
2.7.4


