X-GM-THRID: 6261499450444742656
X-Received: by 10.140.40.239 with SMTP id x102mr14190449qgx.23.1457868947733;
        Sun, 13 Mar 2016 04:35:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.78.33 with SMTP id y1ls1355637obw.27.gmail; Sun, 13 Mar
 2016 04:35:47 -0700 (PDT)
X-Received: by 10.182.247.68 with SMTP id yc4mr14394799obc.34.1457868947267;
        Sun, 13 Mar 2016 04:35:47 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id tu5si1977212pab.2.2016.03.13.04.35.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 04:35:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id x3so21845661pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 04:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=u0hT69dBjCYoyaO5W7k2/WQpBlEcUQp1zTpkOtIkeUU=;
        b=UoxesIHSqjO9PS0DSqZ1REx+pYq3KPiscxA9yuP5GGLy25LfUDzV3gRC/4uG8MfbIB
         J1Zzku5sCRdp5OtNwYakXm/eMghsqDUayKJeE6v5ManXGCj3sFU602lbOmRuJX9HswPV
         leujQySRjYG2Fx5QGkHr+z3/dHzlK1oBrhpEgvNTc7jOnKKd84oYCsgBFmgp6a6W0CeR
         VsvaCekh2IcJuJ2Lj7vKIFZSThQIEFLwYs92jNmYweW0va6lfE1sb4s0Tj4mp2ij69ZU
         z4Sb4koeDpy9HqEqGi5aRnW3VE1WyyLRtIz3Ji9iIr1MPogRpU3gt6f7e5ngTjG5eE3r
         edMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=u0hT69dBjCYoyaO5W7k2/WQpBlEcUQp1zTpkOtIkeUU=;
        b=ZHf/8hNwqarpnNHswml6k/LsyU9g4spz+w2lhM486enr+RRzjAl568H4UcuQFW8CcA
         Enptxg4aj5srJV4Fp9hb42iPmGIwJ6sxk9fjBTT9K+etkIJvUIu1MZ5u/uvoXCBRtrmy
         gabZCExIP9fPJ9z/paiU6dFB1OPS2emJtQGJJNubu2qQG/A4gpwz+RlIuFKUfouQgVYu
         T8Kd9LMGxp1heu9YJs0wToJS40w1q7H+8zZIqP0HAv59WG6ygkLeSvP8+YdAuQ35g2sF
         gVjY4NzX6MTSxHcelMy33qfIdRrTOthUwTl+Av+ss4yQeJ0qCvjuk9kF3lVauJTSFZzL
         OYmA==
X-Gm-Message-State: AD7BkJKdhVFDmrMDGxSE1HZmZk5r4kr+i+tqXGiVdU6TFHuz/yzqcF/h1/knx0vfM7MOWg==
X-Received: by 10.98.68.91 with SMTP id r88mr21827044pfa.12.1457868947106;
        Sun, 13 Mar 2016 04:35:47 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id o69sm21457055pfi.14.2016.03.13.04.35.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 04:35:46 -0700 (PDT)
Date: Sun, 13 Mar 2016 17:04:28 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Fix multiple warnings
Message-ID: <cover.1457868804.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset updates the wilc1000 driver in order to fix several checkpatch issues detected in the source code.

Anchal Jain (2):
  staging: wilc1000: Remove camel case in variable names.
  staging: drivers: Fix lines over 80 characters

 drivers/staging/wilc1000/linux_mon.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

-- 
1.9.1


