X-GM-THRID: 6396639849722413056
X-Received: by 10.99.123.24 with SMTP id w24mr13868955pgc.108.1489333773008;
        Sun, 12 Mar 2017 08:49:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.207 with SMTP id f76ls3703514ioi.6.gmail; Sun, 12 Mar
 2017 08:49:32 -0700 (PDT)
X-Received: by 10.107.37.140 with SMTP id l134mr7975101iol.67.1489333772319;
        Sun, 12 Mar 2017 08:49:32 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id a3si2720083pfb.2.2017.03.12.08.49.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:49:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id v190so59853673pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nlQhLwqkRikFXfanCM6cyrIqLg330Jk6xOzqniBeXEc=;
        b=UsVCWi011xF4jRYlPdLwnDl+THNdOTP6SpJVdJgmWDn7yq5884DpnL7ese89Re8h43
         CEIk9mfJb+k84AaZ1wYASX+Fw/dUyP3f3rHbxzSkZlm0wDkhc7L6ZGYDk4hO1CvBAu8i
         UTAp2ReuXdfUFKbSSlSRloyrCVmpA1pBJ/csiJr3wP9bCm5Q3vCwYJoO1ynKepmjfLNm
         Lpf3ThK3dePRTIDEkrfHm0YdD+rD3CZthKJOpYQegFbS9xUE7R7Q+H4HsB0Y6klJsYB3
         80ty57tHhe4/h8ZfzM98wnEPMFsXrBf7fMGn1C8g/ibAdfpFMhnOFCZb5dg+8cotnUEr
         mWIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nlQhLwqkRikFXfanCM6cyrIqLg330Jk6xOzqniBeXEc=;
        b=o/1FrpTAzaVDdcpZY7dAiTbHlvd0QUCqG32vWFeYXe3Nff2zX07ymP0x7Vatfl7OG8
         y5/kqZfW9+ojpOnyaOZA1E4wer1ybyR3Xti2zcEJ34BHMBFbZLWcgMtfEifYEcNf2OYz
         afci0yuogXAroWTEuUh3lWXs+yeaeHpUSbQsqGjExfW2grirgPC9VuQnjJ3m4KmFzbKv
         Cu+EHD+7cheOHo2sdd23g4ba21RA/c3zSmB8hQXFCNyjugcY86lEqQ+SAduM3DC8lXK8
         OZaQKRY79LGRXAwczCZtAbGsY+MRhEIzxO2XhsLVFfX2G0kihucMeOHgnifFQN2AeWc9
         8uGw==
X-Gm-Message-State: AMke39mEaUEYt0B0RGGmSf/6Nv3GK2HWorVO4OBw2JmwbppByOvdzSjb0UDNlgTOdiId2g==
X-Received: by 10.99.177.6 with SMTP id r6mr31529965pgf.61.1489333771944;
        Sun, 12 Mar 2017 08:49:31 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id b77sm29016994pfl.2.2017.03.12.08.49.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 08:49:31 -0700 (PDT)
Date: Sun, 12 Mar 2017 08:49:30 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: New IIO Coding Task Posted
Message-ID: <20170312154929.GA2417@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Hi Applicants,

A new coding task has been added to the IIO tasks page. 

Coding Task 2: Replace driver usages of mlock with a private lock
Enjoy!

alisons

