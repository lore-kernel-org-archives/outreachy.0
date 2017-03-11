X-GM-THRID: 6396325489451991040
X-Received: by 10.157.50.29 with SMTP id t29mr11451170otc.32.1489260580881;
        Sat, 11 Mar 2017 11:29:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.248 with SMTP id t53ls12241638otd.42.gmail; Sat, 11 Mar
 2017 11:29:40 -0800 (PST)
X-Received: by 10.129.18.130 with SMTP id 124mr12466427yws.56.1489260580542;
        Sat, 11 Mar 2017 11:29:40 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si2392572pfb.2.2017.03.11.11.29.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 11:29:40 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so13855581pgy.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 11:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4ZgBKjlQX+hVRDbdiJSvQg1H0Di5bUSRdBUK//crkFY=;
        b=lFRCKDDxcmEAS+gAwbBngAKlx5dgaRZGqbxFR0AP5JyNVsEHbJXXR2DparQEhQnuit
         AmouXh+DCb+SbbNlA0Kievwu5nM6eBRc5YDIfeWk7TlyO/x5OQ+cd5uzly1SxJnzm5sC
         C44hszsUu1LSWl2WnrHlVYzfsnA3SBtS25gQ9w6tFMGQXwCv8+RaCWHn7h38a222/LY9
         U0PQAW4XgsgNH1F5+gpV/01HNKR6WR6qcy9GmedZ6cBkM2hzK0DgKe7v1xrLztSXZQjf
         RNTMO4m2lYOffZrYszKnBnWDsDtW7wD5MS+PFg7LejG+DNtTo8TzboSSAGLKpkbzA1YG
         rvEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4ZgBKjlQX+hVRDbdiJSvQg1H0Di5bUSRdBUK//crkFY=;
        b=dnqQiZ9RxurKJJVma0At0qvzO6w9yVBlwqkpQzSwtoBVq1zl2PAtACEJQP/HidnNay
         GQDdVAIcZ6rAJojHt4+5CfEwylL130GBFG6xSy8zdxQewFabMkFBQjCqQWz5r3FgsxXQ
         mNJa6pCeFlUE+lLCRyDxKoPNZZGcuIRD10AlJ94CrJH5Q8Kq4REp+XqFgZ0rlaXoS8Rp
         y5RbIA5x+kmFdReyiQscS11A98APeC+ZeM/5GROgkIpN86e8whwkrCEmbkY51ftiHSTR
         OhafDrYejkQaGIzjOKHIQ/Wun4iznoWESu75ZoXoPOtGId4skh+edFNxL7zl3Bpy2Igv
         SRUA==
X-Gm-Message-State: AMke39kl5o/kW94fAsIoo4i4f7aoRlpekSszZ0cQOqhaNENuWiDWnHLjfPU0kl49Zgi2lg==
X-Received: by 10.98.72.199 with SMTP id q68mr28474432pfi.152.1489260580022;
        Sat, 11 Mar 2017 11:29:40 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.35.7.141])
        by smtp.gmail.com with ESMTPSA id 23sm25439761pfz.127.2017.03.11.11.29.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 11:29:39 -0800 (PST)
Date: Sun, 12 Mar 2017 00:59:31 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [IIO Task1] Module load error
Message-ID: <20170311192931.GA3443@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi

When I try to load the modules iio_dummy and iio_dummy_evgen, I see the
following error in dmesg:

iio_dummy_evgen: exports duplicate symbol iio_dummy_evgen_get_irq (owned
by kernel)

Looks like I've got a circular dependency, something that should have
been added as a module (or not at all) is built-in by default. Here is
the config I've got:

#
# IIO dummy driver
#
CONFIG_IIO_DUMMY_EVGEN=m
CONFIG_IIO_SIMPLE_DUMMY=m
CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y
CONFIG_IIO_CONFIGFS=y

Any leads for where the error is popping from?

Thanks
Aishwarya

