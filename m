X-GM-THRID: 6401759756605718528
X-Received: by 10.237.39.222 with SMTP id m30mr5291141qtg.19.1490525844536;
        Sun, 26 Mar 2017 03:57:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.166 with SMTP id t35ls3937601otb.11.gmail; Sun, 26 Mar
 2017 03:57:24 -0700 (PDT)
X-Received: by 10.157.38.235 with SMTP id i40mr5846729otd.54.1490525844141;
        Sun, 26 Mar 2017 03:57:24 -0700 (PDT)
Received: by 10.55.170.7 with SMTP id t7msqke;
        Sat, 25 Mar 2017 17:55:07 -0700 (PDT)
X-Received: by 10.25.17.102 with SMTP id g99mr1825717lfi.6.1490489707170;
        Sat, 25 Mar 2017 17:55:07 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id l138si677611wmg.0.2017.03.25.17.55.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 17:55:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@suarez-id-au.20150623.gappssmtp.com;
       spf=pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=azure@suarez.id.au
Received: by mail-wm0-x232.google.com with SMTP id n11so16816349wma.0
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 17:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suarez-id-au.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=WYCwN8QTAMoglqMYtKGECrvfijU1qjF3rwazJKRPO5WYtsraH/6XBhffrZntO2yJBh
         7gWBaoTNcFfc3Blf+AQN/5smYamNSr0yxMU7JeiHRCwJqABREpATYvlWVE4NIbl4nW2B
         0sCa2mOU2VzU+klPhZrTe4Lf0WqAtIuHoYWYzZoEjSbC7kJY4+49ubBbsjii3LR9k3uQ
         tFeonFErueIk7hJnMiTHspONkTF7JjgbA760Zf9MEw1hLjEIx8YnBgOWzeCVrsdrfjnZ
         iHrOWWV+Ph6Zq8mn5AuWL7s3mRv4Un0SB6Ia0P3yyx+P+JF4LONDLQqZXl+SwSaKOC7r
         kbtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=Xo+SYUzQEDoIcBF/l6AirqUinbpSZ41wC1C55yC33dx4n878B3zsJeHR0hwaxL5QbO
         cM9WtGwueI1k2DcZOzz0XlUMEtJ5kQJHWNQTvMupwfAFrNtaNEKVJDbF+cENM5dysmWV
         VZdQEdaLXqqvlLl/L7ugg+wUuKg6UJ30EB1KZ23sx1HsX1dOGyzQCQ+cqwG2fVwb5MKE
         mOYaDeGguJ0CwZE0kT+XFg4IVmTKW7XqwQnez+wbxI22aUGN2ZIyhuU0b2AUePWtySUx
         EQLq1CAaUjRsMw6Ftj2Wcn7JEgPmBCd35ZOHJlgRxxQ5RIxzHEdTcuPPyDwFTpL3ym9z
         OxZw==
X-Gm-Message-State: AFeK/H0uhl2FBqukUkUul7ampqVSGnbx4TMLeHprhm6zq6NlPlRGBuN7hsCEYxJNAXLSAw==
X-Received: by 10.28.174.203 with SMTP id x194mr3762866wme.85.1490489705921;
        Sat, 25 Mar 2017 17:55:05 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from hcs-desktop ([2a02:8084:2143:b580:a464:84fb:e83:71ce])
        by smtp.gmail.com with ESMTPSA id s26sm8840382wra.66.2017.03.25.17.55.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Mar 2017 17:55:05 -0700 (PDT)
Date: Sun, 26 Mar 2017 00:55:04 +0000
From: Hannah Suarez <azure@suarez.id.au>
To: outreachy-kernel@googlegroups.com
Subject: [KERNEL NEWBIES ACCESS] HannahSuarez
Message-ID: <20170326005504.GA29002@hcs-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)


