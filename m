X-GM-THRID: 6391110237247504384
X-Received: by 10.99.38.199 with SMTP id m190mr3348316pgm.42.1488046310151;
        Sat, 25 Feb 2017 10:11:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.43.135 with SMTP id h129ls1293777ita.4.canary-gmail; Sat,
 25 Feb 2017 10:11:49 -0800 (PST)
X-Received: by 10.107.12.220 with SMTP id 89mr3351593iom.13.1488046309454;
        Sat, 25 Feb 2017 10:11:49 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s64si2283920pfk.0.2017.02.25.10.11.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 10:11:49 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id m88so743730pfi.3
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 10:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=P8eXr+2HBTpomvuyuKCS96XpjdrrEd7au+x/9k261WM=;
        b=tV1OId+8+t0MQpOAhVEJoU5W2kXIXb+2+dUTdxhHEZ/u9EKhZ+wZB3/HKc3kf8c0Vj
         LT1qQ3b+fwBATGrTozhwC4JtZmkSe3vgCTazLqMZ92ra15vefEk8TlV5SsuYym4mXM61
         GFz2CdbIl0aJPs6nsq8GQxSvdHoOKL7Gj6308N6O/UtVd6whNImjUmluSDPSmSTsDuh2
         O0bivFkFaVFH08Yt98UzrE4IRWEjao/M+2/crKmsRw7tK6MGUqNaEF8bpNCd/9lWzR9B
         AVgxG1ZlnZQ0iqRkDOh84HnvJy9mbPRppdSMfhf7Mfe+0OVfjzLin22x+XLci53tpCEu
         DSmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=P8eXr+2HBTpomvuyuKCS96XpjdrrEd7au+x/9k261WM=;
        b=lk9i3MQtdr2Qlmpo+qtsTq44vMRQA4puCAaKwWx0U5qrqvbuqQm04MzA9peCUw778n
         ErxNdxy9JyJoXsu+aZd5zKb+4tkLMguvDLvzbP9/Ni98I9K8FfSXx3C3s1+W/AmaGyZ1
         030n/GW076cVfbZBt3Iklu9+hdW6+XWnYmIJZes715i8NcK0p+8fAhWyOZK+MAWO6U21
         n6ir+v+KxtR5hEVPbvgJxrICdmA98mTzxXGGsdLLzHYu3r3nxgcKzf4rS6MJy3x+B0ha
         lx7/nQHvzH3Um1RcwQCBrdtZ+nkZbdopmTaQh/SObH1yhq+r7+Z7lpeHNsMUiIOkGlIy
         zJgg==
X-Gm-Message-State: AMke39mB/xk84DGoB4niVaBSI3p6OHUAmRjAYyfyWVNKW1KPlQBHBnrTbPf1OJpB9HfdCg==
X-Received: by 10.99.113.92 with SMTP id b28mr11206408pgn.180.1488046309242;
        Sat, 25 Feb 2017 10:11:49 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.154.88])
        by smtp.gmail.com with ESMTPSA id b83sm21745917pfe.12.2017.02.25.10.11.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 10:11:48 -0800 (PST)
Message-ID: <58b1c8e4.5693620a.9138.cc5e@mx.google.com>
X-Google-Original-Message-ID: <20170225181140.GA6897@<rvarsha016@gmail.com>>
Date: Sat, 25 Feb 2017 23:41:40 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/7] staging: sm750fb: Fix multiple checkpatch issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Fixes multiple checkpatch issues in sm750fb driver.

Varsha Rao (7):
  staging: sm750fb: Add braces around if statement.
  staging: sm750fb: Fix line over 80 characters
  staging: sm750fb: Add identifier to function definition argument.
  staging: sm750fb: Remove unnecessary blank lines.
  staging: sm750fb: Added spaces around arithmetic operators.
  staging: sm750fb: Replace NULL comparison.
  staging: sm750fb: Remove blank lines after { and before } braces.

 drivers/staging/sm750fb/ddk750_chip.c    | 14 +++++++-------
 drivers/staging/sm750fb/ddk750_chip.h    |  2 +-
 drivers/staging/sm750fb/ddk750_display.h |  5 -----
 drivers/staging/sm750fb/ddk750_dvi.c     |  6 +-----
 drivers/staging/sm750fb/ddk750_mode.c    |  5 -----
 drivers/staging/sm750fb/ddk750_mode.h    |  2 --
 drivers/staging/sm750fb/ddk750_power.c   |  5 -----
 drivers/staging/sm750fb/ddk750_power.h   |  1 -
 drivers/staging/sm750fb/ddk750_reg.h     |  4 ----
 drivers/staging/sm750fb/sm750.c          |  1 -
 drivers/staging/sm750fb/sm750.h          |  2 +-
 drivers/staging/sm750fb/sm750_accel.c    |  4 +---
 drivers/staging/sm750fb/sm750_cursor.c   |  4 ----
 13 files changed, 11 insertions(+), 44 deletions(-)

-- 
2.9.3


