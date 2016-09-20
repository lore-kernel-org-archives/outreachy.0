X-GM-THRID: 6332315370185031680
X-Received: by 10.157.17.217 with SMTP id y25mr825011oty.12.1474357156542;
        Tue, 20 Sep 2016 00:39:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.140 with SMTP id n12ls3809450ioo.14.gmail; Tue, 20 Sep
 2016 00:39:16 -0700 (PDT)
X-Received: by 10.66.194.129 with SMTP id hw1mr5187630pac.92.1474357156126;
        Tue, 20 Sep 2016 00:39:16 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z4si5809253pam.0.2016.09.20.00.39.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:39:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so540552pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 00:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0pmjax/ECKbJqNNUuN+u03sH+OxmuEma2DBqcYq0ob4=;
        b=IfzOwcsN9IMHjwrIJkbYtKxuCx8u50pXiK6mIdRhlJh+6PLhtMBOKXH8n+gayub7xT
         JMSWu95wXgkrhS6FpC78v62e6kz1ax3UbyjjjXYx1rmihAVZ5pgB+FS6ErNXYPsDqjm/
         Z0tz+NzoR7PunWpbzTN2BvAD0pWV/XchJ8xxWyLi8fjjIPrkjaaluT8PmufLnpGIcJO+
         gwCeu8zcT5Isn+N4BqU3rDZEc6mh+k2WuaHHoDtRBEpFv/jzpc3iXt3WftxitMr8hePE
         7QHWiSDJ8b3nokLIyzbMRPHiDFzKlvCtIE081TLAOB7F8yA8lK47lfCfwJ5N4O0w31O7
         bktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0pmjax/ECKbJqNNUuN+u03sH+OxmuEma2DBqcYq0ob4=;
        b=cl0jqyvuIKg85EPDLQYToXhNMSD+xmNePvzaXfI7Qxt0R2GHrOHDBbu1K9qXXoQQWs
         P89/Nys9FvGA20ipjA8yp2HKGwCesYj6ofzujokPg2iLuDzioEyZLWYi2SVR5cL9hs9J
         oqsa+wnYOe7i+hRXJpDET2sGN1g8Z/ub8a90okreLMSVMpMmylD3CkkEfE/D0zsp4pMy
         ubV8MQfEvbp+kg1kgmDBe3KPkpORJzR21Asfz15uUX9v9Ecu9mX/iBP7cjV/dyXT7jOa
         68R88LxZki/TvacRX0JpljU6htq4nk6NN3i5dS6CxfHj5+b21KuKZo8uTUscS5X5mu0l
         9Vaw==
X-Gm-Message-State: AE9vXwMmxBjJ+7ePsKL2RxfDJiydzoZjkq6wR3KPWh3sEYpU4uSa6DHdQfL2prVaIq0SkQ==
X-Received: by 10.66.16.74 with SMTP id e10mr8437789pad.148.1474357155707;
        Tue, 20 Sep 2016 00:39:15 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.179.109])
        by smtp.gmail.com with ESMTPSA id an11sm36553036pac.26.2016.09.20.00.39.14
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 00:39:15 -0700 (PDT)
Date: Tue, 20 Sep 2016 13:09:58 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] Staging: ks7010: Use "foo *bar" instead of "foo * bar".
Message-ID: <c171c158286aa0d6391345654b0e56d69886a96b.1474355964.git.bankarsandhya512@gmail.com>
References: <cover.1474355964.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474355964.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/ks7010/michael_mic.h |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/ks7010/michael_mic.h b/drivers/staging/ks7010/michael_mic.h
index 89f17d5..efaa217 100644
--- a/drivers/staging/ks7010/michael_mic.h
+++ b/drivers/staging/ks7010/michael_mic.h
@@ -20,6 +20,6 @@ struct michel_mic_t {
 	uint8_t Result[8];
 };
 
-void MichaelMICFunction(struct michel_mic_t *Mic, uint8_t * Key,
-			uint8_t * Data, int Len, uint8_t priority,
-			uint8_t * Result);
+void MichaelMICFunction(struct michel_mic_t *Mic, uint8_t *Key,
+			uint8_t *Data, int Len, uint8_t priority,
+			uint8_t *Result);
-- 
1.7.1


