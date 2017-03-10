X-GM-THRID: 6395630061335085056
X-Received: by 10.46.83.76 with SMTP id t12mr3267800ljd.26.1489137148944;
        Fri, 10 Mar 2017 01:12:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.133 with SMTP id 127ls967939ljf.39.gmail; Fri, 10 Mar
 2017 01:12:28 -0800 (PST)
X-Received: by 10.46.77.69 with SMTP id a66mr3130054ljb.11.1489137148328;
        Fri, 10 Mar 2017 01:12:28 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id n128si114791wmf.2.2017.03.10.01.12.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 01:12:28 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u48so10820326wrc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 01:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=G8rMuDbh58LeXkSFWQdIRcqL3tAHtUifIrGc8VwPEVM=;
        b=lqCuWFzvykExiMaM0lzP0oFi9tr8MQtKhvsUdjm0XgFsYRjHma0TtKBRicDupw95OD
         6tvLUhv2aHw21/4YQt/3w86BJ1QXLLYPyDlpExS5QIwS+WxBQMeH40Eov73XIZ9SohCo
         lCcUT2QZ6Ng6hzObLtlkm0rhiome95m9JcoGtarDHMXfagNCV3OiuiwpQS+c5+NhgQU0
         oA708EwgpQfuBkqdz7ifWJNQssATzeJejflNnfiD9snBAgP8Ql4YZ5sZ17wLSQ1IWiV6
         nwWSGYTWfyqw34cMQmL3mMBylskZPbaSZFCPTVk+gFFTaZtIidHumP6fHsZIeQi7dyus
         3+Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=G8rMuDbh58LeXkSFWQdIRcqL3tAHtUifIrGc8VwPEVM=;
        b=puDkmNQtPW46PTenyJs3+Is0uuxHmhvpBfRefsuwvZ1vP8QQ2ftD6dDHfGRB/ACXJ7
         NAVOEUqy3et8Cg7HF84beXfHxzuisNw1djU3jSOSTvBmPIvNP2aDeidF0sVdebyme39K
         weqTFztdIQh7dIeDqY0hLJc3O8/a2aaHBels3hdb4P0SKU+SrQKetAfm/glzZxXjUtk6
         hFNdLGex2WRkpMwyRcPjn3I7qWftNJlD7NJGMKEszjZ8ns27O4KHN+xcLchPpZUmJncF
         up4xDeJWXNFwn38+Ps+mOdv+L4aBidqu11P8NTukwpxC9xsqxY69Q2jXXg1+X3c7/eLA
         YU0g==
X-Gm-Message-State: AMke39njeJ1MoVY72GTe0KVw3l5CLuwlvx9a3HkZQtlQDmqk/fSlYUgn7bNdEhve3V6Z+Q==
X-Received: by 10.223.142.34 with SMTP id n31mr14296758wrb.11.1489137148148;
        Fri, 10 Mar 2017 01:12:28 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d515:7bde:c1d1:c737])
        by smtp.gmail.com with ESMTPSA id 63sm2364402wmg.22.2017.03.10.01.12.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 01:12:26 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3] staging: wilc1000: Enhance code formatting
Date: Fri, 10 Mar 2017 11:12:21 +0200
Message-Id: <20170310091221.7109-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

This trims line size at 80 characters by shortening the names of
variables.

It makes code easier to read.

Problem found with checkpatch.pl

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v2:
*Shorten variables name.
*Separate the patch from a patch set.

Changes since v1:
*Put the pacth in a set.

 drivers/staging/wilc1000/coreconfigurator.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 10101f8..45563b9 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -123,7 +123,7 @@ struct disconnect_info {
 s32 wilc_parse_network_info(u8 *msg_buffer,
 			    struct network_info **ret_network_info);
 s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
-			       struct connect_resp_info **ret_connect_resp_info);
+			       struct resp_info **ret_resp_info);
 void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
 				 u32 u32Length);
 void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
-- 
2.9.3


