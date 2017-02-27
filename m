X-GM-THRID: 6391810462293426176
X-Received: by 10.13.233.70 with SMTP id s67mr7050289ywe.24.1488209344295;
        Mon, 27 Feb 2017 07:29:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.210 with SMTP id 76ls186602otf.33.gmail; Mon, 27 Feb
 2017 07:29:03 -0800 (PST)
X-Received: by 10.129.107.134 with SMTP id g128mr6778436ywc.139.1488209343843;
        Mon, 27 Feb 2017 07:29:03 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h130si3156650pfe.1.2017.02.27.07.29.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:29:03 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id x17so1381594pgi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 07:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=r3WatTtxZoeiIVcdfefA14u/3TLIFYP+iAQ+xrlVQjE=;
        b=oJDmLXI3wXmYT/L+hn9bbI5pUP759XTZZSeBep0IErKIzIHm8OO/WIrsu121S3YjqX
         efEaenwfgFQM283cqz4ujIfnH4N9kvfkyxs76EKzFlQiBbU67yHZMhtREtOrSZG1jpug
         gG6uBjHHnryO/L+oIn+KGPpvv2fHExIdTCuwilsRPFhE8dSodkKP7PpW1JZCZlAeKMwt
         NfhIv9hP3L9z992lDvJeJ2aB7ApJdHC1NS4jhj09Ol4Uz0BahMR4dLDlZMPR1UjhPDC3
         i+DOvVAK1COyniks2UVOBZEY9ga+dfYx+gPjacqtdSSOILSeV0LHn9nZDN5AN+C/0jaQ
         ChgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=r3WatTtxZoeiIVcdfefA14u/3TLIFYP+iAQ+xrlVQjE=;
        b=buYRMtNYtMjyF6GFqoM2OwTU39nl/aK870iGBmNjYPiAXxXpwEov73haPNgan/yN80
         3pnMka6vrIn5wRFY+ALBfWxzoxXTQ5jYmoCaoZWyVVxSz4aWWCJEV9BTVciWmWiF7VOd
         5WWzwtaKKMvvof9ipY8bqzrpGFAsuIMaAX7YD8nul3YG3V/8k3fSqpRN98TUixJAJ4qI
         xvW4eJT3QkJiH84NAUpt3DfuDS6vpE58jRXiD3WTpoLacWEiuahZp+3Mx5bxeZelUdQJ
         gfEKpty0eXwy1kyUAKrKsIQAJIt4E9Ebu9ZF4IRPBLhOL2lCin2kbo6GNiyOmxPHyEKy
         Ae0g==
X-Gm-Message-State: AMke39k/itmX2ZFZolYtGlPfiAiNQjh5HXMqN/BqhXECXZwUQtxJwMlCdnKOD8Kdmrxv/w==
X-Received: by 10.98.102.129 with SMTP id s1mr21448698pfj.26.1488209343530;
        Mon, 27 Feb 2017 07:29:03 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n63sm20274928pfk.64.2017.02.27.07.29.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 07:29:03 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2 v2] staging: speakup: Clean up parentheses
Date: Mon, 27 Feb 2017 20:58:51 +0530
Message-Id: <20170227152851.20146-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Align next line of print statements
to the right of open parentheses and
remove extra parentheses.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---

Changes in v2:
*Remove unnecessary parentheses

 drivers/staging/speakup/keyhelp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index ce94cb1..c373762 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -115,9 +115,9 @@ static void say_key(int key)
 		if (state & masks[i])
 			synth_printf(" %s", spk_msg_get(MSG_STATES_START + i));
 	}
-	if ((key > 0) && (key <= num_key_names))
+	if (key > 0 && key <= num_key_names)
 		synth_printf(" %s\n",
-				spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
+			     spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
 }
 
 static int help_init(void)
@@ -164,7 +164,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		cur_item = letter_offsets[ch - 'a'];
 	} else if (type == KT_CUR) {
 		if (ch == 0
-		    && (MSG_FUNCNAMES_START + cur_item + 1) <=
+		    && MSG_FUNCNAMES_START + cur_item + 1 <=
 		    MSG_FUNCNAMES_END)
 			cur_item++;
 		else if (ch == 3 && cur_item > 0)
@@ -180,9 +180,9 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		return 1;
 	} else {
 		name = NULL;
-		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
+		if (type != KT_SPKUP && key > 0 && key <= num_key_names) {
 			synth_printf("%s\n",
-				spk_msg_get(MSG_KEYNAMES_START + key - 1));
+				     spk_msg_get(MSG_KEYNAMES_START + key - 1));
 			return 1;
 		}
 		for (i = 0; funcvals[i] != 0 && !name; i++) {
-- 
2.9.3


