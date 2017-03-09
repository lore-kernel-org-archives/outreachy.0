X-GM-THRID: 6395629856318554112
X-Received: by 10.46.20.16 with SMTP id u16mr1724212ljd.23.1489098616208;
        Thu, 09 Mar 2017 14:30:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.67 with SMTP id 3ls459431lju.49.gmail; Thu, 09 Mar 2017
 14:30:15 -0800 (PST)
X-Received: by 10.25.150.2 with SMTP id y2mr2176287lfd.21.1489098615534;
        Thu, 09 Mar 2017 14:30:15 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id p144si17728wme.2.2017.03.09.14.30.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:30:15 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id u132so13091538wmg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=y0pg+4cwcqXerYaAhzRuN+xsvZD79+2BkZwNkhWM50k=;
        b=FAEaD0ZecHT9e2UQHZeReX55lUOYeAyoEH2ObishLhpraBpMI+rx15ODTHCntTBHSW
         GpDH0AcyfiTQnJXrZq4ZUGqFfh5ftCLQhb89MfAG4T/vwk4u5a9w13MdoCY2iRCh4GTR
         kUz/0HHrKksDsDfsPhnlmeDMKH+gOtGwTPWHyJAO341HxTGPXo+mNewkfk/6/qm+f8TV
         WwWg9M9dLFoGFgJ8/QSkTKKahKIe1BTiXSaVkB/ipWLDm+ZR/PfNXa2RQFLN1MDaNBUV
         RqBSQFxHgNbjVdOY8xbtF6Tt6ED08ya4G+Rxl0UYKnr7NEhku4um4Un5mDZMvgSSuK+z
         6p6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=y0pg+4cwcqXerYaAhzRuN+xsvZD79+2BkZwNkhWM50k=;
        b=tkJQSUnWpbXgwKjpOR42pX4Yb0LL3XyN0AgGYzjldhPOZkJ0Dn2sLU+IZMrgLt4Y9r
         rAkyUBRR8/1pwvZa6NBRrmORuURlbWTsrxahl+PENbxMfiEOWeLSUd4L4rpjLBgKUqTr
         z6BoS6KZu6AkXMo2o0HEZSEfrT9NMjbWFXHlV4uZTUn38zI9hLFvkHFesyxcT772xGyD
         Rcuxgs9UxYXHk1Gl6z1IsrAs0MlEO72gf6PfdMBWznGp6OXqJpsLV7pcs9/hd46dduOY
         9P7c4TL+Yg1Xru7Ui49QfbUE9OvnuYZiM4ckrasISRdvW04EMGx8AjFIzLoEnIobu5HD
         GXTQ==
X-Gm-Message-State: AMke39ke0UI7IoZvXtCKKlPpKCyjx7XtcqZkFLnCsXchVItIfQ3Ika46v5mG3GXypgNO+g==
X-Received: by 10.28.55.68 with SMTP id e65mr12925191wma.62.1489098615366;
        Thu, 09 Mar 2017 14:30:15 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:10f3:5309:404:d736])
        by smtp.gmail.com with ESMTPSA id p12sm9998463wrb.46.2017.03.09.14.30.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:30:14 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 0/2] staging: wilc1000: Improve code readability
Date: Fri, 10 Mar 2017 00:30:11 +0200
Message-Id: <20170309223011.7241-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix multiple checkpatch.pl issue to improve code readability in wilc1000 driver.

Tamara Diaconita (2):
  staging: wilc1000: Remove camel case
  staging: wilc1000: Enhance code formatting

 drivers/staging/wilc1000/coreconfigurator.h | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

--
I group two single related patches in one patch set. 
2.9.3


