X-GM-THRID: 6261339080289681408
X-Received: by 10.182.243.230 with SMTP id xb6mr12489621obc.1.1457831608637;
        Sat, 12 Mar 2016 17:13:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.164 with SMTP id x33ls3278142qgx.8.gmail; Sat, 12 Mar
 2016 17:13:28 -0800 (PST)
X-Received: by 10.140.253.198 with SMTP id y189mr13122136qhc.9.1457831608121;
        Sat, 12 Mar 2016 17:13:28 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x235.google.com (mail-qk0-x235.google.com. [2607:f8b0:400d:c09::235])
        by gmr-mx.google.com with ESMTPS id y131si1003930ywc.0.2016.03.12.17.13.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 17:13:28 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) client-ip=2607:f8b0:400d:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x235.google.com with SMTP id s68so62402743qkh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 17:13:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gKG0MBUY0iq3ll/k0Fa2XNyxWO5MXm3meKecLcBs0uw=;
        b=ykYZHenfiuFiaH95gHRHPLO2/S1sAeyxlvoNjI2P523aEG2OHtfPA0Sbo+87nDqYGo
         8Ke0ErfsOXsbrjpCuRDKPWpUXfKii5vjlJW3xeJVfqj47JsvZt6BwRAP/Wpl+1YtibZD
         V+pC88BAVJeBSHFB3yyf0K2kIpqfYGBhKTXLEG9SGVTjEYbBNWQkz/Nu6pknp4kNxFjK
         QTU9OMwKtK3jfgl/QKN4QAQwzG3+3idEkH0eqK3//IOCBqg6fiJaNyKLCJ1aTaAjABxj
         NBzH4w8cd1JGfHZhbk7DjM8/2LZjgJpZyR2M9R7lxsKn7wRr1zuJpMGLGAyzMmuuZRmT
         MW1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gKG0MBUY0iq3ll/k0Fa2XNyxWO5MXm3meKecLcBs0uw=;
        b=LtOeIz27P11qj8R6lfF7Vt6VG5gHUORHMRwV4akiVuVVabpgvYuvwXehSCA7icqZps
         xU82d/FvnIEhJS70ci+GJ5cGWmPJ/hyr6dLhU+VePW91jUQJtrZlLkJ2Rxteozl9/DDc
         99BsrqsfT90qJ94ebXVdnPcq7ED7VjkxrOGBaf3v0U/T0VPYvy7hI+zzDiKN5CBF6Su+
         jiZoGXNtOdC5YkQVyI8rlE6CT+tcOdeHrn3U2wiueNLoUArZU9my8PRI6Nsaw7Dw5OOR
         wImj3OqOc6/eADNuPvEtRRpHvtwowDIoOEZFJyE5MNJjDEzFqS67YStDaobjNYH3FS1x
         xPSQ==
X-Gm-Message-State: AD7BkJJOrflfiDsz+zUrdtXMLQRe502Dj51kgWwmd5lqgHb114DIlbPkZK6ZBrdjHrTjnw==
X-Received: by 10.55.80.135 with SMTP id e129mr21878642qkb.65.1457831607805;
        Sat, 12 Mar 2016 17:13:27 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id d73sm7157651qhc.23.2016.03.12.17.13.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 17:13:27 -0800 (PST)
Date: Sat, 12 Mar 2016 22:13:23 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH] staging: dgnc: replaced udelay with usleep_range in
 dgnc_cls.c
Message-ID: <20160313011323.GA10757@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces udelay with usleep_range fixing a checkpatch.pl issue:

CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt
+       udelay(10);

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 72f0aaa..51db98b 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -956,7 +956,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
 	 * Presumably, this is a bug in this UART.
 	 */
 
-	udelay(10);
+	usleep_range(10000, 11000);
 }
 
 static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)
-- 
2.7.2


