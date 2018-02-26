X-GM-THRID: 6526929159245004800
X-Received: by 10.223.150.47 with SMTP id b44mr976723wra.7.1519669117077;
        Mon, 26 Feb 2018 10:18:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.70 with SMTP id 67ls1699707wmj.7.canary-gmail; Mon, 26
 Feb 2018 10:18:34 -0800 (PST)
X-Google-Smtp-Source: AG47ELuiyWcnah5edKmAzkbxWBhmf83EIlIzooGzJoMdIF8RGj4JhUn/Pt4LucGMhsQYulBP8s/z
X-Received: by 10.28.178.80 with SMTP id b77mr1145840wmf.5.1519669114702;
        Mon, 26 Feb 2018 10:18:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519669114; cv=none;
        d=google.com; s=arc-20160816;
        b=uQIwnk4b75//VJHnss6fB3AG87aHU/IDSSDtROxEu19s8vyefTSjOzP5vDUn1wGsSi
         xITkWbJb2XsujpiAAIfZdYYiwAoq/XD08iFw1mn6vJ14bSa2N24EyHtXYYfzgphmpJfu
         IBAmvo8Nwe6YUUzTFVL63b+Y2o/QZ0KQpsdDD5N8QaaFqykaL6HnG0sk6Q9qlpxlGXmH
         PdmEzE59bVFoh+oYpv53ixfHt+9GEHAlacCEdv9W6PlcSmHFwS7wTG4dYl2JArCfiycY
         N9OQHPBuz7MaCSy9r7OvkeHou+gJNQ1BKnpFjC4wqlDe7IEEqr2LlyuZpvXELaESzo8A
         TqxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=kKfED0KlnmH9p0IEs+tM8zH7mnbDhSWlxd0WJkKLHTM=;
        b=QWCCcQH1eiEhQgxH4mtXvWKE3yZrUODoPRMZ2LndrqXRdCENaOl9kqSpK6r38Clp0i
         c/c2ADjPvNb/YLuzUYxgwDaAmv6nV0IZsYiyoM0M3XsGTPyrKqaMHtafGFHQ7xLuv8DG
         l97Pe5Py1a5V4i8XuiFFut8k0Cy8ELMLIS8xHAS+K/TCsnMglyhstzYAR5U52NYUdr+k
         a44YGBZreXoxjIjBVFGtJwTayzFlNyXUvz4ayBoEdarQdolegTeiLZvt5KTqF84Oli22
         8oH4ZWtoc6h8Baw7+ulIYBWmxK/TLMg78NZMDwLZ+dZzITGeQTHnh0e5THjrCOhr2Qzz
         +4qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=YEY1qrAo;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id 200si492852wml.2.2018.02.26.10.18.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Feb 2018 10:18:34 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=YEY1qrAo;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-wm0-x243.google.com with SMTP id 139so5933466wmn.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Feb 2018 10:18:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=kKfED0KlnmH9p0IEs+tM8zH7mnbDhSWlxd0WJkKLHTM=;
        b=YEY1qrAopZLIk+yOVutnbhm2koFu5IN01ytMHRCN51KKcm9Zw1jojVLjki2yAh2JFZ
         S/phZixlK+QpMIi0vs1Q8STPOoJwjEgFT+KLuxRGVMitemJtPk8T70XCcjxKw7mr7r9a
         xqTdk9jduPvpEi1Vj5JPdisaqt0l4AJlns4mI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kKfED0KlnmH9p0IEs+tM8zH7mnbDhSWlxd0WJkKLHTM=;
        b=XPtfwRb8mIhHJ7HXeJuNUTjvxhq9axxPcGIySUT8M+WYsQ2apVsJSUWpZYEGiCvg7K
         eTOpzSiC6rvs610GnXxhZ9NNPXFWbM/UKyDjevWFldKFirtdHh489P/AoWvPvujxQpx2
         qm9g8ZFHIASzjzNsM1SnCoBVT0+JEdzxNDfpnFcg4lFLmZRKv/ZsrGwDuDzQNXrmCAT2
         Y+6vJ2KKSyPMnUdrB23EQHAIyLE7DxlpXy+W4tq3+r2iu1syFeFYXHFP0vmsgBHhwH+U
         YDbAM0v4GFs+m/EL/Iya+LmYnN+ZYXB2MsSXyJ5HnCWTas7zMzcBY7TjTmykTBWYEJZv
         oZ0g==
X-Gm-Message-State: APf1xPBnto4zOob47eJmpOb9xYpdh6mEeFhnYmQ+6I86Xp65t3Ba1uYC
	cIBnmi3h6i/uOcc4mnCswj+ugeW9
X-Received: by 10.80.180.186 with SMTP id w55mr3345423edd.184.1519669113762;
        Mon, 26 Feb 2018 10:18:33 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id u38sm8827144edm.50.2018.02.26.10.18.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Feb 2018 10:18:32 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] h [Patch] Fixed unnecessary typecasting to int. Error found with checkpatch. Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Mon, 26 Feb 2018 23:48:15 +0530
Message-Id: <1519669095-31351-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

---
 drivers/staging/ks7010/ks_wlan_net.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index e48c557..69cd8347 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -201,6 +201,8 @@ static int ks_wlan_set_freq(struct net_device *dev,
 {
 	struct ks_wlan_private *priv = netdev_priv(dev);
 	int channel;
+	int a2412 = 2.412e8;
+	int b2487 = 2.487e8;
 
 	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
@@ -208,7 +210,7 @@ static int ks_wlan_set_freq(struct net_device *dev,
 	/* for SLEEP MODE */
 	/* If setting by frequency, convert to a channel */
 	if ((fwrq->e == 1) &&
-	    (fwrq->m >= (int)2.412e8) && (fwrq->m <= (int)2.487e8)) {
+	    (fwrq->m >= a2412) && (fwrq->m <= b2487)) {
 		int f = fwrq->m / 100000;
 		int c = 0;
 
-- 
1.9.1


