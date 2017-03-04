X-GM-THRID: 6393400648864366592
X-Received: by 10.46.88.9 with SMTP id m9mr1218953ljb.25.1488643453291;
        Sat, 04 Mar 2017 08:04:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.73 with SMTP id y9ls1172785ljd.8.gmail; Sat, 04 Mar 2017
 08:04:12 -0800 (PST)
X-Received: by 10.46.80.82 with SMTP id v18mr1218390ljd.27.1488643452591;
        Sat, 04 Mar 2017 08:04:12 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id f7si506422wmg.3.2017.03.04.08.04.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:04:12 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id m70so7344649wma.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 08:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=M1P38TcG4COLJrXIZgXFkSYAc0NQJE4QNpna9khYOzE=;
        b=Si/7EBCYS38J5uDIGkBGrv2Oq+0mJi0yk81mro3yYLP8Omnx9fkA0dc8zS6WGSVloS
         X3hE34+mGS++k6f87VLxTAtML4zbrIRcScQpLDfwc0RVZEQBJ7nDcFzDz6jMGsSLmbse
         q4B0xcxaDAnYfUgaNBqpmvetp0hbxMVq+DidFwEz5syxoryZb5CGV10MfILc1tz+5QMy
         1/DfQQowhBt0Ikqal5pl+UikwdUZ/Fl6ACnaOHHGJ6vlmtVN/eEhj/fA25f5tIyIfiW6
         NPGBIUWg+p3/NKouqpNXeCbSomefoOrmzj5wtzZxy/4LaJaMVrZKFjB/MjpVhxWyPzqx
         rcWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=M1P38TcG4COLJrXIZgXFkSYAc0NQJE4QNpna9khYOzE=;
        b=J58stQXwMJ11PkeR2BuGxNMg2NLnr6xOeFp8c1gWyb1NM71IoFJJpMic4wVQ4b5ldD
         g9xwC163kyF5nXM2iEVCoOxhLSt+u1WGgSKWqkYFh2UWkyQJ1IrLvmgBJ5AeYj1wVcE6
         IcFCGptAOQxNY137OPTrIHDNtsINPgmkoUrq5x689+guu+7eCbeCOdy0cRNbM8XvzCOm
         +yFtDmeuztvZYIHRNevSE9l3+jxJL08UDyB7VhadJsEJ2aLCjK6jmT9SDCNQfscpuQ4I
         9qzHkflgsJSlvN+TYF4Kr7HNk2LJm08tvtKixGq1kaWaVepcJVguRqukSOSeWhcNH4Uy
         E7FA==
X-Gm-Message-State: AMke39n6ZFSRB/7ylRZArGlLNrnM7NE2H9aDqz+IhQIvnR99vigW2M0x6/gCPPTpcgrAhA==
X-Received: by 10.28.165.70 with SMTP id o67mr6888557wme.11.1488643452374;
        Sat, 04 Mar 2017 08:04:12 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.250.134])
        by smtp.gmail.com with ESMTPSA id u41sm19637070wrc.24.2017.03.04.08.04.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 08:04:11 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2] staging:speakup:i18n.c: Delete tab to indent
Date: Sat,  4 Mar 2017 18:04:08 +0200
Message-Id: <20170304160408.4911-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Deleted spaces and added a tab to fix the following checkpath.pl issue:
CHECK: indent should use tabs where possible.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/i18n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 1a3e348..f4b3f48 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
 			if (index >= MSG_FORMATTED_START &&
 			    index <= MSG_FORMATTED_END &&
 			    !fmt_validate(speakup_default_msgs[index],
-			                  newstr)) {
+					 newstr)) {
 				kfree(newstr);
 				return -EINVAL;
 			}
-- 
2.9.3


