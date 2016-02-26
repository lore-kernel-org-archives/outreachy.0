X-GM-THRID: 6255472984804294656
X-Received: by 10.140.217.17 with SMTP id n17mr17159325qhb.30.1456470007084;
        Thu, 25 Feb 2016 23:00:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.214 with SMTP id 80ls937079qgj.83.gmail; Thu, 25 Feb
 2016 23:00:05 -0800 (PST)
X-Received: by 10.140.28.71 with SMTP id 65mr17124606qgy.1.1456470005143;
        Thu, 25 Feb 2016 23:00:05 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si1740747pfb.1.2016.02.25.23.00.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 23:00:05 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q63so896746pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 23:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=2+81l6mDwgOCabac8XoJxWsBD8qPSd4bJFpG+LEplb8=;
        b=FGav/Zt7Uu9e0lFMss9AFkgtQHEf3ml7b/8RHEK7KI6LtrPq39/HQL6PyfDTQdmrO9
         nwnaK34xpmITHdyBkz2TnTY/0JmE4sFaS3uX7eXoPDslv8NWe8VdDM2ya5+fk2raxqfb
         3Brj96UHei4CnyuP+8q+YWZSZN9OaiQiJ5KVsYsnbGOYYq6Uw+gOF1ifF6tZvz4qDM10
         bWguapB6Lre0HZApmyMe4c81Cg90CJnTcUzr15zlO2jvk7k2CcG7Imr2B4X8JcdB+EVR
         6ub2Kls2dET3riz79+kLWVza/3U1W8cVRPpduBO5tjhsJWjcgROHvrWXtzUBfLpOZeLM
         LRdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=2+81l6mDwgOCabac8XoJxWsBD8qPSd4bJFpG+LEplb8=;
        b=VsBJJajQ2hKglIJ8BdGRr16icPkt8KM6MU5GESV/x0If03EnmGzOI3P6QCBvD7+hs5
         yLnsV+JaqEK6oE5KTZlhC8/zes52Gx15Z1EVjEvWoGLsdeCY+yOaXEveJ0pmWWFoHszL
         AMxMUFffjT88J/sP9VGN0VE5sBhcFPi2ilovXFCuOBZbu9N7TaZlT5DN51fxX64sJ1yA
         6SGOChKi2cNd6dKzZ9OYNsLasofgppK+d0+IO4/njFtzr/OrR6xBKt506cGhhqgtFVBC
         fBxZTo3Rj8dZZvtlKRDzXHVAFOwGnGFg1bzmDzcrZbzC70THB5S+BY1QDb5Gf+6KT0wk
         3ktw==
X-Gm-Message-State: AG10YOTLsuiy9azS1tAGxEjnczfqoyI5PV5MzdS1UNQV530HBUcospKTQBc/s3h7bZdXdg==
X-Received: by 10.98.42.207 with SMTP id q198mr69961760pfq.103.1456470004952;
        Thu, 25 Feb 2016 23:00:04 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id f12sm16633186pfd.87.2016.02.25.23.00.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 23:00:04 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/5] staging: wilc1000: remove code for unused HOST_IF_MSG's
Date: Thu, 25 Feb 2016 22:59:57 -0800
Message-Id: <cover.1456469587.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456464955.git.amsfield22@gmail.com>
References: <cover.1456464955.git.amsfield22@gmail.com>

The functions that sent these messages were previously removed.
Finish the cleanup by removing the calls to the message handlers,
the message handlers, the #define's, and unused variables.

Changes in v2:
5 Patches Rebased and Resending. (one made it through the first time)


Alison Schofield (5):
  staging: wilc1000: remove code for HOST_IF_MSG_GET_CHNL
  staging: wilc1000: remove code for HOST_IF_GET_LINKSPEED
  staging: wilc1000: remove code for HOST_IF_MSG_FLUSH_CONNECT
  staging: wilc1000: remove code for HOST_IF_MSG_Q_IDLE
  staging: wilc1000: remove code for HOST_IF_MSG_SET_MAC_ADDRESS

 drivers/staging/wilc1000/host_interface.c | 147 ------------------------------
 1 file changed, 147 deletions(-)

-- 
2.1.4


