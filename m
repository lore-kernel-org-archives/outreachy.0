X-GM-THRID: 6802515514721566720
X-Received: by 2002:ad4:4851:: with SMTP id t17mr8469417qvy.33.1584713663036;
        Fri, 20 Mar 2020 07:14:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:f007:: with SMTP id z7ls376249qvk.9.gmail; Fri, 20 Mar
 2020 07:14:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsIxfmyMdIH7bUJ689CrGvpxCq+FiReCzBflaX5yoR2arQ1KxPkER6RBmXjZRDu5gAmr7dv
X-Received: by 2002:a05:6214:10c2:: with SMTP id r2mr8528387qvs.83.1584713661645;
        Fri, 20 Mar 2020 07:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584713661; cv=none;
        d=google.com; s=arc-20160816;
        b=IEXQurvZBhiA1/qGqhASF1+9qdytb3ZwGduu5GKWF65G+ce1kScSsV5dhfOFaLFFT2
         lACCTXt5PrbUf0D6Y1s9g68QPllQn7PDfpE5AdQYrj9peM/ED0f87eiTNdYTk3Aq0mKI
         iG+h5svikm0TbSr8GrqVWI256cPazCdNkisMj07rT1fCnKpTrRhtrGf0CoeZxgUQiQSy
         UmMcYx7KxHjbV+jW8lbfBhLON1Xx7fJ1mFXnIgXnEFDsne547fL4vmUevAe43g5DA5CS
         odCPYjbXALA2KdfPTOVkqTwlvfht9tS7sxySkwR4Q0OGiZwUCTlmXP3YsEtR0cC68esi
         5S2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=KM78vdWmbiDPzWwHLvRPYsU2gghM5U3rm6hLZjPFdIvU0nbyTdoYuIfghwgq6JVeJ/
         mdCfnKr4/TmLLBFbAngOenMSsL+dpNU7V+TwEHN2qxk7/SNDikUysJ0NSjCZ2Aip/W43
         OC/rXUF8H63DRCzpdtezezCD6JJlOX5rP/IgOytpGQOBhSFOCbeyan4OCzmXn1K3J/fM
         8Lg+H5QUIloJ+j9EPypljstvf3K/BvE+F4XFuloatDzKr7FDP4fsx+/L25DmYytr8sEJ
         EVnwRl+stroeTqG/UCsmo/7SZ2Hz9BkDQQ8wcuEhU7mO6O2HHTzUHfv07x5RMNQS/CrO
         YAFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QsFiDby6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m6si391905qtk.2.2020.03.20.07.14.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 07:14:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QsFiDby6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 108A920739;
	Fri, 20 Mar 2020 14:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584713660;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=QsFiDby67eYVR4ZogW6TnVTPT7v8kMGmgL++k50+Ujqaw9VpZyvxJ+yqiAGEzpkrR
	 +k/dO4qZneAI1xGQEQ70wwlAvsnAo4UsI7l0yDAzpr+q/GphV3oiUP00OB8H3FvNIt
	 ZEYIVauwHA3DnCXYaeLGWwF6CYOhW980dJxhRc1Y=
Date: Fri, 20 Mar 2020 15:14:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20200320141418.GA707555@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

