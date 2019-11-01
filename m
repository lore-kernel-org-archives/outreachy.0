X-GM-THRID: 6754202983704035328
X-Received: by 2002:a5d:4f91:: with SMTP id d17mr9230283wru.184.1572585428165;
        Thu, 31 Oct 2019 22:17:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9c90:: with SMTP id d16ls5977647wre.14.gmail; Thu, 31
 Oct 2019 22:17:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzMChr7GUJUf5b+G0i3osk8PAWNyFeF7jmjfQacOolF+e/3JF2gzb/svIIi6swf+HjHlT5L
X-Received: by 2002:adf:fb0b:: with SMTP id c11mr9293166wrr.50.1572585426733;
        Thu, 31 Oct 2019 22:17:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572585426; cv=none;
        d=google.com; s=arc-20160816;
        b=sR6qEzBvHMrbMgXHqkQtg5Lrlbfv9TzvuWfQBwIoL0ZcJyUO1RM0qDjo+BefNUO9xC
         c/ReYovBxGin0rG4P/wi3OYDRtlqKCn6YkXscz4Ifjpn3xV2yCZETjsVUPCB+3LXS3hT
         IfnESjVnmWB112PqYS1UUc4CZTSDBHauTN4Cr2nPr1UKB25g2oSM+/ZgJOjXkP4z4EFq
         K5It/OdfGesEyAlBbCo4eg2nP7WZjyFDnbzCbe99mhKTw/eyLQ5rUgb9QQt/PiCm0GdE
         p5/C66cUez8cK/coW25nNBWUVC1ZGE2z52nkuiX8IgOske3ocrgeq3I+HRsfgAWu5KpK
         BeHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=w7yRVuW9nTQPL0okwv4cUvN6mm9NaqDDLLJn1qCuj48=;
        b=J1EvTRZm0vWDKc/h09BN3XGEjPFISiCNlJHXDRbHdCh3pLl95geloQ4/RfbsOk4VWe
         dZ6THwew5X5qPUpyubFjWV1Qle2/oQ+iJpNe+1B390pUdnIR06nF6Go2m/xEMbpcJHSW
         Y7ikuB3qEOXd4ejnefHsK6zq533GdcKcc6cR7mVYsvcBJH6p3LvEKn4CYpsNt6FJGwyW
         pGGVymnstRAGsotK4IR4atklnUvdt97cUWO8NUTLVU5s4MYxetBqpyuhAB+7dciIwLIp
         xiujQqPRtFWW6JAaS7TpKmleuI5iJQQYyT8CiCu/i4jepvlSBrZ++YXrljBPjcyTLDTq
         57QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jLqIhOC0;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id y188si320894wmc.0.2019.10.31.22.17.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 22:17:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jLqIhOC0;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id i22so3355092wrb.11
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 22:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=w7yRVuW9nTQPL0okwv4cUvN6mm9NaqDDLLJn1qCuj48=;
        b=jLqIhOC01O0gcfEXJdVqxWzQs+m0d4xm8pb4ieVUeSSPs+8LS9Q7rQfwdLf4mhuWEi
         Sdi9Wk94L7EpZolHbuDpnGd/N1hgw3eJ/IPCtwm8mYobVoBJXHEOTjM9TlK0+OhLdKXT
         GcckhE59qC9K18weMmoZTjuvHg5DPKXcr8WumPjZtSungt2qR3MDlvok1mMqvS1/y/lx
         1Ad+SuVThgVNifFUwGSCTQt3aNnn4janAiMiF/TiyvADJaeKqOvjdXCYVfBgOmMNm3DE
         fyyV4EIPHCrpreRcis6rgH+Cgbjn2yqM5AZDiKpclKSUU2JoebVPz0G+1TI9dKGb+8KP
         CZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=w7yRVuW9nTQPL0okwv4cUvN6mm9NaqDDLLJn1qCuj48=;
        b=eRpr0a396YwejGUQkfRn/fu+xBKfJazr3A4UrCU2Gl5rev8qbzSgjOwHOWYsRaxYZw
         RrKHfwdytL1prUW5B9sLmj4LaeB6EswUj47AWY0rPuF8ulQLm5Y2a9ZaocRUeOagtQUg
         C31Mb32kCBj9Mxua8Rxv3SEkCYeLF8ZyZsx7vOug1zO/J7wg5vuvTvtlIARQ3fEdglO6
         cukjvvbQREMj86vZdS4QuuwIf/CkFtQyhEnkXABGJGa1Isl8w0psXb1FOhrLzbwoHubE
         xSHUKlJxW+1o8I8AjHJ9oe5ZfKadDfgcRXI98G6qO4ipAG3WTBrJWFIvJksFkOEB99aL
         +afg==
X-Gm-Message-State: APjAAAVqtaI/yB45FIY850cRhrMGvWxTt48s6JqnBcNXiAHtr0WgBoo9
	eRUzLWpeeG3fzMNrhIl6gu5nM8AlCX8=
X-Received: by 2002:a5d:4748:: with SMTP id o8mr9320131wrs.239.1572585426445;
        Thu, 31 Oct 2019 22:17:06 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([37.120.143.36])
        by smtp.gmail.com with ESMTPSA id o189sm7777298wmo.23.2019.10.31.22.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 22:17:05 -0700 (PDT)
Date: Fri, 1 Nov 2019 00:17:01 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Fix preceding lock warning
Message-ID: <20191101051701.c3wly47ld6jg6hgn@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch fixes a "preceding lock" warning by removing a return
before the unlock operation. Also removes an unnecessary goto and
adds a else if condition that archives the same behavior.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_softmac_wx.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac_wx.c b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
index f89799d43b1b..42f599b20168 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
@@ -422,16 +422,11 @@ int rtllib_wx_set_scan(struct rtllib_device *ieee, struct iw_request_info *a,
 
 	if (ieee->iw_mode == IW_MODE_MONITOR || !(ieee->proto_started)) {
 		ret = -1;
-		goto out;
-	}
-
-	if (ieee->state == RTLLIB_LINKED) {
+	} else if (ieee->state == RTLLIB_LINKED) {
 		schedule_work(&ieee->wx_sync_scan_wq);
 		/* intentionally forget to up sem */
-		return 0;
 	}
 
-out:
 	mutex_unlock(&ieee->wx_mutex);
 	return ret;
 }
-- 
2.20.1


