X-GM-THRID: 6261362945154875392
X-Received: by 10.140.236.149 with SMTP id h143mr13292906qhc.12.1457837164813;
        Sat, 12 Mar 2016 18:46:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.11 with SMTP id j11ls1682640ioe.60.gmail; Sat, 12 Mar
 2016 18:46:04 -0800 (PST)
X-Received: by 10.107.184.67 with SMTP id i64mr13138795iof.24.1457837164420;
        Sat, 12 Mar 2016 18:46:04 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id q187si919957ywf.4.2016.03.12.18.46.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 18:46:04 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id y89so128778230qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 18:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0Z+MEBXf6fDH49DVL1fYARTPcitbQpMTngOca9mt9ro=;
        b=atD3kQQMeJgYKbjpMPaQFuWq5WsI+t89pjtxsiJff/ibO9UOs6Qyxax2tiAG5uy3fK
         FE7cXo69sXQg3eC+yJsdXIVQPbNuFqYHkEsdkY5Kv0FoclVA2LIuyRwh8g4k85/6LUsF
         z8Mprh2CiPX6xwXXRr/W3ICgalXk3j2mM6aWua10y+Xy9F6HE7gj+MECUSRs5DG5Dv9R
         EWG5y5T1qF/2GO29mn4c6zmZjQTeqCXJYQc5uAFNiPP1dcAJwsYPoax7gnj2reF1HHl6
         uhHtMnRKBzkaeUq2y9fHhmYBjy6ejIj2smj7yo3yzxhR3ysATj3Tl7EEfJDt/fzk8Wgc
         NY5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0Z+MEBXf6fDH49DVL1fYARTPcitbQpMTngOca9mt9ro=;
        b=KsplnHjFMFQLOsbPK/yZVCKQFfexkOBvTf8dg0zmCuQMeT77iUt3auuOO5XmX/A46w
         p6miYNU3V93AfOaFw602POsfAL2J5z+KUmaYiQCmGo7fuL8l5I4Pcx++brsFnTZBPpaI
         WKsWkrsBXbU8ZLv46l/2kYGkRlA91PTw7/NQAIjRAjgOrlLot2WidHaICP+ft6DMXsV1
         5gS3UrWwUzcQ7BXju7z7HQfxi9yTCAAP8rDZXs6dFfDP8KWvO7wrblfpktWXvvKzrYFb
         DjJ35SCZZfllhS4ameoTRTKkF6VsUTHelar5jFC7YotFd5J6892qirEe0ghz0eHRZny5
         pyhw==
X-Gm-Message-State: AD7BkJJDE4cOAumy7I+jseyjfmM6Ru0uiu9ZXiZAt+45wA/YPU9UXdcd2UPcDjy9BH2yvg==
X-Received: by 10.140.178.67 with SMTP id y64mr23237505qhy.19.1457837164129;
        Sat, 12 Mar 2016 18:46:04 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id z65sm7272662qhb.36.2016.03.12.18.46.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 18:46:03 -0800 (PST)
Date: Sat, 12 Mar 2016 23:45:59 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH 0/2] staging: dgnc: fix dgnc_Major_Serial_Registered camelcase
Message-ID: <cover.1457835868.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset aims to fix dgnc_Major_Serial_Registered CamelCase issue on
checkpatch.pl by renaming it in dgnc_driver.h and its calls in dgnc_tty.c.

Juliana Rodrigues (2):
  staging: dgnc: fixed dgnc_Major_Serial_Registered camelcase in
    dgnc_driver.h
  staging: dgnc: fixed dgnc_major_serial_registered calls in dgnc_tty.c

 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 drivers/staging/dgnc/dgnc_tty.c    | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.7.2


