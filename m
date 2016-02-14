X-GM-THRID: 6251161839379415040
X-Received: by 10.66.142.197 with SMTP id ry5mr11688701pab.41.1455471598699;
        Sun, 14 Feb 2016 09:39:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.82 with SMTP id n79ls1282998ion.52.gmail; Sun, 14 Feb
 2016 09:39:58 -0800 (PST)
X-Received: by 10.50.183.39 with SMTP id ej7mr8297993igc.3.1455471598453;
        Sun, 14 Feb 2016 09:39:58 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ff2si2492570pad.2.2016.02.14.09.39.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 09:39:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id fl4so6203328pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 09:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+ax0eei6MIcRc/IAwWONann2dYCXdfK62AiF/1yOh90=;
        b=dQ+afErAZlkCG/5/rgw74hmX9U4Nj0qoifmnXFsyYpIuLhoFSTqmfpzb5EsV0xngNc
         CXPrHIyNuGSt287KUUTpTZ2u24M7P8NWZjt6MGxAV6cT3Bnm3nAGF/5O3QJFZvnDX2RT
         SlA+DymVB0bx4/EBfvZ4v6vQlk/fed/4A1pyI+XEzF/dCHhQ8jPHklN6RMqaMy7XhVKj
         kRX3RfFWtzH7Vc6o8Kff24KJqnuk4eOR3EwA0h9eWppHupQGMpDEiPJFR3DjD1wcnHSB
         ek0wX6+IqLzu2+hjLeBJ67GOoWniBd2H99hV2k8/3OKlATLeOtyGsDvVHB961rH0zF+U
         5P2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=+ax0eei6MIcRc/IAwWONann2dYCXdfK62AiF/1yOh90=;
        b=dtUUT4TsGLkSyyCHMFL1GWdPffYSdAQMVxYx0PmXOz5SvI2gHzE3NOvS+ncG2tk/S5
         MY0bEEIAsB5BC26E2wy5FpTq/qLDJ1J+m/2WQ2dsa7xpfv4hQQQPxpsMifDPfkcIDGjw
         ofFe9W75mSy9Hc5g7nrU2WkXMbziMFzokwxJ/h5zO34sr6hmJnIUzktXobejk8OP43Pm
         hcozm7+q5Y5BPYhWOB5lQ8l5t+ILvRbQ70waF0eEPvx986HVu08L84uryfJJxcEomzjt
         W6XjAyFK8imZxvUgyvWi3tHNnB5o3gPdFEarnqSFvIYAQrbyX4fnN6PiUbespzKhUZqf
         ZjDQ==
X-Gm-Message-State: AG10YOScKjJ5OiNTMb4Eh4d9cYNSTg+pvDpeDXUG7e5GUxd5UQrWMxwsxjhhXlKhU+87SQ==
X-Received: by 10.66.159.136 with SMTP id xc8mr17777340pab.71.1455471598319;
        Sun, 14 Feb 2016 09:39:58 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.150.222])
        by smtp.gmail.com with ESMTPSA id t29sm32776907pfi.8.2016.02.14.09.39.54
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 09:39:57 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 23:09:48 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 1/2] Staging: rtl8188eu: core: Remove NULL test before vfree
Date: Sun, 14 Feb 2016 23:09:30 +0530
Message-Id: <8ffdece306380770381595cfef73aeb8bb324c36.1455470452.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455470452.git.bhumirks@gmail.com>
References: <cover.1455470452.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455470452.git.bhumirks@gmail.com>
References: <cover.1455470452.git.bhumirks@gmail.com>

The function vfree tests whether the argument is NULL and returns
immediately. So NULL test before vfree is not needed. Also remove braces
around if branch as they are no longer needed.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes since v1:
*Correct errors in commit message.
*Remove braces around if branch.

 drivers/staging/rtl8188eu/core/rtw_mlme.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 9c2e659..a645a62 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -122,10 +122,8 @@ void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
 {
 	rtw_free_mlme_priv_ie_data(pmlmepriv);
 
-	if (pmlmepriv) {
-		if (pmlmepriv->free_bss_buf)
-			vfree(pmlmepriv->free_bss_buf);
-	}
+	if (pmlmepriv)
+		vfree(pmlmepriv->free_bss_buf);
 }
 
 struct wlan_network *_rtw_alloc_network(struct mlme_priv *pmlmepriv)
-- 
1.9.1


