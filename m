X-GM-THRID: 6394380881452072960
X-Received: by 10.25.215.37 with SMTP id o37mr1857671lfg.20.1488807816041;
        Mon, 06 Mar 2017 05:43:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.20.89 with SMTP id k86ls330986lfi.7.gmail; Mon, 06 Mar 2017
 05:43:35 -0800 (PST)
X-Received: by 10.25.104.21 with SMTP id d21mr1957326lfc.31.1488807815195;
        Mon, 06 Mar 2017 05:43:35 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id y19si1323543wmd.0.2017.03.06.05.43.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 05:43:35 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id n11so13823726wma.0
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 05:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+T+ZlNBWR73MdGSzy1LHE3MX+9tEsJFfXgqAeCrQ2Y0=;
        b=qS3a06wzwifoe1VMTd86ZNcYjJSIph3Po5QPtHhON0jyJROJlkkWKBWirdRzSRTIRC
         OGhaoRRQIkkbpQts/quSRcTFfTpri81JkM85i/fI8AVKllZbGhcTEnIhW3vawSLlrgxj
         ybWJC1hCrv95oAQVwI8r/hrHyWIHSPBg3r3Xs5n4xKZLActBLS5SwWmA513FI7Sh7WA7
         m41RNatyJVwHMjTpXYB9JR6G8a54dzJFH36Xsku2h1TIFOG3Djh9Cqe9qbkUzcyZkQaZ
         PGMQ7Eu8VcXb0te96GKaIQxh6JE3fjLRgk66khCQMmGYs6JGnt3bq9jdWKWKeEpyJbKf
         uNyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+T+ZlNBWR73MdGSzy1LHE3MX+9tEsJFfXgqAeCrQ2Y0=;
        b=ll6MnceVuChjBRuCCjRaQ2RQMVXj/1FYLK4iKfyeja7kCzY9HbebSZ8GC0/7zqSYOz
         M7U2mbcDAD9HDymzOnGYBw7cOV3jxjRiZ+7xJf8gNFW2eL37lWwdTu0m/06d2RRizsKV
         KjGUMeODuWAEpMcoUdqPzaaG8Yg8BX00vp7UdGsePRrlkxG8z3JjZYmkcwwrmgxTzWRw
         QEjnZtc0uisF5KjbanWQgneMEjMnX653Xawp0yUibK/1xF/lnz/yv/Vt7cezchm5rDC5
         Sq5pHXWwXWNOxT+GfDnn8IXutdgOZNMV8pVqphPmqC/MrtncaaMuaG4H84Eh49+pKKGg
         OLXw==
X-Gm-Message-State: AMke39mit+v9MTQ26AJlh6IXJxvDNtiQD+h8FXGzDr84WwocsPA6V11Q42rClZmyDOG/AQ==
X-Received: by 10.28.130.212 with SMTP id e203mr12665608wmd.104.1488807814878;
        Mon, 06 Mar 2017 05:43:34 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id g23sm13298496wme.8.2017.03.06.05.43.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 05:43:33 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v5] staging: speakup: i18n: Delete tab to indent
Date: Mon,  6 Mar 2017 15:43:30 +0200
Message-Id: <20170306134330.8965-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Added a space to align the code.
Added a space after ':' in the subject of the patch.
Deleted '.c' in the subject of the patch.

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


