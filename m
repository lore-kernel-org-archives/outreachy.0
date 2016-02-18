X-GM-THRID: 6252641236847427584
X-Received: by 10.107.136.23 with SMTP id k23mr8747529iod.23.1455806483007;
        Thu, 18 Feb 2016 06:41:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.183.7 with SMTP id ei7ls178099igc.16.gmail; Thu, 18 Feb
 2016 06:41:22 -0800 (PST)
X-Received: by 10.107.15.79 with SMTP id x76mr8462044ioi.31.1455806482432;
        Thu, 18 Feb 2016 06:41:22 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id 12si1006312pfb.1.2016.02.18.06.41.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 06:41:22 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fy10so31931525pac.1
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 06:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/G6j0SfZL9SGxhXIaE+npHLGVaN9FvR9IkvfdI5n7Tk=;
        b=WiksxrNi5DhbN8gQy+o+IihUPwGWtF1E3Y2BXiyYdVOCcGfG4VKOq0Bccov3US1+tf
         O6TzB7LvWr5ycbA7D8uVrwVSI+zM8CqPLESU+NKMeK7TsfUaLK06UFwm++b11AqP7+Po
         S1o0wRZjPDPSxbKR/lS+pyM5biEhRtKrrGyaNgCbsOTOCuj0c8e2eE3til2NWJ+UZjBV
         imp1tLJmQmTC9Ev2MGCtxebj1d6OsdsVI49eer94s2holUrvgBQbxvi3SqbbmcGs5/If
         QqnIAEyYlIvGQT0i23wKHmQEvA2dpkWg4AZ+IHaXPSJRpdqdstGZMoERabSvqqkrOBIb
         +Gkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=/G6j0SfZL9SGxhXIaE+npHLGVaN9FvR9IkvfdI5n7Tk=;
        b=Zb5SCCdGBBp3doB56LsjR9b0I41p8gtOo224zKfLjbjnF8G4z78TGWI8fhbNiCc6D+
         Bg/S0ysRnoF+H1Gf8YKArBSgibJ4jSrohNQ1wPqySCqd3GAjgADD0r+PPtAu5I9fb+En
         XPfLroJy5Pe4w3f6LS4J/hk5QIt6u3MqmQNu552qJGMScuqvAn1+2DfDEAjnvQYSwwbh
         0SVK/q49hQ/Br6p+EtuzXCinYKSqSOb/RpkfbT+OSemJBvKPsZATUUrEJsDT3ksxuiMe
         k/g77g17O4yoI7122InAGQqHtmueqf1UZ7CGTqfj3my3zuIRE1LmQeEmKxZI/DsAn0sP
         qQLQ==
X-Gm-Message-State: AG10YORDPrA9EzpIOPa3Zq4XHGk53Bxt++1twkdJ3wkH6ARayK48S0QqY85JcAvtHiLiSw==
X-Received: by 10.66.146.100 with SMTP id tb4mr10205802pab.99.1455806482263;
        Thu, 18 Feb 2016 06:41:22 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id vy6sm10780847pac.38.2016.02.18.06.41.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 06:41:21 -0800 (PST)
Date: Thu, 18 Feb 2016 20:11:16 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: most: hdm-dim2: Use devm_* functions
Message-ID: <cover.1455803765.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Devm_ functions allocate memory that is released when a driver
detaches. Replace kzalloc, ioremap and request_irq with their devm_*
counterparts in the probe function of a platform device which were
originally freed in the remove function.

Also, unnecessary labels have been removed, an unnecessary
platform_set_drvdata has been removed as well as switching from pr_err
to dev_err.

Amitoj Kaur Chawla (4):
  staging: most: hdm-dim2: Replace kzalloc with devm_kzalloc
  staging: most: hdm-dim2: Switch to devm_ioremap_resource()
  staging: most: hdm-dim2: Replace request_irq with devm_request_irq
  staging: most: hdm-dim2: Replace pr_err with dev_err

 drivers/staging/most/hdm-dim2/dim2_hdm.c | 58 +++++++-------------------------
 1 file changed, 12 insertions(+), 46 deletions(-)

-- 
1.9.1


