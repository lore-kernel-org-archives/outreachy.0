X-GM-THRID: 6338591064541102080
X-Received: by 10.98.213.194 with SMTP id d185mr4432355pfg.8.1475818237949;
        Thu, 06 Oct 2016 22:30:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls4577159otw.27.gmail; Thu, 06 Oct
 2016 22:30:37 -0700 (PDT)
X-Received: by 10.237.59.166 with SMTP id r35mr2147039qte.5.1475818237496;
        Thu, 06 Oct 2016 22:30:37 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id c26si101596itd.0.2016.10.06.22.30.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 22:30:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id r9so2175610paz.1
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 22:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Xm0eUsQJNzNeO1F9vTt5Tm/w15olGdHMrcZ+Ew6zLww=;
        b=EFQ9PcWpavcuLbth2VpdmF3EwVbVpM+cYACYcA2V5ijDB9SBQ1JaaDNGnmDnuEqh4s
         B552mGj161kThxIZES21mlCHqZrrHFDpLvv4iYxPSYsvdogcZMIcHopn1St7DrhbotKH
         ayoEYqAMcKUIy54lSwJ1bzbe9Yth52GWGoTDIqA0rE1087iCccVEjYfhp/akVZNNSJ4B
         DBXLWFpeTWv6N+mYnDwH6rBW9F6ubEbREDnkvhVeg+8nzlgljhM/bd2Z5ZQOgF/Dz2de
         gQWn79NHlb8boy167Mn0gb/M/rUGjVH6oNbGHnzGv8vUhmmDtlwK4PZ1WkY7zfFjObHl
         iGyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Xm0eUsQJNzNeO1F9vTt5Tm/w15olGdHMrcZ+Ew6zLww=;
        b=kBA4AksXZKcgEtOuA9dRB5EmpK4JHe9zy3BgOk2OqwXmNUKlMusGGuWOujoB9osQax
         6tJlcahj0fsvLlPB2Ms4pTetKmmqnSaxOhbxI5a889vST44QRJJ97i/FM/hDgIpQ9Lp0
         RRkJ95IIEEL/3fE8zZH+KdU7Fgj//JZwybAbpHtK3JK7wfeR0Oxe1L9PkVx8t4/xRdX6
         VGtgzFBMAwl5NY+zeB8l0Gl2Y3GCyVRyS9Om3IfdHhWY4e74Hv4pAx4w0hpx8IvwUGVy
         GHEVnueA4QNWW7bR2T3aajxhVTacMpX91NtIiUJh/LoTKxhA5ns/6GLZKGYbVidwCTRU
         D34w==
X-Gm-Message-State: AA6/9Rmn6Zu8/v3lkwuokpsq+qa7WdfKXoazAxvLns/t7ju6lDT4nDohSFPKXVOJMFhXKg==
X-Received: by 10.66.222.169 with SMTP id qn9mr27316819pac.133.1475818236883;
        Thu, 06 Oct 2016 22:30:36 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id i13sm9994571pfi.47.2016.10.06.22.30.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 22:30:36 -0700 (PDT)
Date: Thu, 6 Oct 2016 22:30:34 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com
Subject: vc04_services driver question
Message-ID: <20161007053033.GA13812@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

I noticed a new driver vc04_services was just added and that the Kconfig
says it depends on BROKEN. The tutorial specifically says not to work on
drivers that have that in the depends on line. However, I also noticed
that patches were being accepted for rtl8712 and greybus and those
have BROKEN in the Kconfig as well... so is it ok to submit patches for
that one or even a patchset?

My other question is if we are doing simple cleanups and manage to run
make path/to/file.o and create a new .o file in the directory, is it ok not
to run $ make -j2 && sudo make modules_install, etc. ? Today I wasn't
able to run that successfully because of a bug that got through in the
latest update, something to do with x86 architecture, but I still wanted
to get some patches in...

Thanks,
Liz

