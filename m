X-GM-THRID: 6803727344338993152
X-Received: by 2002:a19:760c:: with SMTP id c12mr8930588lff.48.1584116216655;
        Fri, 13 Mar 2020 09:16:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8997:: with SMTP id c23ls636379lji.7.gmail; Fri, 13 Mar
 2020 09:16:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtcqQZaj8HVttvzy7HeUFYxK29H7oh2ydzoKEYiyBJYUxgJqA2AJtPOEBiNA9zSfZO/zAgf
X-Received: by 2002:a2e:9008:: with SMTP id h8mr8668560ljg.217.1584116215225;
        Fri, 13 Mar 2020 09:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584116215; cv=none;
        d=google.com; s=arc-20160816;
        b=skt5t0ErBPTqDfUOuXRhNNRf1scS/L40iZCb00H6vuya4obj9N5JvTYpZ9fKwrvaII
         5oFGCOHe3+e6pBLpWCFzcS+tZVJezkRD8FOQQ3NkNVyxZgF3XF+evswB37a7/IK73tTD
         /zDxurMi9EArC81QgIodV5QDMyKcSALhdHz3KIzv4ZzYd3R53LOVMM4ASe/FHlnMSV1A
         3Xyv208YoihNRaizTEc4Kh7baNcxX0mslvjTug0sG9t/75jtiJ4P8Z+HHzJe1n3AT/Be
         /J/5A8hoZrdPXRNuNGYkSugFAGimm+oMK5pE7T/mmpKFvFQ2ZRp6B/lf9Jb9HU7Keb8f
         FDtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=1J4PeSx+krNY6jtVUAtEr5DivaT/AUceyABfwb6BiEE=;
        b=qlTbOgynACnob3Q+LTljsbIPSoeoGopkbK8P2ZL2Vj2CQOyrbFpSrp/V7oy+Elnczt
         0fpLZlTDPR8eA5/Z2+9zVHhVnQuy9zIN/G+kewi2dVt6PBLcoj4SFN/j29h0iiCfwAxF
         WNqYmX8U4Hm8oBeYglD2ssiFIwR/H1H8oNyzO+7p8RiAA13N5zkUBcuBRJ6HZkK4/CaK
         ZtISLJSn08kFihwzWf7xC/fyQ8vQYFxq3ANtHz+qE7Hpw447Mx435EmGIXfyCqVmqIiZ
         RHKcEf46rjTQk8/NEceS4kZ1oaolyicW0uozpfySZ7uxRE/rKRng9TadT8vfIJw/cjCl
         N+mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id e4si142129ljn.1.2020.03.13.09.16.54
        for <outreachy-kernel@googlegroups.com>;
        Fri, 13 Mar 2020 09:16:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27451 invoked from network); 13 Mar 2020 16:16:53 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.246.187.131)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 13 Mar 2020 16:16:53 -0000
Date: Fri, 13 Mar 2020 21:46:45 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] staging: rtl8712: Better Fix for long lines in Kconfig
 help
Message-ID: <20200313161631.GA2376@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Fixes two long line in Kconfig help.
Found using checkpatch.pl

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 -Match Kconfig help style
---
 drivers/staging/rtl8712/Kconfig | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/Kconfig b/drivers/staging/rtl8712/Kconfig
index b6dcda77db1f..31ff7cc6a7d2 100644
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


