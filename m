X-GM-THRID: 6332502470301843456
X-Received: by 10.129.146.84 with SMTP id j81mr6641146ywg.62.1474400626850;
        Tue, 20 Sep 2016 12:43:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.36 with SMTP id q33ls2664924otb.33.gmail; Tue, 20 Sep
 2016 12:43:46 -0700 (PDT)
X-Received: by 10.157.8.202 with SMTP id 68mr1629536otf.11.1474400626319;
        Tue, 20 Sep 2016 12:43:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id e66si2831904pfk.2.2016.09.20.12.43.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 12:43:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id z123so10525441pfz.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 12:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xdm+Zsmd7xqd7pQzrOCI6nbE+6sajEOzew4Ot/DuRdg=;
        b=WkMVOnf76TmXOTQmT8D/EHNhMTlKi0zMIdmC87RIiujLGCW5s8/2DK/Z/s0xYWDkQZ
         mRvKnS2Lw9viUGExhToPGgLc2EvWABQCADkYzJw9oBpjlAGis3lWiG68Mg7FXLyUlqyl
         0YuEBAhQUDnucWkbLyLHlIBpbw7TEsOK8liv+6DjwNDfq6xeCfhHexybgP7Ylk6nIhAT
         MCdP2JngotLyJoCLVV6CN4PfWi/nZtIIdcTLKFgn/e/i6WzATzq5hvXLHKRVqbdriPsW
         ijEFVU7JtcxHIBHqGbvRiImYMjw0uIng5aPHSQ7RLHiKOE93qRlKf7OybL/zaCuUqTal
         e3Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xdm+Zsmd7xqd7pQzrOCI6nbE+6sajEOzew4Ot/DuRdg=;
        b=BgM6xrt0DiC7Cf1rPDy3YS6z4fL6hA9PETWCdrXIr+9jtjrOltG+w1fej1XSADsAYD
         Chy5tBvb32G6uUo6xQiU/in4JbIU/DWjMr9e9PKvdcO+Z81s60cK1XH6HBeekE2HWyp4
         fey7f1qxzyIJ/sIpdqAyqf179yeNa33Kt7qYmPWPeOTKM+mdUFlqiKjcDuj44t4cM7Za
         nenfJtNB1HYgaJb+OH5/d9zezBN+UQ773Jz5pfmLp3pqG7eZLbq+FfTyxj0GD+9H2zQs
         LIzjPxv+HjktLlLOqHLVs9tmVKLGsKO5YUp08LjIE0NTb/P7w0X7SuO2nka07oLOFYyx
         blKg==
X-Gm-Message-State: AE9vXwP2+aQnkyttJsS6jLfTHTMhmHyZPUz5oKoklhQerZfjpUydqqiLdUnd2cAjIKUrPA==
X-Received: by 10.98.19.26 with SMTP id b26mr22455382pfj.1.1474400625946;
        Tue, 20 Sep 2016 12:43:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id g14sm36010330pfb.77.2016.09.20.12.43.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 12:43:45 -0700 (PDT)
Date: Tue, 20 Sep 2016 12:43:44 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: IIO Coding Task Added
Message-ID: <20160920194343.GA5194@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

An IIO Coding Task has been added to the IIO Task Page.
https://kernelnewbies.org/IIO_tasks

So now you have 2 types of IIO Tasks:

1) Experimenting with the IIO Subsystem
   Do these independently and submit to Daniel & Alison.

2) Coding Tasks
   It's a single task but it applies to multiple drivers. You will
   find your driver and claim it on the tasks page before working on
   your patch.  See the description for the details.

