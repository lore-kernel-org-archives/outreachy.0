X-GM-THRID: 6251161839379415040
X-Received: by 10.50.164.134 with SMTP id yq6mr7756730igb.13.1455462093810;
        Sun, 14 Feb 2016 07:01:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.232 with SMTP id m8ls614176igx.33.canary; Sun, 14 Feb
 2016 07:01:33 -0800 (PST)
X-Received: by 10.66.101.4 with SMTP id fc4mr11164066pab.48.1455462093505;
        Sun, 14 Feb 2016 07:01:33 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id tn7si2418588pac.1.2016.02.14.07.01.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 07:01:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id w128so5787735pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 07:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=2KtG0oX/PpWY7VbQNzKZBl0sFd/ANauZHszJq6BH21Q=;
        b=VRsN6UrKw9zaxqyPwXQIiH4jpf6cIhRLw+XrmPNsISbE/L86PKlYd2dCu1zXxGyIbP
         o8XPryCSLsBQaMCInv6OT0hxMsju4XXQ+0sRth4OCYJa3F4evCJW86g5Zyajz57Mo1dP
         HcJAE+BFbzyyHhUXAa10AcJ3UDWgUmM3XpTSomzlL2ByOkSpOqHe8fGrblvn2lCdzpo2
         RpfsHty+BD62W54dvKAebfCGgDDa4CugINNlQUWiNtLTZGWFQVpW0p6AGCbvtYCCLOTk
         iGS7RmSgRUQDQj6P8mvKvNI6ghlm0tLvwF3KxBfptpV+vqqF8Tz2PkuFWFJ9ADJWn2gv
         pe5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=2KtG0oX/PpWY7VbQNzKZBl0sFd/ANauZHszJq6BH21Q=;
        b=F3LOcA/p3dfsVitNZKFLPNVVTbEMLK6tw0O4SlN4sVEj4pGxtq0aGxf7WORI4bIUbx
         vgsDPMPZ2DlbcHhTfMLm96hoGbxu1oz92T7HIORyH5w9yx4xJJX7Ap4x/Iy64fEqf7FS
         yyJcbjEccM6IK8t6c0f5KVQIj5N5DG+8xA/EI1BE2H1YR2OpU2CoSeifOEvzhuvBcZjO
         SPdgV5dqLei0Kk+qMgKqm6zoFfxeh59JjDpWRJLi3AZfPss2JhP2fcsjcPsek2ch8O1U
         eKyhrF3ESWtdm8Q+mj/1AT1bPiokt6WJuVdFElKejwg83kzy6m46IbV47f1obT46KcEC
         mJHA==
X-Gm-Message-State: AG10YOQM1v0WhbsHPpM7bfePqnlGHJvSHS0jv6eYCWzF7Z+bPAWMjN4gy/rmdeTSMcAWpg==
X-Received: by 10.98.70.80 with SMTP id t77mr16556089pfa.107.1455462093399;
        Sun, 14 Feb 2016 07:01:33 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.137.116])
        by smtp.gmail.com with ESMTPSA id mj1sm32189427pab.34.2016.02.14.07.01.30
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 07:01:32 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 20:31:24 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/2] Staging: rtl8188eu: core: Remove NULL test before vfree
Date: Sun, 14 Feb 2016 20:30:23 +0530
Message-Id: <0268938371b2973ed55cf58c884abc5b0ce6e2bb.1455461125.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455461124.git.bhumirks@gmail.com>
References: <cover.1455461124.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455461124.git.bhumirks@gmail.com>
References: <cover.1455461124.git.bhumirks@gmail.com>

The function vfree test whether the argument is NULL and return
immediately. SO NULL test is not needed before vfree.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index d5ce1e2..2a419459 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -247,11 +247,9 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 		pxmitbuf++;
 	}
 
-	if (pxmitpriv->pallocated_frame_buf)
-		vfree(pxmitpriv->pallocated_frame_buf);
+	vfree(pxmitpriv->pallocated_frame_buf);
 
-	if (pxmitpriv->pallocated_xmitbuf)
-		vfree(pxmitpriv->pallocated_xmitbuf);
+	vfree(pxmitpriv->pallocated_xmitbuf);
 
 	/*  free xmit extension buff */
 	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmit_extbuf;
-- 
1.9.1


