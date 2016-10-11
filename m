X-GM-THRID: 6340039641563922432
X-Received: by 10.107.6.202 with SMTP id f71mr623238ioi.18.1476155510799;
        Mon, 10 Oct 2016 20:11:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.85.132 with SMTP id e126ls474273itb.21.canary; Mon, 10 Oct
 2016 20:11:50 -0700 (PDT)
X-Received: by 10.66.191.7 with SMTP id gu7mr372354pac.147.1476155510363;
        Mon, 10 Oct 2016 20:11:50 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id p131si207019vkf.1.2016.10.10.20.11.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:11:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 2so379296vkb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 20:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RMVJTsgPmR8OFWEg7fUHsV31PwSEgx8vanz0PPZRzXU=;
        b=dRREVgwsX+KAiiaeIcu4uekTwPRanQR3MGpgBUeCZhQ0efVuuWRO0Os1HcRS4BsRxy
         gKJ4YWT3/FajefjQOk78P0vLWfoNaLcZMuK5OHTQpK4jwV11QVb8XWB5RvYM0VsCWbSj
         cs3rFXL7PQtXB+86scPfbqEKQvyFKPhRHrZthXgDB9Ib8ZSRX89RDoIH1lRRXn3Ullpo
         sUfgO4VTjzZppiZplxteAgSRNFY1YO7GOLLOLCR48FtIuwKIl6cL7GDPjJqa7urU0PiG
         yRPQQHmGODJytk0ymcyVMEshTBTUlI4jwG/02mx41dx3FxvTgmUU279Ru+D87Ns739HD
         pu3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RMVJTsgPmR8OFWEg7fUHsV31PwSEgx8vanz0PPZRzXU=;
        b=Oftl2gkrpjlycVRL99f32bND7V3V0S/tizpuKLZtTzwTFN8LrJMLOwVx0PCWp0mpP5
         oKexFCgJcOCwCZ7ot+0bu6XDYqLY3VtKYBg/Zb+mRKOkGUVWtfkGsWFBgQwWFh+4wEGT
         FO1sUfKjZVQJsHjboIcttxC3QhcUEbFaT7fk0gYLP4OR4URNN60/RB/e1viRvl7PB5qu
         0T6DpPLb48k4ly/L+sUgp7cvspaKYD70Eh6ui2L6HHjsWDEcG2yt2jCF4/x2fhScruyX
         hyYqdFrIljnmCy8pU6JOD6J6G3bQdSc92DiTGXvLcPiaLJT7z3CVFrpaB6jp0UwPK/w3
         6Lxg==
X-Gm-Message-State: AA6/9RnRW2IVsYKwlFqpLz89LLfuWtB+uDr1FDJ7qYQwBoaFUs8DBHs3wQdhQxlGY5280g==
X-Received: by 10.31.64.75 with SMTP id n72mr1215124vka.170.1476155510162;
        Mon, 10 Oct 2016 20:11:50 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id f189sm581592vka.14.2016.10.10.20.11.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:11:49 -0700 (PDT)
Date: Tue, 11 Oct 2016 00:11:46 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/7] staging: greybus: Add blank line after variable
 declarations.
Message-ID: <20161011031146.GA21921@lennorien.com>
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


