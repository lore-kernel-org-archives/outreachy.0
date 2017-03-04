X-GM-THRID: 6393675902317756416
X-Received: by 10.129.109.81 with SMTP id i78mr3029296ywc.60.1488643675367;
        Sat, 04 Mar 2017 08:07:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.173 with SMTP id r42ls3700521otb.26.gmail; Sat, 04 Mar
 2017 08:07:55 -0800 (PST)
X-Received: by 10.13.200.3 with SMTP id k3mr3006762ywd.136.1488643675031;
        Sat, 04 Mar 2017 08:07:55 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si563842pfb.7.2017.03.04.08.07.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:07:54 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so15587319pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 08:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XsuSjhoMsdCmbxahHuFOtoJUnVytdAcFh1apI7t3lwQ=;
        b=bXicmugf9JPOfi4/FmmFpI4HMHJsMnKfCW1Br+qugnMdIgnNzFPrkxLAjO1/t4y1BE
         jY5VNFwf8uWYfymbQY1PLnwH6LPpCsM41BbnRqDWo8mrAirPWNHarlqaU32Smmj9Rt6d
         qFGk9iamJcD2BAh0nvAoy2fP3Z75D/tVGIkwzacS0LdUecZs8rJmVELlyQ0/2pEmARnB
         v1IucGGwbkF+YjW/OLMQ375xa5E8jJhEm3RQINq1EJgLNnZK27zI/hZY6W7TEgUKYRnM
         rfB8HRj7/I1atLj6k49pTFmfeLdfQVlkb6sHiobUjzrrc/PlWanRHKf+P9bvDmZgblZG
         qYnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XsuSjhoMsdCmbxahHuFOtoJUnVytdAcFh1apI7t3lwQ=;
        b=e4zOVOtoLi13Puo9c+QZFWd9YKXo2WXUssjnkbwh1CE2JVy1XXn1bH/GZtsEhq5+Cs
         afcHOSVL1IqgW8Zx2Qqs1Q8EFW18I/crAHo+DXcT+u+ZMWD0qtOXftFLcvGzTHk3o67Z
         ezoKyH7dTUN0jVAq7Mqr/EtWBWc22vLbX7FlZiUU9lK6UcGYIKCYZBIm1985iio7S38C
         3d0W2Q38UgfL8nOSHuoY222pNuQWIFZ8nJOaQcYwoIY4ZYmRMj1f8u14zKBKqi3WqmuS
         M2FHVpXjcC8ZWO1/qrI8ZPmomNmzSeCvWdxq7o3vcR7qdFDq6OyAOQmPNKi6QMS2qTRC
         4fQA==
X-Gm-Message-State: AMke39m/RLJI897QzAQSMNQHCAyvqIPLIpH1YO8KtSr6JakuNknKpYkKVAmrN6K6AhqMLA==
X-Received: by 10.84.216.17 with SMTP id m17mr12889826pli.158.1488643674799;
        Sat, 04 Mar 2017 08:07:54 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u75sm30081627pfk.3.2017.03.04.08.07.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 08:07:53 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: abbotti@mev.co.uk
Cc: hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	johan@kernel.org,
	dtwlin@gmail.com,
	outreachy-kernel@googlegroups.com,
	greybus-dev@lists.linaro.org
Subject: [PATCH 0/3] Replace "is is " with "is"
Date: Sat,  4 Mar 2017 21:37:48 +0530
Message-Id: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series replace "is is " with "is" in various drivers. 

simran singhal (3):
  staging: rtl8192u: Replace "is is" with "is"
  staging: greybus: Replace "is is" with "is"
  staging: comedi: Replace "is is" with "is"

 drivers/staging/comedi/drivers/ni_usb6501.c | 2 +-
 drivers/staging/greybus/uart.c              | 2 +-
 drivers/staging/rtl8192u/r819xU_cmdpkt.c    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.7.4


