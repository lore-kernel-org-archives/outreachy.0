X-GM-THRID: 6390690931050283008
X-Received: by 10.176.16.72 with SMTP id g8mr737815uab.38.1487948682794;
        Fri, 24 Feb 2017 07:04:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.218 with SMTP id v87ls1937613iov.10.gmail; Fri, 24 Feb
 2017 07:04:41 -0800 (PST)
X-Received: by 10.36.81.17 with SMTP id s17mr882411ita.33.1487948681917;
        Fri, 24 Feb 2017 07:04:41 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x22c.google.com (mail-it0-x22c.google.com. [2607:f8b0:4001:c0b::22c])
        by gmr-mx.google.com with ESMTPS id f73si285677ita.1.2017.02.24.07.04.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 07:04:41 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::22c as permitted sender) client-ip=2607:f8b0:4001:c0b::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::22c as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22c.google.com with SMTP id 203so23083011ith.0
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 07:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9wMbVpUApNJvoOCiKWOM0iQSQlrP7I8Zmsj0U7wWBd0=;
        b=AcsvjNdbYYgBOUX8eGxV+45EyHXxnp2g/OCmMBSfsVzqSX1+p8Pe0Xjvuy4T2s9A5U
         mmSFisaILICXNzOoyP1146ZEG6tluXnPWw1iU+JbVgJr8YnrmPPK8MJ2O3f9dC0pON/U
         +mWZBzZAlygqo8+QkuLfE7XASqQCbgaHkYbeGv+lnK+I1jaDiWfQYD1N71i8f13t4nla
         hg04pe2uugB3KwmhN5ofTZIOrIXWAFNp5VZTI1QbtmJc4BIaWfK6CdFJQ29SNrdl/Nsj
         tOaVqqwWpsI2oTJcm84HUFH2sYeDOKzZ3fYorB546Yulez5EYhkfZ2aEcgqKKxYGHBC8
         XngA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9wMbVpUApNJvoOCiKWOM0iQSQlrP7I8Zmsj0U7wWBd0=;
        b=tJU3b+Xvh25iJPsxYZdWqEI2J+L8di68/6sriNL/onx13i34VxXNHb/EfP9YLDvLjm
         F53mnhDe0mjpg/jHSaBeBXpEDIBdEcUAg3ufjviP5k9RvzTMHzf6muKFKEfP0aF6c2Ds
         qWM1Lq9lBTeLRSe0QD/9EWECUYuVPbddU9jlnMF3TMU3i+AHdVnwq6NxFwj1GTi9LVO2
         4W9AdVNcVAJVMSS39gGzFvUaeInto9L/RIT1y3Xr2VnWmQsNivAOVK/UAMUOXJ1cM7rw
         5DqOYUnVMpDWw0kSn9++k3x/kHlAb0hgFw1i6HGCXJdISi3ZgXHcbICOEJxgy00h4SW6
         jyGQ==
X-Gm-Message-State: AMke39n4PAAMq+IUzF+xdXyynolf8IpurfMk6bBaQDlPRxHT4El7tNEDPYkOHWWcuOebRw==
X-Received: by 10.107.137.213 with SMTP id t82mr2564477ioi.233.1487948681414;
        Fri, 24 Feb 2017 07:04:41 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id l79sm785101itb.24.2017.02.24.07.04.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 07:04:40 -0800 (PST)
Date: Fri, 24 Feb 2017 10:04:39 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Question about resending a patchset
Message-ID: <20170224150439.GA6189@coolbox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

I have a question about resending a patch within a patchset. The
Outreachyfirstpatch page says that if a patch within a patchset 
needs to be revised, the entire patchset should be versioned and 
resent. In my case I have a patchset which requires one patch to 
be revised, but the rest of the patches have already been ack'd. 
Should I still version and resend the entire patchset in this case? 
Would this mean that the ack'd patches need to be reacknowleged?

Thanks,
Tahia

