X-GM-THRID: 6392973673048834048
X-Received: by 10.46.9.206 with SMTP id 197mr2198710ljj.12.1488480175748;
        Thu, 02 Mar 2017 10:42:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.89 with SMTP id 25ls823973lju.4.gmail; Thu, 02 Mar 2017
 10:42:55 -0800 (PST)
X-Received: by 10.25.56.6 with SMTP id f6mr2030088lfa.4.1488480175184;
        Thu, 02 Mar 2017 10:42:55 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id f7si1809270wmg.3.2017.03.02.10.42.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:42:55 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id u63so13929832wmu.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SVolgkM2b4G6/qpgM28YTKa98dSzICdeH5BM7BWB3zM=;
        b=Y+PdB2PBgoVMYAXqTQ0UMQ0rkfLXMtlTFqeVT8vi2v67a+Hnx9enPKpgRxTu5te9b5
         +p7JH+Vw8jdhh7GExQvVqVDtCht+vREV5qcyAA4O8xxuqnh4nZKdFPIChBCCkMPaUyxK
         9s7IGE+cCS7AujHA7Mo6CXyFDCusI8YvY1NEQNQwAxSdjbBlw9icOn8DGilGUQj9QPa8
         aNb8ZLB8MkaJv3DAyqv8FrXeorsH3Pu3w/m4zDjGjoyDVz2KJbsNH0wS7gS0MoGV5grL
         r94xtP5Cv46CLyrWJ1XzIrG4nJ6nSEXCRj+i4283vJhaxax1wBg9j0fU7PMjZt11sfen
         mLxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SVolgkM2b4G6/qpgM28YTKa98dSzICdeH5BM7BWB3zM=;
        b=F/hHY+werZmMIMQEKJPG6jbs9OS+oXcWERAbUsY+HBtkWJAJPh4iE2DB9TMFEn0zOW
         Cb/n56VUbExtUEppdZ0+pb/BSFapW0AV6/75+LCokhCymByQ9FhEebHQSL/4VjtG7Oxm
         ZEgLw1HViYu1Cbl5gcXTnTcirvcLD0hfxEtFGhwvU10bSF1HzmfwCCp/L8BtpXfrHm0H
         KsJn5CG+x4Tbp7ltOlbxRc5+NGW+ynOPKcQWExWRPCWTwXm1OrWOjqi7PzwO8lwYT0GQ
         v++U3t04cwxDi/WN7PuBofVawxKfXszEfohIofXpyi2hzPCfiWVh/vXZlLYvG0OH+n7F
         TDwA==
X-Gm-Message-State: AMke39lH8z4EPghmod9Pa8+D/H3x8KhCvblYZgOQnOU2VyfNdJgi+O6KBBwJ5CpIUTYbjg==
X-Received: by 10.28.55.199 with SMTP id e190mr9055992wma.92.1488480175006;
        Thu, 02 Mar 2017 10:42:55 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.72])
        by smtp.gmail.com with ESMTPSA id 32sm11845253wre.15.2017.03.02.10.42.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 10:42:54 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 4/5] staging:cxd2099:Change kzalloc parameter
Date: Thu,  2 Mar 2017 20:42:52 +0200
Message-Id: <20170302184252.3477-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Changed the structure tag 'struct cxd' with the variable '*ci' to fix the
following checkpath.pl issue: CHECK: Prefer kzalloc(sizeof(*ci)...) over
kzalloc(sizeof(struct cxd)).

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/media/cxd2099/cxd2099.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index 001bffe..d0e012c 100644
--- a/drivers/staging/media/cxd2099/cxd2099.c
+++ b/drivers/staging/media/cxd2099/cxd2099.c
@@ -694,7 +694,7 @@ struct dvb_ca_en50221 *cxd2099_attach(struct cxd2099_cfg *cfg,
 		return NULL;
 	}
 
-	ci = kzalloc(sizeof(struct cxd), GFP_KERNEL);
+	ci = kzalloc(sizeof(*ci), GFP_KERNEL);
 	if (!ci)
 		return NULL;
 
-- 
2.9.3


