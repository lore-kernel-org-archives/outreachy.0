X-GM-THRID: 6343298226858229760
X-Received: by 10.157.20.229 with SMTP id r34mr2398320otr.25.1476915237225;
        Wed, 19 Oct 2016 15:13:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.53.225 with SMTP id k94ls1248198ioo.21.gmail; Wed, 19 Oct
 2016 15:13:54 -0700 (PDT)
X-Received: by 10.36.237.77 with SMTP id r74mr7010424ith.40.1476915234260;
        Wed, 19 Oct 2016 15:13:54 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x22d.google.com (mail-vk0-x22d.google.com. [2607:f8b0:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id x14si5961459vkd.3.2016.10.19.15.13.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Oct 2016 15:13:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::22d as permitted sender) client-ip=2607:f8b0:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::22d as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x22d.google.com with SMTP id b186so46886027vkb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 19 Oct 2016 15:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=r+Me2ZwSnIbdZuCh3/AwaIEdevw32WbXQGHdBH1C3ok=;
        b=ZgvbITtGu6ise2ICxyOl4W+oXicd2hWj6pZX8dMPvV+Y1KXmi6oQhpJLXO6QrouPSg
         vRCrX2nUVhvx7Do5fx5iY8ebV3t4L84ocgZr5oZ7OSUvIrBreQtj4jb71wPbF1xCTsCx
         2bX6/7ZmBZE8FR6h5sUPcL1p5lAxM6SL+2k3OL3rzI/j1Qi9DcwcCVaxyxU0ZJgkBQEo
         cdTMlHkitL717VBt5chxx9QIRWMJst7DG3WU9o9XMy3nlI6P2uviJ5TpPjBF+seGSYy8
         2Gt6bgd0NfpD5uPP0hDB3NjHUSnByAB/aGgMN9ufHaGAzRDlPDkf4F6Dw/zbPsvrn4xO
         Fr/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=r+Me2ZwSnIbdZuCh3/AwaIEdevw32WbXQGHdBH1C3ok=;
        b=HTCql8fDtBrbGt/oFuWHEiH54Nstm3jtC9/jeBRU588e1bDqzT0i+C/dAAo4NRwAg2
         VY640HTIH2gJPEdLxqbc8VSi699BTmhZ0WJIBEFWefJybne6yM3j/JNQCeBO7UQ0ggSJ
         TcS1CIJHCrzQgdl+RxJwzGO8DaMLDNaa5/QDJefZZ9LWXa+WE1TF/rBKJ4EGGX5flLqx
         cW8YhIpUkZz4feaZVmIEJvqmHnDwGMa6JTwSaomW4H2MTp+oaYRyMTq9HQptHqJB94x0
         FYMzVv8qZ9r9K4rVYGxdQN/Urd7JtD3aFAqk2aqzeNCtQXUKWiOQbsn40CW5IZHFEgEM
         nimQ==
X-Gm-Message-State: AA6/9RlFgFfhFVmj6EkBkZIq3X9AihSHfe5XUjOCIAfz8ne9v99DpaDWW7IoneomIeNXtQ==
X-Received: by 10.31.48.69 with SMTP id w66mr6779097vkw.176.1476915234012;
        Wed, 19 Oct 2016 15:13:54 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id v21sm141293uaa.25.2016.10.19.15.13.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Oct 2016 15:13:53 -0700 (PDT)
Date: Wed, 19 Oct 2016 20:13:40 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: ieee80211: Move assignment out of the if.
Message-ID: <20161019221340.GA495@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Actually, I want to cancel this patch, since C uses short-circuiting on
&& operators and the assignment is the third verification.

sorry,

elise

