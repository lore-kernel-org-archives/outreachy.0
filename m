X-GM-THRID: 6392572294124797952
X-Received: by 10.157.51.111 with SMTP id u44mr2568190otd.129.1488386721635;
        Wed, 01 Mar 2017 08:45:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls4070342otx.21.gmail; Wed, 01 Mar
 2017 08:45:21 -0800 (PST)
X-Received: by 10.129.40.134 with SMTP id o128mr3031069ywo.82.1488386721088;
        Wed, 01 Mar 2017 08:45:21 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si94387pfz.1.2017.03.01.08.45.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 08:45:21 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id x17so6387560pgi.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 08:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PoxZ8J7IkluGSSfSW5Tl0i7wU/Tg5t3nnZbxvJr7Wes=;
        b=Xq+4QGHs4mvhBDC8jKWjxY4BbKGyuxSMmHX5/vjOimwSae9KBMq1sYlTgykT47Rs15
         QKQQYMA+5F/oJcrYpClSOTp7BvojNvjn1RC6SXJsnhY6bQKsFJkDYQvV9k0eCtODQkk8
         2ofpo2yav24+77gP5ksrPjso9/F9LofNkguLiIBn+MjoLhOVvQ5tQChrL/VSN70T/DWw
         j+QC4icO3tkHsDveBINRvs61eWnQawfkXWeJYyQGNBT+ucD3+qSFufUNjVUh5PrUvBgn
         473oxUxyUBvPlgp8tkpmCBOG8ub4kP2sdy29BvEd2rgqp9dJCq6E768hUoW6WrAIhJZr
         zQ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PoxZ8J7IkluGSSfSW5Tl0i7wU/Tg5t3nnZbxvJr7Wes=;
        b=OoZMQeyhSr0eRrFO1oFjzJvgXNZsB1ZdtOIiM4B7da/ho8TwhDvSO3P0X62E5oUCU0
         rdMRyUygjONATYtZYQZsA0jDNcjgO6qWq9i1jPfjA5EIWI+982MXdZmxlZI0RVYpgqxM
         Xstk6/IpiyRCNbutwBUF8WRfi4GM9p57JGDXEt80A/7ASmipCqOsfa1nbuguzAo6tShj
         SxiVunm69DVfT6ofQhzFjtbUnfLcUOEt5loq6ecsFjaizWg2sdK8HUct1vmh+oVoPgux
         J0LSd0tFWHNLTY3A+NHhsuqg4l682M8EC6rsgcqzz6i2gZFJ9OYppoBV3J5FEL5taxYE
         ColQ==
X-Gm-Message-State: AMke39mmkiuCF3zQFSpire+nvMkvN2DOjFiJM14xaqtLF/qKmz7dW1HKnGEoQR1YMrah/w==
X-Received: by 10.99.211.21 with SMTP id b21mr9756204pgg.166.1488386720829;
        Wed, 01 Mar 2017 08:45:20 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 127sm6069503pgg.11.2017.03.01.08.45.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 08:45:19 -0800 (PST)
Date: Wed, 1 Mar 2017 22:15:15 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: xgifb: Improved coding style
Message-ID: <20170301164515.GA1805@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

New variable is added to make the code more readable.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/xgifb/XGI_main_26.c | 29 ++++++-----------------------
 1 file changed, 6 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index 69ed137337ce..9870ea3b76b4 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -878,30 +878,13 @@ static void XGIfb_post_setmode(struct xgifb_video_info *xgifb_info)
 			}
 
 			if ((filter >= 0) && (filter <= 7)) {
+				const u8 *f = XGI_TV_filter[filter_tb].filter[filter];
 				pr_debug("FilterTable[%d]-%d: %*ph\n",
-					 filter_tb, filter,
-					 4, XGI_TV_filter[filter_tb].
-						   filter[filter]);
-				xgifb_reg_set(
-					XGIPART2,
-					0x35,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][0]));
-				xgifb_reg_set(
-					XGIPART2,
-					0x36,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][1]));
-				xgifb_reg_set(
-					XGIPART2,
-					0x37,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][2]));
-				xgifb_reg_set(
-					XGIPART2,
-					0x38,
-					(XGI_TV_filter[filter_tb].
-						filter[filter][3]));
+					 filter_tb, filter, 4, f);
+				xgifb_reg_set(XGIPART2, 0x35, f[0]);
+				xgifb_reg_set(XGIPART2, 0x36, f[1]);
+				xgifb_reg_set(XGIPART2, 0x37, f[2]);
+				xgifb_reg_set(XGIPART2, 0x38, f[3]);
 			}
 		}
 	}
-- 
2.11.0


