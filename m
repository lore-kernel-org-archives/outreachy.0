X-GM-THRID: 6394872359829897216
X-Received: by 10.46.87.27 with SMTP id l27mr516230ljb.28.1488922247665;
        Tue, 07 Mar 2017 13:30:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.158.134 with SMTP id h128ls23935lfe.8.gmail; Tue, 07 Mar
 2017 13:30:47 -0800 (PST)
X-Received: by 10.46.87.27 with SMTP id l27mr516214ljb.28.1488922247089;
        Tue, 07 Mar 2017 13:30:47 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id n128si477940wmf.2.2017.03.07.13.30.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 13:30:47 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id u48so1848421wrc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 13:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=F34HMfqE6QzpzZI/itu4yK6PGM3zDg2hoOyP7wiiU40=;
        b=qhEqfibV0LGuGez5w5CUTVMY2tIY2+OgUzf+pQZWRGOoxtApAYl7Tj/y8lbuZAtrYW
         iTExyXJfR25vphKKSQnQs6675FlU2FCUxyp6tN4RHTLUz05sm7XZUujEenKxxv2WH1cT
         A59+1L2tf2gRrH5tiWgEPW7q0rg5WEUXTETatb/YqQ9RSna1dG05xz34AxK0djN1omzf
         lp+wk07u1IUlkbUwo75+lDFoRXaPbQyg26v7YNhmMtpPIRP1LbzbXMkchF3kFLa5RDBw
         10kjwOWnwGCEHbjbHlLndHzxROrttvEgKVmk4VRoU6z1J9DRNbl2Q2Ava3I1pHNlr+qo
         AW0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=F34HMfqE6QzpzZI/itu4yK6PGM3zDg2hoOyP7wiiU40=;
        b=BXiTiGjGx5/FlnxJ+K3IyJZh6Jhm5QhAQ9Qx+uwJ0QWvydZWZfoV3WyXeYChbfyrEO
         x5LVFQmQzCu8jIR95goGPn0T2ijwUSfcdLgf+18IKKONz4+8oZnn3DrCNskELfRTmCGs
         FmgLR/cMcI+LHdx1Zd6mAC4rvh8xhGQB5nIWCZ6yJm1M5zuF7c0IPusLJVCyGEO21Qd7
         dmP9Z23hVDAc/l1NkBsqp4fnbyoSkfaB6ldN4A7lwDBRn37MQOz7AsZeAWKyVtB2Dev9
         mb2IRFrGBrjOdAETQm/B1RNkRJ9+N2Dejdnz9ILAx9og51/l2528YuBEL5Ec2TUevL+q
         SsQQ==
X-Gm-Message-State: AMke39kAG20GsNeCjrmn+LLu/qvezFZbkCESKAmg0KjkazSROvzosE/r1I9XhbZ0kJCfkw==
X-Received: by 10.223.175.81 with SMTP id z75mr2099482wrc.3.1488922246868;
        Tue, 07 Mar 2017 13:30:46 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id 63sm1464992wrh.68.2017.03.07.13.30.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 13:30:45 -0800 (PST)
Date: Tue, 7 Mar 2017 23:30:44 +0200
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] media:atomisp:pci: Use error codes instead of bool variables
Message-ID: <20170307213044.GA11835@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Show the reason of failure by using the corresponding error code.
It helps to better understand why something failed.

---
 .../css2400/runtime/isys/src/virtual_isys.c        | 26 ++++++++++------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
index f1fc3b5..cf97a9e 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
@@ -48,7 +48,7 @@ more details.
 #ifndef ISP2401
 
 #endif
-static bool create_input_system_channel(
+static input_system_err_t create_input_system_channel(
 	input_system_cfg_t	*cfg,
 	bool			metadata,
 	input_system_channel_t	*channel);
@@ -198,7 +198,7 @@ ia_css_isys_error_t ia_css_isys_stream_create(
 		return false;
 
 	rc = create_input_system_channel(isys_stream_descr, false, &(isys_stream->channel));
-	if (rc == false) {
+	if (!rc) {
 		destroy_input_system_input_port(&isys_stream->input_port);
 		return false;
 	}
@@ -217,7 +217,7 @@ ia_css_isys_error_t ia_css_isys_stream_create(
 	/* create metadata channel */
 	if (isys_stream_descr->metadata.enable) {
 		rc = create_input_system_channel(isys_stream_descr, true, &isys_stream->md_channel);
-		if (rc == false) {
+		if (!rc) {
 			destroy_input_system_input_port(&isys_stream->input_port);
 			destroy_input_system_channel(&isys_stream->channel);
 			return false;
@@ -299,12 +299,11 @@ ia_css_isys_error_t ia_css_isys_stream_calculate_cfg(
  * Private Methods
  *
  **************************************************/
-static bool create_input_system_channel(
+static input_system_err_t create_input_system_channel(
 	input_system_cfg_t	*cfg,
 	bool			metadata,
 	input_system_channel_t	*me)
 {
-	bool rc = true;
 
 	me->dma_id = ISYS2401_DMA0_ID;
 
@@ -327,15 +326,11 @@ static bool create_input_system_channel(
 		me->ibuf_ctrl_id = IBUF_CTRL2_ID;
 		break;
 	default:
-		rc = false;
-		break;
+		goto exit;
 	}
 
-	if (!rc)
-		return false;
-
 	if (!acquire_sid(me->stream2mmio_id, &(me->stream2mmio_sid_id))) {
-		return false;
+		goto exit;
 	}
 
 	if (!acquire_ib_buffer(
@@ -346,16 +341,19 @@ static bool create_input_system_channel(
 			cfg->online,
 			&(me->ib_buffer))) {
 		release_sid(me->stream2mmio_id, &(me->stream2mmio_sid_id));
-		return false;
+		goto exit;
 	}
 
 	if (!acquire_dma_channel(me->dma_id, &(me->dma_channel))) {
 		release_sid(me->stream2mmio_id, &(me->stream2mmio_sid_id));
 		release_ib_buffer(&(me->ib_buffer));
-		return false;
+		goto exit;
 	}
 
-	return true;
+	return INPUT_SYSTEM_ERR_NO_ERROR;
+
+exit:
+	return INPUT_SYSTEM_ERR_CREATE_CHANNEL_FAIL;
 }
 
 static void destroy_input_system_channel(
-- 
2.7.4


