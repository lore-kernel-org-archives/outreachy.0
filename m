X-GM-THRID: 8458850009088
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5e550c8dc811ccc3,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.53.225 with SMTP id e1mr8775011wjp.4.1426464500669;
        Sun, 15 Mar 2015 17:08:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.98.226 with SMTP id el2ls509832wib.25.canary; Sun, 15 Mar
 2015 17:08:20 -0700 (PDT)
X-Received: by 10.180.90.175 with SMTP id bx15mr5447350wib.3.1426464500360;
        Sun, 15 Mar 2015 17:08:20 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id el6si577105wib.0.2015.03.15.17.08.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 17:08:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id j2so29751063wif.1
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2015 17:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=SwWbzmWjcPGPmOuVk8RZ8yuDQ6iFsR0RFoU67klOCC4=;
        b=jegtZ97i5Rk65yQfmZjcCqfzMwxmh9uWWiDxXpJy5nZdT9VQuQ1jZqX1N8WYGYfj+K
         TSwOJrSgVFD8VCj707+5443SmEgcPM303C6LbIRaC5SikUMknsr1U/0UHRFHAN1jla2H
         D9/V3/65Nm63Ihdn/Le845NEHUO3rk4UDwZxqr9AU2Gb9kaMEM2aYFv9cpzOpJpHVp5K
         3yXlhWOCjOEEz9ENut9UYioX58Flt30fYwkxLQ59ixB39TEjCth/OYB1GPzAJrSYBIIH
         ZiSJ6x7rQ33BosIy1wMjNpSbyHzSWEInTu6L4HYDtabNwvHgTVtA/MLngviEofitCYT8
         ufBg==
X-Received: by 10.180.212.37 with SMTP id nh5mr28394064wic.76.1426464500303;
        Sun, 15 Mar 2015 17:08:20 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id ge8sm12914508wjc.32.2015.03.15.17.08.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 15 Mar 2015 17:08:19 -0700 (PDT)
Date: Mon, 16 Mar 2015 02:07:36 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: Replace const char * with const char []
Message-ID: <20150316000736.GA30387@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace const char * with const char [] as the first one is represented
in memory as a pointer which points to a string and the second one only
as a single variable in which it copies the contents.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
This can be tested by generating assembly code for the two cases;
This platform also offers a simple view: http://assembly.ynh.io/.

 drivers/staging/iio/Documentation/iio_utils.h | 2 +-
 drivers/staging/iio/Documentation/lsiio.c     | 4 ++--
 drivers/staging/iio/iio_dummy_evgen.c         | 2 +-
 drivers/staging/iio/iio_simple_dummy.c        | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/Documentation/iio_utils.h b/drivers/staging/iio/Documentation/iio_utils.h
index bd6982c..aa9570a 100644
--- a/drivers/staging/iio/Documentation/iio_utils.h
+++ b/drivers/staging/iio/Documentation/iio_utils.h
@@ -23,7 +23,7 @@
 #define FORMAT_SCAN_ELEMENTS_DIR "%s/scan_elements"
 #define FORMAT_TYPE_FILE "%s_type"
 
-const char *iio_dir = "/sys/bus/iio/devices/";
+const char iio_dir[] = "/sys/bus/iio/devices/";
 
 /**
  * iioutils_break_up_name() - extract generic name from full channel name
diff --git a/drivers/staging/iio/Documentation/lsiio.c b/drivers/staging/iio/Documentation/lsiio.c
index 98a0de0..50b0c70 100644
--- a/drivers/staging/iio/Documentation/lsiio.c
+++ b/drivers/staging/iio/Documentation/lsiio.c
@@ -26,8 +26,8 @@ static enum verbosity {
 	VERBLEVEL_SENSORS,	/* 1 lists sensors */
 } verblevel = VERBLEVEL_DEFAULT;
 
-const char *type_device = "iio:device";
-const char *type_trigger = "trigger";
+const char type_device[] = "iio:device";
+const char type_trigger[] = "trigger";
 
 
 static inline int check_prefix(const char *str, const char *prefix)
diff --git a/drivers/staging/iio/iio_dummy_evgen.c b/drivers/staging/iio/iio_dummy_evgen.c
index 59ad5a3..866e366 100644
--- a/drivers/staging/iio/iio_dummy_evgen.c
+++ b/drivers/staging/iio/iio_dummy_evgen.c
@@ -47,7 +47,7 @@ struct iio_dummy_eventgen {
 
 /* We can only ever have one instance of this 'device' */
 static struct iio_dummy_eventgen *iio_evgen;
-static const char *iio_evgen_name = "iio_dummy_evgen";
+static const char iio_evgen_name[] = "iio_dummy_evgen";
 
 static void iio_dummy_event_irqmask(struct irq_data *d)
 {
diff --git a/drivers/staging/iio/iio_simple_dummy.c b/drivers/staging/iio/iio_simple_dummy.c
index 8341dce..4fe1073 100644
--- a/drivers/staging/iio/iio_simple_dummy.c
+++ b/drivers/staging/iio/iio_simple_dummy.c
@@ -36,7 +36,7 @@ module_param(instances, int, 0);
 static struct iio_dev **iio_dummy_devs;
 
 /* Fake a name for the part number, usually obtained from the id table */
-static const char *iio_dummy_part_number = "iio_dummy_part_no";
+static const char iio_dummy_part_number[] = "iio_dummy_part_no";
 
 /**
  * struct iio_dummy_accel_calibscale - realworld to register mapping
-- 
1.9.1


