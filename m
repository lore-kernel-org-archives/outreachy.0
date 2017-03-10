X-GM-THRID: 6394528999032225792
X-Received: by 10.157.7.193 with SMTP id 59mr8467333oto.148.1489178522299;
        Fri, 10 Mar 2017 12:42:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.119 with SMTP id a110ls10380968otc.29.gmail; Fri, 10
 Mar 2017 12:42:01 -0800 (PST)
X-Received: by 10.157.48.57 with SMTP id d54mr8957462otc.8.1489178521901;
        Fri, 10 Mar 2017 12:42:01 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y90si1940389pfa.6.2017.03.10.12.42.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 12:42:01 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so11401350pgy.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 12:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pq4LH3Br3L2L7taPWOy0/8VcLg9Yrus0BqEpdkYuGJw=;
        b=hKn6517w69OQY7TRSRNyCXYRewa1wLdvwnnV8fa/uTpiCUdw+GWTfGHx23etDx2sjl
         o9GPdsLTnMKrh0lYscGzOIgW6au8xX4LX6MYAKiJugxZbfN4wyJbExNcl8IOT8ylQg2b
         S9sFN73KUjLJCO3jgt9XQG3LdNELHw9OIU+698FPx7G3v/1yI4hfgP50JWsDBcSU+e1Q
         dPHWugGePVqytrTrW+F1gnAMHaGzswzuvI34tCXgPtLBgJ0g3x0UzsM6T+PJHde72TqO
         nIOc59AJLgTwVJrp4Cqp9chqmDnPLyvyi1T2jVwbP7wHwkIAt0jpzZ3cJzFHTE7ymFpm
         rHLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pq4LH3Br3L2L7taPWOy0/8VcLg9Yrus0BqEpdkYuGJw=;
        b=GzgWAyUGyozFwrosO2FMDhnkQ+GvyHz3ws8PQA1ouEWGXM3WMk960UrtudApksX+Xb
         6PF7bzN1+yO0SIlw/XrK7Ae/034TULzWr/p5d6c7jydy3nP0/6T2aFi/scfVVzLYwscj
         sNX1JYcRcNuP4q3nzE+5BSI24nDpfC7wW8d7S+5wYomsPpsl5Spgx/xSYG3oJ6lg2Shr
         hjk9lmChTg2eIO9RRO+mefp58e5UdNCgsM+UaoBvRdv4itR5Gs/xSNt8tKJCB8Fnz7O8
         4V6bG6qXuvnD6uqd9jDeyFYRii1/rO8eWAAfJj61cghdVpO3MBpEYmaWC6ifa0CqrF6u
         +bMw==
X-Gm-Message-State: AMke39kQ0X8HiRLt9T7DHrlFHjZ+GQ6WMWVKMET0UMi0yVVi8t1B4Yu+1+1RZLm6tbEd2g==
X-Received: by 10.99.157.2 with SMTP id i2mr22434924pgd.139.1489178521702;
        Fri, 10 Mar 2017 12:42:01 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w29sm20192980pfi.131.2017.03.10.12.41.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 12:42:00 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/2] Improve code readability 
Date: Sat, 11 Mar 2017 02:11:53 +0530
Message-Id: <20170310204155.6367-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues.

Arushi Singhal (2):
  staging: speakup: Avoid multiple assignments on same line
  staging: speakup: fixes braces {} should be used on all arms of this
    statement

 drivers/staging/speakup/main.c           |  6 ++++--
 drivers/staging/speakup/speakup_decext.c |  6 +++---
 drivers/staging/speakup/speakup_decpc.c  |  6 +++---
 drivers/staging/speakup/speakup_dectlk.c |  6 +++---
 drivers/staging/speakup/varhandlers.c    | 12 +++++++-----
 5 files changed, 20 insertions(+), 16 deletions(-)

-- 
2.11.0


