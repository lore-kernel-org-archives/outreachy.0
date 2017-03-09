X-GM-THRID: 6395538220161957888
X-Received: by 10.129.80.11 with SMTP id e11mr5444159ywb.133.1489077280065;
        Thu, 09 Mar 2017 08:34:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.89.216 with SMTP id u24ls441660otg.40.gmail; Thu, 09 Mar
 2017 08:34:39 -0800 (PST)
X-Received: by 10.13.197.65 with SMTP id h62mr5358152ywd.159.1489077279663;
        Thu, 09 Mar 2017 08:34:39 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si1274001pfb.7.2017.03.09.08.34.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 08:34:39 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so7341011pgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 08:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=qcIWWJGh8Qgsp+130Vp3WlvXnWhx9KIlUtFQCV3H0/Q=;
        b=r3iX6zoN8j5VpANoTIYZvWb3THvI2gXyfntEyL2PIqHHMdTh4S+02NhlNZf91l4fq/
         x/yuDdxvKVwybqiCxpoDqPdDPbsyqX2SWmUhiBg48QrRuKYvQU3TdT65go7B+O3i1yNv
         BQ1oJ1eFG7QgptW9BzLr2nUDuUGb/ulcL2Yt1DMgyNg7wBaAvCPdhobsiHslMP1DhFME
         6GRFAmdhFsmisVdlimOKdHTYpm2mKkYRPN/WxNRzmkVxsNDRAyqrmZAv9aZb+1deZDZ0
         AZPvzzMQ7D7PAYvkCnFo7IIKHO/mHx7+uTQ20W2D4x/HgiWEmIYEuL827oN6X+G0tkHb
         HJEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qcIWWJGh8Qgsp+130Vp3WlvXnWhx9KIlUtFQCV3H0/Q=;
        b=dq8H58ayY8sw9hocaKgRCkNnHcQJT3qs4nMUsUboM6tKw9CXt5GnH4U5SVEopAEYu3
         X6ypd38+qFPucAJQXNV+OvX7CgyEvd07FrZADGDniyC7FQShIbtUGQjuxbUrgUWdSQb6
         GPku6IHmwNBA7x56mVU+eGnwMlb7DjwLJnpo1ZU04jYv/UJCXTGlw3sKb5X5inJABNGc
         wJmqSNez9EUkoGMYUqDhRbPlxsdpMSA1d968HOsH34j7tkGm6SOV4/PSIfqjq8PEH7xV
         wLewbxvGt1stsoKNSHYgFELkWXpaFvhxZAlLyM+MjkxpVuUAV3MlUhzEZlPeerRxeYYj
         WE7Q==
X-Gm-Message-State: AMke39leRP7G984j181yO6Ls4NsBVYIuTzokR7tqsnWXjL3Ly5KEzvHJelweQ4vWY2fUHQ==
X-Received: by 10.99.43.216 with SMTP id r207mr14692101pgr.214.1489077279416;
        Thu, 09 Mar 2017 08:34:39 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x63sm13576186pgb.30.2017.03.09.08.34.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 08:34:37 -0800 (PST)
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
Subject: [PATCH 0/4] staging: speakup: checkpatch guided cleanups
Date: Thu,  9 Mar 2017 22:04:29 +0530
Message-Id: <20170309163433.19462-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver. 

Arushi Singhal (4):
  staging: speakup: Comparison to NULL could be written
  staging: speakup:indentation should use tabs
  staging: speakup: Alignment match open parenthesis
  staging: speakup: Placed Logical on the previous line

 drivers/staging/speakup/fakekey.c  |  2 +-
 drivers/staging/speakup/i18n.c     |  4 ++--
 drivers/staging/speakup/kobjects.c | 42 +++++++++++++++++-----------------
 drivers/staging/speakup/main.c     | 46 +++++++++++++++++++-------------------
 4 files changed, 47 insertions(+), 47 deletions(-)

-- 
2.11.0


