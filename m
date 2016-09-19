X-GM-THRID: 6332057580597149696
X-Received: by 10.157.52.33 with SMTP id v30mr3890540otb.94.1474297081236;
        Mon, 19 Sep 2016 07:58:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.56 with SMTP id g53ls1170210ote.32.gmail; Mon, 19 Sep
 2016 07:58:00 -0700 (PDT)
X-Received: by 10.157.57.165 with SMTP id y34mr4190090otb.132.1474297080879;
        Mon, 19 Sep 2016 07:58:00 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si4846043pab.2.2016.09.19.07.58.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:58:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 6so4449245pfl.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 07:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=mJlYPPNyh2qxQZa0WUt3BBeCw1rpbbyrbmtEbAzYwAA=;
        b=lpDVdPzypsYDnwiU5CqMCI/tmSXKCdAScIkeIE/YRcp2kLihmBc7ENCmK0F81MYg+C
         V33uBU/qw/qiKXcRKg+R1ubHtXx1W955RzI6fIwnmiCxYAO49+X9AuoR0RHnQBuiQU4a
         N4MyqHZHmcgs/VZ6AOe249lJw52u1uFsSHVpqsZG1MlYVr39MMMhCDW0wb2Rx14jbnIN
         Zr/npYIyoLRwkf7EpVxKK+6+fHnrXKyXIbrBD822olfUgD09ng7MQ+E6erqbno4sA7ss
         PzhahMigXYxMtC/Ky3F5IQbZtsdjPGj6MJBnQV13tS+xaKYbAkEZz1HmSJaqclOYD8SX
         /Rag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mJlYPPNyh2qxQZa0WUt3BBeCw1rpbbyrbmtEbAzYwAA=;
        b=Tg6rW9ToBwTqcWtdaOmTPO0h+3BrRQqqgFvD66QbqeBRFg1jXpmK/dwF4O4QWWP9IG
         hg0b4mmkCRMZhUyUdi+d/xkSiYDJbeTNEChlKAyD0Y67Q/4fZhbzOjFaSoDxlMKpC5F4
         Qcsi6QC5pz8ky9Yd/2Nqeu2ojhWkI7vFppaApgFhStBDSflHVvEmRkBO2zvOLnxyfvVN
         63ePQO8t+Xr72Z3qkXKgkrQ6kScRmKb2EtFE9P0fH67UYmNc9drMmKyRRfUnfw6VpAmq
         VhZXu8XQnj/Jn6FvabZNzRAomYiKLMMitwbNid3GzRzPwZjW7WjGMmuApdpKmEPbASgc
         PI6Q==
X-Gm-Message-State: AE9vXwPF0j/IZd9ekxUaCysEjOOwKpB/Py2/lJKVkUtOTuFHjygqp1xXajNdV8VSXySlXg==
X-Received: by 10.98.102.81 with SMTP id a78mr21736454pfc.28.1474297080723;
        Mon, 19 Sep 2016 07:58:00 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id j1sm19958674pfg.95.2016.09.19.07.57.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:58:00 -0700 (PDT)
Date: Mon, 19 Sep 2016 20:27:56 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mateusz Kulikowski <mateusz.kulikowski@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 4/4] staging: rtl8192e: Insert blank line after function
 declaration
Message-ID: <b9be93908a424e8ac28e61a3d2d3cf684cd2aae5.1474296026.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474296026.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Insert blank line after function declaration to resolve checkpatch
issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
index bdb5392..aac395f 100644
--- a/drivers/staging/rtl8192e/dot11d.h
+++ b/drivers/staging/rtl8192e/dot11d.h
@@ -78,6 +78,7 @@ static inline void RESET_CIE_WATCHDOG(struct rtllib_device *__pIeeeDev)
 {
 	GET_CIE_WATCHDOG(__pIeeeDev) = 0;
 }
+
 #define UPDATE_CIE_WATCHDOG(__pIeeeDev) (++GET_CIE_WATCHDOG(__pIeeeDev))
 
 void dot11d_init(struct rtllib_device *dev);
-- 
2.7.4


