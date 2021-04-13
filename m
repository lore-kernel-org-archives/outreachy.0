X-GM-THRID: 6950478192224239616
X-Received: by 2002:a17:902:aa0b:b029:ea:dd07:b7d9 with SMTP id be11-20020a170902aa0bb02900eadd07b7d9mr13339967plb.27.1618310711114;
        Tue, 13 Apr 2021 03:45:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:d385:: with SMTP id e5ls2708981pld.10.gmail; Tue, 13
 Apr 2021 03:45:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwcKyMx/KzzyhZldEdLr7kn+/9T+I75nYWF+utaxM/BD4wJJL64sUIiFcssIh9N/eoHRwtG
X-Received: by 2002:a17:902:d306:b029:ea:bb6c:3c99 with SMTP id b6-20020a170902d306b02900eabb6c3c99mr17431213plc.9.1618310709972;
        Tue, 13 Apr 2021 03:45:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618310709; cv=none;
        d=google.com; s=arc-20160816;
        b=kRjofgZCKxp7tyg9EKSymRChzZk1/F5DArL7cC4yhcGMf5zT387ttCxMNhbuD23DQT
         K+MwmD92Lln0ne+dTHG1ZZlSOOSbh478/rB3BWq2g2nKmdLqDM6PRM/3veQ0enwhLxGk
         vEPXoxNJegnswyquUDIEZAd88D07mm3YqCiE71hOmkp41GUysTcfFFnjRMvLzlNelPOF
         e293SnYT1zIq/c6oU49iJB3dTgMVTlDrPJfMUGUNSYp1y6lqZzwqjVgyuMhCLK/cnCvm
         frOKyQsAhHeQi0CtSudYLdYKUhKET7C/qktfScnIHWDBC46a7LcSTfS4bMdMO3NRrkpi
         i37w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NJEs0OVIbEPu0niN8aqEV6/oMkDrOYYQ8S6g+FDY+1A=;
        b=QyJqTY8nCllSubvgEuNtjDBW/8bg7ilwTxdFny7lOo7PPiwabALNc5wZEAp+GKiw9A
         yu46j+A3TpqJBXKrREewwKvSCwUfmKd10942ooSxZA9yTnTg/9dIgCI09ZvJX/y5QjWl
         ygvBfz+ue4C/LkKxeULlCSAqSPdrD/IWMGt3GAWB2dLHa2uZiiFiNj7tvfakMUiwu9Gm
         E7UK/y+yP+BO77HlQGH6rId/e2iKmjGKtt/cG3Xm2NpRXAZsU8glu28/QVS0Feud5Z4X
         A8f0CWVFqRNDJ/r7TZ50bf0GAaFdelazbmV0EvufDbMDkz8/6v9xdPdBl5aVKsHTKp34
         XVEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bt+SWsRR;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id k8si208238pjq.1.2021.04.13.03.45.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 03:45:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bt+SWsRR;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x432.google.com with SMTP id a85so10725619pfa.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 03:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=NJEs0OVIbEPu0niN8aqEV6/oMkDrOYYQ8S6g+FDY+1A=;
        b=bt+SWsRREEyZ8aGF2En2o3+UBIqn/QCQ9DJpF7VyNlNflyKIJlByhGVzBdU7aTFr58
         AD1b9sH/dahahuGyfLCJOT9VYjTjp+VZFv2Y11pMK1Zza7Pi19Pa6kHM3GSyc8i3f+um
         UIsDTBPoTll6H+73jlKzEulll3kD+ywexevz8FFliFFFKSxpMB+84PxqRi6GIPICsuXc
         rPIwHwS0xtdmOE7WDvvENu/nF0OMvVqvdeLmJbSojPjj3S6S5nQLocAVgtcSnH2WwOOj
         tSpcz6jOh1Y2urrtg5NI8Ajl74RkQkRWfMh54BVhdQMP80+R7cI5Of2VFRGHfFS0ASuA
         /H1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NJEs0OVIbEPu0niN8aqEV6/oMkDrOYYQ8S6g+FDY+1A=;
        b=pWTdOvkUCTFvh8huQKV9ZHpj1p4+YAQbROXdLYC3EMzJ66/rEv5nsiK/P5ge6gFaiD
         Ogcz5YF8x3ERQc8I6PLBf7Ot7s12HBWikaZABrXaYbBh5M++LkvOL5pXncXS2+NPSECw
         OwXLVA5B8VUMyx9r1rxjbG9TF/CTFHRZAcGLiMxyeAUj3LAx2SqO7q1VjVnk41DWdiVJ
         0lx3jitG5XTw3l6vmw28P5eQ70uSIpE0drb0Pfw4rEazJngotpU+FkLdATH8qsox2Pqj
         nT029iwB7rHltYt0i2DK3cr6eTVmv8Q2BCmMjw38FSGi15q3/1fv8EGZgTgy9sp087GJ
         YvUg==
X-Gm-Message-State: AOAM5317iS7JmPcjGrMsS9TahV3ZMOAF+4saJbO4tbwAXQG8nkB0pyfe
	G8oaA15nDEK348lKhBvvNMs=
X-Received: by 2002:a63:f95a:: with SMTP id q26mr31695929pgk.25.1618310709544;
        Tue, 13 Apr 2021 03:45:09 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id f21sm1957426pjj.52.2021.04.13.03.45.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 03:45:09 -0700 (PDT)
Date: Tue, 13 Apr 2021 16:15:03 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v5 0/3] staging: rtl8192e: Cleanup patchset for style
 issues in rtl819x_HTProc.c
Message-ID: <YHV2LyXrJjVnMsyT@kali>
References: <cover.1618283232.git.mitaliborkar810@gmail.com>
 <YHVN0JRWqNDJYF3T@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHVN0JRWqNDJYF3T@kroah.com>

On Tue, Apr 13, 2021 at 09:52:48AM +0200, Greg KH wrote:
> On Tue, Apr 13, 2021 at 08:55:03AM +0530, Mitali Borkar wrote:
> > Changes from v4:-
> > [PATCH v4 1/3]:- No changes.
> > [PATCH v4 2/3]:- No changes.
> > [PATCH V4 3/3]:- Removed casts and parentheses.
> 
> This series does not apply cleanly, please rebase and resend.
>
Resend as v6? Does not apply cleanly as in? Were mails not threaded
properly?

> thanks,
> 
> greg k-h

