X-GM-THRID: 6261204257874116608
X-Received: by 10.98.64.141 with SMTP id f13mr8620600pfd.3.1457800217445;
        Sat, 12 Mar 2016 08:30:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.86 with SMTP id i83ls1548102iod.41.gmail; Sat, 12 Mar
 2016 08:30:17 -0800 (PST)
X-Received: by 10.66.147.133 with SMTP id tk5mr11048165pab.8.1457800217125;
        Sat, 12 Mar 2016 08:30:17 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id tu5si1693807pab.2.2016.03.12.08.30.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 08:30:17 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id 124so105285830pfg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 08:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OVt8m4HXLfXAzXIKrJ0fNsl2Fh1oOubj4HU2l4iyjWI=;
        b=Uw/Sq6ESRZS+lSCvI51D5AUJT8cuT+EyQlHUm4Aq7C24ZO5S9zRXjMXzhuve0wvBW0
         fy6WhS6EGz1lg5UjlYqG6PPiIGHYvuEl9Zjef9LyWXDhNFIRUJUSDXCZYXXMb22XRZOU
         NbyfnEz78mV0t+XghP3eMl+C2oDVLwNdxyUEyQVP0FJhJ6Q/SCP2Zih6iWsLIgv61MYk
         tbgF7ndMezngQUfPdOMHKMw5ZAeORR95NVKRFCkYZ4c0CHRbL/ryQ6A2BRlL6NNCymHK
         bh7OPd9xjwh43lavJpkv2GYIw9BbvF5cz7Kr3pBS0yAAMA67iXln9ndBUTmlpnQe3NeA
         2XfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OVt8m4HXLfXAzXIKrJ0fNsl2Fh1oOubj4HU2l4iyjWI=;
        b=PbBcqJ9hg+0LqlZIEe2vnw7d4EnOf/bA+4Aehz4rgE8S202KThRFDY3IdKfnOVh8ZO
         kCNSjW2UCJiypyCNSD9afrxW+COMGb+gKtsxLX5pvO6MA7eDzrObZhWtgGNT2MLhRo4y
         Hg6vyoqt+a33X+o9QyUfQ2yHdcjiCYY3MHSkkasfYXJXgF0rBCgrQGs1rOYMv3DHyDGE
         /ADLobPkgogu9VzdcStvjPgJYuzuW1tXKMI2mPFy8d86v0F66QBuA44/fe5lD13QhaBP
         3Ckv4C3hXVtKP7RA4+m7h0LJZB3+2cznfPuMKHcXZneow9zeXgnJnukPbu0utSroqU5h
         phnQ==
X-Gm-Message-State: AD7BkJIR32OiRJDaZFu8C7/U2p3AXcOBzVCjqjtVjrMVECX34E9P38qNn/axkCztZL7IEA==
X-Received: by 10.98.67.139 with SMTP id l11mr16843697pfi.112.1457800216985;
        Sat, 12 Mar 2016 08:30:16 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id yh5sm20856029pab.13.2016.03.12.08.30.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 08:30:16 -0800 (PST)
Date: Sat, 12 Mar 2016 22:00:04 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: wilc1000: Fix line over 80 characters
Message-ID: <cover.1457800084.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

staging: wilc1000: Fix line over 80 characters
staging: wilc1000: Fix line over 80 characters
staging: wilc1000: Fix line over 80 characters
staging: wilc1000: Fix line over 80 characters


Anchal Jain (4):
  staging: wilc1000: Fix line over 80 characters
  staging: wilc1000: Fix line over 80 characters
  staging: wilc1000: Fix line over 80 characters
  staging: wilc1000: Fix line over 80 characters

 drivers/staging/wilc1000/linux_mon.c | 39 ++++++++++++++++++++++++------------
 1 file changed, 26 insertions(+), 13 deletions(-)

-- 
1.9.1


