X-GM-THRID: 6534660255077367808
X-Received: by 10.176.80.177 with SMTP id c46mr846474uaa.75.1521469153991;
        Mon, 19 Mar 2018 07:19:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.86.129 with SMTP id k123ls6744163vkb.5.gmail; Mon, 19 Mar
 2018 07:19:12 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvOGMVdcHU6AyVMFfIOsWl7jyfEaY5mmg5ujh1H+Z86QptGPS//xdlmagzato1bk9a1tQOf
X-Received: by 10.31.235.131 with SMTP id j125mr5386374vkh.106.1521469152979;
        Mon, 19 Mar 2018 07:19:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521469152; cv=none;
        d=google.com; s=arc-20160816;
        b=xQtzpgXI91Fc2bASl3YAOb0U+PcXtBmD8Sfht0nXrO8jAphUKPiy8uI1VW8LlpKk1d
         G5rl32FJ8NG1Gaubvf0TxkzaJp1NEKHV4LzgnGBxLznk73FBecrCO2K/54SBDOq+QzUp
         xojw6a1wFih+MWTdHh04sK+y+R4Pweo5XRwlJMZdndddWPgOI3fQl9cw/S6+802dUbH/
         mjULLqNMBcXlBfeTEMspGedgwLKAC0x+qBRD3+AY33fFd5nAKnMHkAlY/ZMWUkIxCnvl
         r9cQ5jY5/hyQPY6iqFbAHlnmtYCfJbKynu/nnDU6EzG/kOPlCRJNHi5+JSLY1C2FXbil
         UamQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Q/9DBbsu6zv4g9l856ACIVuirVTgWJvmiggCaEf3SEw=;
        b=0BAYqGwaLhkP6p8eNTerTJ1ml7SBedRsuK2MGaWLJZ9h6V08vTidY0Njc7Jycsile8
         4eGdOA5ACWcLEEjRki24m6qvJ+MOOGu8XBQW3DEPU67mjNTg6sP7u9vTaAFH7ln1q5dH
         iaAtxF3/6taqgbSy8eKwazAHYkXQR5zgPskf9ZRrpB3HlrAbOLZHdz1PxNbN9p1YWyNJ
         Ja2M23tw/Y4r5czmFgQErl2WtpLTHbAzfozGpvLbW1iLYWzn0eKcf3kZYJiP9NGknSW2
         sW7q0nIATaqfY8H5eGHdvUiIZmk34O9q/p8QA1Q/BdZikcWmeR4z1u8MP1sr4Jsu9IGY
         Ih2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Kc7UW+kW;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id q126si12397vkf.1.2018.03.19.07.19.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 07:19:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Kc7UW+kW;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x236.google.com with SMTP id h11so7069057pfn.4
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 07:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=Q/9DBbsu6zv4g9l856ACIVuirVTgWJvmiggCaEf3SEw=;
        b=Kc7UW+kWSfGPjT+V1UF95RwGfXbBkQg1JTjYd8bbmfKQHBE6g+wIhsDYCqR5KFC6B6
         d9TUyRDO5UnIM/3uNVTzfBZpxAAKqLZmXwADAcotyRK5c1rm2z8+kHLdFC4KwZ10KWb6
         mJe79YMMTW/Qdja25omNlSEJRER22/nwN/31s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Q/9DBbsu6zv4g9l856ACIVuirVTgWJvmiggCaEf3SEw=;
        b=uXKv6EzsfO4NtZYfgenErjb4zKyBP/cau3vVeDchqp3vOcNG8ryNHN+++EJA/av99G
         xKz3u1SwiQcM6PfsFJ2heYrIMPxywExSCjkr2IXn0FH6p1njD/j3dDOFztzCxiur8FT3
         zoWhSH4LgaE3DoKRkKbfRK68IOzY06TF8KnNq/bsSzoc+S6dLSgmD7CSixzJSv6X+c8l
         rHr4uCeWUXi/PlkiLtn5BoSg/fMC29xw7elealo4Co4ra8h9/yL9740qGsk+nynpTCKQ
         pj5Bcf5HSkB4S8L2wNfys69s3bLnppoHB3Hed8bVhKRptvGL1Z5bJbCuSIYkSKCNGDAc
         0Eiw==
X-Gm-Message-State: AElRT7GnDsyFpNxFDu/tct9zwLlS4sU89xLjF9Vmb9Lbn5AesWm+Xj7j
	TCHl3kWPzq+AF/5IITRVz0enQQ==
X-Received: by 10.99.191.65 with SMTP id i1mr7725946pgo.269.1521469152514;
        Mon, 19 Mar 2018 07:19:12 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id z64sm321232pfi.58.2018.03.19.07.19.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Mar 2018 07:19:11 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging:vc04_services:bcm2835-camera:Fix multi-line dereference
Date: Mon, 19 Mar 2018 14:18:59 +0000
Message-Id: <1521469139-28622-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Fix multiple line dereference. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 675b454..c280114 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1196,6 +1196,8 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
 	int ret;
 	int mcpp = MMAL_CAMERA_PORT_PREVIEW;
 	int mcpv = MMAL_CAMERA_PORT_VIDEO;
+	int mcc = MMAL_COMPONENT_CAMERA;
+	int mcpc = MMAL_CAMERA_PORT_CAPTURE;
 
 	if ((dev->exposure_mode_active != MMAL_PARAM_EXPOSUREMODE_OFF) &&
 	    (dev->exp_auto_priority)) {
@@ -1230,8 +1232,7 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
 					     MMAL_PARAMETER_FPS_RANGE,
 					     &fps_range, sizeof(fps_range));
 	ret += vchiq_mmal_port_parameter_set(dev->instance,
-					     &dev->component[MMAL_COMPONENT_CAMERA]->
-					     output[MMAL_CAMERA_PORT_CAPTURE],
+					     &dev->component[mcc]->output[mcpc],
 					     MMAL_PARAMETER_FPS_RANGE,
 					     &fps_range, sizeof(fps_range));
 	if (ret)
-- 
2.7.4


