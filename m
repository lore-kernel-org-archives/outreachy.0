X-GM-THRID: 6394409513300000768
X-Received: by 10.157.7.193 with SMTP id 59mr6836327oto.148.1488814482781;
        Mon, 06 Mar 2017 07:34:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.24.130 with SMTP id 124ls4608763ioy.54.gmail; Mon, 06 Mar
 2017 07:34:41 -0800 (PST)
X-Received: by 10.36.23.145 with SMTP id 139mr3771116ith.31.1488814481778;
        Mon, 06 Mar 2017 07:34:41 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si89027pfb.2.2017.03.06.07.34.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:34:41 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so3236185pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 07:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fC4NEvyfUiIP6CBCAALstutMdZR3pj5RiNzmgW2yF+k=;
        b=qTlIo5wI0mmQ5urzRD69qBI+QYX4S6f33O89ovz1q+suuag+EFNe/ifu2L26VA0zqj
         LsHGx4PovdvmK1uyCIbHWiRLriLMCCWL5cpkndUBZODxQDtnuIR2GzSr0w1XUFEzvqFj
         eFJYmA6aCDnhNuSP1aa8ALj3spiwG8OvrmjEA/xUXjsQ2oOWPskf88EL/myqgjEa8QHl
         xZA6AUKtIKgHJtcFvtSWx08UL6yAFzQPG6hWjTLCn8xEUNG8bSDCqMn5dq03oFPVZeF9
         RrFGGZDZWo44Ay5gTTMVH4kcuk2AAMmhU7haGWMQIeMqVRkeaKWJeNI8F3No+bMtOeeT
         eoVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fC4NEvyfUiIP6CBCAALstutMdZR3pj5RiNzmgW2yF+k=;
        b=NnCyKY7G0UPkeK18gSIYc4oZ731WOOg6v8oqgZuM+CbPFPACGZkzf5+qE/LMBfl55C
         HErqBiVnIvRclL45wIAvx1Nw2dIHJdlR0V64sxZT3yfgITcLmBW4fPP/FNhM1p7ueF/a
         NsgBXyXI6qwvhibg/DplQ6SfrmTcp4WPX1OOr0dWSmeLtCGVwY7r7TdrX33L2gr/A9Iv
         9ZozZpJu8+GBfgBPhEtiy0fIPnXHjaIJ4NZ6tJKuaddaJDz5w99Q8Rxm2S/0urJGNm5t
         /EbEMbl4P7HDmaPcXnF/nGVVj030iT9GKVMrPuGpZdsLlPGEiWt8nCWPOcCdQjyFXVY7
         NwGw==
X-Gm-Message-State: AMke39mfN0xXTMYLsjXrOLr8C8yjk1MfNmqmKmb/F5GLem2stZTiFM9te101hXcI6Z1ujA==
X-Received: by 10.99.224.69 with SMTP id n5mr20975019pgj.113.1488814481533;
        Mon, 06 Mar 2017 07:34:41 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id g64sm40427776pfc.57.2017.03.06.07.34.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:34:40 -0800 (PST)
Date: Mon, 6 Mar 2017 21:04:20 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: bcm2835-audio: refactor code for compaction
Message-ID: <cover.1488814329.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes two code style issues:
	- Merge two if condiitonals doing the same work
	- Removes initialisation of unused semaphores ( should they be
	  removed all-together? )


Aishwarya Pant (2):
  staging: bcm2835-audio: merge two if conditions into one
  staging: bcm2835-audio: remove unused semaphores

 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

-- 
2.7.4


