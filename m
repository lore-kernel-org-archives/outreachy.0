X-GM-THRID: 6803231056018276352
X-Received: by 2002:a05:6512:3396:: with SMTP id h22mr4597401lfg.162.1584000665199;
        Thu, 12 Mar 2020 01:11:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:58c6:: with SMTP id u6ls711072lfo.11.gmail; Thu, 12 Mar
 2020 01:11:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv5QCEwT0UPgGkcEvGwbw088BdOATZ97rrPEilAUbkg7nfhQGnowJQTP/kqfP8t4JO8cm4m
X-Received: by 2002:ac2:4c15:: with SMTP id t21mr4605996lfq.117.1584000663633;
        Thu, 12 Mar 2020 01:11:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584000663; cv=none;
        d=google.com; s=arc-20160816;
        b=jzEhRdDXpey+Rj05To4q764x3e6QfX91oXcKlmxj1TD3VBgPp7DIgKLNAKFN8n1Vyh
         udGfGkau+SPr+/0zJvwTN0XhJwVbYiUjeC7r7pvSj5svnt8daEACqMlhbzT9/fg/eB6D
         T3FKSlA9N5HQyzzT3Ko8n70IMoty495EjkslOo9BC7QYzR6fHab0ov8EAFRZH+xacT3A
         Ce2unLPLDev7mOQssw4TmM5OHfeeC7tJ815zB/z9ZR4vVGH8fw8WxU/ygp4MIKBoN8g+
         a4cDp7e/C6qvW8RRY+zeTvJcjXNK9YJ1ATNX/Ll7yi2p+6SxJC7F+1Yi0EOg9gdmznDR
         0Fog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date;
        bh=wyRbmisNQErsiSYrXXjKi5IpmPYoYJC0pIfhSvfkebI=;
        b=U0m3osCcTBnhq7WtfJNRduevJo5GWbO/zeQAIyD2AVkJn1mkKCELX2kX79o+DdJY9n
         Sibnm2+wIe3QNNQP/7yQtfbFu7lygGIjEVVmbZpQjIGGPAovwXyzttRSUIgJ/CQUxPck
         KjTCw7RPAPhTsqPujW78s3uVankeYsHKkQLtoSyRLkRHIEJRI/AZeJNZrKSfxQjp3V3f
         nyT8Du8jeBbeL6zsujaMrXeqPZOsqDdPWjBP4Fr+YjtyjXa9RM0xEMj2sNtwMK6Y48jk
         0fB0G1qc6xW7xMcc2JZdkkBCX7oBI6bXF7LaaZgNwen7ma3n43mbEaxdp3hl8u30sVmt
         0knQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id s8si262033ljg.0.2020.03.12.01.11.03
        for <outreachy-kernel@googlegroups.com>;
        Thu, 12 Mar 2020 01:11:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 10752 invoked from network); 12 Mar 2020 08:11:01 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.246.223.143)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 12 Mar 2020 08:11:01 -0000
Date: Thu, 12 Mar 2020 13:40:55 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8712: Fix for long lines in Kconfig help
Message-ID: <20200312081044.GA3742@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Fixes two long line in Kconfig help.
Found using checkpatch.pl

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8712/Kconfig | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/Kconfig b/drivers/staging/rtl8712/Kconfig
index b6dcda77db1f..678bbeace823 100644
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
+	    This option provides transmit aggregation for the
+	    Realtek RTL8712 USB device.
 
 
-- 
2.20.1


