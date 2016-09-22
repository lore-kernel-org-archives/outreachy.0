X-GM-THRID: 6333039689396649984
X-Received: by 10.66.227.34 with SMTP id rx2mr78990pac.138.1474525707169;
        Wed, 21 Sep 2016 23:28:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.72 with SMTP id f69ls230878ita.11.canary; Wed, 21 Sep
 2016 23:28:26 -0700 (PDT)
X-Received: by 10.66.12.229 with SMTP id b5mr80592pac.3.1474525706216;
        Wed, 21 Sep 2016 23:28:26 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id e66si70315pfk.2.2016.09.21.23.28.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 23:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id hi10so3226543pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 23:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0x31HadWtMWPFnCzMbqTG79sXpQ1OceuJY2OItgv8lg=;
        b=dV0W5IbPzj4y8NB0of08tDwTFqe+dd3QxK6Ckb+/z4m167pS/jzyMLOMH5s18Dqog/
         CV4yWrzUsO8CcxERgyWGGXa5YurZG3U8aANYJYGu8TmXz9tKJwaxnUn5VAw4dQLfthvj
         bwYXirSLjPraZommmo2cuR28DbDDA872TOramUnZWK162uQs3/N+C4kHin9SWlmFxPXQ
         T8fCqw7bfASecS2OaY1T50h01GjcTvu+DREcRQp0XrpsHmDeQQqurx5UsWge63UsASov
         rx1N9t9YroeKXHZF5S1IKWNJgHprka3DPqFi+0T3dn6WKkDQ4rQTaTufo+9EcGjmE345
         +ZQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0x31HadWtMWPFnCzMbqTG79sXpQ1OceuJY2OItgv8lg=;
        b=M0JEcsR6PZ/MIVDjPFe3Zi4E2573v6Ol8rcmiGbMbbcJVAwZDJOjwnvUTZ+r5PyCyD
         /lUSYre2Sk0FTdm8TFDZNDIrc8X1yFLZDBoyhFLLV4TGou5vyZ4vpZrXO/4aW4WrYa36
         V5vzjvP30zNIer0KwYB6SZeBEgxZ99KCY+WOz9JZ38COrYPAjY9Ve/QcYmM06H7B/EV+
         gcm3LVMgzPlX/sQ/+QJiY300WotiSCAEjyRcR+wRM4TEpg2o3ezF2Qsp2VGk0+N5k8mm
         WHYtWiqn2E5gVliKEW60klmvMOrvAPHwcgpIK8xp6Aw7FYjxU2zynmHTxzBnc85/GJJF
         DoUw==
X-Gm-Message-State: AE9vXwNRX1weNAyaxrDwCMf/IcqT0bHkIXIX2fSSUATfb28OOJBBMedH5Ol7I22jhthu/w==
X-Received: by 10.66.0.99 with SMTP id 3mr535847pad.109.1474525705939;
        Wed, 21 Sep 2016 23:28:25 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id cu2sm878685pad.18.2016.09.21.23.28.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 23:28:25 -0700 (PDT)
Date: Thu, 22 Sep 2016 11:58:17 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com
Subject: [SMALL TASK 2] Doubts, approach and sample code
Message-ID: <20160922062817.GA11923@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello

I have made an inital attempt on small task 2 found here:
https://kernelnewbies.org/JuliaLawall/#head-64863b6a2bfaec7448a8755a3430b311d2c0ce7d

This is the code I have written:
http://pastebin.com/raw/uS4JAcWC

This is the sample diff I have tested the code on:
http://pastebin.com/raw/h3PMSuae

Approach:
1. Grep out the names of the files modified by pattern '--- a'.
2. make the files and use stat to get total size.
3. Apply the patch and repeat procedure to get total size.

Doubts:
1. whether my assumptions of patch_file and dir paths are correct.
2. whether the method to get the files modified is foolproof.

Please check my approach and suggest ways of improving it.

Once the logic is approved, I would like to work on error handling, refining
the code including de-duplication and any other necessary changes.

Thanks for your time.

Rehas


