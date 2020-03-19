X-GM-THRID: 6803231056018276352
X-Received: by 2002:ac2:5f58:: with SMTP id 24mr1615145lfz.81.1584611744418;
        Thu, 19 Mar 2020 02:55:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls399509ljp.1.gmail; Thu, 19
 Mar 2020 02:55:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtJ02HglF767wqNDTOBDGRknNG8upa2tD8uoCB0wAn492GhKafykRB7pSuylQ/qEpL/PhMX
X-Received: by 2002:a05:651c:1b5:: with SMTP id c21mr1657185ljn.174.1584611742835;
        Thu, 19 Mar 2020 02:55:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584611742; cv=none;
        d=google.com; s=arc-20160816;
        b=mCXbvcb6HYLbwT4rfJayih5WlO64dF0u8dcPvAZKM4wf8e04jBdor1q8LtIRSEw1O3
         E0F//wSH9GmH7WDXU//Lg9oQexU155b5yXudPf6ufnf+em6yOTMcWoZTnpwk2HOaABFx
         suvXAYh4KHorAG6EXAYMmSHNbizX1PQFdSHPETtyqnPQyDUOj6whTMyZyYtNPe1u38n4
         5Y39rvvja7NUT1RqjrACzZl1cH+DE2FVA+zZ/04VR0K7177KrXz22qVYm+FqW8b0m4qe
         zhWlEbdXOESu5kmQyVyH/9HGv+RBNhDNd44/VGKzJS9Z4svlplt7FYeS4vtgy4yVsneO
         jvGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=fKBdUfFkfkQTNjgIS65JenM1siVYLzhefjJGAUh1GA0=;
        b=IpeS8IQfdyPMXTrHvduLoNt7JvzUHA20jaFCLzVW8UUZ/Fq3ZuED9nvhXK5YyEZYMo
         zZzZ7roQyomilxMiy2eInTAAqcqpzas0Mab0wr0MgEJTYp1rrwJIMcBs9s+IFH8+yHHp
         Z1S5U9S8l5XJrUQIjTIi9Y2EyEvWGYIIOd8yZlfWPcFoq8H4kOef9vhZUn4r7/KrOZ16
         AqyHzS9IR0FV6LPfYnuk+J8XcDaG12lD+bTnRzcWpSz7yDPJ+vlRJJnh8LFcsBEeXnUL
         hJzmU8lUVmwUFBoS4waJn2qXs5O6HaCIEuSi6HQ/uVjknhrZrdr0kZmlH7DKOCzcWbtR
         4pLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id s17si99400ljm.5.2020.03.19.02.55.42
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 02:55:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26715 invoked from network); 19 Mar 2020 09:55:41 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 09:55:41 -0000
Date: Thu, 19 Mar 2020 15:25:34 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3] staging: rtl8712: Fix for long lines in Kconfig help
Message-ID: <20200319095513.GA3078@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Fixes two long line in Kconfig help.
Found using checkpatch.pl

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v3:
 - Removed "Better" word from start of the subject line
Changes in v2:
 - Match Kconfig help style
---
 drivers/staging/rtl8712/Kconfig | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/Kconfig b/drivers/staging/rtl8712/Kconfig
index b6dcda77db1f..c62747c90968 100644
--- a/drivers/staging/rtl8712/Kconfig
+++ b/drivers/staging/rtl8712/Kconfig
@@ -6,13 +6,16 @@ config R8712U
 	select WEXT_PRIV
 	select FW_LOADER
 	help
-	    This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
+	    This option adds the Realtek RTL8712 USB device such as the
+	    D-Link DWA-130.
+
 	    If built as a module, it will be called r8712u.
 
 config R8712_TX_AGGR
 	bool "Realtek RTL8712U Transmit Aggregation code"
 	depends on R8712U && BROKEN
 	help
-	    This option provides transmit aggregation for the Realtek RTL8712 USB device.
+	    This option provides transmit aggregation for the Realtek
+	    RTL8712 USB device.
 
 
-- 
2.20.1


