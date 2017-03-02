X-GM-THRID: 6392947471116402688
X-Received: by 10.157.23.2 with SMTP id i2mr5044077ota.26.1488480277598;
        Thu, 02 Mar 2017 10:44:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.178.146 with SMTP id b140ls421807iof.30.gmail; Thu, 02 Mar
 2017 10:44:35 -0800 (PST)
X-Received: by 10.99.55.71 with SMTP id g7mr5689389pgn.157.1488480275724;
        Thu, 02 Mar 2017 10:44:35 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si1718873pfd.3.2017.03.02.10.44.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:44:35 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 16so1633903pga.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1VVnpw5kSsS2PRRqv8TMH6sJFzYTV55x+sEiuejBA3U=;
        b=PM6cd6hHyAGqnH6OB4BHAbi8+wVPmIYX/emwcttSxzs0O/OVA3x6waamRXs6JrFyNH
         JgxNK2XUNISqJOToAgIj52d4H1XegZhuwPxZj0mHLzVeiIbjfKO5n2EMyW4VeUoiDTju
         hUcITA4LkFMdY6w4GM983RM/dHXCpRq5Bb1q/jmUy30tp83Am2+DuetBdd5GTyP8NA/8
         SNqcuWEKOo93h/b0gFOy6nSl4I0ioJjBAQN+mBybPpEyNIW3qNzCA4MPjug6ypznmYBL
         ikBRG42m01P7WFJiHX9hHS/Y8APHIQacWyDubQirwujv9F7g/9pTPFlnWk7125i1/tcb
         le1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1VVnpw5kSsS2PRRqv8TMH6sJFzYTV55x+sEiuejBA3U=;
        b=rWcHhoCMH0jKW6K9czRSTdFjqrorweQ3q42TzEzkZGb6FkdheIF7o61MjT3GebH4jR
         tFRg9hiRpFCrlC+odV7ZRhGy2o/EJnmdqFMmcyMTY3JK/HV5V9YrszTUf3WdUlv/F+B/
         fIE/vfhhVYSkEZkx2gr7fEYCl/5jD9QouWcntOEM1HRKjHCHFYd5y8qlNCclONxUv5FV
         acVLndfKT5UxyRIltChGHnK5dWXvwr+q1ffs1cLfoNNp+fWNFoSs8lq6EPvp3BR5cu7D
         BuAeE8ETE0/kSgn5/6IAeQfrALeBoO89ruhOHvhapSfIjH2Zu2QKHGe00qEVwYppuQUr
         xtzA==
X-Gm-Message-State: AMke39ka+ZpecMG8sVhlDIFc1mXGMnV5gcmeLjZmbLfNwelEf6ZVPJAZTWpT3fvp8QrnNA==
X-Received: by 10.99.126.76 with SMTP id o12mr17072897pgn.84.1488480275038;
        Thu, 02 Mar 2017 10:44:35 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id e14sm18497708pfd.107.2017.03.02.10.44.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:44:34 -0800 (PST)
Date: Fri, 3 Mar 2017 00:14:29 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 0/5] staging: bcm2835-audio: fix multiple checkpatch
 warnings
Message-ID: <cover.1488479861.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix multiple code styling warnings issued by checkpatch on file 
bcm2835-ctl.c in bcm2835-audio driver 


Changes in v4:
	-Refactor commit messages
Changes in v3: 
	-Merge two if conditions 
	-Fix subject of patch replace printk(... by dev_err(... 
Changes in v2: 
	-Replace pr_err with dev_err

Aishwarya Pant (5):
*** HERE ***
  staging: bcm2835-audio: remove space after cast
  staging: bcm2835-audio: move logical continuation to the same line
  staging: bcm2835-audio: use kernel preferred block commenting style
  staging: bcm2835-audio: remove extra blank line
  staging: bcm2835-audio: replace printk(KERN_ERR...) with dev_err(...)

 .../vc04_services/bcm2835-audio/bcm2835-ctl.c      | 23 ++++++++++------------
 1 file changed, 10 insertions(+), 13 deletions(-)

-- 
2.7.4


