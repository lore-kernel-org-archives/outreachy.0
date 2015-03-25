X-GM-THRID: 9808836034560
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d635fb7ef78669be,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.15.167 with SMTP id f27mr10046053yhf.8.1427288873664;
        Wed, 25 Mar 2015 06:07:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.20.161 with SMTP id o1ls2045129ige.18.canary; Wed, 25 Mar
 2015 06:07:53 -0700 (PDT)
X-Received: by 10.69.13.226 with SMTP id fb2mr10366408pbd.0.1427288873424;
        Wed, 25 Mar 2015 06:07:53 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id oc12si304588pdb.1.2015.03.25.06.07.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 06:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x229.google.com with SMTP id cz9so27933880pdb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 06:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=7YSIt2Dn+SXYzMPYQLNyhk39OnBdbkEwKFtOBGtwc5E=;
        b=D6LY9s+AJjrOPBIJyflwfW5bfRkeTcXOPMzCQMzJajbSnkIDFHTr40q34o9eW2grKN
         MQ1wdhKwDaMJMycSt0OnUPfmmP9peAKRkdwNlp3KR4m4O1Qjk/fQcGjUuMQ1XUTSsIjB
         9GQpP9SNI4MDkTpfx2H0sO16GhY6QEm8GSupNfqkuUCZBSMDaG/aw+VCltNZhp8k76Z6
         4MdIFZzUALCuKf6R6NqjLvDpOj0ZpFbRybiOTZjuwER+PGgah/8DJTqrXaeEp/CoE3nI
         dv7KOK5bmLPKXWIqnHGGioXiPQzufiFmIgv0U3pW8xj17spWryVrxxw6tClsMksCzTix
         1VwQ==
X-Received: by 10.70.125.129 with SMTP id mq1mr17136836pdb.70.1427288873306;
        Wed, 25 Mar 2015 06:07:53 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id ot6sm2490803pdb.28.2015.03.25.06.07.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Mar 2015 06:07:52 -0700 (PDT)
Date: Wed, 25 Mar 2015 18:35:44 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: rtl8188eu: Code refactor and cleanup patches
Message-ID: <cover.1427288450.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Increase code compactness and reduce line size to
increase readability in Hal8188ERateAdaptive.c

Vatika Harlalka (2):
  Staging: rtl8188eu: Reduce line size to increase readability
  Staging: rtl8188eu: Refactor repititive code to loop to increase
    compactness

 .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   | 76 +++++++++++++---------
 1 file changed, 47 insertions(+), 29 deletions(-)

-- 
1.9.1


