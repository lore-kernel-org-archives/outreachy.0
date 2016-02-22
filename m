X-GM-THRID: 6253814918113394688
X-Received: by 10.129.152.130 with SMTP id p124mr3102748ywg.24.1456144031797;
        Mon, 22 Feb 2016 04:27:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.84 with SMTP id 78ls1669710qgk.10.gmail; Mon, 22 Feb
 2016 04:27:10 -0800 (PST)
X-Received: by 10.140.246.3 with SMTP id r3mr26827036qhc.2.1456144030147;
        Mon, 22 Feb 2016 04:27:10 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id u66si3443800pfa.2.2016.02.22.04.27.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:27:10 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ho8so93041827pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 04:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=c6x5V3g+DiZJUVsCy05NLbpkfI2Ow5apnfOQnUuHj/U=;
        b=PNSNgiuce9VPt3ZNj1oDn4EBa1+ekC2HHG++xOEEGLgqgzAw7p1az9v5hZLdoSPVV3
         scrM6xwTIk5wvJR+DmS25gVkgiEW++30hc3ICEF0XU+M0zmHqCjjuNzP3GSRVH76CIQB
         07/w+juNxwj/H/JzV2PTBjYSDGt7Rb+wRGauPDXl0SCHBFCHrtvQU9zPO+/0X1ER+uVs
         JGUjXdqGqcZx9bf9Ia9imUeWtxxBqxLMP74XkZYrupljvtU24jrk8YmXtcr6BOT2rRLH
         mn9orF7y4gVcEnhIDv3QJmu+YdKJmKk+/EgdcDZIJQKAAOSsn457l23M+X7h/6jPzKJi
         ejQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=c6x5V3g+DiZJUVsCy05NLbpkfI2Ow5apnfOQnUuHj/U=;
        b=fMzlj8/1rJtIs+4j90U9MeUmfc+BoVTHb0hjWudp7AKByDyFUWrB09e7q2Zy5y/1+o
         Abonkherl9vl3y8z+gA4y+qWzWmzi3m8xPnUIp5T8BxMqmegbu1xqGx01y/2tCtkJ1go
         IgRdYGYjp1PhC28LoDsFULjQE8D/DnFi1PvE2IJ0a5WiZ1hU2QKB2pFwq2+OF3qJ+DAE
         aIaFSLev5YNZcR7/yDpmX1cTjXU9xD1V4LUQiN9iUrikZC4ECC7C+gghknwsy6W3CdgA
         Clcd1RpV84cm9nkv3lO5TMHD69OmqVib82SOGVY3F8SoDwvUuLjJ7Au8FZSdyD2dEYT6
         gEEA==
X-Gm-Message-State: AG10YOQgvZk1s7kvNQq5meUnquGQaW9OWV62Fu6wks7uShs2b3Luz2j4dYg8w1C92nF85Q==
X-Received: by 10.66.235.129 with SMTP id um1mr37387488pac.17.1456144030009;
        Mon, 22 Feb 2016 04:27:10 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tp6sm36871775pab.25.2016.02.22.04.27.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 04:27:09 -0800 (PST)
Date: Mon, 22 Feb 2016 17:57:42 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] staging: most: hdm-usb: Use macro DIV_ROUND_UP
Message-ID: <20160222122742.GA16694@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
It clarifies the divisor calculations. This occurence was detected using the
coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1))/ (e2)
+ DIV_ROUND_UP(e1,e2)
)

The macro CEILING was dropped altogether and has been replaced with
DIV_ROUND_UP.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
  - Removed macro CEILING & all its occurences.
 drivers/staging/most/hdm-usb/hdm_usb.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
index 3ee9e6f..9d5555d 100644
--- a/drivers/staging/most/hdm-usb/hdm_usb.c
+++ b/drivers/staging/most/hdm-usb/hdm_usb.c
@@ -40,7 +40,6 @@
 #define MAX_SUFFIX_LEN		10
 #define MAX_STRING_LEN		80
 #define MAX_BUF_SIZE		0xFFFF
-#define CEILING(x, y)		(((x) + (y) - 1) / (y))

 #define USB_VENDOR_ID_SMSC	0x0424  /* VID: SMSC */
 #define USB_DEV_ID_BRDG		0xC001  /* PID: USB Bridge */
@@ -786,7 +785,7 @@ static int hdm_configure_channel(struct most_interface *iface, int channel,
 	temp_size += tail_space;

 	/* calculate extra length to comply w/ HW padding */
-	conf->extra_len = (CEILING(temp_size, USB_MTU) * USB_MTU)
+	conf->extra_len = (DIV_ROUND_UP(temp_size, USB_MTU) * USB_MTU)
 			  - conf->buffer_size;
 exit:
 	mdev->conf[channel] = *conf;
--
2.1.4


