X-GM-THRID: 6395538220161957888
X-Received: by 10.157.12.214 with SMTP id o22mr5766681otd.150.1489077291523;
        Thu, 09 Mar 2017 08:34:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.2 with SMTP id u2ls1920332itc.10.gmail; Thu, 09 Mar
 2017 08:34:50 -0800 (PST)
X-Received: by 10.107.159.137 with SMTP id i131mr4133924ioe.26.1489077290704;
        Thu, 09 Mar 2017 08:34:50 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r66si1273827pfb.7.2017.03.09.08.34.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 08:34:50 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so7803035pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 08:34:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HStKqFNr/fqpD2jSjrdiz4d2fa7LBiLWZvM12iA4lAo=;
        b=OJqImU79g5mNzaqllWL1oyV8YgoY16LgVPK8uLNpPtJ7Xv49IvBFsB/Lm9OKW/wXlc
         Ca3MqPz/SMU86gIQcvi8uOV/HZztLd75Oc5RJZMASyLHVYwyYDY8W5WXHWUliua5fdh9
         fHwf5CpsTM1+pdksQMD8gLuyv3p6WgXAIMyhPdXMs2Ww86Qkd5voRwSjDndl1mGqAAmj
         EHQlGV71Zq1+KwI1WFp1qCfMt8VgmDZOg1xLYbR7PRrlDDD8A0IpT92auenNycCpcG6W
         kQ1sPMUlBJckCbl7XVuOUUBUkcIW6PVAEpsryS7+1f1S3ntlZvhwLe1elGbWSbyiGUOw
         D1Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=HStKqFNr/fqpD2jSjrdiz4d2fa7LBiLWZvM12iA4lAo=;
        b=D4W8Clcb9RKSJyr7KSMVroObRM9D/DLc74RRlHvOR2owCnRzU/Q0WNxfBxgeWQfhn/
         Zd4FS4nV3F6zKxwsLlOtoxshKiTNUJGMUxTtnvskow953kLX6kQHrQeLMpJEvqfxM7Xo
         hSAaTMytGrjOC0xv7G6yXwoGNOSP1be0Fu/e/v/F21uu5wt+eI+UaDIBocsihxDPYn9n
         GkoE0Tkcw4jPIHavD7IC9b/2fWVEmeL6QmHFA8qH6CGCA/CgrHHwaRV+sJrDY28TM/B0
         U0EBYFy16n8joMXQ4UR42ta2EubBrQ2O+O+Mx+d8b6BmJJBzq6nyx1RfAiOTciJcyShO
         IyFw==
X-Gm-Message-State: AMke39lWXy5AsWjul7RF1H702/IV7B+mW+D9HqeWIZO35QEnMkS3gMRl9FyDoF+JZs+qTg==
X-Received: by 10.98.87.27 with SMTP id l27mr14961985pfb.169.1489077290445;
        Thu, 09 Mar 2017 08:34:50 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r134sm13483269pfr.83.2017.03.09.08.34.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 08:34:49 -0800 (PST)
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
Subject: [PATCH 2/4] staging: speakup:indentation should use tabs
Date: Thu,  9 Mar 2017 22:04:31 +0530
Message-Id: <20170309163433.19462-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170309163433.19462-1-arushisinghal19971997@gmail.com>
References: <20170309163433.19462-1-arushisinghal19971997@gmail.com>

Indentation should always use tabs and never spaces.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/i18n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 1a3e34880ac1..11f1418b4006 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
 			if (index >= MSG_FORMATTED_START &&
 			    index <= MSG_FORMATTED_END &&
 			    !fmt_validate(speakup_default_msgs[index],
-			                  newstr)) {
+					  newstr)) {
 				kfree(newstr);
 				return -EINVAL;
 			}
-- 
2.11.0


