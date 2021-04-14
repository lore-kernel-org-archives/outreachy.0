X-GM-THRID: 6950931124731248640
X-Received: by 2002:a0c:efd4:: with SMTP id a20mr12817250qvt.62.1618389767619;
        Wed, 14 Apr 2021 01:42:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:7d01:: with SMTP id g1ls612257qtb.6.gmail; Wed, 14 Apr
 2021 01:42:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkVIQve1wg/ISoUMPvpPzNNVXLE6bCgWefKSV66j9Pwy7YmCJUSbi2d+PV17g4GqslZpI2
X-Received: by 2002:ac8:5705:: with SMTP id 5mr1069048qtw.208.1618389766746;
        Wed, 14 Apr 2021 01:42:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618389766; cv=none;
        d=google.com; s=arc-20160816;
        b=qfIOySXU3xqbQ6IpFwTYu7Our11yShaxF91glUPy3N7C5O307xCLcpcYPR9yebrZY5
         k2akx5Gy7RHyS8uP9mvtY5dDoPsDCeaea4rJmUXYj6/2UMgwIrqstbyWAi7Pst/l5Ayy
         8KrOCdPMQ5ByB0sjGWumWv1IZdw4yk562JFrkZsY5NPyxV9lmZ2o1Do8gJHKw9/p71HS
         TUuyRq/7R6kNhBSp/jpj3so7SlsEaiftc3niUyCBwxZT+X4zx6txdvg5bXRiA1WdDX1o
         XuUcGZe/SSgCdEXpoBQ1mEvBX2+BtJY/nQTthyytdwiioCm0r89QxRoy5Mugs1qYx4jd
         xLJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=c1UwCXlupRbJYhC4tF/tT5BdRQAku37CgC0ulB0Z4KI=;
        b=daIPluC1VaGPerdziPiR8ddeBLmncy9wnWsMIQrGKUGWygCpLy27OHroyaDDUbAlZ5
         0/M/M94r7gJ6b7tmoDd2M+vBlCyfR+mB4HFQHE1QRuoRmW96n4BkSrQArvwgPLD189Cm
         CRiKX0H6Lsd1nO1TVlR8cg7nJNZXK8DnXOPx+wIQxWtF9/ruPO25ozKU23QFinrn9ghC
         7FdHC310peMw4hQhDH40CUaVVKy0invaSgjwdmM1kZT6iuFMBvUp/UCtXdO8IHwab002
         IA3fY5+peSwFpWSr6goXAQCoTSTh7Bk5+tmn8+foUeI3n4KcyJQqd5T8pBIxHY47tdob
         8axQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=LltC8vTo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g22si1021086qtx.4.2021.04.14.01.42.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 01:42:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=LltC8vTo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id DD4236128E;
	Wed, 14 Apr 2021 08:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618389765;
	bh=c1UwCXlupRbJYhC4tF/tT5BdRQAku37CgC0ulB0Z4KI=;
	h=Date:From:To:Subject:From;
	b=LltC8vToumBjkKbxATZhTfa7JAtJuHlYrW7rvcUHtV4kN9SWtzYRrU3QWK8T9rzsU
	 lqjRbr9p8EARMzPLrHcBvBuzpg0gzyUsVjAKWwreulvd+DCnoJRsV9nmz5it9rhQ8t
	 RTNvLCkmpfJs6twq2xIiMA4Ijwx2eVnEtLAYy748=
Date: Wed, 14 Apr 2021 10:42:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on again.
Message-ID: <YHarAnJI+9rmik7C@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, or that it needed more work, and
please rebase and resend it.

thanks,

greg k-h

