X-GM-THRID: 6340626092861161472
X-Received: by 10.13.250.129 with SMTP id k123mr566954ywf.1.1476292296821;
        Wed, 12 Oct 2016 10:11:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.17.205 with SMTP id 196ls1752115itf.21.gmail; Wed, 12 Oct
 2016 10:11:36 -0700 (PDT)
X-Received: by 10.98.200.196 with SMTP id i65mr517866pfk.37.1476292296347;
        Wed, 12 Oct 2016 10:11:36 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id t8si1147057vkb.2.2016.10.12.10.11.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:11:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id b186so2389525vkb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 10:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+1nyeYzsTeaAIJo8rkqZUhDGi7PJqgH7Vg3fvk6+5RE=;
        b=EWA0BvNQxW7+0Oetg7ow7QrX89lN0NFlno4G4pHkZYilAcQDIwlP53p/qVsyQdki4z
         b/jrS7L8UqzGe+BpmOyZluSzqOW5EajGS75ur+1N6VWj6tDA+xTM0OQTNaX2fY6x7ORp
         K3pawRSGNkMpJH8bHS6l53Jb0kkOIQHTzsVatYJrP4UjNwTdi8KciJFkqIaf4fJ2hFEC
         kNjfF1UIdTe8rNz1K92BPwziWVpGugkBcxr1W3N8rTdsBy1sGVjnrzUId2ei5bVJF4so
         6ZI/dukpHCiJpP9yUZIN7XauSWJElcBJRksgcY50kCvoTVxzZv6pxswjTReQ0UNiI4jM
         iPpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+1nyeYzsTeaAIJo8rkqZUhDGi7PJqgH7Vg3fvk6+5RE=;
        b=m2HYCMh4MvE9ykz70RAs+LpmJx/RVpiOhOQjWzdnMyk+X4vTuzZG2HgTo6OP2ER9uH
         QgZxORDkqxVNCLMiaLA/ueRCq1tjkPMiRLHLJ+Cmw7C7MxEFpsLdZFU5Y4bIq8cvYehe
         tjk9cdRBQ2ZfwGHJ1OXCertihq/03w0Q1qGNG9AQYpuyx3Z8AIhS7fyG1T69Dz+z+p5L
         chKOkw/fQY4fllC1VYVXrbdDO7DiG2PWaTt8ja1RkzzpJKC0VsiI9K862kPZejr5ZOVE
         vG8OycwbgGtC55jQt4Rz2OOfjHRlKqbJm0NzWiUxjwUoyhQS4rnD+ix4b5njZMC8w9Lq
         uj9Q==
X-Gm-Message-State: AA6/9RlPvh2r3hryT4SXhEKQLQqwFKCSjuwKAR8FXJSI59lXZYayvnSNrsbpUCLxjr6g4w==
X-Received: by 10.31.3.25 with SMTP id 25mr1101799vkd.116.1476292296149;
        Wed, 12 Oct 2016 10:11:36 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id k194sm3395808vkf.17.2016.10.12.10.11.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:11:35 -0700 (PDT)
Date: Wed, 12 Oct 2016 14:11:31 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/4] staging: greybus: camera: Add blank lines after
 variable declarations.
Message-ID: <20161012171131.GA27697@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Missing a blank line after declarations

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

 v2: Changed subject of the patch.
 v3: Added versions information.

 drivers/staging/greybus/camera.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index 491bdd7..d89a329 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -289,6 +289,7 @@ static const int gb_camera_configure_streams_validate_response(
 
 	for (i = 0; i < resp->num_streams; i++) {
 		struct gb_camera_stream_config_response *cfg = &resp->config[i];
+
 		if (cfg->padding) {
 			gcam_err(gcam, "stream #%u padding != 0\n", i);
 			return -EIO;
-- 
2.7.4


