X-GM-THRID: 6210837635007512576
X-Received: by 10.112.145.201 with SMTP id sw9mr9895164lbb.13.1446073425130;
        Wed, 28 Oct 2015 16:03:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.217.85 with SMTP id q82ls37894wmg.4.gmail; Wed, 28 Oct 2015
 16:03:44 -0700 (PDT)
X-Received: by 10.194.71.166 with SMTP id w6mr11256167wju.6.1446073328087;
        Wed, 28 Oct 2015 16:02:08 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id g18si165096wmd.1.2015.10.28.16.02.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 16:02:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x241.google.com with SMTP id l128so1201091wml.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 16:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=c/fQMCyPZ34eI3Tpl057Gi/yiYDTeShIti8MeAZkGhc=;
        b=E0LRzgs5mPmyAl7zW1GMElLRELkK2EZwvpPgIHyCqPf+98kAb/5wqQwXN0vVWnvduF
         vmrgHofaTBZZYbhk8kxhVo5b1Zr9LCQydX30rxVF+LCUDDqUvZhlbbkkqyguUzE7nXiR
         41M7/WrgiHNBjf2EgR1WWlxgM8BU2ODMuhSKJbFC7a9Q4nraULAiqdEVJ5VFC34IxWMZ
         Ng+Ax5FfLBn1bjhHgZ3API2swq6tNB/aZ4hhqlghd5uFYzWn4nPI7M4mqqU0A7A0BvkW
         g97yF9QEJU22krHWx6emjCj4330xTRwXj3uGvfImwWLHirq4hRANbU4+V5b6cUtNHm22
         qpnw==
X-Received: by 10.28.5.4 with SMTP id 4mr3176917wmf.22.1446073328008;
        Wed, 28 Oct 2015 16:02:08 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id 199sm6138472wml.22.2015.10.28.16.02.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 16:02:07 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 3/8] staging: iio: accel: change uint8_t to u8
Date: Thu, 29 Oct 2015 01:01:50 +0200
Message-Id: <2dcd979075a55d94c2dfbef230541e02fce750d7.1446073162.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>

This patch changes uint8_t type to preferred kernel
type u8 in order to follow the linux coding style
conventions.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/accel/sca3000_core.c | 4 ++--
 drivers/staging/iio/accel/sca3000_ring.c | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index 6aadaff..30fc1ad 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -88,7 +88,7 @@ int sca3000_write_reg(struct sca3000_state *st, u8 address, u8 val)
 }
 
 int sca3000_read_data_short(struct sca3000_state *st,
-			    uint8_t reg_address_high,
+			    u8 reg_address_high,
 			    int len)
 {
 	struct spi_transfer xfer[2] = {
@@ -165,7 +165,7 @@ static int __sca3000_unlock_reg_lock(struct sca3000_state *st)
  * Lock must be held.
  **/
 static int sca3000_write_ctrl_reg(struct sca3000_state *st,
-				  uint8_t sel,
+				  u8 sel,
 				  uint8_t val)
 {
 
diff --git a/drivers/staging/iio/accel/sca3000_ring.c b/drivers/staging/iio/accel/sca3000_ring.c
index f6a6083..e19e7a4 100644
--- a/drivers/staging/iio/accel/sca3000_ring.c
+++ b/drivers/staging/iio/accel/sca3000_ring.c
@@ -34,9 +34,9 @@
  */
 
 static int sca3000_read_data(struct sca3000_state *st,
-			    uint8_t reg_address_high,
-			    u8 **rx_p,
-			    int len)
+			     u8 reg_address_high,
+			     u8 **rx_p,
+			     int len)
 {
 	int ret;
 	struct spi_transfer xfer[2] = {
-- 
2.1.4


