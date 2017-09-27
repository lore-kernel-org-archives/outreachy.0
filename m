X-GM-THRID: 6470372144050077696
X-Received: by 10.28.15.72 with SMTP id 69mr85365wmp.3.1506500910535;
        Wed, 27 Sep 2017 01:28:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.228.212 with SMTP id b203ls256688wmh.5.gmail; Wed, 27 Sep
 2017 01:28:29 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAWE173kKdbS7VAfW4upgLisemk611E4x1JDboosHD0+x16xMaQNudXfB7wZy0WWpW1dPD6
X-Received: by 10.28.131.208 with SMTP id f199mr87998wmd.11.1506500909600;
        Wed, 27 Sep 2017 01:28:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506500909; cv=none;
        d=google.com; s=arc-20160816;
        b=0YrxZ5xYTDxcj33b7sauZbTddG4T8lAzRzyIDN1q4vDgUfwSKjdqIV+eKoyMHZ1/Un
         Tww3ZM+nDVc11+CwZsxAVPj1KiQBVJIFAO3l7mjcERvO8HwQWduyVM/jhOTR5LWbO2VU
         /gaZ8jMKm6ZwkncGoJlwIIQ9AGIifa3WpWR7lLs5HAHdyRoAmCOtFywMJ72RVEEYBIJq
         BrY42pT9mNBuOdsZjFsdDfbyXqAv6DtBdqw3Wf2QbFjOEyYnTtE4A+SMIUiKP0e+IQIf
         8qpSHPn3iJ0hrwsOvao+DevlHENJwo2Vf4zAayHMBbkgrE0J4uWt5xzzwXwc/JVawG3K
         Ro3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=gw6DDPtEXlxmQF9YPs1J+RDj+XQKgoP58sQQ93KkBko=;
        b=VAoYftjfuKxJA39VLYrxNW2fQWjwSJoEfKO2E9WTofH0CAXOfa0LftSBGOfQ8VOaKk
         AqgBk3ouSBO2fGBbHjo+wxBH4ipPiA1Eq6kmA7+exX0y3crAD4ggbTjSqyySelpvgrHd
         SIrAXyYPnBJrVSumytP5ZVzFL18xU6lm6mr3UWTM2IXPUl3MbjIyOb6gsT6UgnCQHtcv
         mL6AP13nFIvKHIG2I1opvVX+QkQzBwcnkMBNXmKYFMapDUPVSlMeOvbMua8wrhhcnJGB
         jkcNTIXf1hWdX7bBs0ErNPhG/kDGr5IUZAysnxYUBGGc4OT8iOEZ3Y30On6ytjvtErNl
         x18Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m74si293831wma.0.2017.09.27.01.28.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 01:28:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,444,1500933600"; 
   d="scan'208";a="292913459"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Sep 2017 10:28:29 +0200
Date: Wed, 27 Sep 2017 10:28:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: Kernel Recipes
Message-ID: <alpine.DEB.2.20.1709271027070.3186@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Kernel Recipes is a Linux kernel taking place in Paris at the moment.  You
can watch the talks live here:

https://air.mozilla.org/embedded-recipes-27-sept-morning/

The schedule is here:

https://kernel-recipes.org/en/2017/talks/

julia

