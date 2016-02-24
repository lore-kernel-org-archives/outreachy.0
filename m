X-GM-THRID: 6254945718130180096
X-Received: by 10.66.236.199 with SMTP id uw7mr38336531pac.47.1456343037084;
        Wed, 24 Feb 2016 11:43:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.102 with SMTP id o93ls2789657qgd.16.gmail; Wed, 24 Feb
 2016 11:43:55 -0800 (PST)
X-Received: by 10.140.95.38 with SMTP id h35mr10463083qge.3.1456343035516;
        Wed, 24 Feb 2016 11:43:55 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id ui7si663759pab.0.2016.02.24.11.43.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 11:43:55 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ho8so18472786pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 11:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jv0S2q+rUAklMe207PyHpTXNgVY/+eX7WbKKfFrjGk0=;
        b=A5jOl+uW6NJ5AvxlRUTT/9fMQpzD2lO4laxNXEnrx0YrKc/ZfM6pyUsZx7DqMvx8JA
         AKb5/LrUzrUokB+7e52dtaFF27njY6s+C3Wc06yMo4cQ4B2IP6xGC4x0QnPNN3MoC6jo
         XprHgUSpWFsy6+Z9cymJ2e6U9ESyyyc/RPS1K/A5Uzz3voQmv7fJ8B2rspXDDmt0u8ZZ
         CatjA35+F3IXLSCBcgZKZmqnFEsIG91klPjhVlj6ARCCJl3c3+qtykfSp4jGTel631Je
         v3iXGf49QYlvdQTCQ4GGyt92ph6gQHQFdzJyVVNX9BOLEt7/cQJ9jgTPfNbZYJ0+gtJs
         ECsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=jv0S2q+rUAklMe207PyHpTXNgVY/+eX7WbKKfFrjGk0=;
        b=BEx/CUoq75DAx/YPs1Kbj3rlrgqoUiSEL3aChWmeqCuFylxOWj+So+baq/YlzfKiUj
         FknGR8oxNz5CCP+sRKVagMJ18WANtnJJItuGRbpoFCMjOhxUKHlIlZoO81ViFi+blDS5
         5S00YF8nxM9LfcOZaFCTz5o+CrndElvELIiKocKQ2o8kL+wn1dmJ/6AKivbVdECpRI4P
         c02uwQeXjXX00PEzKfpIjC6B+ggI0w+KZFARBAM7gceRarDqczSmAfkF7tcyMBR89AmS
         mBoWfl8NRHKsw+P+W2ViXyP5MAxOhp1rC7jhc7skgeHr2TwhDgOe/P+mP9mz/2y5OXJE
         FZfQ==
X-Gm-Message-State: AG10YORDkwEs2KnCaYuXLfAvF27bs92q5LXxzjytftTmY7Dx2BxZyYd2qODzinuVYpVLKg==
X-Received: by 10.66.102.37 with SMTP id fl5mr12318595pab.32.1456343035263;
        Wed, 24 Feb 2016 11:43:55 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id m87sm6869042pfj.38.2016.02.24.11.43.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 11:43:54 -0800 (PST)
Date: Wed, 24 Feb 2016 11:43:53 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: daniel.baluta@intel.com
Cc: outreachy-kernel@googlegroups.com
Subject: IIO Coding Task 2 ?
Message-ID: <20160224194352.GA3122@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Daniel,

I'm working on IIO coding task #2.

In 'auditing IIO device state updates to locking' I believe that
in addition to "Updates to state changes must always take mlock",
any checks of device state must also take mlock.  And that is,
what you are asking us to do in this task.
(iio_buffer_enabled is checking device state, not setting)

Basically, anywhere iio_dev->currentmode is set|checked use mlock.

Right track?

For this task, I'm not clear on why we are doing RFC.  In practice, 
mlock is used very consistently for protecting device state.
Can you clarify the controversial aspect?

Thanks!
alisons

