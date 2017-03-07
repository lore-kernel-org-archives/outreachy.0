X-GM-THRID: 6394380881452072960
X-Received: by 10.46.21.11 with SMTP id s11mr3200160ljd.23.1488872908429;
        Mon, 06 Mar 2017 23:48:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.81 with SMTP id i17ls920001ljd.41.gmail; Mon, 06 Mar 2017
 23:48:27 -0800 (PST)
X-Received: by 10.25.223.67 with SMTP id q3mr2386257lfj.1.1488872907979;
        Mon, 06 Mar 2017 23:48:27 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id e72si244060wma.0.2017.03.06.23.48.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 23:48:27 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id u108so20532619wrb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 23:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nRXywnEcnnI3CN5KTmFu+6fd9UqmSkexBVl5/D2uqgg=;
        b=rFz0grS2CWiSU6MjO2uF02mIwfpviywwOKLkReGFF8T0M95DZYy+aaNK1D5o/k1ShH
         sjgl0MOZ6rfJ9HU0gKH9MAX4D+BZtFyssneSEaPsMJmlxgYXxkQcKA99vcqKJbiEldSi
         91bOOesodWcH+KBWn8MOYDIscelXWiiXAQ8YFwM3N4rsSzPQoEsOkrGxgEC9hHPJ9J3e
         DYbu+qqnCWCh3q6hItLIBMw9+1Sg5zemwIMguKNd97gMlh7mqzu9JYqvlWbxE074mihD
         cs0YcwrbcIRRrpMqIgNOLDgq2pdk9Cm2/70PWdn0BCr/shTQIbj82FLn1kEnb66MP7hK
         mGlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nRXywnEcnnI3CN5KTmFu+6fd9UqmSkexBVl5/D2uqgg=;
        b=jbOLYfDDTgAOHRm7XkAOtEFsiaYKi1uHaFMLgGmBlsKnGrCxDvwluagieQyybLhMEq
         8eo5lOiF7jNCns6wty6C8/hlqkcLGINdMNhuruIYyK7u6c/xsE9cQabkMUI5XSW2PnYk
         WbtO4TF/xd3Qk+foX9db4r3ng9f0NA50CzvjRHFrisHdCuxu+QeTqgX5zYLDDwlyYFZW
         ajcyWPfbnuhV5HHeMB3+s3WDfOaiwEtMkzx6R0bX7BcfEwO1xiJDy090UfTn4eaVG90Z
         E1d7UvsEogWfDBj65R/+hO76lPbNTIqMmBBu1K7paGD8cjLc7ughsSslSdZ9VVZK0x6i
         Baag==
X-Gm-Message-State: AMke39nG61+cCv2GVCKUX39Zv03qe3hZlmVsLdh8Cyvskxh80peUfa27naXm25gCSwu1Fw==
X-Received: by 10.223.136.4 with SMTP id d4mr18198200wrd.44.1488872907778;
        Mon, 06 Mar 2017 23:48:27 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d457:4c45:37be:7df3])
        by smtp.gmail.com with ESMTPSA id m186sm11435596wmd.21.2017.03.06.23.48.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 23:48:26 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v7] staging: speakup: i18n: Delete tab to indent
Date: Tue,  7 Mar 2017 09:48:23 +0200
Message-Id: <20170307074823.8652-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Added a tab and deleted spaces to fix the checkpath.pl issue:
CHECK:indent should use tabs where possible.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v6:
*Added the previous changes of the patch in the v6.

Changes since v5:
*Added a space to align the code.
*Added a space after ':' in the subject of the patch.
*Deleted the '.c' in the subject of the patch.

Changes since v4:
*Applied the changes from v3 to the originl file.

Changes since v3:
*Added a space to align the code.

Changes since v2:
*Deleted spaces and added a tab.

Changes since v1:
*Deleted an extra tab to indent the code.

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


