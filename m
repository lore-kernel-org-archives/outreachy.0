X-GM-THRID: 7018981355604148224
X-Received: by 2002:a1c:9892:: with SMTP id a140mr7384205wme.187.1634233946937;
        Thu, 14 Oct 2021 10:52:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:1caa:: with SMTP id k42ls5164945wms.3.canary-gmail;
 Thu, 14 Oct 2021 10:52:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvns11ORf10BDwksKLAEd2WlxVrzulq6b6a+kt2eaCA4oqUkEQDKnbRCxYaTjtb89/p48a
X-Received: by 2002:a7b:c5d8:: with SMTP id n24mr7562937wmk.51.1634233945440;
        Thu, 14 Oct 2021 10:52:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634233945; cv=none;
        d=google.com; s=arc-20160816;
        b=vtxP9ItxgYdU837ZgTg75+hOd6QpDm0KKSubOYlWdd4NLcgEdhDHpTO4qo8Pd3Tzcs
         wSOgfJMUafUUE3Khu4wXwz13FYuxvz8z4EliTMzu0Pl+zpkgt2RRtxYr3E+XvVyodu1G
         VOwPsCTacPytTBLMZgQmf5fMTJ8kSacnpyB7r27Qagc7KPeqiFin06hC5c9m7mEHAjrO
         J/40bWKCC4yV6rr2oHTyCPTT5aMGq15DB4gzQ59K1Rwt9/LVr5KyLG6g73fw6PE++G4j
         yN5/S7zpSpKAzCt5U1wJh+ReyK12MVIlsFjnycyA0ysJWf7DHCf5nmwB/oj22vTwaM4l
         ae6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date;
        bh=AknCQ+hP1t8SbUuYpuJvhw7eCVxWY6WX5IHri2APi5E=;
        b=XCkRuSdeWgb+RsB5b/MhadUzv7kCHjtv2chb9msGrwJDLy2scIs5r+Zwnswo53yvlU
         jOlrPFODUSKWkxdn18fdcHQ/xSyBacy6xFZe7GWprZd02BP4cIqfRC+abrcGAjYgNkR7
         1kzobi9WMPPiFhi9PUyDpc0u9DRHsAof3KSmaFJ1OdVyc6XKO8UkYEzxXSy4/LB817b4
         wkaV7YQjSdWlsExQLwrHpdflHfuFfr6BOUF0ErIUjXOtp5w2GBquT1t/48v56Emr42fs
         rb12tC9X+uxaQOSr+lIWS7ZlTSmxHPmGmgHQc9cZfe9vKz3OGONMmloZzcmy4zUKm6MB
         2cJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id a1si228001wrq.1.2021.10.14.10.52.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Oct 2021 10:52:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="291233930"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; 
   d="scan'208";a="291233930"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2021 10:34:03 -0700
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; 
   d="scan'208";a="564000323"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2021 10:34:03 -0700
Date: Thu, 14 Oct 2021 10:42:07 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Help maintain the First Patch Tutorial
Message-ID: <20211014174207.GA426328@alison-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Applicants,

Please help maintain the First Patch Tutorial.

If you see an opportunity for improvement please post your
suggested update to this list, where you'll get someone else
to ACK your change, and then you can change it in the Wiki.

You'll need to create an login on kernelnewbies.org.
https://kernelnewbies.org/

When you actually have a change to place in the WIKI, just
ask me, or any other current 'Editor' for edit privileges.

And, be sure to note this as a contribution in your application.
It won't count towards your 10 patches, but it is highly valued!!!

Thanks for helping,
Alison

