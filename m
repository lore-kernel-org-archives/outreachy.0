X-GM-THRID: 6394401254530875392
X-Received: by 10.176.90.203 with SMTP id x11mr4526461uae.31.1488812559452;
        Mon, 06 Mar 2017 07:02:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.176 with SMTP id 45ls6311450otd.49.gmail; Mon, 06 Mar
 2017 07:02:39 -0800 (PST)
X-Received: by 10.129.173.3 with SMTP id l3mr4419552ywh.26.1488812559033;
        Mon, 06 Mar 2017 07:02:39 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g82si63744pfb.5.2017.03.06.07.02.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:02:38 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so13459764pfg.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 07:02:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7W/lerLdEsDSawR6wVXX3LmOUf8uUz8ymRa7orDchSQ=;
        b=O8n+ueBcNElgs70Pf/eSxpsOyzesDTf8MNuEbicRG4IlkrZAmgzhEfU/7K6zaXxhAF
         3xO8foNo7wHsF3hTKuA6QunRnNP2Pn4qOd90IACpuaaQMUcwS8ahiOm/KWRnWDYM/t1S
         DeCUcEd4+UQ0pup0T4yGyA5lRfJLNQi4l12h6sVEawjW5sjZHMIhjPf1ajoV46ovMx0O
         IrcDMAiQ1C373frO9n4oaQiYQ1frpMNYg6aahZPTeydjBC6jvm+OXPpsru28aeNMee7v
         QXg6rdJJZInNnV5fI1TDDqCbC1oaPBzlggHIGyC6baX2kbE3f+G4iKBFXUAWz/K31jpU
         JCqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7W/lerLdEsDSawR6wVXX3LmOUf8uUz8ymRa7orDchSQ=;
        b=GhcTV+ieAa4y++KnQjK14I+DYRGG0iRdOhfUzTiJyF1Gy8fHmH224Jln6//MJZgJRn
         bi1o0qHggs3Q6nqgLG1UH0DWDYNri553dZT6LW1/e9whoz9dJmvxtyPGfwbpP17xga7r
         TN/YHNy4feI1QCzAfZjWkID8m0M1B5GSWtYNYbKsEVU1/XUCZWZF5VI59BG3iuR+wZTs
         MQ1pqswvlLQP/ztQr8lRtIbWo5xlz2t9q2V0qreTCutJpX+2XWj3AQJs3FvlSVGFknJ3
         0vxMawA9UHSrHZnFCq2UQqPaIhUJcNLbLUl87X7OiJNBi27rhdvP3sxoaTSPREeOv7Rf
         vSJQ==
X-Gm-Message-State: AMke39mkEXR87ZMxB0avnC4896ST1OX2qnXLv1ehGAJpRI9OGixzgSfTBfUj5eqYZHAnXg==
X-Received: by 10.84.233.206 with SMTP id m14mr27249648pln.153.1488812558706;
        Mon, 06 Mar 2017 07:02:38 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id 10sm40230679pfs.113.2017.03.06.07.02.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:02:38 -0800 (PST)
Date: Mon, 6 Mar 2017 20:32:29 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: bcm2835-audio: fix coding style issues
Message-ID: <cover.1488811728.git.aishpant@gmail.com>
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

Aishwarya Pant (4):
  staging: bcm2835-audio: Replace kmalloc with kzalloc
  staging: bcm2835-audio: replace null with error pointer value
  staging: bcm2835-audio: propagate PTR_ERR value instead of -EPERM
  staging: bcm2835-audio: use conditional only for error case

 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 59 +++++++++++-----------
 1 file changed, 29 insertions(+), 30 deletions(-)

-- 
2.7.4


