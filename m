X-GM-THRID: 6251161839379415040
X-Received: by 10.50.50.208 with SMTP id e16mr8331291igo.12.1455471617923;
        Sun, 14 Feb 2016 09:40:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.3 with SMTP id b3ls1505478ioe.49.gmail; Sun, 14 Feb
 2016 09:40:17 -0800 (PST)
X-Received: by 10.66.159.167 with SMTP id xd7mr12112523pab.5.1455471617663;
        Sun, 14 Feb 2016 09:40:17 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id u66si2616121pfa.2.2016.02.14.09.40.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 09:40:17 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id zv9so428672pab.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 09:40:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=f2ZhBNOWjj5uonxPhgLWW6UEMu1O2/IgIgp/k8B+HLg=;
        b=jFOyKjdhke4vXEmvTtLOKh4lJOMLyzQl5rw0E+Mc4wNrZFem4JaYBdNXKiROnMuPDD
         pLvo0S9dLAhXS6vleDtIqFeH3JczUSbqu5h6CGlMUVd+4ckGJjVwwWb1n6KJ2bRKChpI
         4fZte8wBSG0CnVB/TW9AB5WW52NhF+0QtYjcGFe/6zez1FgrTEhwxoxWs3dCbp6LPw8C
         LLNA1YoOK1gqKdOR2Lry5zbhlb7Wkbm9He0wtBswYZUm1VaaMvRrD0aZmwVy0gGoVAXp
         eQudK0970CPhdR8MqeiYjOIcda7XOVsKMBlgvnCuN8ndO1Lc5+qOXKV8pdDf7LEP4whm
         z/Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=f2ZhBNOWjj5uonxPhgLWW6UEMu1O2/IgIgp/k8B+HLg=;
        b=CdSUYm4wevdYGXpPRgXxaLbrKduMINj4Eb7WPNI1mLklYz8osmTNBfMiY5LqWqKXQm
         wYrQDR8sTQ2lh82g9JvqMhZ3DsdE170N52TWkSVwM9fxgGRSjNg52LHAiu2mOhi9u8pH
         cQv8Awwv7PYs2PwDVR/f7kXLTWATb2VlGItp6787XrVwP0HKe4XAZz5AK6oPvcryIn3m
         3HotrIORdVSa+gNQEN00+FZbll4rfJ2RxD2xD7IbzZdzgwP80+RuGsM0l9g5UvuuB+w8
         AqbWnb4R0HW4pCxDtfJvMqTWc384QhYUrREXQklO5YId1/Oby+z6HTL1iyuYs+dtVvAk
         1LKA==
X-Gm-Message-State: AG10YOQndWDiQLBL9HgYga9xt4mtV3TlWZFADDToi7rq+8ko/zbZHGgfPA3d3Snbry5hdg==
X-Received: by 10.66.159.136 with SMTP id xc8mr17778941pab.71.1455471617532;
        Sun, 14 Feb 2016 09:40:17 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.150.222])
        by smtp.gmail.com with ESMTPSA id fc8sm32832426pab.21.2016.02.14.09.40.13
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 09:40:17 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 23:10:02 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 2/2] Staging: rtl8188eu: core: Remove NULL test before vfree
Date: Sun, 14 Feb 2016 23:09:31 +0530
Message-Id: <86473abcd55c45caffa8761de9692751e57f403b.1455470452.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455470452.git.bhumirks@gmail.com>
References: <cover.1455470452.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455470452.git.bhumirks@gmail.com>
References: <cover.1455470452.git.bhumirks@gmail.com>

The function vfree tests whether the argument is NULL and returns
immediately. So NULL test is not needed before vfree. Also remove blank
line between function calls.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes since v1:
* Remove blank line between function calls.
* Correct errors in commit message.

 drivers/staging/rtl8188eu/core/rtw_xmit.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index d5ce1e2..f2dd7a6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -247,11 +247,8 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 		pxmitbuf++;
 	}
 
-	if (pxmitpriv->pallocated_frame_buf)
-		vfree(pxmitpriv->pallocated_frame_buf);
-
-	if (pxmitpriv->pallocated_xmitbuf)
-		vfree(pxmitpriv->pallocated_xmitbuf);
+	vfree(pxmitpriv->pallocated_frame_buf);
+	vfree(pxmitpriv->pallocated_xmitbuf);
 
 	/*  free xmit extension buff */
 	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmit_extbuf;
-- 
1.9.1


