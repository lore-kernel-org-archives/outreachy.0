X-GM-THRID: 6337703450435911680
X-Received: by 10.200.56.243 with SMTP id g48mr1361822qtc.57.1475611573734;
        Tue, 04 Oct 2016 13:06:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.151 with SMTP id q23ls12128823otd.18.gmail; Tue, 04 Oct
 2016 13:06:13 -0700 (PDT)
X-Received: by 10.129.97.139 with SMTP id v133mr1484190ywb.105.1475611573368;
        Tue, 04 Oct 2016 13:06:13 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id d11si2996268pfl.2.2016.10.04.13.06.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 13:06:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id t6so6728827pae.2
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 13:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9cTrGfUEuEit+Gl/8YbI8pzd9apwy1thzY1HGJ4wyYI=;
        b=ckKuuSTzcfGQovLGckJ+cuoSpbu1mReyiNONhDOgXvy7Gjvoa2kHyUg4lcktQPu8Qh
         ys7+cJ02fneLQ+4X3tVPkFtVxEZbrUEWDg9IZ3iHTy56sOU3BgNRY1wuMpEeR3gsMcVy
         cdEN69/8oSBtpi7sv+SNjT4QIEvPKdQI3+iGSpAXeaDNGfIS2YGtcjxR0i2ObmDbk90p
         gO0JIDA7Wh3DTK5gXmWPzpYefHQP5dftNjmfjVkK/+YmyZJJPQH/j3bqK2WlZxdEYgnR
         hdoqbkJj7xISvS4z4h/FTbZKt5rpJ1Jtvw+7dgB5qvq3Yx3EU3R/Y8xcR14Dp2QqZ9Zh
         jYmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9cTrGfUEuEit+Gl/8YbI8pzd9apwy1thzY1HGJ4wyYI=;
        b=RFb/8BFr37yq4L/2s1eBpqmXT/Cjifn/a0ZTim2DoTvy1I3SJN87FE3AbI0iPEAEvD
         mGhZI8h8W45dyREAdzTnpfMBNjJtgBCteP5qJabQnuueS/UBbmRqG4Ol9hy3jcKM7gY4
         KguNifvmcH35tT3pkjj3xa9tEhC+kbLytFs6XB5QJoVOXYDncpTHrURg9PniRAufp5nc
         LvseuO19tXpeyYaH4z5oXQ+RXCoR24pIXsRSSVwq9x++J8HsV7OJH5SZ/C4vWXD0qKSj
         tLAb7CB/58Rlzo48NB93QMAS3p6cUoRK9R4IZu3XzjkfmsE/uE6pwR356tbMJ1IMmzcx
         1QvQ==
X-Gm-Message-State: AA6/9RkrJKZE5mxsOF8RsAHFv4X0du5PGhS8k25dzQfkCDq6i2GNB/fexHD+ESZsdeG2wg==
X-Received: by 10.66.10.132 with SMTP id i4mr7773189pab.101.1475611573034;
        Tue, 04 Oct 2016 13:06:13 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id ah5sm7963451pad.30.2016.10.04.13.06.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 13:06:12 -0700 (PDT)
Date: Tue, 4 Oct 2016 13:06:10 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@intel.com, vaibhav.sr@gmail.com,
	mgreer@animalcreek.com, johan@kernel.org, elder@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus: Add blank line after declaration
Message-ID: <20161004200608.GA29287@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Add a blank line after a declaration. Error found by checkpatch.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/greybus/audio_topology.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index b625169..5c76067 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -114,6 +114,7 @@ static int gbaudio_map_widgetname(struct gbaudio_module_info *module,
 				  const char *name)
 {
 	struct gbaudio_widget *widget;
+
 	list_for_each_entry(widget, &module->widget_list, list) {
 		if (!strncmp(widget->name, name, NAME_SIZE))
 			return widget->id;
-- 
2.1.4


