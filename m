X-GM-THRID: 6396883163908407296
X-Received: by 10.157.25.14 with SMTP id j14mr4862599ota.99.1489427483774;
        Mon, 13 Mar 2017 10:51:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.191.134 with SMTP id p128ls4298210iof.31.gmail; Mon, 13
 Mar 2017 10:51:22 -0700 (PDT)
X-Received: by 10.107.147.11 with SMTP id v11mr9623563iod.71.1489427482794;
        Mon, 13 Mar 2017 10:51:22 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id r66si3202581pfb.7.2017.03.13.10.51.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 10:51:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id b5so18805241pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 10:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PQIF9EP19lM+qnnCh+aPNGlvzUHtQ91hXwCR9dv5c+c=;
        b=defSqGbJ+K67IvYW7btT2yUlJdgJ9cZ7Rdpdxa/TXC+HBHk149m960GNIe/NLupeiI
         HN2ps8c0dWbW1eyfczudRDStyuQTS0Qt40VOVenaukqAMFUWphzEW33fMN3o7Kfj/WfE
         rMId7T/jcjhG0Fhr9z6IhCw6cZDYyAPsONX9I4bP6u0rgc3re+COwN3Pxu8OjsYNYv3x
         bRWASKAHz0xzxB3LxABHozaJnQPM5xIh9HFeh2wQm4TvQUACtJ/7vdCizZXiqWt4sRwI
         LqrKy94VDUusuQZowFOPDjRZ0uVSMrgRQt32a4LLGgREsAK39hdvC4/RR+6MHGPItUAz
         PdOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PQIF9EP19lM+qnnCh+aPNGlvzUHtQ91hXwCR9dv5c+c=;
        b=cySqGbMMEiq9tzwTK+J+fevIfSqkMb5JO2RPZhqyjTvr05pea37xtQAT9k0YIrHoWk
         e54FlqrG9oMRYN2lSBHwx2DhsaDUGeHtFjMAprLIaqbLwsc0bL4wMth2emeXOjGV4gWL
         7kOzNvgIQptr87afbExyik/ZFKdNdQtzkZgoVw7qGuxIPvh9OFL5nbZfaQu76YVq8qrz
         mpNNCq62ViI6tQv7Pr5d2Z4+J4aomGXbiZTXuVvQvciztYRU/732ObERqC0tFgMajNXu
         AeD6eMRPknEeOvZyY2WTIed1t6dlBKF1YcHHzm1lR3/fBHhYK4ZrbzlUkmuJw7IacpAb
         l+Pw==
X-Gm-Message-State: AMke39kir/MdknUYPdPdDJwvEg53hJRLduqfwk9Jz4HAuWbinjVmO5b1uUXinrSw+DfMTQ==
X-Received: by 10.98.217.140 with SMTP id b12mr39556183pfl.136.1489427482573;
        Mon, 13 Mar 2017 10:51:22 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.222.61])
        by smtp.gmail.com with ESMTPSA id x10sm33944701pff.72.2017.03.13.10.51.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 10:51:22 -0700 (PDT)
Date: Mon, 13 Mar 2017 23:20:58 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v4 0/2] Replace mlock with private lock and remove
 unnecessary goto
Message-ID: <cover.1489424208.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch set replaces mlock with private lock for driver ad9834 and removes
unnecessary goto.

sayli karnik (2):
  staging: iio: ad9834: Use private driver lock instead of mlock
  staging: iio: ad9834: Remove unnecessary goto statement

 drivers/staging/iio/frequency/ad9834.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

-- 
2.7.4


