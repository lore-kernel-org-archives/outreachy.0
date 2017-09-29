X-GM-THRID: 6471195267165061120
X-Received: by 10.98.163.197 with SMTP id q66mr672164pfl.14.1506692559332;
        Fri, 29 Sep 2017 06:42:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.195.228 with SMTP id j91ls2038898pld.4.gmail; Fri, 29 Sep
 2017 06:42:38 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCghypwDuliusHqgY+8Z3Eq+YK+lM2iDqcgyvwIoGvze7uQ2X+7GMaF8SiOzPZ73Bt4WJmf
X-Received: by 10.98.60.215 with SMTP id b84mr665409pfk.17.1506692558010;
        Fri, 29 Sep 2017 06:42:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506692557; cv=none;
        d=google.com; s=arc-20160816;
        b=cCbMtBMdGr65g97GhbAv9nxOYwraxwWSmE4CuKjAFpKeKcs/vHBChIsM7ZevBGPLe2
         QNUzVus6Ut7d0lsEXc7fmWxND04JYllr/kxdcVqLKmQQj8EEAoJZxRcA956U4JYPrB/z
         B3eja3Q/a03nH2VUghetIh4ym88zAzi3T2B15/NDleYtziFcAp/er5I13ikQkFovW5x4
         XdiidpwimTkqjt2VeSI/kMTDuTHoY4bKKs78tGQY+dNYB+yv4ObG+MO7mIdhP0Y9jS9y
         FVQVYiCOsd5hsitdHHt8qI7xwErlfyO4/z62AqIeyQB28iSNUhglc/a1Syukc0/fI4A8
         9atA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:arc-authentication-results;
        bh=7YUcmG0G6i+0sOqurO1BxySOLZfIGth7nBazLkuKpew=;
        b=AS0YlGH5PgKiL7mBjsQ2v9sOAVsaEm/JsRMy+egRVrc4vuZYIeivZdsd7UPJnBcAkJ
         53Z8M9gG8mTY34pPCfO4FFOiKCFPnx+ePDvycl3/Bse+I0UP+yhoiJZMkQJDBJDzXZHP
         qeHpHxqan50yb4bEZFbJ2ljZuTYWjgquzOr3gA1O2XLBZfpFuY8ochjKEdiIR2OFj6JF
         LCIQQRsiT2FzPeO6SzYGMSF7HIAUjeMYV8+DITVUmUNR5jKyg0Uctb8TAJ2D/tBbeVwe
         yCbx7sbaJTUmltH4rIBfCANWXokRYQwVym7sIiDe/vFq7EVUi/aTfRkSMuHI8zhMPTA8
         r5UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e80si13017pfb.8.2017.09.29.06.42.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 06:42:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [195.81.232.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6810EAB5;
	Fri, 29 Sep 2017 13:42:37 +0000 (UTC)
Date: Fri, 29 Sep 2017 15:42:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20170929134234.GA24590@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.1 (2017-09-22)

Hi all,

I'm now caught up on all non-IIO or drm outreachy patches (those go
through a different maintainer).

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

