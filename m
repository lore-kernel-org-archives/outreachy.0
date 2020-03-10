X-GM-THRID: 6802570683700215808
X-Received: by 2002:a2e:5ce:: with SMTP id 197mr4194550ljf.234.1583847406076;
        Tue, 10 Mar 2020 06:36:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:3cd:: with SMTP id f13ls2457007ljp.4.gmail; Tue, 10
 Mar 2020 06:36:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtbzk2upmgL8MEJPsqrI4+r96JF5/EGTIMo7yXiTuOQPvdWJpLX3KgIkSvCBCRTGaj+EiIT
X-Received: by 2002:a05:651c:50a:: with SMTP id o10mr12890293ljp.189.1583847404974;
        Tue, 10 Mar 2020 06:36:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583847404; cv=none;
        d=google.com; s=arc-20160816;
        b=Kw39MvvHVKDCXLqhG4cKWCrC3gfHvjQ9EnwLsDnRsPdYjQyZYtRrYxl0Ri0y4X7NYn
         NoKLkcL1pU36PZ69bKUrg4xwbdYB2kdqsUPVFvwNnVUMeQwYt6Htz5bldys1ydyq7kXq
         lbNqeyVDhf6JRrM6VqOVuwqdIqMlEmmfaFra+iEcJXhR2FiO9wpor8kw4JVR3c/ahREY
         c3wyVoECc4WihVpdoaS8LevLgry8vbbC36M0Sw43bIT4dkwcsRRvIepHR3KJSWve8MO4
         M+WGpdCQV98TvYD+cQPWfl9M0EBKbCi1kpzUUC82G3f3p7A/0d7Uju8ZDGeiDkzDtRXJ
         n/OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=eUVItEve7etJT2YTQGdR6g33iLeiF1mpO2OfGaf6uv4=;
        b=CczzX+hosOys7HFfPvoZBWX3cBgtavyHE0c4dbuCYnj2lwCvJUuJjIBQqPegicm5uM
         k+35hnIxH5sPWQxn5diaHcO7x8YzMfWjxOpQInH56COFxO28+uVciWNB9R/LjnI3gRwy
         7uH6SlEDnmrfNdeR98LIyH92trdSzUWlpayaEhuH2c3mE4B7xoBlBgoUzOGKdOmFvx5D
         9J6EF2L+/6JX/iRY9SZIaRroMop9ivUXUpzgg5H4xeGo8Ym9UBFwnGle1S5HyknoUsyh
         diJ1+N+XS0xDQZZg9GmkiK+BYF1Sb20FHU2cp3XjCmaFkNccuastRC4p1QhRI8DT5NUi
         Jkiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=S3jDrxZW;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id u8si569044lfu.3.2020.03.10.06.36.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:36:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=S3jDrxZW;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x32f.google.com with SMTP id e26so1370054wme.5
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 06:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eUVItEve7etJT2YTQGdR6g33iLeiF1mpO2OfGaf6uv4=;
        b=S3jDrxZWSUDSC14D2DXENKoRPqhXP3PQ9iB1XNvTAPXXaROmBpB6KWIlEwWdXxQEci
         taEzjy6HHmNb2a+6WocRczkoWiGLVL7BLcgmF/E2oIiL88VMB2hkmcxPdUcc3mTCHlP7
         BTwIsBjhb5TVMOLcBYFCkLCSFgVqMvfIUdy2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eUVItEve7etJT2YTQGdR6g33iLeiF1mpO2OfGaf6uv4=;
        b=Z+xKg1Bzc9nMMLPjML04lRvaT0OZQGkOtmVy4D5iVzLJM2UBOaCc85ZmkinorzYrfP
         Jpalb45v69XEycwCP8Sug617C5LnMmiw5tt9aHrCFoqWQYpav57p530l3Fznn57ysj2/
         hjGCBVNNomzLU1yX0SI/bYLFYNATTUjn+ckPsBXkeDyfUmmpiEoTVyE09XG7sovYIabt
         +11KgBXXVyc/ucEfzgLkKg3XGttTEKNlKEes95SXZwcyYA+nLEnHMDheO9SgffjjEpaO
         0iSn2P2WUivcqnGH5Ay9seFz9cxYJLbHE56VZlOZHaORfI4Cm5gKr4eaF6yWn4Lmzaxw
         7f9A==
X-Gm-Message-State: ANhLgQ12b/pyeq0wxp04J467F6VX0EWEMCsEY0ZkX2jZuUKJQbfGWozk
	orT0ADFSp3y4KMG0HX8rsgyBGOp+lO6aJg==
X-Received: by 2002:a7b:c92e:: with SMTP id h14mr2372874wml.90.1583847404366;
        Tue, 10 Mar 2020 06:36:44 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id o10sm19398370wru.38.2020.03.10.06.36.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 06:36:43 -0700 (PDT)
Date: Tue, 10 Mar 2020 14:36:41 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: Re: remove unused code and improve readability
Message-ID: <20200310133641.GC3202@supernova>
References: <20200310132814.8269-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310132814.8269-1-lu@pplo.net>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 02:28:12PM +0100, Lourdes Pedrajas wrote:
> 
> Here's a set of patches that performs code cleanup in the file
> drivers/staging/vt6655/power.c
> 
Please ignore this patchet, I am so sorry, the subject line is not ok.
Patched is sent again.

Thank you.

