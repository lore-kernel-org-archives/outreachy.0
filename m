X-GM-THRID: 6394401254530875392
X-Received: by 10.107.19.231 with SMTP id 100mr6745292iot.46.1488829601267;
        Mon, 06 Mar 2017 11:46:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.170.68 with SMTP id y4ls2750881iti.0.canary-gmail; Mon, 06
 Mar 2017 11:46:40 -0800 (PST)
X-Received: by 10.107.168.80 with SMTP id r77mr1702332ioe.22.1488829600387;
        Mon, 06 Mar 2017 11:46:40 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com. [209.85.192.193])
        by gmr-mx.google.com with ESMTPS id c123si213723pfa.4.2017.03.06.11.46.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:46:40 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 209.85.192.193 as permitted sender) client-ip=209.85.192.193;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 209.85.192.193 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-f193.google.com with SMTP id v190so7649090pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=K24vic81nR1koNrgguyKmEpxjXeHbnD72Q+x0XIy2nI=;
        b=PJEb/5Yias5HR+idcErV7eHNeeEqIWGZJ0XqEv/AHgXE+INzbGI3o22JuHKwsRaZXa
         Ujra0C7kIDo954jVfd5mjl+e7Smz7h6u/UjxXikEZ6DDjitTGwHzDrWSj8QBaYB6sgvr
         fyLZXqrTbhwdJ6RaK6y4NkHR67msNT3MHsITYQYdRKs8hQjFrOOGY7P7/BmySWx/0Vj+
         CrYtAJ5koUD5ay/m+J3ygXMD3YINwJB71ArTGDOpWLv0bbW2f1hBlHcuDZrO0f5DtA6y
         4dzheLGYNl7weXTbUjb2iHPgUmzb4eGCfBlHiqEgDZfs/hHIzfLjcT2h2STctjwGXHhi
         W41g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=K24vic81nR1koNrgguyKmEpxjXeHbnD72Q+x0XIy2nI=;
        b=s/MphhTCk/9fKvYeq0OO2RFAiUGhE2jUYKH8AZyoLtr7RE3N2zNVYzeFSWlhhu4yyy
         +iWHB6TsHSs3WDogbjoob6KRDiZRgmPxcAZO6I1pbqUSHBNVNCwwUM7Cy7OTxS3Pbolx
         QFV6tlCG3OxaXuGC6if/mXskPvu9zT1wlVfsrB6Rc8h12i6ie0Q8xD+zNq2cjjkHf8H8
         vdwVUHXqdLn0M66wt0fNEDolsMEw78F4Ws4BPNsvE+sxTqzNAjw47V7HUw2dUQM+FuJ/
         aRZ6enfpw+0qnco69QEjEvm2hI8kJ0pfLn6hWFpLlccSDxPg/cWDQRARagT6HwC6PgVd
         zZmQ==
X-Gm-Message-State: AMke39mweEeDNblPFKTri+irF6tTFAf2pIr/N0K+kadRBayUAFXjv3dXdbFM52TqdTT17w==
X-Received: by 10.99.107.73 with SMTP id g70mr22664277pgc.129.1488829575528;
        Mon, 06 Mar 2017 11:46:15 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id f62sm41164107pfg.48.2017.03.06.11.46.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:46:14 -0800 (PST)
Date: Tue, 7 Mar 2017 01:16:10 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] staging: bcm2835-audio: fix coding style issues
Message-ID: <cover.1488829304.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset makes the following changes:
        - Replace kmalloc and memset with kzalloc
	- Replace null return value with PTR_ERR values
        - Propagate the PTR_ERR values forward instead of a hardcoded
	  value for easier debugging
	- Replace if (success) else { } after kmalloc with if (error) to
          fail fast.


Changes in v2:
	- Return error value -EBUSY instead of -1 when queue_work() fails

Aishwarya Pant (4):
  staging: bcm2835-audio: Replace kmalloc with kzalloc
  staging: bcm2835-audio: replace null with error pointer value
  staging: bcm2835-audio: propagate PTR_ERR value instead of -EPERM
  staging: bcm2835-audio: use conditional only for error case

 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 83 +++++++++++-----------
 1 file changed, 41 insertions(+), 42 deletions(-)

-- 
2.7.4


