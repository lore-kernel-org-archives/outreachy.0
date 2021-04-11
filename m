X-GM-THRID: 6949988784020652032
X-Received: by 2002:ac8:65d3:: with SMTP id t19mr16264815qto.332.1618170361614;
        Sun, 11 Apr 2021 12:46:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4e82:: with SMTP id 2ls6152532qtp.2.gmail; Sun, 11 Apr
 2021 12:46:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxzXTVkHo6bn2wVSGpzbU9w3p8/0lOtpa0ZY7IcbCvapXlSNpdJ7pDU4ZOhRHjJvcA1qEwy
X-Received: by 2002:ac8:4718:: with SMTP id f24mr22669282qtp.270.1618170360540;
        Sun, 11 Apr 2021 12:46:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618170360; cv=none;
        d=google.com; s=arc-20160816;
        b=e7h7QJ4oceRYQ/bM+UB2w4awkED6rGi+MguLO9ozF5312gtzRTKBgFT/AP9IYPcPxq
         hAzkwSL3QOshUoH+bx/FPDqzRUPeewWmxje9hK7r96CJa9S0D6SR6YTgJLxf6Lb1W+mM
         8zxfGFKKltZWtyvvpkZ7NW94kwRuSnX3Dg0ja6WNirIjAPfA1WcX682zhUjL5WwUOvg3
         pxIjl3X2nGJKZcK82ZCi4/jvcMad7a/hor9Y2qTC6+m6HeXI0LvSet6XDALpVFnMsxRi
         aAdS0S9sUP6fTHIT/axnNAtQTxMGYOL/M8sWodBHB+A99whsijHrn1/13P6kYzOLzd14
         3xUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=jyH0A6ClPB0zsoVJunsM9FMNKSR906bep9nUXtpL+H0=;
        b=DE202Z326dGDdEJKMlEhwrhhaAi+WotfqoS6PtzwD+rLxqZ64NOV687gyxok9OubFN
         e/t02MrzQ1djjEme7F2Do39WLHI3ydftVtRa8qVDVfWrkvtNPMTdJlFjEc/im1fsOTzk
         xuDG/gNKP/if4oC9AcBwUM2tS1rAJvGiIt3mjOrBXUpG0JbKGCDSUZbnOA9/G7G5JuFW
         +Hz7YM2nx57DtDIylSTPVO8XpJ61daX4+UeVEYIIiF2+6FwPCxesCU8TZc72dPI99Wee
         rXPd7VlrCtrqp05RLcsYNcHhjE5sLQ5itOcHb/Fv9sm5KWUg150SKf3hK8uLPsfbO7mP
         Uujw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mMx3o2dr;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id k1si1171390qtg.2.2021.04.11.12.46.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 12:46:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mMx3o2dr;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52f.google.com with SMTP id h25so7712098pgm.3
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 12:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=jyH0A6ClPB0zsoVJunsM9FMNKSR906bep9nUXtpL+H0=;
        b=mMx3o2drvRIPugGDVwVww2EsbkyRserUm8cjFGBZmWUA9HIyBRymOz/5tRprlQ2yMx
         mDdA7cqDiXNDOpr/8t2X+f1X3gt8FOXLvFp5keHwPL34xYyFGiogtMWTS1CIBwqZp0EI
         ugVGZFCBGJZ4WUm1MffjpEFYCYMX+jTNoF6mTeP7iGL7XhFWyUSJMR90UJebZ7+jZJRz
         jFIrFTRU3+q/Ia7O8UqIPGEn+VcekC8rv2kDbwpYxF8MeHErJH8JH+9JEKu5PEIr6HAl
         kX8PhRhCkKJxtcrKwJZJ709ulDG1lcibHblZvx9YNmMVpchNXlLt5Do7x71up0JYhmeA
         dNXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=jyH0A6ClPB0zsoVJunsM9FMNKSR906bep9nUXtpL+H0=;
        b=Lz7tdr7RrwN7HTNKEic5yEO5kWQdPUo4um+iSMjdUac5xomMB0sLa6nuTzHY25VdBh
         qxv6JHRvhZ2qxZdIHS7I7CNCCBHvtZzpAUUPQ7ttEK+uFi34SNF80hVUWBgmCOv7cCel
         Ui42CIzV8V4VAy/p30up5Zp1c3YaZsQoH07ZcsfmYYhgjQz5vqfmD///pdXlgSGhs96N
         YLQR91bLITgScm/+O02GDKmzyfrZNc02czBYGQ4dmeKqcquypLTs04X67s3JmoP5Bqnu
         8gXFjDoUBaV8KvlJH0D81Ug5UIODYnW/fdJanoOnTseEnhki3A6GmRE5kJA/+N1u+qOF
         flUw==
X-Gm-Message-State: AOAM533YsMQx9bmlhz+focCaV6kUHxJcl6mfVlWuzxESfy0wNJkAZQmm
	kr0OtTmVkzDVSu3PfBxnuUk=
X-Received: by 2002:a63:175c:: with SMTP id 28mr22566637pgx.376.1618170359606;
        Sun, 11 Apr 2021 12:45:59 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id fs3sm8431374pjb.30.2021.04.11.12.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 12:45:59 -0700 (PDT)
Date: Mon, 12 Apr 2021 01:15:52 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 0/2] remove whitespace and rectify spelling error
Message-ID: <cover.1618169920.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch fixes whitespace and spelling mistake issue.

Mitali Borkar (2):
  staging: vc04_services: remove trailing whitespace
  staging: vc04_services: rectify spelling mistake

 drivers/staging/vc04_services/interface/TODO | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.30.2


