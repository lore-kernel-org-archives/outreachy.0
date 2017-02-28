X-GM-THRID: 6392269007149334528
X-Received: by 10.157.23.232 with SMTP id j95mr1488358otj.132.1488316107551;
        Tue, 28 Feb 2017 13:08:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.110 with SMTP id 101ls2323609oti.43.gmail; Tue, 28 Feb
 2017 13:08:27 -0800 (PST)
X-Received: by 10.237.37.80 with SMTP id w16mr1349281qtc.4.1488316107249;
        Tue, 28 Feb 2017 13:08:27 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h79si229222pfh.2.2017.02.28.13.08.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 13:08:27 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 25so2980497pgy.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 13:08:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Ap2MO8jPw17kXcVaU6x+BScrblYYA90YAnd619WFZag=;
        b=Z28oB0/XBsqfM+MwljATGLAolfIFWznPG8oWRb/F+hhen3RUDxvleiW4Ba0MXqFXa4
         asSIuCjbDV3EsZqs0nQ5aEJ41ftf5Pi72spuOkYwyTThkG0GlDsV9skcILcdzhp1eYIy
         4ddxIi4GmsHtGsotoFqa0Mw+HcjUqLr1L9euwGY/m5yvbyQxIVRNPcLflbnfQVXvFYaM
         wK53HtjDNi1pxBRpykXtbyBX5ComPHBGoMCBSC22/soPNP8jC59VoqOG4PgGA1EGaTF7
         NjRm62uYsB56WzXqlKpL210jpGGZP3jrhmTUtDGqRFCq0Kh1ZIerdRzL+Jhx4POVknxK
         dm5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ap2MO8jPw17kXcVaU6x+BScrblYYA90YAnd619WFZag=;
        b=jTx0IxdjuuHtJUwcvNpVmbotI9M0E746D0a6g81/9Xjf2D+IZOT6ZQg0vWtqj2NT8a
         u6UwMwnp/2waPStsrHNoVcpYtX62lhd+9WEH3aNvzK3QOWt1ygk7EaD3xebVArEaTiat
         HCcYl02+T2eTSOfL+pf1azn2lw916jUOSNcglBFhZo3ivHZhd+4PqVa1JlRzyGtNxPIv
         wbX7VeakbXn7eGBgFPyDGRTkQX2beaFAUk/eLxcnqCVGGq8zuIVnaj/wyBFjFwBV5hf7
         DDTx3XE2ucmPKheS3U50WF9i8T9QZmpfqPmNO7hgJctWjpQpCWjzMkO3skZPce8PjvjF
         OetA==
X-Gm-Message-State: AMke39lhjgXy/e5kmmMugts9Cnh/ZwRY6xvVAWI2quVqYd09Sdz0kaJ6107iV0gHKiK2AQ==
X-Received: by 10.99.174.71 with SMTP id e7mr4790275pgp.3.1488316106976;
        Tue, 28 Feb 2017 13:08:26 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n73sm5962179pfa.9.2017.02.28.13.08.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 13:08:26 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2 v5] Align with parentheses and clean if tests
Date: Wed,  1 Mar 2017 02:38:11 +0530
Message-Id: <20170228210813.9110-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Align the print statements with the
open parentheses and
put logical operands on the previous line

Sreya Mittal (2):
  staging: speakup: Align with parentheses
  staging: speakup: Clean up if conditions

 drivers/staging/speakup/keyhelp.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

-- 
2.9.3


