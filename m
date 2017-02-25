X-GM-THRID: 6388168209387749376
X-Received: by 10.99.43.139 with SMTP id r133mr2250468pgr.136.1488016529139;
        Sat, 25 Feb 2017 01:55:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls8158099otd.46.gmail; Sat, 25 Feb
 2017 01:55:28 -0800 (PST)
X-Received: by 10.13.196.129 with SMTP id g123mr2568827ywd.140.1488016528754;
        Sat, 25 Feb 2017 01:55:28 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s64si2111415pfk.0.2017.02.25.01.55.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 01:55:28 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id z128so6253947pgb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 01:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=H/OxETIGxxuuZeR4G0dpWDFtdJExmH+Gd83tcZwcHDw=;
        b=KS/C5VklHdE7uzScbnEnEoQxo6jmdr90DG0g4hebMgm/uAffIfhUMH6nq0pHySWjxr
         vPwPdMyB/GI3FzfUj8Ma8QMHP6HirMFPxhPUpKygpmwK+eMioij+bpV9viMpL/wqSweL
         Ig/umIMcXKN8HJPI/PmgZ+pc7KQFrP7nDcOmGXTXIOEH8CidawMcRVuOO/Pu09YMMrD/
         SxPWkljV0RZugLl/jV4a+FWHLDstHaO4FFWaiLH4LuAQGIiviwpKr3nKQrYontUILakk
         07ACTe0lUoRbMbWQc5dyWvxIIfbgf1ZXf2edzSk97i4+vPo7NwOyAQJOjfy/qTjILKY1
         Zojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=H/OxETIGxxuuZeR4G0dpWDFtdJExmH+Gd83tcZwcHDw=;
        b=Qh9KpwzN+P/4rEOwQpaxGaMcRs9UaZ7PiGUBFPQG19eXfaBDcSWfSEgcXaE6s/20y0
         hqScb4fs/6CStzQLAppevPA4qJc+VjGjx3ZmZUD1492LzGb1LXhaXH4bhC14ZhBVpNFI
         qcS+KTGlKvouQvcszBHvbDg4A7roOV9D6jYeO5DLDN6oeBYHYP3W17WfdpiHhIjy5fOK
         He+6x8vSjDFZ6E+HlQ4Vx78R9bOWcBZA2kcyfMbLDl04jDKFOtUJKBaX1wg2Pb6Voj6h
         zVsAHsz0I3Hx3mPCgEAtx2o5Tf6MzoL7+RJDRsogz3lPH4w6vH4Lk0yuJam8QNB5+USY
         YLuA==
X-Gm-Message-State: AMke39nZP8DI5Re9TYHJZ9iuOPsPc4LIx/GNOXLdTsnwn7YPe6VujWJtU47qXjwJT63QjQ==
X-Received: by 10.84.229.151 with SMTP id c23mr10149118plk.27.1488016528568;
        Sat, 25 Feb 2017 01:55:28 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.154.88])
        by smtp.gmail.com with ESMTPSA id 73sm19575845pfh.56.2017.02.25.01.55.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 01:55:27 -0800 (PST)
Message-ID: <58b1548f.cc07620a.ce8e4.9a97@mx.google.com>
X-Google-Original-Message-ID: <20170225095521.GA4318@<rvarsha016@gmail.com>>
Date: Sat, 25 Feb 2017 15:25:21 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: rtl8712: Fix multiple checkpatch issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Fixes multiple checkpatch issues in rtl8712 driver. 

Varsha Rao (2):
  staging: rtl8712: Removes the FSF mailing address.
  staging: rtl8712: Remove space after a cast.

 drivers/staging/rtl8712/os_intfs.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

-- 
2.9.3


