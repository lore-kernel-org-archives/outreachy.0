X-GM-THRID: 6330221714021023744
X-Received: by 10.107.169.66 with SMTP id s63mr3050745ioe.16.1473869596322;
        Wed, 14 Sep 2016 09:13:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.155 with SMTP id d27ls480079ioj.21.gmail; Wed, 14 Sep
 2016 09:13:15 -0700 (PDT)
X-Received: by 10.66.246.136 with SMTP id xw8mr2616728pac.14.1473869595132;
        Wed, 14 Sep 2016 09:13:15 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h124si1379472pfe.0.2016.09.14.09.13.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 09:13:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z84so977503pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 09:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=P5/GI09vlJPgni9WSiNyZ0bRKKXgQvfh9mSAAvFuUV8=;
        b=fENumebvJ1o9oa46HGHXZV34W6+P75unddrh9I+ZBjXuz5vfoUpMCZX7liI5SguMNW
         xXFr7MhwUydDBJZUzaEeYu66hkj3C2G/Mg8yM7Re6vB82gk54VnHoFBhWgLRNMhFbMNu
         bJos+rBl/uHySxtSweMWq6GT4v2Ec5xPSNnDz52w7QjiCZ/L6hNVM+kz8ScPfxnyhQfR
         H9xcd4WnMOn5h5GDG2VoyVHT+zV1WCVwI4KMqusmkoatNXLXwGqlYptgH2R1FeqzZXYb
         SevyAI37cUqT+A1sQiFnAvBLr+VAjwV1SKjQz+tOE9RxXOamq9D+yFAbblgtpCFCu9lf
         n0Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=P5/GI09vlJPgni9WSiNyZ0bRKKXgQvfh9mSAAvFuUV8=;
        b=FEBrJOdMgY83K4Rf1OII2qF/8/JUyd/j+4y859EiwKfKcRGCUibDqG/wiJfZjlUige
         J4QxmT0rRF2Vl6EKYj1GtSXuAHdgBUeY3yvvzCFXwTYjYbEpS6z3Qyfg8gnEBmeOok8r
         Ma2BhPC5s/rJ6CuJfd+R/mWMuY5enWteDmTM0ShFVP826S5tUbDHgJ2bSzoHhisZyzIj
         j9TRicDeHxXw+Xqer/U3AsPp+OhAc9WM4GYva10bmyFx3DIVeXa6GClHl/HFXPtUTOTL
         S72piHvDPRoiS3LugxMo8mtyN3VbyV4wXikBsFPEDdeQOMVmISlynEQalmJ2hg7Aw/kM
         wrnA==
X-Gm-Message-State: AE9vXwNLuTIE37c6I6UUdMs8fh/CfUA4rXfTjyULSsXHyrnxF40x0kodDAPwWpMOSMRpsg==
X-Received: by 10.98.158.90 with SMTP id s87mr5956289pfd.117.1473869594925;
        Wed, 14 Sep 2016 09:13:14 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d5sm39260848pfa.44.2016.09.14.09.13.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 09:13:14 -0700 (PDT)
Date: Wed, 14 Sep 2016 21:43:04 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: gdm724x: Remove unnecessary blank line
Message-ID: <20160914161304.GA24433@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning:
CHECK: Please don't use multiple blank lines

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/gdm724x/hci_packet.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/gdm724x/hci_packet.h b/drivers/staging/gdm724x/hci_packet.h
index dbc4446..4644f84 100644
--- a/drivers/staging/gdm724x/hci_packet.h
+++ b/drivers/staging/gdm724x/hci_packet.h
@@ -89,5 +89,4 @@ struct hci_connect_ind {
 	u32 connect;
 } __packed;
 
-
 #endif /* _HCI_PACKET_H_ */
-- 
2.7.4


