X-GM-THRID: 6806104906273914880
X-Received: by 2002:a2e:a0cd:: with SMTP id f13mr3789663ljm.198.1584669786985;
        Thu, 19 Mar 2020 19:03:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls989600ljp.1.gmail; Thu, 19
 Mar 2020 19:03:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvLbjvsD1ra9mEtszr5IilsYrxpNvNzHaiFCDyvjpr0oKI2hXa6DXMAGPH0td+zW3/z5bUV
X-Received: by 2002:a2e:7e0a:: with SMTP id z10mr3801306ljc.42.1584669785647;
        Thu, 19 Mar 2020 19:03:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584669785; cv=none;
        d=google.com; s=arc-20160816;
        b=vUEd0PsBmW76Le2Cx2fE1VfieB4Wh2pvvk6tL0HTmAaI4UlvdlQ3VkH7BFcHcnIvq3
         YqVggLTHzKXI9q8/cR99gnOt8TKKaetJHUkt/Qn8jCSYyJhEuaqX3aIJbRVhhX+6MS9D
         klzCTG/2s0KDLKp9qMmSZFdnpbGRT9yavks5trVyWe6lGqUmGcNMFRj1v+pZY4Kn2BVz
         u33l5f2mm07iIUHopXFv50VLbi4sjLaIkWQS/vn50CsBHgkAR0khmEw+YANwXG8krSx3
         1Ru1NGyznl3dLcYad29QGND+Jl7qdeBLOb+4cbBWOdjEVTpIssJMvFYP9Z2qLBteUPl2
         kGeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=E0gwhMDbSCYM+6fvzu0q0kjDKlMwTH2orjtJKwoQ8yo=;
        b=fjRmTFZlZXxiqMBJD/wezgr1DNoZIcqurpAzhgj3nizIjoVNkkAQc2CKfbtJ2n0bgd
         w6X5i/NGlwvf3YdOtPDBkI0UekkN0zTU62UaW9mOc0ThkxOWkpPkOWWBPYBQpTJJRsgS
         wpEZWqdJbblxG+7WhE7l5wVS6LeHMUNgZkGdW0WFecOlfuacWwI2DfY7Q9dGgOyuIK80
         vK/41zQpj1GHOHoMeXX/ZofLPmprZNla5WdZYjByocY9WAajkokgG3aqYAEg0H5R/oj4
         vwZSfJY4WvwJSxiRqQbJl5a6GV3+GVQPZ6RXP6o4M/UxiXxNj30BlacBUBvQ4EL2a4BG
         uVxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qh4u6Tl8;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id a21si300647lff.3.2020.03.19.19.03.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 19:03:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qh4u6Tl8;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x234.google.com with SMTP id q19so4742752ljp.9
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 19:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=E0gwhMDbSCYM+6fvzu0q0kjDKlMwTH2orjtJKwoQ8yo=;
        b=Qh4u6Tl8bEIKURtc3HFJSUuhbg7GyJSzHlUAV/SjgEhcV/GS6AGhOSFf3tgCHENubn
         0BZ0cOP+6HvivqNOO1j2CPaPuFlSblIYWRVcuTfTcLU0xuOFWzjQc1G6013QAfWeLfUC
         Y+zviPv3lucCpVBw9tR4ze/wAvhU2q0w1SuwQ8Xhtf8dfQniG+xJ8P6qgMxEnLWJhtxY
         FA+oTOkuygyWplhV+ntptmtOkKoLxN4pfUc48RHmV22yv13iB93t3cguZtFSPxOyuTIq
         M7PRg3p7XuxJun6sCDg3CbQiiJ3M3VTMakB8eOKcFISPJiYDnJWOI7OP/s01bjoiSZ3Z
         ySsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=E0gwhMDbSCYM+6fvzu0q0kjDKlMwTH2orjtJKwoQ8yo=;
        b=b4HFzQRs+wXAl4Oh5jppEqVaJvGwE44APjT8STuduOaxzGwNaoNgCEq9e5kJgD+Z29
         5E8CL5URLS7hSYR3P46AT33UtRWOYda3+hlPNW1ATM8Z/UI1LdNB/RyvGVS2g96xWMmC
         Bf+IEQLJsDRpLa9kyYslbfE5TplrN6/lUGF3dY6bVkxeTxwDnLIuTxb2jTLvSCt6kbf/
         7JHccZsgVsqJ/fikJ897I1nMQCWXp4HIVnZyojvSw0LZ3wJ+UfCShBqmCZVNFUP+AW/x
         GbFcK5IEBTI7q5vh8M66CQQtEEeqJeqQ36TE0ZL57uNeA9USGXndz6UPekByjNT8jc2v
         drEA==
X-Gm-Message-State: ANhLgQ2ukEBcYPmSQD/zXJ2lxdkmeQ49OIjjMRdQyJ16c+DymHyLJhlY
	FCW80GxOTMOPj82LHknCT8JqTVnrFFk=
X-Received: by 2002:a2e:964f:: with SMTP id z15mr3921230ljh.237.1584669785420;
        Thu, 19 Mar 2020 19:03:05 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id y184sm2454893lfc.97.2020.03.19.19.03.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Mar 2020 19:03:04 -0700 (PDT)
Date: Fri, 20 Mar 2020 05:03:03 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 0/2] Avoid multiple line dereference
Message-ID: <cover.1584668081.git.gokcekuler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

merge a line -> with a line ending with a sign

merge a line -> with a line ending with a sign

Gokce Kuler (2):
  staging: rtl8712: Avoid multiple line dereference
  staging: rtl8712: Avoid multiple line dereference

 drivers/staging/rtl8712/rtl871x_mlme.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

-- 
2.7.4


