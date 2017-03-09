X-GM-THRID: 6395378707824902144
X-Received: by 10.107.11.196 with SMTP id 65mr3587094iol.96.1489040250495;
        Wed, 08 Mar 2017 22:17:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls5448158oth.13.gmail; Wed, 08 Mar
 2017 22:17:30 -0800 (PST)
X-Received: by 10.157.10.56 with SMTP id 53mr4559140otg.120.1489040250195;
        Wed, 08 Mar 2017 22:17:30 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si1023451pfz.1.2017.03.08.22.17.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 22:17:30 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so1263288pge.2
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 22:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EwzNAdvlIO8f5psorApUZgadAubB0o8rw2nwgW5wSac=;
        b=kMbl/SxYn/OnB/lEhl02I95qfAF/dHfOsbI0rW4Ky07EoUEy5y8NRY8L8K/VX9yVVt
         RzF6LTgQiyo9SAZW5qVQ9nAJXXQmqgeGibst/fxoTHhADl6xTc5l1FVQH7Rn6CItL0FM
         S24FJugEWeyT0plZQoqvdgbdh+/LceVdB7qP6KeMcaz7WGTBR8uP3PRdiMoDPsGggzkx
         6EVvLQOQuGiHZTWEX1RHYyV/WPAKnK7eN3K/zR+ueJsqSH32EC5amdTPlvnbNsjxeHgz
         wLneARlq/eXy4/yD+AXxL+13kSwaz9C3MeOLL39y/ppW7uUrbiRYzdHzOfbC97QulsCQ
         ax7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EwzNAdvlIO8f5psorApUZgadAubB0o8rw2nwgW5wSac=;
        b=G9uEVsRbYncEFA53rJUhe3ytyoh+xYqDP4ymxuxN6bj+S7AmOBxAkKn2FHC/KGUS3E
         7F1RXfC6tizCvySq9ErHwBtkJqGzMJqoI7cGZtTomntmUnPR2j7EJBGsJvuqT3kSJpO9
         h2eQzeJcMzneQVA7aBHFPDh5r4PmWbsgfuH860M1QSmTe+qzqwaS+XsUAERcM2mKQ0uz
         NI/fC377oyus4vTfcDEO0OeFMwarwZbc+5Ra26Rk7moxX08VLOtyUzYAaO2Lim+tV00H
         eMO5640xFnrTWXfiN/ULjFxqUE8enIKZ/aeQTECeOtggyu6D3tfj+a9aF4ceUl7e4jrd
         8oIQ==
X-Gm-Message-State: AMke39kRsp8bO1g9yBRZeS7O6qHru3nfMD8w6tJ1n/5fytuvrvRkEBEXEt+f7bJmOJMMWw==
X-Received: by 10.98.32.24 with SMTP id g24mr11904489pfg.115.1489040249825;
        Wed, 08 Mar 2017 22:17:29 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.208.174])
        by smtp.gmail.com with ESMTPSA id l19sm9784053pgo.13.2017.03.08.22.17.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 22:17:29 -0800 (PST)
Date: Thu, 9 Mar 2017 11:47:07 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH 2/3] Documentation: ABI: testing: sysfs-bus-pci: Fix
 repetition of word 'the'
Message-ID: <4023116b76002884a1cc5d36a763139f3d5181ca.1489039271.git.karniksayli1995@gmail.com>
References: <cover.1489039271.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489039271.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch replaces 'the the' with 'the' in the documentation.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 Documentation/ABI/testing/sysfs-bus-pci | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-pci b/Documentation/ABI/testing/sysfs-bus-pci
index 5a1732b..e4e9010 100644
--- a/Documentation/ABI/testing/sysfs-bus-pci
+++ b/Documentation/ABI/testing/sysfs-bus-pci
@@ -299,5 +299,5 @@ What:		/sys/bus/pci/devices/.../revision
 Date:		November 2016
 Contact:	Emil Velikov <emil.l.velikov@gmail.com>
 Description:
-		This file contains the revision field of the the PCI device.
+		This file contains the revision field of the PCI device.
 		The value comes from device config space. The file is read only.
-- 
2.7.4


