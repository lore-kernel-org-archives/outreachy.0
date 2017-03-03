X-GM-THRID: 6393296331713019904
X-Received: by 10.99.99.71 with SMTP id x68mr1410685pgb.138.1488555299883;
        Fri, 03 Mar 2017 07:34:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.176 with SMTP id 45ls320833otd.49.gmail; Fri, 03 Mar
 2017 07:34:59 -0800 (PST)
X-Received: by 10.157.60.248 with SMTP id t53mr1240035otf.117.1488555299425;
        Fri, 03 Mar 2017 07:34:59 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 207si87860pfu.8.2017.03.03.07.34.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:34:59 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x242.google.com with SMTP id j5so10208271pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:34:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GbkHKes9OLdPbTdGpVwF4wlOJMI6oalB9AJYRfZZofg=;
        b=Hz6OJfAuYSTB52yH4/N2HK9jxYJkI2vzDp55tHR8ihTDRKbwYcE2+onfiszRDpx4Er
         dXdXTseFaaYCY78DvhAEdIhgpa9Gfxf1Rozbj0am8kgQVSwVthX9p70Hk0sjgHw0ir/T
         zOyZ4yFejdSN1gA1XV/i1FKeDtGm02j/2mqXFMwWGKCPQwho5H+eCMauhn91yRI7fJUr
         N9WJx5Y7+z/kyXh8Sp5wftAuh4Fzeo6pHRnTg062C8uOHX8uwcS6lsMItrsJD1AE2xfw
         sYBSK09xatZ8liNjAF1U33nkTesT3rUfyBC5TKhuhunzZppOQ3Y7nyc8maeNfwMa3LPP
         Q2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GbkHKes9OLdPbTdGpVwF4wlOJMI6oalB9AJYRfZZofg=;
        b=hk//kjoA2vRHGO8jL4rd5YBIyTpmrMFR6SbAyXkzmZwC1PRHiMzZPWQ3G9prtGoEez
         q3WdACrtr27WolX97FvRoG6CUOMWblsiIuXP1jlyAoaH29n23P3CNZgLPdPlEa5DSBXu
         fopyKDImhJSvp2FWQW8ZQXHD/1VJ2IVBfgDPb6/eNy/Ah42D3jTLTZpXOMJH9x/7pC//
         eucJxVU0XFU2sSory3kCCc8DV5MOY8SJ3JonEjKWwRgjyizYxHsaMDOzmtzQKLlAe2vn
         29kPdymB0pOSrQNm2Ln8su2TFDV+MnyFTSixAf+neFFabUQDlgR1tdPIylZ09eajzMnt
         p3Sw==
X-Gm-Message-State: AMke39mMVziX+UWIHtbKWY74Oni0g394+tIpqGu8Y2QgDFVjFNzuyvEePDLPE1mKmG6/D6Ew
X-Received: by 10.84.141.129 with SMTP id 1mr5145183plv.166.1488555299125;
        Fri, 03 Mar 2017 07:34:59 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id s13sm17632410pfd.46.2017.03.03.07.34.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:34:58 -0800 (PST)
Date: Fri, 3 Mar 2017 07:32:47 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
Subject: [PATCH v2 0/2] staging: iio: meter: ade7753: Header file maintenance
Message-ID: <20170303153247.GA29234@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Collapse header file into source and clean up includes. 

Changes in v2:
Removed patch deleting unused definitions
Placed all register definitions at the top of the file for easy access
Included driver name in patch titles

Katie Dunne (2):
  staging: iio: meter: ade7753: Move header content to implementation
    file
  staging: iio: meter: ade7753: Clean up includes

 drivers/staging/iio/meter/ade7753.c | 82 +++++++++++++++++++++++++++++++++----
 drivers/staging/iio/meter/ade7753.h | 72 --------------------------------
 2 files changed, 74 insertions(+), 80 deletions(-)
 delete mode 100644 drivers/staging/iio/meter/ade7753.h

-- 
2.7.4


