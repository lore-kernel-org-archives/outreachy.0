X-GM-THRID: 6251802034906857472
X-Received: by 10.66.231.4 with SMTP id tc4mr21075015pac.14.1455611097521;
        Tue, 16 Feb 2016 00:24:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.9 with SMTP id d9ls258850qgf.38.gmail; Tue, 16 Feb
 2016 00:24:56 -0800 (PST)
X-Received: by 10.129.51.2 with SMTP id z2mr20168775ywz.49.1455611096910;
        Tue, 16 Feb 2016 00:24:56 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id yd9si558906pab.1.2016.02.16.00.24.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 00:24:56 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id fy10so59983499pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 00:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=crc5hfCglEv/cKPwmd2inJna6m5cykD8cKsKs1g2N6Y=;
        b=otbYAfRjjMk/URtRIW+lLpBXsjiORST0EvlBfHuK0AoAH1nuYnhY+pH7vPSZ1yUKLJ
         r3002eWUAKkVWPb+nN7CR1hALDARXS3WfXNrMervEm3ZGP6oaLNwf6L9YEx78FfAxGfL
         hRKSAq7iU/m1CG29AuvpXXnbTCp9KymjHxCsfQ2CpRSwjZ9AHVy68crMlX5jb3c0Eh5S
         g7aV/Z5KWoV7hsAr566ZPF9OYJLIhgCl/LyfMijTnMLPjkZPyYcYTn9wl/fi86GblHlb
         6lyc3/cHPgweRFgn+lpJgj6ZwN5nBOFju8h2aB7lQrhwFe4Oz31tuo20+WG9DWv3ymYu
         28iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=crc5hfCglEv/cKPwmd2inJna6m5cykD8cKsKs1g2N6Y=;
        b=h85eQyE7EqHeJVQltCyDzCJpBcN90h+Uh7/8urBGrlEV8UrK67pv/GqWUMw6dM0RRZ
         POauuqmwtlaxYcilOjetQ+D2tI6ct6YKs+Aj/Pzf6lvqfDwS4vW826dSvpwc6mVPPv84
         74CR5wzcNW7Y5zl+v3oQAQhA3WtJ7o4/+FC8zzSspNmty+XulKkg3KC/Fe1Y3ijQOIuJ
         RXW0rYTgYIKUFglFBE+7NjUpYtfMzambwlw4GzMsSvBehY6xgFPZ6Jqg+bQLCnwfwSMR
         4PugwQJadMM+o+U7vvRQy5jlKfiskupuKksDzvdLPcZXcyDfEs4lSP0DtKRuMytmTh5b
         zVqA==
X-Gm-Message-State: AG10YORPA8SOSi4RssobTqnkNVQUWrRzV0UQiLWDINK5Axrh4FIJ/0aLpqFQ0dyMFD6E8A==
X-Received: by 10.66.147.164 with SMTP id tl4mr28581144pab.40.1455611096803;
        Tue, 16 Feb 2016 00:24:56 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.200])
        by smtp.gmail.com with ESMTPSA id v29sm43713209pfa.31.2016.02.16.00.24.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 00:24:56 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v3 2/2] staging: wilc1000: remove spaces around '->'
Date: Tue, 16 Feb 2016 16:24:45 +0800
Message-Id: <1426285ff43da73736223644afbcec39f4f2c81e.1455610768.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455610768.git.eraretuya@gmail.com>
References: <cover.1455610768.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455610768.git.eraretuya@gmail.com>
References: <cover.1455610768.git.eraretuya@gmail.com>

Delete the space around '->' as it is prohibited and breaks the code.
Checkpatch found this issue.

ERROR: spaces prohibited around that '->'

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index d4705b7..5649476 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -2126,7 +2126,7 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
 
 	priv = wiphy_priv(wiphy);
 	vif = netdev_priv(dev);
-	wl = vif ->wilc;
+	wl = vif->wilc;
 	PRINT_D(HOSTAPD_DBG, "Starting ap\n");
 
 	PRINT_D(HOSTAPD_DBG, "Interval = %d\n DTIM period = %d\n Head length = %zu Tail length = %zu\n",
-- 
1.9.1


