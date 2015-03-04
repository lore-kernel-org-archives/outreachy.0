X-GM-THRID: 6467884154880
X-Received: by 10.112.126.194 with SMTP id na2mr375584lbb.18.1425449877549;
        Tue, 03 Mar 2015 22:17:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.18.225 with SMTP id z1ls128698lad.109.gmail; Tue, 03 Mar
 2015 22:17:57 -0800 (PST)
X-Received: by 10.112.35.135 with SMTP id h7mr346578lbj.23.1425449877002;
        Tue, 03 Mar 2015 22:17:57 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id o3si1021718wib.2.2015.03.03.22.17.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 22:17:56 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id k11so44163016wes.11
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 22:17:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=1smNQLriKWQzFFeRrWOJX2jsq6phsm7PZoTGo+0p3BA=;
        b=rT2JlQm2bz8qOykO0TLT3EIEgbdokKB4fZVtByCCx50E8+y2OkhCVt3PNJugpynu00
         qtm3n5OOQxam9eN7vzONXZzcjghkz2VudsrylRhqouJftkk1mCY4+xHsot10Z/282cHk
         y6W8wdhmd9+h5VqtW93Ru2Wc/BHaW1ZRwGWouVSNUCm4sii20o4DNgUX4McN0utcUDHE
         Cz/Tny8jSp+vYWmOjx2timJj9dgUccHmKck5bz2Po9PWEEHXEQME+VcU7l8CEZLz+uJy
         8u3hOPuXzooyKTxeWgCSK7aipQT1ZRiWhzj+TrNslxued3jtmghTZL6eL6Lbr2iwxiRG
         QD9w==
X-Received: by 10.194.122.232 with SMTP id lv8mr4330191wjb.146.1425449876909;
        Tue, 03 Mar 2015 22:17:56 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id dm6sm5510167wib.22.2015.03.03.22.17.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 22:17:56 -0800 (PST)
Date: Wed, 4 Mar 2015 08:17:50 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] remove extra parentheses around left bit shift operations
Message-ID: <cover.1425449681.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operations using
coccinelle. The cases handled here are when resultant values are
assigned to variables.

Aya Mahfouz (5):
  staging: lustre: remove extra parentheses around left bit shift
    operations
  staging: ozwpan: remove extra parentheses around left bit shift
    operations
  staging: rts5208: remove extra parentheses around left bit shift
    operation
  staging: slicoss: remove extra parentheses around left bit shift
    operations
  staging: unisys: virthba: remove extra parentheses around left bit
    shift operations

 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c | 6 +++---
 drivers/staging/ozwpan/ozproto.c                              | 2 +-
 drivers/staging/rts5208/rtsx_transport.c                      | 2 +-
 drivers/staging/slicoss/slicoss.c                             | 2 +-
 drivers/staging/unisys/virthba/virthba.c                      | 2 +-
 5 files changed, 7 insertions(+), 7 deletions(-)

-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

