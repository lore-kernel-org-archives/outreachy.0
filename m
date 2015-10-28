X-GM-THRID: 6210537290712743936
X-Received: by 10.107.46.18 with SMTP id i18mr36146226ioo.14.1446003394734;
        Tue, 27 Oct 2015 20:36:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.3 with SMTP id d3ls2219769ioe.74.gmail; Tue, 27 Oct
 2015 20:36:34 -0700 (PDT)
X-Received: by 10.107.138.221 with SMTP id c90mr20280400ioj.9.1446003394324;
        Tue, 27 Oct 2015 20:36:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id sm2si3244998pab.0.2015.10.27.20.36.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 20:36:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id z6so242205301pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 20:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=RA/hzN7LZh8l6USge7kl0nayCauhRBAfZOVE5PTmJ1o=;
        b=OtG6/zP2IfQlPneK8PPJ+ztZg7woU7psc7pPzodoJuO0y9PznQ23dmEM1fzEwJnvJe
         8rJNgAFUNOJixBHqIv9SHXf6zhaZHQPdAAOuI7LF8wJmdTzkDbeokPveRX4jGJOCACqb
         cePyWPWIm4ugtJSkhpgdGyr88Vy3XhakTDj64/AXuGe0/CWWjWHOlFVoQdsYo+TGziln
         zeqS1zqmyiw8TWPkh2oUeDyvrbLhBFtgo8U1pBRoap5TCsf5YgbxMOw9FXRMdpw4THa3
         XYy8m0cnsOF7XQ0Pr+N2vZXkRaNj09QobNwby5169wr6Q5uhfH9bCF4mrOK2OHsZ6PXL
         F0og==
X-Received: by 10.68.103.161 with SMTP id fx1mr31967781pbb.42.1446003394139;
        Tue, 27 Oct 2015 20:36:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.204.253])
        by smtp.gmail.com with ESMTPSA id ss6sm42244596pbc.74.2015.10.27.20.36.33
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 20:36:33 -0700 (PDT)
Date: Wed, 28 Oct 2015 09:06:29 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH 0/2] scsi: Remove 'struct timeval'
Message-ID: <cover.1446003130.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes 'struct timeval' as 32 bit systems using timeval
will break in the year 2038 so the code has been replaced
appropriately.

Amitoj Kaur Chawla (2):
  scsi: 3w-9xxx: Remove use of struct timeval
  scsi: bfa: Replace struct timeval with ktime_t

 drivers/scsi/3w-9xxx.c          | 16 ++++++----------
 drivers/scsi/bfa/bfa_defs_svc.h |  2 +-
 drivers/scsi/bfa/bfad_im.h      |  2 +-
 3 files changed, 8 insertions(+), 12 deletions(-)

-- 
1.9.1


