X-GM-THRID: 6465493198864121856
X-Received: by 10.36.60.75 with SMTP id m72mr614295ita.24.1505364943135;
        Wed, 13 Sep 2017 21:55:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.65 with SMTP id c62ls4821354itb.6.gmail; Wed, 13 Sep
 2017 21:55:42 -0700 (PDT)
X-Received: by 10.159.54.44 with SMTP id r41mr13459884uad.58.1505364942337;
        Wed, 13 Sep 2017 21:55:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505364942; cv=none;
        d=google.com; s=arc-20160816;
        b=kuOa+4m3JQdnLnnOYwbBf7QNtKUut2tzqvUhIcqVJZlsq6TDWYUh3Lt4bXaWUkUy6j
         5lfNJ9yoQIOXiMC54r1WosuJwG/kUNW/406XjLSp4fe1+4CiTEUMv8qcvOlJMeQM23Nk
         KgPh8VhNyoGqpgjfc/F8GXRTRcJg4Z218nUFeORwAkVmyj4ttmw3XiBifYbLwSTyVSqg
         WoPhaRtS2iquw3lPTBGqVz5kc/qwsajRix0Fr/U/9YhaMOtQ9RfyoDDwyttonxTDM18a
         DyyFacfUTBhVk0nZy0OJX6O1rb811GqDqjOyrUe/1IMIqnbrSNjCci3PLOwM9Rpy621E
         j/Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=MvLuNM+he1zPfzd/cWIpwmcd48ImHyabb+il2x1aIuw=;
        b=vv0wAbz3xGQpNcf+L1HEaCjK9StMU94gwDUMXjGDHbx1qTtgcdeT0gzyyI4yfz/njg
         YG02T/sKuaKg97+pebU2Hi/TaY3aFXgfAfnTb1EvxEvFQDFtcdvefE2NPmK+OFHFb1T+
         mwLXgY90YN6mX6RajEmSEx6jESDQ4JHzAEHC+Wz7AI0dElH2DL9W+bkOHN7NEM9p8vlv
         9T8r9jOkcTKxcuQ/kD5JKxJF4P/6xNIp6uydThVcijp35w6Z6pzRYG6EbLzrnRvJZD9F
         rUgacqsooCuXKh6qRXWDGCsHqg4tzqLt7lTz6tlbucfIh0DSEBtvWdMu4crezazfdn5j
         REVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CeRx/0dn;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id v25si1531725pfg.11.2017.09.13.21.55.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 21:55:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CeRx/0dn;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e69so1014800pfg.4
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 21:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MvLuNM+he1zPfzd/cWIpwmcd48ImHyabb+il2x1aIuw=;
        b=CeRx/0dnXFO6I88giFM1BtUUAR+dmV/3Cwv55oyQmYZoRozAAOFQd1mGfqgM+PA8Gc
         dYP/YIUyxaTyKvj8K//1YvxkKowNUR8TJhBFBBSvonNUq0nbHaRgdHsTh1X5XjBuf2DR
         blY11K0WFLBz7/GNcKhULMMn5AqqhcVCqVjIxmX+CaY9eg6PgxwA+h/SVh87SSgBeVPp
         ofO0o8pTeVxskvqvXy2rFXyCeN36anqwbNLHaPlCKiqReGXR9KN8xFPXFgVbP8pceMoj
         7/XO8gZcTjTqQFOlfXbiV4qIPmBP/ESUkPkJXFJwy7Nvq7KjgoBoa/k3k9ICSTxXEvYb
         BP0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MvLuNM+he1zPfzd/cWIpwmcd48ImHyabb+il2x1aIuw=;
        b=nF/DDNsHul7pd+vR/I72UUd/vAxhdjYCftyeZzlgLkT2gd4qabOk1nIJH31Lj9wxmP
         ZUTrJHkq1vzTM1wdIDM+firh0mACDE0god1HohzSnIOWGkCTlcPL6ueuT9zEXuze+RAu
         C0fBwn2dMCIQ/K96Z+itwTN+gGyzFHPS+RtOwzhmG30g4yYhVZXy+B0qVYvrs8tQhWgd
         mtfSTPxmEGu5/Xf2LMopzujbj+wOFUQR2sqOLZ1nRMdoeW2RX0KQJcT1QQ4Sb8EvYb0V
         rSkSC2PVRBkfFpeSje5sqaFjsjkqnNmtLzmy2VCYjEkGWz6CGqIpxQiN2xH4yDsduDq+
         1LjQ==
X-Gm-Message-State: AHPjjUitOnmAYmJ9vDFXL6KnrNAHAw3CmECg5JP2bbEQ5aLDFCIFGqUD
	+aV/FszY+MJP8aG+fzQ=
X-Google-Smtp-Source: ADKCNb4BRSuyrOpSX+GbIxI4wWHzHUaj1Wev6NViTEyb27CDQJjRhoGpZkhcN8yAAGRfeViFKz41Vw==
X-Received: by 10.101.93.132 with SMTP id f4mr20351598pgt.408.1505364941832;
        Wed, 13 Sep 2017 21:55:41 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id f8sm20854742pgs.7.2017.09.13.21.55.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 21:55:41 -0700 (PDT)
Date: Wed, 13 Sep 2017 22:55:38 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Samuel Ortiz <samuel@sortiz.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	netdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: irda: Remove typedef struct
Message-ID: <20170914045538.GA24121@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch remove typedef from a structure with all its ocurrences
since using typedefs for structures is discouraged.
Issue found using Coccinelle:

@r1@
type T;
@@

typedef struct { ... } T;

@script:python c1@
T2;
T << r1.T;
@@
if T[-2:] =="_t" or T[-2:] == "_T":
	coccinelle.T2 = T[:-2];
else:
	coccinelle.T2 = T;

print T, coccinelle.T2

@r2@
type r1.T;
identifier c1.T2;
@@
-typedef
struct
+ T2
{ ... }
-T
;

@r3@
type r1.T;
identifier c1.T2;
@@
-T
+struct T2

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/irda/include/net/irda/qos.h | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/irda/include/net/irda/qos.h b/drivers/staging/irda/include/net/irda/qos.h
index 05a5a24..a0315b5 100644
--- a/drivers/staging/irda/include/net/irda/qos.h
+++ b/drivers/staging/irda/include/net/irda/qos.h
@@ -58,23 +58,23 @@
 #define IR_16000000 0x02
 
 /* Quality of Service information */
-typedef struct {
+struct qos_value {
 	__u32 value;
 	__u16 bits; /* LSB is first byte, MSB is second byte */
-} qos_value_t;
+};
 
 struct qos_info {
 	magic_t magic;
 
-	qos_value_t baud_rate;       /* IR_11520O | ... */
-	qos_value_t max_turn_time;
-	qos_value_t data_size;
-	qos_value_t window_size;
-	qos_value_t additional_bofs;
-	qos_value_t min_turn_time;
-	qos_value_t link_disc_time;
+	struct qos_value baud_rate;       /* IR_11520O | ... */
+	struct qos_value max_turn_time;
+	struct qos_value data_size;
+	struct qos_value window_size;
+	struct qos_value additional_bofs;
+	struct qos_value min_turn_time;
+	struct qos_value link_disc_time;
 	
-	qos_value_t power;
+	struct qos_value power;
 };
 
 extern int sysctl_max_baud_rate;
-- 
2.7.4


