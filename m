X-GM-THRID: 6620377102815330304
X-Received: by 2002:a25:840a:: with SMTP id u10-v6mr3468749ybk.14.1541426662758;
        Mon, 05 Nov 2018 06:04:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d209:: with SMTP id j9-v6ls1124290ybg.9.gmail; Mon, 05
 Nov 2018 06:04:21 -0800 (PST)
X-Google-Smtp-Source: AJdET5cJsgutBDoKV99yYBSeEvRgJ1i6H1swXf5ZeuGQsSDOOtYHULD/EpQ65ma67Nrkn/mhcr3r
X-Received: by 2002:a5b:441:: with SMTP id s1-v6mr7265339ybp.80.1541426661903;
        Mon, 05 Nov 2018 06:04:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541426661; cv=none;
        d=google.com; s=arc-20160816;
        b=VuRoUP/ko3mQtM+0Y5xSw1OrwRR+8mXwiGhPsTzFcj4iIIuILKAA/6xKMDLNuKi1lW
         3JsX2TW7LupSbjuxGnVsHcpAywOZr3XFw5ma9q3lWAfFzx0Xcx0tbxSZBNZ+r16QLe0R
         uYTDUV+E4oPTsgNCKOL6cBb9G0TcEq/c1/g6XS+AnQ0i44GjwmcCiJA43JkQwWD3Kboy
         q/VnOVWk3JrtWzUAn7+RZVF3H5utZZgZCSMC5bLTYPw/MInhXOrrnYHZk1Bq1klviKWY
         zX+3+4FN59BG66rRkxWRaAiz3h4zPjV+zMdAM7T8y2uWx6n1md0BCKHRFvqe2kIPAyDy
         dBeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=+CtBXUSu1PLMvxmU3nfwlfhkXdQHlTprj/Bsp+L+VMY=;
        b=pt/l/gsXoHb2ZH58rJ2/PRMvTocJd6u+X4cROgro4SqFHV7EYiA1yBRa4jVQN1HvZJ
         QG99TIybZue2M0EIhVzUhHlZcO5yd049QFLZLUQR2qPf/Hw4Hjh1AKKWT7eHGNiMFIrd
         CV6T0xe5hl6y2t8uLmGqZUVZLXpJ76v7Kh3klQ1wVc+Ew4Ub5WCLpZP8eqpa37MrQYC4
         2UJmWroNQqu1TSvyT1pk4zrI88iJ61lPopwQv3pwJhN4q+0CxD2xRBfW4HYVmRFkDPt0
         fk4sARIu8RdvhSyF2FrGxmlrlJ3XFtjU/ZZB0tCiU5oIn5A3Q/9fnaF85C1Gr5arMvpJ
         v2pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HjIuJm4X;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z68-v6si793954ywe.1.2018.11.05.06.04.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:04:21 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HjIuJm4X;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5DE9820827;
	Mon,  5 Nov 2018 14:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541426660;
	bh=gbzfqWVCHzWExvXiNw8uncCv1bMO52Q9NxugmmeOOKE=;
	h=Date:From:To:Subject:From;
	b=HjIuJm4XoC1jVJ/0jHgWpf3iN+MK+kvvwva4fJ+5tc7PnGBpyNEeg8eKKLKoe4iHE
	 gXJI0c1PPdAoPOdmX5u5VI7rBKthS3QeVdskacGh4XFxTb3Spf4CvCMq7pA3LVqclx
	 EFZYHhxqmngdzN7p/pu39Swm04OOEqhy/xtpfnWQ=
Date: Mon, 5 Nov 2018 15:04:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on again
Message-ID: <20181105140418.GA20313@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi all,

Once again, all submitted outreachy patches have been processed.  If you
did not get an email from my system saying your patch was accepted, or
some other email from my saying it was rejected, please assume it is
lost so please rebase it against my latest tree and resend.

thanks,

greg k-h

