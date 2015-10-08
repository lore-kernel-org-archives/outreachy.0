X-GM-THRID: 6203322698608672768
X-Received: by 10.31.149.200 with SMTP id x191mr6812320vkd.14.1444323616527;
        Thu, 08 Oct 2015 10:00:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.36.37 with SMTP id n5ls233695igj.39.canary; Thu, 08 Oct
 2015 10:00:15 -0700 (PDT)
X-Received: by 10.66.246.198 with SMTP id xy6mr6805280pac.36.1444323615727;
        Thu, 08 Oct 2015 10:00:15 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id zg1si5867203pbb.2.2015.10.08.10.00.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 10:00:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id lk4so59752838pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 10:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=H558kW4I6lvFuXTV7/xOWbOkB/gmU6TzMLb4Gx/vsEg=;
        b=hYKLeHo/F72Fm/ZO+rc35A8hlI+2oqRJBHOzMm2WheEBs0yeJcE26BLeXhdiVzEs75
         hgUpviCLz9jlepPyxjRtha82j22/+I2VPgqBCoOZOl4L0cSbldVdwOvD00VeD/DO5qLL
         gSBojNRcIOUBbOZIsNCzJLkMNK4kg0U57IpIYbSwr0zlVR2apedvooGxpp8YVVfF4hAH
         nEjRGFHpPcjoX+Kt5t5k3agRV3VZXnoM3Cz5TC4yDUojoq6j75ZE+qkC9m8edygbCHU7
         KrJvY2Q/uT9O02e9Wkp8DG55yS11sJGT0W4YNwPzcKcj3Mlv+wU980ePCmy+OwcXm/hs
         Y/Tg==
X-Received: by 10.66.141.165 with SMTP id rp5mr9101331pab.127.1444323615608;
        Thu, 08 Oct 2015 10:00:15 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id rx10sm26592288pab.21.2015.10.08.10.00.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 10:00:15 -0700 (PDT)
Date: Thu, 8 Oct 2015 10:00:13 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: checkpatch err - questioning adding parens
Message-ID: <20151008170011.GA2603@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Looking at this checkpatch ERROR and hesitating to change because it
looks worse to my eyes.

ERROR: Macros with complex values should be enclosed in parentheses
FILE: sm750_cursor.c:40:

Here's a short snippet (defines actually go on ~25 lines)

This...
	#define HWC_ADDRESS                         0x0
	#define HWC_ADDRESS_ENABLE                  31:31
	#define HWC_ADDRESS_ENABLE_DISABLE          0
	#define HWC_ADDRESS_ENABLE_ENABLE           1

would become this..
	#define HWC_ADDRESS                         (0x0)
	#define HWC_ADDRESS_ENABLE                  (31:31)
	#define HWC_ADDRESS_ENABLE_DISABLE          (0)
	#define HWC_ADDRESS_ENABLE_ENABLE           (1)

It is an ERROR... so what's my direction?

Thanks,
alisons



