X-GM-THRID: 6341882177714651136
X-Received: by 10.31.151.199 with SMTP id z190mr5004138vkd.14.1476584509367;
        Sat, 15 Oct 2016 19:21:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.69 with SMTP id d63ls843100otb.48.gmail; Sat, 15 Oct
 2016 19:21:49 -0700 (PDT)
X-Received: by 10.157.48.115 with SMTP id w48mr5028488otd.139.1476584509086;
        Sat, 15 Oct 2016 19:21:49 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id um12si4059485pab.2.2016.10.15.19.21.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 19:21:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id 128so65692267pfz.0
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 19:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HYZme/quuWtb+1LvNwTbY2RMLAyHlAstASQCjGaJIBE=;
        b=J2+kshi83aRtztZIF/dIM9znri/F0j16YSg6ZVHYtnBxcL2gR3vlJviDUkqdrHT4wI
         rNV/6RyABVGKIump+AN2vSF5dMr6oHJBMyZI5TX5pxGOvr5Iw8x0fYefcQRGcvRu+8Ly
         eKw/cxiU4kr/aCm2WqgdEHAsK3Rlqcxj+nH3FXcQ0gdlojNZknrtRMwiporRDiiaHm/+
         OCgmBNKoBUtG+1Ig7qEXQdGt7nWonaIycLNoU6wNvWgf6ih928TYxaMVjAkAERijxQvK
         DMWUxyrH51QF+ETdy8BlmXBRJoId5KCXkaMjzsYmiasd3tvFbCMTXxuhlBOEaVEQMGkv
         7/1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HYZme/quuWtb+1LvNwTbY2RMLAyHlAstASQCjGaJIBE=;
        b=LBy8vOFiPk6nhrradik0Xslh4R3ZmvL2LSGpIKZZpiEymmDpQTX3+J7F2u1m+ctuLB
         4NLh6xUXBlU6Av/hdwdbQQLR+8OP7qHh+wI6iFO0oPSUySrgWGXWz499F3zn8O7C/oqI
         Hu8rRt/xDhWiRHNRyxt56FiWqVQe6Cooh9+cNhYmcku6J0qS+iUG36apYxhJKMNNn48D
         VfifpKFvTAwyU6bnTUC3XH+PV/VMWClgHfL7U9iSENV/loXVHixfPm4XrucGxBxybp3T
         uTGJnTylnYHjH0dyCg139iiCfxKV/4tUN//JjlFGD6+HcoSZB4U/+JQ+7WjhznqIT0SB
         BTQA==
X-Gm-Message-State: AA6/9RlJhq4Y1P/e8kdPVp5IBAxy/gVuthBCAlL48o/a9q/c0byqGfRXlN/qCKPianef8A==
X-Received: by 10.98.158.91 with SMTP id s88mr28778151pfd.107.1476584508636;
        Sat, 15 Oct 2016 19:21:48 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id bh6sm2009022pab.14.2016.10.15.19.21.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 19:21:48 -0700 (PDT)
Date: Sat, 15 Oct 2016 19:21:46 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Coccinelle Constification
Message-ID: <20161016022145.GA2215@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

I'd like to try doing constification using Coccinelle but I'm having
trouble starting on this task. Bhumika Goyal has submitted lots of these
and I've looked at the scripts she uses but I'm very confused about the
process.

Do you identify the structs that
need to be const first, then write the cocci script? If not, then what
is a basic script to use to find structs that need to be const? I can't
find any specific documentation that pertains to constification and
coccinelle.

Thanks,
Liz

