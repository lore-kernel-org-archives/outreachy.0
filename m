X-GM-THRID: 6393397378950365184
X-Received: by 10.46.84.69 with SMTP id y5mr890347ljd.21.1488578826829;
        Fri, 03 Mar 2017 14:07:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.198 with SMTP id s189ls1163060lja.6.gmail; Fri, 03 Mar
 2017 14:07:06 -0800 (PST)
X-Received: by 10.25.145.17 with SMTP id t17mr804278lfd.23.1488578826513;
        Fri, 03 Mar 2017 14:07:06 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id v70si352545wmf.0.2017.03.03.14.07.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 14:07:06 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id u108so10838109wrb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 14:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wBa19WAboHlAmw8SnMgLhiTNxlaRMJifCrwksdW9xDw=;
        b=aPO27m02juWqVP6Wvat5NAZoXTql0GQgEUXGLpl8qVsqGUAOgGz4EclhKQ9U7TgegN
         /yPTIAj4LaKPKPWqu5aDoDFtMizMxCHrPeiJ8yPZJ2fKcjLqwGYasazqqceDmgvsw5C6
         DJMlWHC74/QTpHgbzmvy2KnBxmWrMAoP/W6oGMBwKi41D4fk8ef21GvsQN7mGxMulZrA
         xctZOEeh5TGF/JTIOPBTX3LjnaGAeWkJzgQl6PP2CH/C3Qgn9okgFjkpsmUNR/jFdg5g
         3B46TxnyggsR3jYsdfoKnc2P0vl4YGygOuRl2cHo/h5s51QjIG8SLVMShheEncrENLc5
         aQSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wBa19WAboHlAmw8SnMgLhiTNxlaRMJifCrwksdW9xDw=;
        b=EAIzr5dqL1aXi2buk+q/+QhxP2/57YllI3/5NZZtnl9oZdnJXfnwFeYCDp93fhzQDD
         aHAXyliNdUC7PDnd6/dMQCRN2uR7mLIZxf3SGISSo/eRj5sX8HWAbc3DqgB3aHbyIkBH
         ov/r09Skkl1XBbu7sdCs9FQH3l0xVvHvUHmA3jvbPDhRjtqc/TqQO7ETmZgkKC9vx+U+
         xN1hEquJ2srBRNinuBIlFvDALHIp4exVLk14qeY0hJZWPAakPe08lV8h6NpXurfY9orB
         wdHoLPzlaeMvhPu1oBIs7EiSpnEuazj2a1gsXoxtsT7jcNtEYSUb70FtP14G7tUv6HFC
         9X+Q==
X-Gm-Message-State: AMke39mpeuDS7GUA60paUSRMyi2p+0ENFJJ7vSW2BoQgodiXljHDbpUQ+t/WEovAB54N5Q==
X-Received: by 10.223.175.15 with SMTP id z15mr5200057wrc.84.1488578826345;
        Fri, 03 Mar 2017 14:07:06 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:ed0e:d7f7:5879:7539])
        by smtp.gmail.com with ESMTPSA id y43sm12328317wrd.0.2017.03.03.14.07.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 14:07:04 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging:speakup:i18n.c: Align open paranthesis
Date: Sat,  4 Mar 2017 00:07:01 +0200
Message-Id: <20170303220701.10278-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fixed the following checkpath.pl issue:
CHECK: alignment should match open paranthesis.

Deleted a tab and added spaces to align open paranthesis.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/i18n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 3e5f012..b11d72f 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -607,7 +607,7 @@ void spk_reset_msg_group(struct msg_group_t *group)
 void spk_initialize_msgs(void)
 {
 	memcpy(speakup_msgs, speakup_default_msgs,
-		sizeof(speakup_default_msgs));
+	       sizeof(speakup_default_msgs));
 }
 
 /* Free user-supplied strings when module is unloaded: */
-- 
2.9.3


