X-GM-THRID: 6205609650776178688
X-Received: by 10.50.61.234 with SMTP id t10mr4948021igr.4.1444856089704;
        Wed, 14 Oct 2015 13:54:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.110.200 with SMTP id ic8ls178040obb.88.gmail; Wed, 14 Oct
 2015 13:54:49 -0700 (PDT)
X-Received: by 10.182.252.200 with SMTP id zu8mr4402900obc.30.1444856089269;
        Wed, 14 Oct 2015 13:54:49 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id vy6si1045924pbc.1.2015.10.14.13.54.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 13:54:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id p3so16386471pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 13:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/svptbzPoryW5Xg7Qhfhbv5IcOAt8YeOSMYjxX5wTqg=;
        b=vErgnP6veR72H2BvlUC/UaWxseD+Dhksok/aaL1V5Y6uIb8CzZEoOIPgH5EfMiqaLt
         7bGOGc6s6EksanrkO+Gc5H4fqaF1Ka4GZNczYxIOtMPaDOKL3YX61n9AiWI27TTJ9vg6
         Zdyw52bJvoLdsQkAEk98+hmKoS0mMNospTyVTCnfZt9mabd2IvQUQl6+SruJxlnNstLx
         5hh+kb98A13nDxw66JeMy4AG4ab+0lS3dR0gxf+a+8mOG8YqHmOkxF0bd8NWxmlRMe4e
         vH+kpo9liPIcu/PJqwr5Z7ndHanzcypKCDOmNkjlngOt887L5dGweNig10tSeq8abZ0C
         BtbA==
X-Received: by 10.66.119.135 with SMTP id ku7mr5655115pab.21.1444856088990;
        Wed, 14 Oct 2015 13:54:48 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id gj10sm11284928pbc.68.2015.10.14.13.54.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 13:54:48 -0700 (PDT)
Date: Thu, 15 Oct 2015 02:24:44 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] staging: Remove useless intialisation
Message-ID: <cover.1444855933.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes multiple useless intialisations of variables
which are immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Amitoj Kaur Chawla (5):
  staging: unisys: Remove useless intialisation
  staging: speakup: speakup_audptr: Remove useless intialisation
  staging: speakup: varhandlers: Remove useless intialisation
  staging: rtl8712: rtl8712_recv: Remove useless intialisation
  staging: rtl8712: rtl871x_mp: Remove useless initialisation

 drivers/staging/rtl8712/rtl8712_recv.c         | 2 +-
 drivers/staging/rtl8712/rtl871x_mp.c           | 6 +++---
 drivers/staging/speakup/speakup_audptr.c       | 2 +-
 drivers/staging/speakup/varhandlers.c          | 2 +-
 drivers/staging/unisys/visorinput/visorinput.c | 2 +-
 5 files changed, 7 insertions(+), 7 deletions(-)

-- 
1.9.1


