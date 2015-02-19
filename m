X-GM-THRID: 560417734656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,aaed3dbebb789d37,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.65.109 with SMTP id w13mr2919889pas.28.1424323271019;
        Wed, 18 Feb 2015 21:21:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.163.208 with SMTP id m199ls143099ioe.59.gmail; Wed, 18 Feb
 2015 21:21:10 -0800 (PST)
X-Received: by 10.50.29.6 with SMTP id f6mr5388750igh.2.1424323270683;
        Wed, 18 Feb 2015 21:21:10 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com. [209.85.192.177])
        by gmr-mx.google.com with ESMTPS id bx1si1688812pdb.2.2015.02.18.21.21.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 21:21:10 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 209.85.192.177 as permitted sender) client-ip=209.85.192.177;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 209.85.192.177 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfp1 with SMTP id fp1so6365567pdb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 21:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=pbdhohtRmBAAjjeiGwpGEyxQfUfvTDKdjcmezKzJsBM=;
        b=BzKgPptDxk91A0csjWoYWgWaww7YS+RaUuwij7Dw04Ul9V60oZsR8DY+ip9h0n0eHT
         fpXeE4Himcom5SZ6q/U7f9s9KcND0nmEMc5B4zGkVTC00mxHHnZNVbr+Jkk+Tu/iQ+Kj
         Rvi6GamaFU/uqBQzcoJ0/taQVzV7NvIq+IbhxvGODnVGz3y1pIJvD0F5pRexKneI8zCe
         OclOrW3iy+imaatCzUPv6JFPQoSRKmYi/KxNv2IcGfDhqNEC9SvqhVuTAM0WnUg/ZKez
         sgcqhUtfgVbLcOX8r18xwZtCoEMsDTffXmsWSMQdLKl0WpugX+awlRoRZAImVIII3sE/
         1GUA==
X-Received: by 10.68.240.5 with SMTP id vw5mr4292806pbc.165.1424323270559;
        Wed, 18 Feb 2015 21:21:10 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id ep2sm22216999pbc.78.2015.02.18.21.21.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 21:21:10 -0800 (PST)
Date: Thu, 19 Feb 2015 10:52:05 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: line6: Removed the space before ','.
Message-ID: <20150219052205.GA24936@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This fixes the following checkpatch.pl error:

ERROR: space prohibited before that ','

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/line6/pcm.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/line6/pcm.h b/drivers/staging/line6/pcm.h
index 6aa0d46..5d87934 100644
--- a/drivers/staging/line6/pcm.h
+++ b/drivers/staging/line6/pcm.h
@@ -145,21 +145,21 @@ enum {
 	    LINE6_BIT_PCM_IMPULSE_PLAYBACK_BUFFER |
 #endif
 	    LINE6_BIT_PCM_ALSA_PLAYBACK_BUFFER |
-	    LINE6_BIT_PCM_MONITOR_PLAYBACK_BUFFER ,
+	    LINE6_BIT_PCM_MONITOR_PLAYBACK_BUFFER,
 
 	LINE6_BITS_PLAYBACK_STREAM =
 #ifdef CONFIG_LINE6_USB_IMPULSE_RESPONSE
 	    LINE6_BIT_PCM_IMPULSE_PLAYBACK_STREAM |
 #endif
 	    LINE6_BIT_PCM_ALSA_PLAYBACK_STREAM |
-	    LINE6_BIT_PCM_MONITOR_PLAYBACK_STREAM ,
+	    LINE6_BIT_PCM_MONITOR_PLAYBACK_STREAM,
 
 	LINE6_BITS_CAPTURE_BUFFER =
 #ifdef CONFIG_LINE6_USB_IMPULSE_RESPONSE
 	    LINE6_BIT_PCM_IMPULSE_CAPTURE_BUFFER |
 #endif
 	    LINE6_BIT_PCM_ALSA_CAPTURE_BUFFER |
-	    LINE6_BIT_PCM_MONITOR_CAPTURE_BUFFER ,
+	    LINE6_BIT_PCM_MONITOR_CAPTURE_BUFFER,
 
 	LINE6_BITS_CAPTURE_STREAM =
 #ifdef CONFIG_LINE6_USB_IMPULSE_RESPONSE
-- 
1.9.1


