X-GM-THRID: 6340626092861161472
X-Received: by 10.157.36.34 with SMTP id p31mr511570ota.66.1476292054279;
        Wed, 12 Oct 2016 10:07:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.60 with SMTP id i57ls3800243otb.48.gmail; Wed, 12 Oct
 2016 10:07:33 -0700 (PDT)
X-Received: by 10.129.88.65 with SMTP id m62mr604114ywb.68.1476292053883;
        Wed, 12 Oct 2016 10:07:33 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id p131si1333371vkf.1.2016.10.12.10.07.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:07:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 192so2391526vkl.2
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 10:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RMVJTsgPmR8OFWEg7fUHsV31PwSEgx8vanz0PPZRzXU=;
        b=m+f4Nr1hGUjN3Xuf3ekV7ztOmawOAOqT7/inO3N1pfD6t4WlZmo6a6qbmIhaEMSnlg
         Gkf+px+St1FoUJKpDFhIEF9pm2I9+y/v2cycVo+PeaylS0Ex8ZW+3BiLWvCkPLYFi+ar
         S1hzrV8qpiubiZz0fpgrTfeNzpQu66I2+L5oEEm1gzKyMmfENSwpyNraDU8vz7p2Q5Y5
         106vIpn6++LyY4Avdo+LYCF3d/FFxbCcL+qeWDYCe4Mdse5WSgNMj67rYU1jHeqpyvbu
         sy9XQnlB7Qvb4lcXO613NXAZgYh5byiOCzR4T4JP1FGRm0gXW/TAnAnP0cZDlbIGvhiB
         4oWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RMVJTsgPmR8OFWEg7fUHsV31PwSEgx8vanz0PPZRzXU=;
        b=jr6jUhaI2Uht0HeegCZ5ZB/K3k5ikD9DT8fFFaIHTaJoJvhah1qHAeL9Pg4YGntcPm
         sGvhJ1btciYugyKmKJ6tUA86+GtnSpGtWUwLOzJ0pnuxKice4uYzd4VqM8PRkG43XZG6
         NA9Aw6i3jE/ndCopVpalHAv25iVyVerPdybRciZaqjUabka33LY0Bbk2KVnCwgjhGRiP
         PfkpU9AOOHId3rbA5B1PfhF/b89R81OYAkU7v3P/UTxUxXRnfWAEF8T9ujEb/Nw58/n6
         6b2BQDF5TkBn7iTR3qkn7oy4P0kQdDW41zDMkWrf7QNHStE58fCdrnnhvdtmVj1lA/xl
         5QRw==
X-Gm-Message-State: AA6/9Rn4eo1C6tQmzLkeVXxqbZ9FpvrdxuGbYXVfadcRXkHRzxKX7qAO27/oMLCzou765Q==
X-Received: by 10.31.133.130 with SMTP id h124mr1276311vkd.24.1476292053730;
        Wed, 12 Oct 2016 10:07:33 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id q10sm3425791vkd.0.2016.10.12.10.07.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:07:33 -0700 (PDT)
Date: Wed, 12 Oct 2016 14:07:24 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] staging: greybus: camera: Add blank lines after
 variable declarations.
Message-ID: <20161012170724.GA22316@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Missing a blank line after declarations

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
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


