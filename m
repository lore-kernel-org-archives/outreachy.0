X-GM-THRID: 6330206452247953408
X-Received: by 10.157.40.151 with SMTP id s23mr2268828ota.39.1473866042492;
        Wed, 14 Sep 2016 08:14:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.137 with SMTP id d9ls1257921ote.26.gmail; Wed, 14 Sep
 2016 08:14:02 -0700 (PDT)
X-Received: by 10.157.45.54 with SMTP id v51mr2310499ota.45.1473866042114;
        Wed, 14 Sep 2016 08:14:02 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id h124si1297492pfe.0.2016.09.14.08.14.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 08:14:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id oz2so865861pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 08:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WNDsOVc3qIkWPLn3Y10LGc6MtZ+jQvCzxlwLxG3rj34=;
        b=ROVdvzGA/6NbAWJf4D1vhHeyZasO579312zlkqcM7DtKZCVyB2WMubosCurm2jl/rt
         ZNTxy/X1Lat0Ci3E4LAl3roSea0XNbWmgev2kDJSEDnHGzUvGw9J4odvbZTuChgeLi3C
         NKAy8T1zX5k90N0CIxJpFZ+TwyvJjC+nak7qYBEwN19aW4HjM36w98KH+8zTo5ZQ8SNW
         jpUjBVWXGRxIk3UaRIk/foQ7UH77xomZmVe4rBJofaNHhEmNCcOrDFp1/Hjx9riz9SxS
         S4A9zhv3M9BzEmh4SEC9CHZtiTR3JsEk89K2mj3aO4TxLSjVvTAsAX/Xmtnt5rQGvLzL
         zCbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WNDsOVc3qIkWPLn3Y10LGc6MtZ+jQvCzxlwLxG3rj34=;
        b=I43qocTYFOdnfGPuPSTWwUJjdY5jwbXlpbRRMPgvSNO8+D2s9qxryblmdpZBavMFSK
         e8QFssy2bcur9b/Y6baTogNz/Ew2PiNdK2QsmcDK2f4j6eYyVt8HkDTehUHIvsFjTSZP
         /El0VDrEGlh7wWe12naIRL0eGmwi7qSUGdbw+Q3HLYO1TJSDfC8gZ+Lszbld+Byi5HY/
         dWFcvvy3xPTAWpBIE0sVHXrSrtF0CoVi8hGA6u4Qhxf03RFUgxLeHZEUuKg5MFSDSOB0
         5OMVlloL3dbpBHwoQQ+ppcgSc9P+x3GIC5wt91ncrdNfHiLFneeOGMMcwQuY1/FOUzjy
         /2NA==
X-Gm-Message-State: AE9vXwPhDVQJ2lHvWzFoVNjLSdiys057qsckMwfxbVjr2ss0z9OL0b2BcafnPtK+k7/5SA==
X-Received: by 10.66.185.232 with SMTP id ff8mr5444566pac.12.1473866041716;
        Wed, 14 Sep 2016 08:14:01 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id 70sm6176285pfn.46.2016.09.14.08.13.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 08:14:01 -0700 (PDT)
Date: Wed, 14 Sep 2016 20:43:50 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Fix multiple warnings
Message-ID: <20160914151342.GA9765@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

/tmp/0001-drivers-bluetooth-bfusb-Line-over-80-characters-in-c.patch
/tmp/0002-drivers-bluetooth-bfusb-Line-over-80-characters-in-f.patch
/tmp/0003-drivers-bluetooth-bfusb-Line-over-80-characters-in-s.patch


Anchal Jain (3):
  drivers: bluetooth: bfusb: Line over 80 characters in conditional
    stataments
  drivers: bluetooth: bfusb Line over 80 characters in function
  drivers: bluetooth: bfusb: Line over 80 characters in statments

 drivers/bluetooth/bfusb.c | 39 ++++++++++++++++++++++++++-------------
 1 file changed, 26 insertions(+), 13 deletions(-)

-- 
1.9.1


