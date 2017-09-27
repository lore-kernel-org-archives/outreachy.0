X-GM-THRID: 6470534471821033472
X-Received: by 10.99.99.197 with SMTP id x188mr412878pgb.118.1506538705888;
        Wed, 27 Sep 2017 11:58:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.234.137 with SMTP id n9ls663374plk.15.gmail; Wed, 27 Sep
 2017 11:58:25 -0700 (PDT)
X-Received: by 10.99.111.11 with SMTP id k11mr422954pgc.107.1506538705104;
        Wed, 27 Sep 2017 11:58:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506538705; cv=none;
        d=google.com; s=arc-20160816;
        b=l7XRBrm8g/iqwQQrBwi9GTliTQitqECMm6HgfnLJ8o79i0fxIezSMzAUM4vvjIKvaC
         nUs50Wp7fNfSVc3LNuSGRe9uV+tfHCxISmSQPQ0phR7CGLj9JFCKLAOozgIerOL6u8Y0
         v+xNRBezP9Hhtf5aF90qzi3SIMxLnCNVsYQGNMXWA9S9NLR+iRxJu1d66jp7zeAzismp
         QkwMKyZzDLrBDiAd+zL8ROTXl4KS9t3U1x0UkeEkPTr3u1s/+5hAK2szeh8CLfMx4GFf
         1EuyUD1OPOJbIBzsPkTrqFHgB/NHeEhiofS7iTSz0e0rOlo5egNV0n+yuoLQvaa0I4AR
         zlvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=Fqbx/9NYA4Ll5ncoV8zNHBWY1uo3pzcZe/QUbHUn75I=;
        b=T4U5DwFjxpO7deuFhr3sTeth/lsVV5csEKusN9IFPdaTfOmzxghGRP/wjlxXRmDS+W
         vkhhna9QFQUA7vrJlNhMTtEBe+Sn5NhRvyo7ZByEdI2umrX4JMpYODrQBFtLeK/1TtoW
         0VCgN7KWSHiNSF0oSfFscEhdsl0Rn8xoF8aLSDVKCL7qF8XX060w0Ynb97uUzlVMBY2F
         tkEsEGBxkFPMZdwAmYA/2KTCeodzCNGhqkAN7fP3rey/v+PkXSNms9ySQDmhm9P7kynC
         j4iAzFRFV+aqF/9tPMesmPGVUV4HQt9+JPZfAi62+HcaOdhnWJStIEtiNW2XTYTuHP13
         +auQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D1t2/JWR;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id h3si1028169pfk.9.2017.09.27.11.58.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 11:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D1t2/JWR;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id m30so10094046pgn.5
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 11:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Fqbx/9NYA4Ll5ncoV8zNHBWY1uo3pzcZe/QUbHUn75I=;
        b=D1t2/JWR0Ch6fy2+AMYUA8njvfMz1mEfZT2FSbRpPDUm7g7C6fbdr523KGpzCf2w0k
         CevnJ4rO6JqTr8kWXbZOxfHmfPNIoPUym/LWnYx72Aa8f93UvU/JNJ46bJZ7/mL2mNhL
         nIgDbbwqbXLfaGPd3bp+Vc19/b1IhSBIaXJLDxR2VaYlWAuTbFJND0kosaB6/RFcag+W
         XBsw+CEm07iSBDjofmPZTONJ+OnF3O9gM9a1Vzfrjebm9pAf1unDRLpLjEPMILouZZfx
         j1B1tXktLbjR5Wu8Nv+JvF/URHwXxoRWI6GHrQaBLzMrrVk16p1Whs0bQVd1pjRH+L4V
         So5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Fqbx/9NYA4Ll5ncoV8zNHBWY1uo3pzcZe/QUbHUn75I=;
        b=NNg10Rh8F9+JpMvF8/CQTB3sjhAyIjRUikllIZx19AiYQzgyrnx0TisUyWulaDvn6q
         nhN64jQrPXVPD7OEM1ZlBUMWz+8tVaAQ86cx2FQmb06Xn3LqkkfPhXf1kn46AF9zOB4p
         3wDvgh8u94W4lW/erys2al3j1v3qKXVHNftBsbMyEsYxlgxoy0exdNr9D6nGbcAzQffO
         sf6H+dyaj/a2tEu+5lIDAHvAhRp8l/bduXSm32BPv95sx7+AE7sBC+O3+ytpuWsZ+mrm
         j6dgI1NGYeVddnYFYj1LF0Yz1dosjBP9ghy9olovSVNO/hLgVwBixHEb7I0h/eEzH1x3
         fCBQ==
X-Gm-Message-State: AHPjjUiDPclgVXvxcin15hw25vaQBSvj63raqN8KJBQT5dyqFxlLsymG
	Ow7SYnRIs6BwEr3S4Q33RQIl1vdK
X-Google-Smtp-Source: AOwi7QBSWcnYiN0vSZxmU6A1IfsamzYtyYgiQuGD0cTU0TErbTYVzSZr1wOf/2LoNsher+7Q+il1pQ==
X-Received: by 10.101.78.7 with SMTP id r7mr2180548pgt.64.1506538704882;
        Wed, 27 Sep 2017 11:58:24 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id r12sm20785879pgp.81.2017.09.27.11.58.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 11:58:24 -0700 (PDT)
Date: Thu, 28 Sep 2017 00:28:15 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: vc04_services: bcm2835-camera: use BIT macro
Message-ID: <20170927185815.GA8622@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use BIT macro instead of left shift

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
Changes in v2:
Deleted BIT macro change in mmal-parameters.h

 .../vc04_services/bcm2835-camera/mmal-msg.h        | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index 1144d9d..5a1b2a7 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -217,36 +217,36 @@ struct mmal_msg_port_action_reply {
 #define MMAL_VC_SHORT_DATA 128
 
 /** Signals that the current payload is the end of the stream of data */
-#define MMAL_BUFFER_HEADER_FLAG_EOS                    (1<<0)
+#define MMAL_BUFFER_HEADER_FLAG_EOS                    BIT(0)
 /** Signals that the start of the current payload starts a frame */
-#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            (1<<1)
+#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            BIT(1)
 /** Signals that the end of the current payload ends a frame */
-#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              (1<<2)
+#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              BIT(2)
 /** Signals that the current payload contains only complete frames (>1) */
 #define MMAL_BUFFER_HEADER_FLAG_FRAME                  \
 	(MMAL_BUFFER_HEADER_FLAG_FRAME_START|MMAL_BUFFER_HEADER_FLAG_FRAME_END)
 /** Signals that the current payload is a keyframe (i.e. self decodable) */
-#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               (1<<3)
+#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               BIT(3)
 /** Signals a discontinuity in the stream of data (e.g. after a seek).
  * Can be used for instance by a decoder to reset its state
  */
-#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          (1<<4)
+#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          BIT(4)
 /** Signals a buffer containing some kind of config data for the component
  * (e.g. codec config data)
  */
-#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 (1<<5)
+#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 BIT(5)
 /** Signals an encrypted payload */
-#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              (1<<6)
+#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              BIT(6)
 /** Signals a buffer containing side information */
-#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          (1<<7)
+#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          BIT(7)
 /** Signals a buffer which is the snapshot/postview image from a stills
  * capture
  */
-#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              (1<<8)
+#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              BIT(8)
 /** Signals a buffer which contains data known to be corrupted */
-#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              (1<<9)
+#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              BIT(9)
 /** Signals that a buffer failed to be transmitted */
-#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    (1<<10)
+#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    BIT(10)
 
 struct mmal_driver_buffer {
 	u32 magic;
-- 
2.7.4


