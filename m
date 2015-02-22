X-GM-THRID: 2273030701056
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1bc0e2b2eb529af1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.87.166 with SMTP id az6mr524502wib.1.1424569945649;
        Sat, 21 Feb 2015 17:52:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.42 with SMTP id y10ls417727lag.71.gmail; Sat, 21 Feb
 2015 17:52:25 -0800 (PST)
X-Received: by 10.112.64.171 with SMTP id p11mr511128lbs.12.1424569945115;
        Sat, 21 Feb 2015 17:52:25 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id o3si394313wib.2.2015.02.21.17.52.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 17:52:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f171.google.com with SMTP id hi2so10118306wib.4
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 17:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=rL7AknGdMkTthB3Ayriz5y43xF4K0MqM8HOdPBU3P0E=;
        b=Rvdb9kCgAvEEZM1VD0t68shvbJ0FQbH+D0eaZvgAb1rqfS51ECib6r6hoF1RpHGJoX
         eHQchiVJezK8R9oWGmvKdQSkMZus1sPvAFK2KDM0SvaFyf4lAnVwugn7gMYNyZnP47Zb
         wEj0Kfz5GYGTLER5woQRAnBlbV6J9SjE3akal9vYLDvQPoDVeFb5Iml46vBTEBswq1d8
         QJ6kb0TcCl2KTdopaAKeEQstd+P/vVFg5ZfiZZycNpeHLnhfZ1jhE/JIQi5+RUaLuqTM
         DYNz6Xo9Lp2HPnuWa8x04JvTj8LMcJYxPZCsP6sftrFnbDY6Qs8SiwHfjbGfGOxvLJ9x
         IQpQ==
X-Received: by 10.180.80.9 with SMTP id n9mr8259401wix.34.1424569945027;
        Sat, 21 Feb 2015 17:52:25 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id dm6sm9227136wib.22.2015.02.21.17.52.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 17:52:24 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 7/7] staging: ft1000: ft1000-pcmcia: Added missing blank line.
Date: Sun, 22 Feb 2015 03:52:03 +0200
Message-Id: <590a1f46635b2a6145cc3b4bfb01a41915c34ad9.1424569663.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>

Added missing blank line after declaration. Removed following checkpatch.pl warning:
WARNING: Missing a blank line after declarations

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
index 1d0d46f..21b6c9e 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
@@ -2004,6 +2004,7 @@ static void ft1000_get_drvinfo(struct net_device *dev,
 			       struct ethtool_drvinfo *info)
 {
 	struct ft1000_info *ft_info;
+
 	ft_info = netdev_priv(dev);
 
 	strlcpy(info->driver, "ft1000", sizeof(info->driver));
-- 
1.9.1


