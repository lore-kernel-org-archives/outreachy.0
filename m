X-GM-THRID: 6807521221589073920
X-Received: by 2002:a1c:5452:: with SMTP id p18mr1583743wmi.102.1584999554639;
        Mon, 23 Mar 2020 14:39:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4b07:: with SMTP id y7ls674252wma.2.canary-gmail; Mon,
 23 Mar 2020 14:39:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vthohNrQl5myDvcLmxilSah8I3HbjLmIQXhGrIZ1WwcUqYzUbxkjMrliqV0q2CWZF3v1vr2
X-Received: by 2002:a1c:2d8a:: with SMTP id t132mr1574236wmt.83.1584999553340;
        Mon, 23 Mar 2020 14:39:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584999553; cv=none;
        d=google.com; s=arc-20160816;
        b=KMNvSZlyA1GOe1Vx6UtxST5QPkra0kogwGE03P441xJEM5gUbFkFW8ekbysWzanAd3
         ilfNsxaxRD/qdA2bz609/+J0mO0jukU5CTMGSqx8a3Qj1pyU/Xpz6n7d7sxGnVdRaoSm
         rlR8bdDpYSz9cuWMEI3kvU8Xlz3v46zKALpVFpGUhlKU2oPkDlipuuvmEK9SnGQrT5FE
         MyvMdHQS4WxbaG0kHQ4mc71Fg9dzsROnyllN0fVOv1Zd7kEjUexON8M9jYDxAjouuCrS
         T02XQNOJgDvaD2nJMabLumnqFnPErLSloxGzRCGFb0WRJrhKwEZ4nKt60Hx0HVU48yHU
         2V6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XgvUPGdKuqSfUg4/oZIChbCmAH+AMGAwqZSp5/3ryGY=;
        b=JXtQBbyha21zU4xZj4iA8Ce8oxOI8mnqqdXz2lox2RIXKPx7561aJg95ldWxW0YTxb
         MBCfA9di3x4dAOeKYaNhpTdWR3C7bbCgXntewUXCjvHGKFUI+EXeSCTVtpRkuDlaLNbm
         Z92aBdQjDnV3LKqmyv8h7988dkh49W7V8RkOcPDlm/iHby+DhWD56ua6l7hyt/yB2Bdc
         uLfo6WvyAyDbE3iA3YMvxR23REGE5U16cL3UTS8AHxLDozkbYH8mjR92Llz4mSAJMHFv
         n7IBccFIOA8hJZoaGAvsuD7jaox56uCE8VRoxXljYc8tAbqcOeCwMNAcB/FzN30zX4/T
         enGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oqkjBydI;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id l2si73847wmg.3.2020.03.23.14.39.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 14:39:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oqkjBydI;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id d1so1298218wmb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 14:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XgvUPGdKuqSfUg4/oZIChbCmAH+AMGAwqZSp5/3ryGY=;
        b=oqkjBydIKJX9+Ylp9OOpf9rQjoppfdKF26z1yfnq/NX/SD1mrSSKAIXYpVfKSQlT/u
         ax/2hthj2x115PkJXIrNYmtUTXGNg5ZqSYQ1ibGCf91KjQteQPHOlsuqiyex8pk0o04l
         Z8Gc8jzws6NC7XA2ubeVQ5XvmcBP7euIi71dWdircC8dyA+IeLrKqmciz75+SDgxatCw
         QHbozQslFkULV/A2/XU6XBucWLeP1uHniXPbtar5LED30/SZwimDtGl80vPn6Y2mSk4y
         XPIkxfqEKBKWMWAc0ufj/16m2FGX759vw2rhuSjrxZJIYPxD0l70x6PHLjIGtXpvK/VC
         ueew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XgvUPGdKuqSfUg4/oZIChbCmAH+AMGAwqZSp5/3ryGY=;
        b=A8a1QfxrczYFWW3S2KBkh5qjHFbkHtCAQ5qGMsC7OOtI4gIHQ7tikmjQFTe9+DNVmC
         gLrzOo738ancAoWAxQj43uyetn0veD4GrIL5kIDuBRcfc0SaQ4Owza5sy42ZkVygFubf
         2+U4UkZW21TaOLlJUsmgwLlRJulT7AlLf7ytQiAxtDlW0gnf+bYcLRGNut4dtRHMefNw
         w48hppPZkGfxcAnSa1azrNtYZjJ6vq4hUEqi06L/u4Y6lMf8Eu3au8EbJsfYwO0FKamd
         Uao8QMHgo6dHghoXGWIE1rT/4F5/Tl7PJrn9UxEASgK8XV1XMRWMw3lgCwhaIWiA37m5
         N+MA==
X-Gm-Message-State: ANhLgQ1oPWlye7EqEMwqjXZk9mIH+kzDJYr8nGz/j/HCL/sfct9+D0/h
	0/xEuPCcdatiYSvzLydZiPk=
X-Received: by 2002:a1c:9d0b:: with SMTP id g11mr1521922wme.77.1584999553048;
        Mon, 23 Mar 2020 14:39:13 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.98.222])
        by smtp.gmail.com with ESMTPSA id w9sm2844816wrk.18.2020.03.23.14.39.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 14:39:12 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 3/3] Staging: speakup: Add identifier name to function declaration arguments.
Date: Mon, 23 Mar 2020 17:38:45 -0400
Message-Id: <b2a1ca962553194840d8cd2bf1f7d3174e3b1336.1584997290.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584997290.git.jane.pnx9@gmail.com>
References: <cover.1584997290.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The void (*read_buff_add) argument didn't have an identifier name,
adding an identifier name to match coding style.

Checkpatch.pl CHECK: function definition argument 'u_char'
should also have an identifier name.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/speakup/spk_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
index a2fc72c29894..fc6a9416829c 100644
--- a/drivers/staging/speakup/spk_types.h
+++ b/drivers/staging/speakup/spk_types.h
@@ -189,7 +189,7 @@ struct spk_synth {
 	void (*flush)(struct spk_synth *synth);
 	int (*is_alive)(struct spk_synth *synth);
 	int (*synth_adjust)(struct st_var_header *var);
-	void (*read_buff_add)(u_char);
+	void (*read_buff_add)(u_char c);
 	unsigned char (*get_index)(struct spk_synth *synth);
 	struct synth_indexing indexing;
 	int alive;
---
2.20.1


