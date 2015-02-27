X-GM-THRID: 4672151617536
X-Received: by 10.42.24.72 with SMTP id v8mr7998666icb.14.1425069177487;
        Fri, 27 Feb 2015 12:32:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.36 with SMTP id c4ls337141igl.8.gmail; Fri, 27 Feb 2015
 12:32:57 -0800 (PST)
X-Received: by 10.66.147.132 with SMTP id tk4mr14639347pab.23.1425069177231;
        Fri, 27 Feb 2015 12:32:57 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ks4si619857pbc.1.2015.02.27.12.32.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:32:57 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id lf10so25332065pab.6
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:32:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ag2nRSgzMPrvkbEJPkIHonGwVsDIRwmaD+zW/CGPK/g=;
        b=x5fuAKDUhJtFil1Lmnv7xvXne9LE/I/9ty/RtQt/o4qm6XZabWYELVf3uc1SBc3H+w
         laC0RqDHPf6MOgk5izm8b3YQjqICBc9HrIunMsOwNTrYcqCUr5htW8BKO7pYbaswIRf8
         +1s9dsWMl+rmErVSOP8T6cBU09HGqzsN0imsyLkUpQnP35UqA+8ZmgJlbT5MtyLnDAuZ
         AREI8Apm6uinyNyORcGDZDWnYcxEgBLmcD7Mk+k4gr5diWti4/JlPfVcQ7Qd4+xpvH0d
         3uSqS86Xckh4Uz+o4266MioDk14VmCbLyvABVmzeFEurHL+fcMdo0PDFxwzYjuAqMEwc
         sm7Q==
X-Received: by 10.68.162.225 with SMTP id yd1mr26427385pbb.75.1425069177120;
        Fri, 27 Feb 2015 12:32:57 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id du13sm4764179pdb.65.2015.02.27.12.32.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 12:32:56 -0800 (PST)
Date: Sat, 28 Feb 2015 02:04:07 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] Improve code, codestyle in usb_ops_linux.c
Message-ID: <cover.1425069015.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

[Changes in v2]
Fix checkpatch.pl warning of line being over 80 characters
in the lines where changes are made.

[original cover letter]
This patchset improves the code in usb_ops_linux by removing
the use of a variable, adds a blank line after declarations
to improve code readability.

Navya Sri Nizamkari (2):
  staging: rtl8188eu: Compress two statements into one.
  staging: rtl8188eu: Add blank line after declarations

 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

-- 
1.9.1


