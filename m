X-GM-THRID: 6393400648864366592
X-Received: by 10.25.210.146 with SMTP id j140mr173755lfg.10.1488653730784;
        Sat, 04 Mar 2017 10:55:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.5.18 with SMTP id 18ls657138wmf.21.canary-gmail; Sat, 04
 Mar 2017 10:55:29 -0800 (PST)
X-Received: by 10.28.137.68 with SMTP id l65mr249076wmd.0.1488653729822;
        Sat, 04 Mar 2017 10:55:29 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id v201si453830wmv.3.2017.03.04.10.55.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 10:55:29 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id n11so7795066wma.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 10:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=TZUUxzAw8au/UBWoq0bmTN5qJ53ugELndJCOFjy0SHA=;
        b=pLZKVky5NhoX3BG37hMT6nj91/iyhKJQl4kZTsz073CRsJ/olWfbLYof1sS0YZ4Vil
         f/rZNV7I/5KX32lqPJ3NKJMTiwActnVqF+FD++FZO/PfOA17l0i5H0v5ESsrEchAZBig
         0IPmbhWWLULV6YAZZDAVYB9QgaP3U4OHaqQUpKhOSD3366HNW5wAnu/lKlg40FHnIE0u
         Ys9qhDp9nuH/H87a1i91kmIc6wIWIZDgzCVuh84Kpju+ElrMyvsifEam86T7ooj0W3sp
         yFiCMn5FGS2zv2QRZYL90gMA5LsOAqjvCoi/w9hyVBwO0Ix+F2cUIT9dmwdLU4wAy5dB
         ZYCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TZUUxzAw8au/UBWoq0bmTN5qJ53ugELndJCOFjy0SHA=;
        b=LNLCc99nkR7zib38R5vR37/hGDSGyfWBqz3DLhE31Ebhi5jS7eHBYBMjAjkd15OwLw
         Vv+AFn02FcGGQJIpgw1RUWnp8ab67d88GtTZ1Oq6kE8lvPT24WKaPuVG2fN4CLwvnilr
         Fmwm2/aJUhukijfDvZOZq5S8LPwGRtfKAE3ebdmWhmHzyAEEi4IBTvLc6UbygLg5EzUZ
         M4/8TlSGl2F/EOQHHptJx0KVXh0ftZP7TXyzp8eWhP0x9QGNdfKVzpf7pok/IyW9Znc8
         I+t9+ZJr5VJPGU1Gm8f2kIbVgoVE3KqJXSR1wPyLhbo0Gllc2A4gXvn+bHOGbf49T1E2
         qngQ==
X-Gm-Message-State: AMke39nX3ZXSKpL3JR12q9mZNc5mTDc628QllP13BlJNq0ejDeSQMdUQdd63wXL5lBLyZw==
X-Received: by 10.28.97.2 with SMTP id v2mr8110733wmb.3.1488653729662;
        Sat, 04 Mar 2017 10:55:29 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.250.134])
        by smtp.gmail.com with ESMTPSA id s18sm7992645wmb.18.2017.03.04.10.55.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 10:55:28 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v4] staging:speakup:i18n.c: Delete tab to indent
Date: Sat,  4 Mar 2017 20:55:25 +0200
Message-Id: <20170304185525.13038-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Modified the original file.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/i18n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 1a3e348..11f1418 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
 			if (index >= MSG_FORMATTED_START &&
 			    index <= MSG_FORMATTED_END &&
 			    !fmt_validate(speakup_default_msgs[index],
-			                  newstr)) {
+					  newstr)) {
 				kfree(newstr);
 				return -EINVAL;
 			}
-- 
2.9.3


