X-GM-THRID: 6395576564216496128
X-Received: by 10.36.4.150 with SMTP id 144mr233956itb.2.1489086235532;
        Thu, 09 Mar 2017 11:03:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls860375otd.11.gmail; Thu, 09 Mar
 2017 11:03:55 -0800 (PST)
X-Received: by 10.129.83.10 with SMTP id h10mr5963527ywb.32.1489086235215;
        Thu, 09 Mar 2017 11:03:55 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c123si1367363pfa.4.2017.03.09.11.03.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:03:55 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so7719949pgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fV//hrGqGo0641Wn0YMFtD+q+KvacR0J5yv8FjTBJik=;
        b=s51b+IpzohP3dCcWqizKvCjosw/oNqr5iEh5za2c9nQxnp9QTA9ZzM6Dsi+pmpKCyU
         FOAbjW+z7Wr32nD/fsrp/OsDsC3956hb/4lKx0oq/g6szXM4DoX8HfrvqHbM+E1vPEyt
         k6sHlXKlRhT104VHQ+EwiGc1utcHlsBMigg1r6dUu2vwXbpUsyk25FhDJg6QrE9rmiWA
         /KK0AX/pMTjDGE7lxsJFbVyucWbDzsODvTsQCetI+M2oe0NPyJH6wKejo0pfIcbe0eF4
         XEH+2upChzxPVuwtv2GiwcQHkHCe4PCp8fezyMoHD9BGL7VD1LrclQ3WT8g4NrezLZD4
         AxWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=fV//hrGqGo0641Wn0YMFtD+q+KvacR0J5yv8FjTBJik=;
        b=ZAwCwYfRGQfTDAuSKECiIOHKr94RWKBJfbRn5yZqLfZzmvSLKUveCrBA9uaIO0+tOm
         GUK+vvzGoQV66mbJucTNOUR2bj/bhZjkUVgORJXYyEGxnZjuOXwmr3nkHtaK7D0EANU2
         n80nppg31fNjtMx5Q+b2HYH6UyXolagyMN63gBdRgAuaM9e8hgePQZl8kQfH4P0zTCMH
         EhDtlpZEuecbqHcaUpO7AzleDS8pJJ3bvFkUPqFzBilSrNxIHAlqLSaX3kaYSGquWVax
         lQamjHqAYcm+1G5GZIwDsPxW8iV5hfl6wDP4pOnyjYEl8tkflhYWMTzhulbFF2QiMirO
         S3bg==
X-Gm-Message-State: AMke39mQi+l4/pU73VkHhv0Y4MI//QR+pEgNISPTIvl2Fjp5amjDZ48b4uDBHMSGXe0/Qw==
X-Received: by 10.98.7.86 with SMTP id b83mr15882822pfd.66.1489086234929;
        Thu, 09 Mar 2017 11:03:54 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h20sm13919852pfh.79.2017.03.09.11.03.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 11:03:53 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 6/6] staging: speakup: Add blank line after function/struct/union/enum declarations
Date: Fri, 10 Mar 2017 00:33:20 +0530
Message-Id: <20170309190320.25681-7-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170309190320.25681-1-arushisinghal19971997@gmail.com>
References: <20170309190320.25681-1-arushisinghal19971997@gmail.com>

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


