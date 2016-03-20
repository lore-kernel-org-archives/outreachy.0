X-GM-THRID: 6263088426063495168
X-Received: by 10.107.9.13 with SMTP id j13mr20166533ioi.1.1458502934055;
        Sun, 20 Mar 2016 12:42:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.206 with SMTP id h75ls1556951ioi.75.gmail; Sun, 20 Mar
 2016 12:42:13 -0700 (PDT)
X-Received: by 10.98.14.21 with SMTP id w21mr20396813pfi.7.1458502933561;
        Sun, 20 Mar 2016 12:42:13 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si3451656pfa.2.2016.03.20.12.42.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 12:42:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n5so26476398pfn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 12:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YvEdWbjHO/6C7T4fK3PQmxDXpfYp5730JMiRlIL39uw=;
        b=VHAgS35pxJAHpnpVOsKclD+fJ5Zxy7bOHjH31/gkVtaUqESIt1eC0h+S+I4/0YxmUI
         /lR+QCD0nN0rTKyz2r/ADGDGhwAzCxTyZzYB8snX/E61zycdoOqbBjl896YR/SNEsR3+
         j7geg30ekeJwnuAqWvfnP8VSSu8eu/yJq5G7fWjEudb3D/IaxZ/flOG85MA9DNRQ7x4y
         jdJxWqf8KYnAYxGmN3F/y6FmNl9Fc/qM4dBecGK3auQuz4ypq1zI7vxNc4nqarlEe8ri
         Q/rnAJtU/W35FNsaxrN099ow4xGQIBAJuc+GePHE1g7zh5VmfGRO4NG333kgaiK+UPyz
         CL4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YvEdWbjHO/6C7T4fK3PQmxDXpfYp5730JMiRlIL39uw=;
        b=PZe8cZiG9sd/0vfi6DN3C8g9jAYqn8Y6aw/k8p7KrffcfDy02VmVt8SgEmh0PuK80v
         Yond/BWGeedHXVbAypBkBtI0nG6IGVroSP2N82k/RixBub7dZMfo9E3uFte26vvCaHN1
         LW2BzZ/n+Dld6iD3d/720DFnR4WtW5jZX0BrDBqtzeW/MBir6LreRG2dy84CQU3fNpK5
         3ebhZWv8FcnzAyZjXcJ0xCcrI8SBU//rRy6Bi8mWkxol0BFjpqazawF7BdiNujFZFBw5
         F/E2KdBZtvA+ikfyXYkM3OGBEFS10yqu7J0xkpisCHNttNtqvSi8Ib+Jt6o9L1pAYlEK
         xTmg==
X-Gm-Message-State: AD7BkJLZLPl/vkIBnLaZAza/86vLhzmWlTnz/mpUNiqsHofDRj/c51aNQVuZzf7Un1UnFA==
X-Received: by 10.66.132.37 with SMTP id or5mr40074327pab.144.1458502933394;
        Sun, 20 Mar 2016 12:42:13 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id c18sm35133522pfj.41.2016.03.20.12.42.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 12:42:12 -0700 (PDT)
Date: Sun, 20 Mar 2016 18:13:20 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v2 0/4] Staging: i4l: Fix coding style issues.
Message-ID: <cover.1458477398.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Fix coding style issues.
Changes in v2:
* Correcting the heading.
* Resending v2 as previously it is not showing in mailing list.

Sandhya Bankar (4):
  Staging: i4l: pcbit: capi: Add parentheses to complex macro.
  Staging: i4l: pcbit: drv: Use !x instead of x == NULL.
  Staging: i4l: pcbit: edss1: Do not initialise statics to 0.
  Staging: i4l: pcbit: layer2: Add parentheses to complex macro.

 drivers/staging/i4l/pcbit/capi.h   | 2 +-
 drivers/staging/i4l/pcbit/drv.c    | 4 ++--
 drivers/staging/i4l/pcbit/edss1.c  | 2 +-
 drivers/staging/i4l/pcbit/layer2.h | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

-- 
1.8.3.4


