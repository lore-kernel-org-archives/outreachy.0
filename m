X-GM-THRID: 5650171035648
X-Received: by 10.112.147.35 with SMTP id th3mr3079963lbb.15.1425249593331;
        Sun, 01 Mar 2015 14:39:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.166 with SMTP id fx6ls448571wib.20.canary; Sun, 01 Mar
 2015 14:39:53 -0800 (PST)
X-Received: by 10.194.63.208 with SMTP id i16mr724832wjs.2.1425249593075;
        Sun, 01 Mar 2015 14:39:53 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id by11si582840wib.1.2015.03.01.14.39.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 14:39:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesq59 with SMTP id q59so30077816wes.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 14:39:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/d0PU1a8uz9TT+pEBjwRQ923ge8iFIuj3ZsU3Ece8uw=;
        b=ZmEZHJXYV+JaOJkfRrZ1ZFrCD8o7a+130p2+wVfIiF83M/5CnPtclOGvCQU3Abdb62
         lLCJMbFAr9V7X80qGZ0TIgYNTuUFoJ0SD4mVVNZOZwDRL+GVGMUZkrIbnkAYcjU1CCW9
         9fpqfLV0PQlv3a6neMuuBskaNuKxO7gflxWksmKS9Reba/9WQf9+2yRi3zbhRCCrEJmv
         ijBio1eb3bqx/n/6+blWi+UunL/faN5geqCZt+mQ7AMEAlwAoc55COPaFspW6nCe8kdZ
         65dnOwY2fhqmjkTFore4h7P7I7/QAIsd8tH5deZ7agaBGw7DnfM6XTAW5Y7beBi1bO4k
         oh+A==
X-Received: by 10.180.75.102 with SMTP id b6mr17179728wiw.60.1425249592981;
        Sun, 01 Mar 2015 14:39:52 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id 17sm14799837wjt.45.2015.03.01.14.39.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 14:39:52 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Media: v4l-utils: Make small change in function that prints the help text.
Date: Sun,  1 Mar 2015 23:39:39 +0100
Message-Id: <1425249579-31105-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

The change was made in file options.c by making small change, adding
printf("end of help") function.

Output before the modification:
media-ctl [options]
-d, --device dev	Media device name (default: /dev/media0)
-e, --entity name	Print the device name associated with the given entity
-V, --set-v4l2 v4l2	Comma-separated list of formats to setup
    --get-v4l2 pad	Print the active format on a given pad
    --set-dv pad	Configure DV timings on a given pad
-h, --help		Show verbose help and exit
-i, --interactive	Modify links interactively
-l, --links links	Comma-separated list of link descriptors to setup
-p, --print-topology	Print the device topology
    --print-dot		Print the device topology as a dot graph
-r, --reset		Reset all links to inactive
-v, --verbose		Be verbose

Links and formats are defined as
	links           = link { ',' link } ;
	link            = pad '->' pad '[' flags ']' ;
	pad             = entity ':' pad-number ;
	entity          = entity-number | ( '"' entity-name '"' ) ;

	v4l2            = pad '[' v4l2-properties ']' ;
	v4l2-properties = v4l2-property { ',' v4l2-property } ;
	v4l2-property   = v4l2-mbusfmt | v4l2-crop | v4l2-interval
	                | v4l2-compose | v4l2-interval ;
	v4l2-mbusfmt    = 'fmt:' fcc '/' size ;
	v4l2-crop       = 'crop:' rectangle ;
	v4l2-compose    = 'compose:' rectangle ;
	v4l2-interval   = '@' numerator '/' denominator ;

	rectangle       = '(' left ',' top, ')' '/' size ;
	size            = width 'x' height ;

where the fields are
	entity-number   Entity numeric identifier
	entity-name     Entity name (string) 
	pad-number      Pad numeric identifier
	flags           Link flags (0: inactive, 1: active)
	fcc             Format FourCC
	width           Image width in pixels
	height          Image height in pixels
	numerator       Frame interval numerator
	denominator     Frame interval denominator

Output after the modification:
media-ctl [options]
-d, --device dev	Media device name (default: /dev/media0)
-e, --entity name	Print the device name associated with the given entity
-V, --set-v4l2 v4l2	Comma-separated list of formats to setup
    --get-v4l2 pad	Print the active format on a given pad
    --set-dv pad	Configure DV timings on a given pad
-h, --help		Show verbose help and exit
-i, --interactive	Modify links interactively
-l, --links links	Comma-separated list of link descriptors to setup
-p, --print-topology	Print the device topology
    --print-dot		Print the device topology as a dot graph
-r, --reset		Reset all links to inactive
-v, --verbose		Be verbose

Links and formats are defined as
	links           = link { ',' link } ;
	link            = pad '->' pad '[' flags ']' ;
	pad             = entity ':' pad-number ;
	entity          = entity-number | ( '"' entity-name '"' ) ;

	v4l2            = pad '[' v4l2-properties ']' ;
	v4l2-properties = v4l2-property { ',' v4l2-property } ;
	v4l2-property   = v4l2-mbusfmt | v4l2-crop | v4l2-interval
	                | v4l2-compose | v4l2-interval ;
	v4l2-mbusfmt    = 'fmt:' fcc '/' size ;
	v4l2-crop       = 'crop:' rectangle ;
	v4l2-compose    = 'compose:' rectangle ;
	v4l2-interval   = '@' numerator '/' denominator ;

	rectangle       = '(' left ',' top, ')' '/' size ;
	size            = width 'x' height ;

where the fields are
	entity-number   Entity numeric identifier
	entity-name     Entity name (string) 
	pad-number      Pad numeric identifier
	flags           Link flags (0: inactive, 1: active)
	fcc             Format FourCC
	width           Image width in pixels
	height          Image height in pixels
	numerator       Frame interval numerator
	denominator     Frame interval denominator
	end of help

The difference of the two output is the last line of the second output:
end of help.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 utils/media-ctl/options.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/utils/media-ctl/options.c b/utils/media-ctl/options.c
index ffaffcd..aa6e122 100644
--- a/utils/media-ctl/options.c
+++ b/utils/media-ctl/options.c
@@ -76,6 +76,7 @@ static void usage(const char *argv0)
 	printf("\theight          Image height in pixels\n");
 	printf("\tnumerator       Frame interval numerator\n");
 	printf("\tdenominator     Frame interval denominator\n");
+	printf("\tend of help\n");
 }
 
 #define OPT_PRINT_DOT		256
-- 
1.9.1


