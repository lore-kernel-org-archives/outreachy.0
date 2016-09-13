X-GM-THRID: 6329769082515095552
X-Received: by 10.157.43.4 with SMTP id o4mr17520846otb.38.1473764209785;
        Tue, 13 Sep 2016 03:56:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.74 with SMTP id u10ls970044otd.30.gmail; Tue, 13 Sep
 2016 03:56:49 -0700 (PDT)
X-Received: by 10.129.5.216 with SMTP id 207mr163008ywf.6.1473764209427;
        Tue, 13 Sep 2016 03:56:49 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y124si3074170pfg.1.2016.09.13.03.56.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 03:56:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 128so9467070pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 03:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Ax4uCOpL9itLUY74BDCGtUrfV23BQoBYPD8wZ2fIxcU=;
        b=UEDUekZlxw1C+kIHYvWwMeObm0B/CL4WheGPFOwB6RmicO+SvEC9X68Qwcn6ZL5WkI
         iQT7AKIarl1k1WRVYIQMdfQ/KQiTK6T/7uqwyjbK+fahRGD/6H3B3LMNVrozCIUQQ+/r
         xpJn7pAsmrfobJ3Ie0KLkRE9letp+Qz2utmKdUa4KXJm4qIg1CCJBg2h4bGld/4vL6sF
         etnsh9uYwKksWHH43VCVJNvGq54SvECgiIeSuYQ1zEk7Ha/7cbG29Eph3HoTxnBq163P
         EG//1pLsgOZHOyhlYyjhXSolnIPxk4Fek3GnA1nWSi+fTivZioZQ5BbiqkY4MAi3BozD
         vE5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Ax4uCOpL9itLUY74BDCGtUrfV23BQoBYPD8wZ2fIxcU=;
        b=WfBo2eoTJ/qXfGAtVKhoAlh+xkNaaxwKYkh0IfL5dzCbXZ4jNb+5PF1cyo3uyBMSP+
         a5yI+H0xqFS83qsjEY9eN6BqSIOZBybQTrMmY6RkiIcL95OUuUogBQegEYDccXsdOqDC
         a5qDxxawE3Y7nQqw7ygwfDoaW0xor2ECNu5MErax4GLkMMhRjRrF35ZQPjpwEsUbOX3A
         zVNUTqwTAMUBF80+j79h8BMcYZOT7QXYH45Eu+WkPWeRbVDujwS2pqssaJm3QC6bhVnh
         vIigi/qiRXqypmUgA7gpE3vzgvXx5at7ujJPXdrRRfcd2a6cYa9QqDJ1RVpOld7mdOtR
         WASA==
X-Gm-Message-State: AE9vXwOsH++MkAoiRiMY7jBqe0+GLPKMzZtPLtou11p7cZcpJGGz7tJFmjrXRbfQBrE1RQ==
X-Received: by 10.98.56.207 with SMTP id f198mr105374pfa.83.1473764209201;
        Tue, 13 Sep 2016 03:56:49 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id f65sm10534238pfg.30.2016.09.13.03.56.44
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 03:56:45 -0700 (PDT)
Date: Tue, 13 Sep 2016 16:26:36 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Fix Checkpatch Check
Message-ID: <20160913105625.GA10324@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

/tmp/0001-staging-media-lirc-lirc_bt829-Remove-explicit-NULL-c.patch
/tmp/0002-staging-media-lirc-lirc_imon-Remove-multiple-blank-l.patch
/tmp/0003-staging-media-lirc-lirc_imon-Remove-unnecessary-blan.patch
/tmp/0004-staging-media-lirc-lirc_imon-Remove-a-blank-line-bef.patch
/tmp/0005-staging-media-lirc-lirc_imon-Add-space-around-the-op.patch
/tmp/0006-staging-media-lirc-lirc_imon-Fix-alignment-with-the-.patch


Anchal Jain (6):
  staging: media: lirc: lirc_bt829: Remove explicit NULL comparison
  staging: media: lirc: lirc_imon: Remove multiple blank lines
  staging: media: lirc: lirc_imon: Remove unnecessary blank line
  staging: media: lirc: lirc_imon: Remove a blank line before a close
    parenthesis     '}'
  staging: media: lirc: lirc_imon: Add space around the operators
  staging: media: lirc: lirc_imon: Fix alignment with the open
    parenthesis

 drivers/staging/media/lirc/lirc_bt829.c |  2 +-
 drivers/staging/media/lirc/lirc_imon.c  | 22 ++++++++++------------
 2 files changed, 11 insertions(+), 13 deletions(-)

-- 
1.9.1


