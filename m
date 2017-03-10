X-GM-THRID: 6395942323124961280
X-Received: by 10.13.223.20 with SMTP id i20mr8891212ywe.164.1489171367786;
        Fri, 10 Mar 2017 10:42:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls10027836otb.17.gmail; Fri, 10 Mar
 2017 10:42:47 -0800 (PST)
X-Received: by 10.157.13.79 with SMTP id 73mr8802358oti.81.1489171367400;
        Fri, 10 Mar 2017 10:42:47 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si1884005pfb.7.2017.03.10.10.42.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 10:42:47 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so11151715pgg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 10:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fV//hrGqGo0641Wn0YMFtD+q+KvacR0J5yv8FjTBJik=;
        b=TRCdX1bV8EJpTRUlhb2KvR5E79dzR9DEp0F1d+OEBjI35OxKeN29R64wlrL1nVIz3a
         kFv3SayNrzjHOq0vvBbelMGBX9XYpg/WeS8EgFPeeG2q+cTBKafH5aNLIdz5HpXA02yF
         hkgQzk04Txx1lK3iZxPjsVH+yA3HylKZ+QR1T9q/dXDkV7stYcAxJQ2tE2SQC1S2QCX/
         FaU16DltD96GvCEI3+fKwe4IjBuMy+W4tZjqhsi/nbuvQnFmeudb9y4rKgBNx7Oq1RKB
         2l2vokIZbmT3bD740cmRPQmmUoxRSvIlOBGCjG89rXTgSKQcIcB5Yw9hpOQlP78rev8G
         f9gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fV//hrGqGo0641Wn0YMFtD+q+KvacR0J5yv8FjTBJik=;
        b=oV4vbfcQBIdwAxdubqRyPxc+nvKlKI/Qoqz6MuxMVbCO1qh0uRf+2RoHajK8RzVm/V
         bom+ZJiVUNIGU6fHEIfULdd78KWYvfNV1j2hjq2U7KFwTqOKbINiJzjz6JE0X4A/H0Gj
         j6sp+hehQSf5Jd5hje+E25JwhULgs6lQ6UmSELqjYXVbnnEFlPQ48FABcjv0X14iRT3F
         2QvCR2crBIJ9mRNwxP2EBfQ/Q53owOGTJYX9iNdzVHw3FqLQZ6p/r1XwaJqwxDwnVMEP
         z+WLfXFiDCozzj+fpU3NeuyiLiVo2vg9SK9GzznRIvBW4SQJZIk+mvVQjhrJYEJJOCRv
         BAfQ==
X-Gm-Message-State: AMke39l/yR3ID10uvhxUt6xAv+npGho0E9Z+TaWNyD3VnBg3m24VUUpnnHvskl9PO6Wkrg==
X-Received: by 10.84.209.204 with SMTP id y70mr27354593plh.69.1489171366750;
        Fri, 10 Mar 2017 10:42:46 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a62sm20076679pgc.60.2017.03.10.10.42.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 10:42:45 -0800 (PST)
Date: Sat, 11 Mar 2017 00:12:43 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] Add blank line after function/struct/union/enum declarations
Message-ID: <20170310184243.GA5342@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the warnings reported by checkpatch.pl
for please use a blank line after function/struct/union/enum
declarations.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c         | 1 +
 drivers/staging/speakup/serialio.c     | 1 +
 drivers/staging/speakup/speakup_dtlk.c | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 01eabc19039c..17df20ec94be 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -108,6 +108,7 @@ enum {
 	CT_Window,
 	CT_Max
 };
+
 #define read_all_mode CT_Max
 
 static struct tty_struct *tty;
diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
index 7e6bc3b05da3..9b2626e85042 100644
--- a/drivers/staging/speakup/serialio.c
+++ b/drivers/staging/speakup/serialio.c
@@ -21,6 +21,7 @@ static void start_serial_interrupt(int irq);
 static const struct old_serial_port rs_table[] = {
 	SERIAL_PORT_DFNS
 };
+
 static const struct old_serial_port *serstate;
 static int timeouts;
 
diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index 1ebe5012ec0b..e36360f65f36 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -43,6 +43,7 @@ static int port_forced;
 static unsigned int synth_portlist[] = {
 		 0x25e, 0x29e, 0x2de, 0x31e, 0x35e, 0x39e, 0
 };
+
 static u_char synth_status;
 
 static struct var_t vars[] = {
-- 
2.11.0


