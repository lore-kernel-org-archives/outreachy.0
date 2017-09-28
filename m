X-GM-THRID: 6470854058702798848
X-Received: by 10.98.194.206 with SMTP id w75mr478766pfk.0.1506613115256;
        Thu, 28 Sep 2017 08:38:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.0.12 with SMTP id 12ls1226234pga.29.gmail; Thu, 28 Sep 2017
 08:38:34 -0700 (PDT)
X-Received: by 10.159.194.131 with SMTP id y3mr468990pln.55.1506613114147;
        Thu, 28 Sep 2017 08:38:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506613114; cv=none;
        d=google.com; s=arc-20160816;
        b=mIiusBM9gd03O3VkehbiVHYEKSVohqOPZNm7a+9vwLFd/He5sh2aIXXUTVVtQUmZEy
         eW0Pphseu9lM1yIf6tZ43cdKJ2t21Z3WKwJiZFerZ4Qtlp+uwwmEe7LT8RDMbs9acedX
         gNBeVLJGG5cCIOqLUL5/ZjGwewAN4GOBRhYJ7arC8ZYOlxi5FDFDQYLSGOEVCN5Qif8z
         wSb7IB50EtrJTiBbv3sLXZ9n9B+nrecb3uytIgg/GDz5War/IkFlgTOEUGC32+SKo5zA
         05q/vCFqT8jvKaxa7PKpETSgtLZYiwOsnoL+xnUbvpUlkj+B7O8BLCkMHwmdqg7UsVm6
         rlag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=2Ge7xcYFdl2wIz7JvGVQ4vuC0mxvkEr0hQx8tUJr1Zc=;
        b=z44HkgeEJUu14IwY+FGmorqTvc3hLdDksrpgd9x5cnfF5UesMv6p88e20oeippAn3S
         0YDIifXvtUbVwHcWgassLsCVMsDy0EOkNFN2Nf8YEUmp63ay2zlSHZkNn0EhzgtI09bk
         ZL09o8BbhrNm7zmw4V0t2KuNA/SbJ9I9XiuskxLmMWH5uiGI7CVjoXIhVwDliOutDxiZ
         mq0m4wLMGKrHir7mzfzC9Ya36A7F3grBU65d5wb/EbMub9W2DBE1QZdJoROn5PuXPRIq
         s9p5YI2EcTVQ64u+kJkb1O6Ej0wB+0wg2Ta7nn20UVpEg4nDNKTz6lqXaatjfF6KcQxb
         BWJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rEpv1xtX;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h3si258543pfk.9.2017.09.28.08.38.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 08:38:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rEpv1xtX;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i23so1800216pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 08:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2Ge7xcYFdl2wIz7JvGVQ4vuC0mxvkEr0hQx8tUJr1Zc=;
        b=rEpv1xtXs56jiCOZrZCrmoIZ8hcUGRDRL6cFPpcfFR3MfPo2FdRDrFXBY8T2SQKc7h
         R8KJYgK4rOgwac0wAD/YAtBtzLh/r/7e8ip9eEBhWL5m/0YLnpBKsRqeG7TjULa+Uqwb
         +HaMpI9j9mQU/bWc+aPygcvLblVhh2+6LtxXtPJPYIqMO7bMQxQrM6LXg1v8C9e4BQTI
         giUO8c3sZCODgIxKTNerucNWuJT1GBugNuWoL5JV35Zm+IKU5XSSxC7OACjC8ONSNIQH
         umW+8ayXLw0ITiZyQnWfCJdHu74fHZh2IE++dMUJOXvZXyZrh2Rnqr5ut1oFQGLIada0
         Ki7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2Ge7xcYFdl2wIz7JvGVQ4vuC0mxvkEr0hQx8tUJr1Zc=;
        b=HT2JI5jfrTagkXTZ6CtV+YkiIqnvyzmAXe/J+Th2iLJJ7ydT/KZUbCYOcImv3tQl/3
         JGYf2A6Iurx8pqViQUq7xx9VZC8uYimHQpauzjIy2YteRXQdYQOcoO0TstVAEZ3LfJbs
         QReD9rCE7cwewkFWc3SI8yzuGZR8GDL3HRvfArSyphlOrwO0hOsdfkWeecfe2N2tV5h4
         1B1qoYZpzgBvgeY4qAFl0fjdowIbQEYlcm2Hdm+JRJKnQP5hWjY0g2gACylo9V0I56NF
         tPjqkw11KsAY37k4opCEfOZmKv03zZzz/Tzzx3KUUgxjrpmeBon7CBVe0uysOOqwU+wx
         RUVg==
X-Gm-Message-State: AHPjjUheKkQcS8wPwYyDY+U4jcn1vYjHIhkvB798iKw8C3r11zA9PUz4
	sFohv1ogTdjikHGk1EKA+rJejnfL
X-Google-Smtp-Source: AOwi7QBKzKbsuELBI9jZ0yXNIMKbZtM6pd04l60YQZ8xaSXkm5HoBI2+2TtLfvj+GdqQRceMqEQzhA==
X-Received: by 10.101.82.69 with SMTP id q5mr4640818pgp.140.1506613113674;
        Thu, 28 Sep 2017 08:38:33 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id l3sm3596871pgn.36.2017.09.28.08.38.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 08:38:32 -0700 (PDT)
Date: Thu, 28 Sep 2017 21:08:26 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: speakup@linux-speakup.org, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, samuel.thibault@ens-lyon.org
Subject: [PATCH] Staging: speakup: replace 'S_IRUGO' macro with octal 0444
Message-ID: <20170928153826.GA19227@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Everyone knows what 0444 means. But one has read through docs
to understand the meaning of 'S_IRUGO'.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/speakup/speakup_apollo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_apollo.c b/drivers/staging/speakup/speakup_apollo.c
index 2edb56c..dcf0c3b 100644
--- a/drivers/staging/speakup/speakup_apollo.c
+++ b/drivers/staging/speakup/speakup_apollo.c
@@ -200,7 +200,7 @@ static void do_catch_up(struct spk_synth *synth)
 }
 
 module_param_named(ser, synth_apollo.ser, int, 0444);
-module_param_named(dev, synth_apollo.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_apollo.dev_name, charp, 0444);
 module_param_named(start, synth_apollo.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
-- 
2.7.4


