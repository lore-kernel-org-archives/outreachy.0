X-GM-THRID: 6341825343560613888
X-Received: by 10.25.72.82 with SMTP id v79mr616338lfa.20.1476571276881;
        Sat, 15 Oct 2016 15:41:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.11.203 with SMTP id 194ls524176wml.24.gmail; Sat, 15 Oct
 2016 15:41:16 -0700 (PDT)
X-Received: by 10.28.47.210 with SMTP id v201mr246022wmv.14.1476571276366;
        Sat, 15 Oct 2016 15:41:16 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id f1si339816wmf.2.2016.10.15.15.41.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 15:41:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z189so3998840wmb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 15:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CgSswbkQ9yMEthnqhz/m3m/3VMO5/TO1TlsuI/v7Rmk=;
        b=boFNeBbcpHnrdioG2o9KxQ0non+GUpJwt3LMLaQKkV2h/5L3Ha0N7kGWMW5RfkQVhr
         kXLMCUyBKWR7jWhnj05ReC1taYHSb5gO49Lr3ntMo5OMaL6HGqOV7Fa5eyVJxV9KGGjG
         klADzxp26xy/qi2QW6x/v856vzhG1ia1nD22mLzbP3ylPPPWB/ypYY01mJYMgn042jAE
         4U3RWO4Df2x3P0PZ1MNy3UXH1f6O8K6WxBzXQFZ9XBnc69k0IAqlaHK34Vp2p5iC/86M
         Gm4w2wJ5PaEiPHJOropIfye1pnnM496XoGwnYujP4Pv4jlJGyiVC4oS+ABaJUwxdsRH+
         0h5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CgSswbkQ9yMEthnqhz/m3m/3VMO5/TO1TlsuI/v7Rmk=;
        b=kyOYNSohMLNb6x54JrbsAzeD65B5TAapiJ2lrtwlTafioWLFKJZNKle89ivCZu/Y+H
         QyGuTdKVSVCDH0IW/wY5BeXfKkB0VvsTD3ocQKJ30aTxP2/p/V8hKE+HjOvYkYwVmnYr
         zHLk8+Jrntz1YGIPDiIFPFveJsmWdgn7GccF3jikUwzV0Y+l1/D9jojad1NjxIf6GJ0+
         1x2xhvX/VLgaZIoi0fF9NZnrLAsHo5Evdc7+0GHRxdx2U4/Kzlau/6lOlDkhJMrj7rKs
         B9x/0iGFy7rvdSEl1YUfr5nqjkuowlXc5sy0wuGBzHS4QvLsoyVyJQACw3PQcCrYBYWV
         YbjA==
X-Gm-Message-State: AA6/9Rm/67XFlfnMrpXtTNsiorbFDSo/nY+GN3+ViM7YIoSkijSFUaVTU+z8OBZ7Y0Q4VA==
X-Received: by 10.194.204.198 with SMTP id la6mr6544071wjc.2.1476571275965;
        Sat, 15 Oct 2016 15:41:15 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id hb5sm38909159wjc.5.2016.10.15.15.41.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 15 Oct 2016 15:41:15 -0700 (PDT)
Date: Sun, 16 Oct 2016 01:41:14 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: unisys: visorbus: Make a read-only structure
Message-ID: <20161015224114.GA23462@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch add const qualifier at the declaration of the structure.
The structure become a read-only data, this increase the security.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/unisys/visorbus/visorchipset.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/visorbus/visorchipset.c b/drivers/staging/unisys/visorbus/visorchipset.c
index 5987149..8e67c17 100644
--- a/drivers/staging/unisys/visorbus/visorchipset.c
+++ b/drivers/staging/unisys/visorbus/visorchipset.c
@@ -1317,7 +1317,7 @@ static struct attribute *visorchipset_install_attrs[] = {
 	NULL
 };
 
-static struct attribute_group visorchipset_install_group = {
+static const struct attribute_group visorchipset_install_group = {
 	.name = "install",
 	.attrs = visorchipset_install_attrs
 };
-- 
2.7.4


