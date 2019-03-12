X-GM-THRID: 6667430437644664832
X-Received: by 2002:a02:4988:: with SMTP id p8mr21560181jad.12.1552382120548;
        Tue, 12 Mar 2019 02:15:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:dd1a:: with SMTP id f26ls2639489ioc.1.gmail; Tue, 12 Mar
 2019 02:15:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzg0KmgkwAGzzL8ZSFg7sMOGg5aONSfQyXEefi2eEPeD+/9z/dmymVAgc4d2f1mNfZ6tLlO
X-Received: by 2002:a5e:8f0d:: with SMTP id c13mr9744234iok.37.1552382119586;
        Tue, 12 Mar 2019 02:15:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552382119; cv=none;
        d=google.com; s=arc-20160816;
        b=AkBpDeSdEjkAvtfDpLn4o0u2b7+lwPBD1yaCQXOy10HIBsllMZd5hjEsfmxARGhiHs
         3NYTCZZCce62QlmYV7I1hJvagIxFv28wdHX4RLP5YzquEZrCAd8yIVp9vYJc4mQ7tuFR
         luSljb+UKjToqtC7Xu3nVhJO+ihJXKiwpl3PScypiXdgCY7xnAMZZ0xjNa4N/5+d9v9C
         bwqLwIhvtL0Ab1xzNpVy6+K34JFUzOX/CGVLz+CklxIniOa9yUE0kjLGV6AM2d783kRr
         5dZ63JP+F0zPRdp2PAeoUrmILE0beDyu8mHHICA4YOcjjBdjREG3rIHrKLYnmQGFMy+m
         nbXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=LWdeZ100BX2ZcksVXH8guHOkeNILHk8oMqi53q6OGl0=;
        b=tocrBcOgx4GO43yycSThH9hTGNmPyz/O269Fa44hoKCr7GPjwkR8Q1TWg9wL/i1+dh
         0G/fOOeGMYPmSjChnpXYmHImNE5S/LOxMztsQa0eS63KmpDTlVNCvaGpvxl8SSUfdvtf
         H1V6EmySAsY+cReBQ9dPntpuS9Mep0w4IUlqLycVEXrSwQ7vR0UTJuYdrRwaDn2PxF13
         uKotJ0F6X5eqZ4VCoqWrHxoQpS/U4WBhUZXxPnVw5onsG9ZNDGlxiwdhH0w7antBxCEl
         sJpGoTveOrm18nYWbIJtSQLbHJaTjNGvD6XqgDVUYcTOiqyyIuMr3s85OSZ0e2O2easA
         P71Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RB1xNYsB;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n6si353328iod.1.2019.03.12.02.15.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 02:15:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RB1xNYsB;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id u9so1336316pgo.7
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 02:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LWdeZ100BX2ZcksVXH8guHOkeNILHk8oMqi53q6OGl0=;
        b=RB1xNYsBhaYYQCTZaJvMFZo2WrzefK14Zr9Qeo//P2MHcmVvYP8na1cqenhTFMnaFK
         RJsUurWDW3P7HOaSYtBR+6WNLkJbNZ50S3uKuaefMVEHOo+NTrspFsv4ue1s7VJvgJHH
         mGXmp71MJsvytq6AwBHvN3zfILGoKe4lN7pPVvedOqxgGzQ9d+pay1io+1yaZkiFXZR+
         Gn+fUmpXIPieFu7nsUTajv4zJNEGs08YesOIMU+jfxl/ivnTSOee1nwlCYO2nWl62kty
         zE9X1MCIjRqebGNCmbhUIzITrP1xV1Tbhm9YhoccBPdabN5CmmxV93vDH+rIyTLU0f33
         qtMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LWdeZ100BX2ZcksVXH8guHOkeNILHk8oMqi53q6OGl0=;
        b=gwu8y0au9lVJ0YY8zFizVe/LahU/mbfcdIm6WwfaQHGSpRmypAh3t6Q6o5OmGE8GpQ
         li9wzHVePAmEsPOI6+cVBKHlYA6x6AmR1nGKaJoGfA/dXHjmxdi0avCJ7cmIp6yCr6ZG
         HL1uEtkDg/LIXGsJ1zyWApwGotihe0rLI+OWNg0QvHel0yfs/SBKIbnHLgSwOua5WIj6
         8mp6wdOP7FtP+/nRiBpdc8+90od6NpJenlKBRoJCWrQPT8Qel0kBoGoDb1bf/VqOZqZG
         /57LqhWooHe2XzoUSlDtsWNZnscDjpVE6E4hAIFTSZEC/SAB3UcA7M8a0VnR9HCcUp/l
         hAAA==
X-Gm-Message-State: APjAAAUsRfI424TA4A76rwIak6jHlpIIHUA3kPHXQuQgC9RqbjNaF/CR
	ednKuwehy3yWmexmCzbzMlXEi13a6rX03A==
X-Received: by 2002:a65:5acc:: with SMTP id d12mr183090pgt.337.1552382118868;
        Tue, 12 Mar 2019 02:15:18 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id t10sm16181763pfa.151.2019.03.12.02.15.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 02:15:18 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH] Staging: speakup: Change else-if block order
Date: Tue, 12 Mar 2019 02:15:12 -0700
Message-Id: <20190312091512.2315-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Change else-if block to silence checkpatch.pl warning:
WARNING: else is not generally useful after a break or return

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index 5f1bda37f86d..23ec8f01e0a2 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -153,6 +153,12 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 			return 1;
 		}
 		cur_item = letter_offsets[ch - 'a'];
+	} else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
+		   !spk_special_handler) {
+		spk_special_handler = spk_handle_help;
+		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
+		build_key_data(); /* rebuild each time in case new mapping */
+		return 1;
 	} else if (type == KT_CUR) {
 		if (ch == 0 &&
 		    (MSG_FUNCNAMES_START + cur_item + 1) <= MSG_FUNCNAMES_END)
@@ -161,12 +167,6 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 			cur_item--;
 		else
 			return -1;
-	} else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
-		   !spk_special_handler) {
-		spk_special_handler = spk_handle_help;
-		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
-		build_key_data(); /* rebuild each time in case new mapping */
-		return 1;
 	} else {
 		name = NULL;
 		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
-- 
2.11.0


