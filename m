X-GM-THRID: 6394528999032225792
X-Received: by 10.46.77.69 with SMTP id a66mr252095ljb.11.1488904647991;
        Tue, 07 Mar 2017 08:37:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.14.1 with SMTP id 1ls116648ljo.45.gmail; Tue, 07 Mar 2017
 08:37:27 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr242494ljb.2.1488904647250;
        Tue, 07 Mar 2017 08:37:27 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id n128si389068wmf.2.2017.03.07.08.37.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 08:37:27 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id z63so1891784wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 08:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WNZvdIAjZJAFqdiy7NRMW+fCWmFNrjegAp7sDCCKWbw=;
        b=iG7gor6/c5W6mLaG3PKDr5YUrwqYXdMkC5RYrRlQUgALD3luS5vxZibAgVr2PPvz1p
         lnEkaKMSzk7UyPqRNhjCaOtWQnA76KyNukGxZeil4x4xi38Jblaazn7EehG5FfIZy850
         0Dmlv10j2QG711KIe7GvoofjjnKMcj+gIHN4E6O+gqWejN0LooXPhMKMpolhDXBic9Xo
         G7fSIl6dPuuYuduhGQd8Z9XmiBgcQwPoIfL311+f/vBIeiLBFIHdLc4RLt8HnfUVQ2aw
         V4NH3FfN228Eu+EZBVdW/1PpbSsfgd1Kt+gGdRa2xX5G6uEJacWe3/73XisxU4Z3Kf5W
         u1YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WNZvdIAjZJAFqdiy7NRMW+fCWmFNrjegAp7sDCCKWbw=;
        b=B+8KYYhf9A4IrMwQ7Mz+pcLkpDnYedfjY49niK+qQ7tyIVGKRW5QjMqeDHS3FI9uF4
         WI/6/Nbm6U6qzl8jyFPRwIwC5k+QwHvP5T7F/B9ebsqaZdRTeBEUMkYjP5ZaCE+kiEN9
         kN9+VIJQ6F7cAO17TQc8Kt3ryRpD2o/1PdSFDfSA5uolFvMng65nhk0DtwlFoQNSg6gl
         co9tRjftAlgPSABOafnOCrKhpHTCV1nFv5FwAD8P73KyL/jGBjT6RoELfB6vss3unO1v
         +y2vk0UA9mICUEERzRpHEwtv9k87A5Wl+WVIFhqkYbGb9hdthPzyaEkYPnex4DQnlXO7
         BTeQ==
X-Gm-Message-State: AMke39m427vlNTrcIytnqMNIB+HiN1viE1N/h5o6ESiRNhSjne5b5oc/oXUpBlb5gFfctA==
X-Received: by 10.28.134.70 with SMTP id i67mr3880717wmd.124.1488904647071;
        Tue, 07 Mar 2017 08:37:27 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id p93sm609766wrc.67.2017.03.07.08.37.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 08:37:26 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 0/5] Improve code readability
Date: Tue,  7 Mar 2017 18:37:23 +0200
Message-Id: <20170307163723.8822-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix multiple checkpath.pl issues to improve code readability in speakup driver.

Tamara Diaconita (5):
  staging: speakup: kobjects: Delete space
  staging: speakup: kobjects: Delete blank line
  staging: speakup: kobjects: Align the code
  staging: speakup: kobjects: Rearrange headers
  staging: speakup: kobjects: Delete comparison

 drivers/staging/speakup/kobjects.c | 77 +++++++++++++++++++-------------------
 1 file changed, 39 insertions(+), 38 deletions(-)

-- 
2.9.3


