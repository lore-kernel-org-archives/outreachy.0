X-GM-THRID: 6803932242595807232
X-Received: by 2002:a1c:8103:: with SMTP id c3mr14056798wmd.166.1584163923149;
        Fri, 13 Mar 2020 22:32:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls5994536wrd.5.gmail; Fri, 13 Mar
 2020 22:32:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsRqbpF1VgAsbfb11ncVL6ogm8t0IAIb5DztLgiW1gaH4xR5yC0vuAAtIZ19MdQobm0oZia
X-Received: by 2002:adf:b60f:: with SMTP id f15mr23054681wre.372.1584163921862;
        Fri, 13 Mar 2020 22:32:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584163921; cv=none;
        d=google.com; s=arc-20160816;
        b=hO5usm0Yp97bhVUzrPtaw9oxL8soSLcQcsstw89CqykRa0G0hNKIRb2Smv8H89JPgM
         dTLmdHo3gJovdyXPeZqVmVJG8Tg548QSTw1vqIUuMPU0BIm86MOdwDBY9POGOwuJjIXv
         VtXHXpHbFB4+3hn58slc6vAxctDlkzmQ/TgWfeqm/VF0vzeuwGyTgeujIbSPJxEWtpXT
         GLGp0haTDxMNrs2XumT1tTODBR5ApIYSSUt+1QNCK9lE1AA+ZLZeXex6oeh+ZtpxCVGS
         TIdAYdpuknmyISd7oAJ+26MJbImkuOtIIC35G8J39ouHMMe1b8bY0whPsU6TzQr2IDk3
         bYTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=YX1HCf4e/spdtdlyoJQmbJGHfiGTAfBhBnXWm6cwtPA=;
        b=dzD2n5wCXykKWY54qUKobZ8z8SpD/hKAig/XbeOjsmpF0J+iO5sP0x2OA5keXjP0bx
         wzlYpWDaC49SVlrVkb2QfG/aiyKTJLMv+IH2KN6g1e6E1eZMr87YweRKG03Kj77i7eXv
         /51H3rOXTRIz0QwDJBCsgb5GvqX3lhgFvrEUgAoc1TaxpWWSt97iWhoFZK74tQd7ht6l
         dFDKQIkWdlzHhpU8s7AftWScYVWNywVmLbo2x8UnCkLx72hOoPU23gUV47ljxu7eLWYm
         PO1jj0UhFQadKZ0WHxsfGHe4h4G5/3F/BGDVEV4Fujai/JN/G4i+g+Cg/sCD1PzpQ7JT
         WwPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id b81si421294wmc.2.2020.03.13.22.32.01
        for <outreachy-kernel@googlegroups.com>;
        Fri, 13 Mar 2020 22:32:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 1495 invoked from network); 14 Mar 2020 05:31:59 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.242.88.46)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 14 Mar 2020 05:31:59 -0000
Date: Sat, 14 Mar 2020 11:01:51 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: David Kershner <david.kershner@unisys.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: unisys: Documentation: Fix for longline and typo in
 doc
Message-ID: <20200314053136.GA2160@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Fix longline and a typo in documentation.
Found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/unisys/Documentation/overview.txt | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/unisys/Documentation/overview.txt b/drivers/staging/unisys/Documentation/overview.txt
index f8a4144b239c..7f0427cafca9 100644
--- a/drivers/staging/unisys/Documentation/overview.txt
+++ b/drivers/staging/unisys/Documentation/overview.txt
@@ -15,12 +15,12 @@ normally be unsharable, specifically:
 * visorinput - keyboard and mouse
 
 These drivers conform to the standard Linux bus/device model described
-within Documentation/driver-api/driver-model/, and utilize a driver named visorbus to
-present the virtual busses involved. Drivers in the 'visor*' driver set are
-commonly referred to as "guest drivers" or "client drivers".  All drivers
-except visorbus expose a device of a specific usable class to the Linux guest
-environment (e.g., block, network, or input), and are collectively referred
-to as "function drivers".
+within Documentation/driver-api/driver-model/, and utilize a driver named
+visorbus to present the virtual busses involved. Drivers in the 'visor*'
+driver set are commonly referred to as "guest drivers" or "client drivers".
+All drivers except visorbus expose a device of a specific usable class to the
+Linux guest environment (e.g., block, network, or input), and are collectively
+referred to as "function drivers".
 
 The back-end for each device is owned and managed by a small,
 single-purpose service partition in the s-Par firmware, which communicates
@@ -56,7 +56,7 @@ NOT covered in this document:
 2.1.1. Overview
 ---------------
 
-The visorbus driver handles the virtual busses on which all of the virtual
+The visorbus driver handles the virtual buses on which all of the virtual
 devices reside. It provides a registration function named
 visorbus_register_visor_driver() that is called by each of the function
 drivers at initialization time, which the function driver uses to tell
-- 
2.20.1


