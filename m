X-GM-THRID: 6388170133905342464
X-Received: by 10.157.21.117 with SMTP id z50mr4275113otz.111.1487428391790;
        Sat, 18 Feb 2017 06:33:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.179 with SMTP id 48ls5166879otj.27.gmail; Sat, 18 Feb
 2017 06:33:11 -0800 (PST)
X-Received: by 10.200.33.177 with SMTP id 46mr3870711qty.33.1487428391461;
        Sat, 18 Feb 2017 06:33:11 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id z73si1361654pfa.2.2017.02.18.06.33.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 06:33:11 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id a123so4681010pgc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 06:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=tn9o0wBaQIFWXklZJul7hAJpgEJJE0OSc4DYa7TYu6M=;
        b=Xw/t9td9X18DxSjex8EW9WNAWj6rjE6lMUsoi+h6JuiXCTllkpP9nMdRXwjkHY9HeS
         lvZNTC22EhaLUYIT8H47uMAhFGonKarSVOFakwo4OzA5T/D9HzCyDqgzDM3x8wSOBeMR
         JVOAUSvS3qBMz/CxHn6wOB3CCO6Cae6/NA01aXiXYwrpIH/u/wJOWDe22FnezmkMRCm6
         75WQKfljJtyO52IZALNd5R85J7m5Tggcdv+bcdZbpCCmTzDdl/LYcu2UCKJPA0z+Qe1q
         Joyq8s0I/g/kVCITQJqfWqx6UjY7qxVfRPIrU7GXM4SnOHIl/zzlYSx2nt75HSJqPpIS
         ZHCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=tn9o0wBaQIFWXklZJul7hAJpgEJJE0OSc4DYa7TYu6M=;
        b=AzaUpiwa/vAvVOZ0spFlKmKMh7zJD9Svc5gYzDGDTPoIm9cSMnG0/XpVtsVg9e/XMo
         QL3xu/VlGFQaIU2Et6FgFdKu3h+yXRBIqCv0FZJ+sWvKfY+1qHSYBFG4PgLszrR42XAP
         HmeThOYY1fRXb01p6EUxkkLnCjeBsUV0dushmL732cNkJs69cbuz9gSa7yghv3/SVi65
         hTIamfrmZR2dNGtDYuym+45IHhVTFGHIyA6hNyva+Do/l9Zm701N/d3MreT2noh2CdXc
         V4FYDQgoIqIkKfnjMC0YzVViobF8ALa55Vc+PRMiuSt0jC4K0ZtWAkDzSxXznITk3Hjv
         jqiA==
X-Gm-Message-State: AMke39n6WZbt0awei4QfpTmCWQPMfPgf9SESMyWh6Oi9+3Y/NBLDp1s9uIHXoHag8Yk8EQ==
X-Received: by 10.98.252.203 with SMTP id e194mr15309971pfh.8.1487428391183;
        Sat, 18 Feb 2017 06:33:11 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.2])
        by smtp.gmail.com with ESMTPSA id s8sm25780973pfj.30.2017.02.18.06.33.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 06:33:10 -0800 (PST)
Message-ID: <58a85b26.8866620a.4848e.8ac3@mx.google.com>
X-Google-Original-Message-ID: <20170218143307.GA3051@<rvarsha016@gmail.com>>
Date: Sat, 18 Feb 2017 20:03:07 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 4/4] staging: rtl8712: Match alignment with open
 parenthesis.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Matched function arguments alignment with its open parenthesis. This patch
fixes the following checkpatch issue:

CHECK: Alignment should match open parenthesis

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
 -Modified commit message.

 drivers/staging/rtl8712/os_intfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 1141ab3..8836b31 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -388,7 +388,7 @@ static int netdev_open(struct net_device *pnetdev)
 		if (!r8712_initmac)
 			/* Use the mac address stored in the Efuse */
 			memcpy(pnetdev->dev_addr,
-				padapter->eeprompriv.mac_addr, ETH_ALEN);
+			       padapter->eeprompriv.mac_addr, ETH_ALEN);
 		else {
 			/* We have to inform f/w to use user-supplied MAC
 			 * address.
@@ -405,7 +405,7 @@ static int netdev_open(struct net_device *pnetdev)
 			 * users specify.
 			 */
 			memcpy(padapter->eeprompriv.mac_addr,
-				pnetdev->dev_addr, ETH_ALEN);
+			       pnetdev->dev_addr, ETH_ALEN);
 		}
 		if (start_drv_threads(padapter) != _SUCCESS)
 			goto netdev_open_error;
-- 
2.9.3


