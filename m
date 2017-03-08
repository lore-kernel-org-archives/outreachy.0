X-GM-THRID: 6394528999032225792
X-Received: by 10.46.22.68 with SMTP id 4mr1368900ljw.14.1488992761003;
        Wed, 08 Mar 2017 09:06:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.87 with SMTP id t23ls446398ljd.19.gmail; Wed, 08 Mar
 2017 09:06:00 -0800 (PST)
X-Received: by 10.25.234.202 with SMTP id y71mr1080025lfi.2.1488992759977;
        Wed, 08 Mar 2017 09:05:59 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id p144si425022wme.2.2017.03.08.09.05.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 09:05:59 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id g10so4925063wrg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 09:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+3Q4SRLbRSphltxYcYIzsvzWU0f/v/9Nu1SMgNtoAxc=;
        b=SEsPAq7WJmoq1YQ0RwUmJ5bmsbEr+7xI9vQ3XMLzIr7KLGWbBOGYQbe1UCaSjLUJ4D
         YC0VES6VgOGWycKyORrI5/JcUgVw98pU07SKPex5ahQRZp4pSbmy9oLzw6SaaMIwLIrS
         b2hdd+1jFu5Sn8XY3QhAsY4BAT+dBSCv4ajKRn/lK9YoLE2rcyQSZXxYHQfyZ+rsC0KD
         /vABW7qFuxqFGLv1kOG+vsSRuwvCgaUYdUSEG4bD0Gh/kTRHqVsk52QlImU1PssP+DQy
         vu5KRWjlv1orauJyPKW9wgZl8hv8SQA5gFgBdymoJKO9BVyTWGpqz+F1EEpl1kjzfR37
         aJzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+3Q4SRLbRSphltxYcYIzsvzWU0f/v/9Nu1SMgNtoAxc=;
        b=JzTj+mi1AIqWUqAyRdCZ/2TwJxq8Xdmj5FXUamkvrWVPhB0BXlUVLVeTAz5A+/w81G
         kVCe8vaNMscmldivFwc49XNjIWLOdjtgNvX9IBaH4HjPFViX3MqeP4ebIIdV9MrLdzgO
         GsU8w5cGJ7QYJvkmLNAg/U5QH6niaIZJGEXgt5eDYUe1ncIUPWQb2XV4W3Dnia0GF/eb
         iPpoM3+KxhVi4M8WmWqxJ0+jjYEqtMQ0THTo1xAd+oIiBDRa1aBAbYVOdwdNydz4T1uX
         uZTMM2+qACvHH5q1O+vbpeC9T+dtYDiq7a3WmCXibqBo1gvOtomOrQ8CAgqSSXBBUZ/i
         KbOQ==
X-Gm-Message-State: AMke39nD9BrTVUN5o1dOp/Nc8JhvQZedjfIzeyYGNGoAbB9wRw5JdIbkZ3W5SRAi2b8m0A==
X-Received: by 10.223.136.213 with SMTP id g21mr6354776wrg.189.1488992759749;
        Wed, 08 Mar 2017 09:05:59 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id d6sm23949899wmd.6.2017.03.08.09.05.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 09:05:58 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 0/3] Improve code readability
Date: Wed,  8 Mar 2017 19:05:54 +0200
Message-Id: <20170308170554.3848-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix multiple checkpath.pl issues to improve code readability in wilc1000 driver.

Tamara Diaconita (3):
  staging: wilc1000: wilc_spi: Rearrange the code
  staging: wilc1000: wilc_spi: Correct variable name
  staging: wilc1000: wilc_spi: Add blank line

 drivers/staging/wilc1000/wilc_spi.c | 71 +++++++++++++++++++++++--------------
 1 file changed, 44 insertions(+), 27 deletions(-)

-- 
2.9.3


