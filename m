X-GM-THRID: 6949444084814577664
X-Received: by 2002:a05:6e02:de6:: with SMTP id m6mr15132223ilj.81.1618043539972;
        Sat, 10 Apr 2021 01:32:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:cb86:: with SMTP id z6ls2570337ilo.11.gmail; Sat, 10 Apr
 2021 01:32:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyijt0c+KXIHcJPSrSj5KqtWyYDDCQ3PiAMlx/Pwc/eFYVOPvY9finyGs+guyISr5pp5YX7
X-Received: by 2002:a05:6e02:4cd:: with SMTP id f13mr14944916ils.258.1618043539262;
        Sat, 10 Apr 2021 01:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618043539; cv=none;
        d=google.com; s=arc-20160816;
        b=eKeJKuhhcH2v8P+yY2Y0n1k/R/Unw4TGsWhjNMAkkPQ9vUpthachMOU9KoCykNMHcG
         ylWKrXOkKnN59fDPtSkiJyVBxqBWSgNNkpQnx6159IhyeZRU36PeHEZ7HiZww6kprJ5E
         38aGagHewZ0cSKYXxjrbLu8lmh/qAOxfFxEHWoxakdvR0zps583dTbRLXmRWWbbKSOtm
         n2xauQCJTO0o2LUtdXZroK0Mz9158Bj2oKgpOQgJTywE2ayNO6n9eO+RgaO3vT3JayXS
         57AiK3ivlhhnBuBLNESqcCxW/tha0q30vhYN6nQRI7f8QVFyR3eqxQlaxKxNS84yXTfh
         qnnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=c1UwCXlupRbJYhC4tF/tT5BdRQAku37CgC0ulB0Z4KI=;
        b=pv0VZDaxxX8MhgDSrmbP9Vso/m3KKFkaSypcaWqW2EoarYz3We8zF3zeCD3JdUWBvQ
         Lf1Se90q8Su2IJ8WHOr+8GNXvUedSlJJ8sFFkhqLTToCwtP4R7CYocr/mWPxlJbfXU2R
         jTRNjKQ7Ao5/P4vOwX6XhxPorKM0xNjgQNn8qDJipIEVQi3q3h5o3jOHYZyLBSsRTf+e
         RyCnqziZcG54mYfL34pQ+zpM8LpI211EilKc6iE8VfEwJSSl72YMpX8vXLc0cDwYqLZ3
         MGr3KSlURtHtXYSWKHTQ5gTA4l6ClKJqbtA6L6GxsRncoYF1ISWIJFQtWau1noqYSnFk
         lGlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=LXQdeH9h;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h18si335855ilh.5.2021.04.10.01.32.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 01:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=LXQdeH9h;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id F396A610C8;
	Sat, 10 Apr 2021 08:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618043538;
	bh=c1UwCXlupRbJYhC4tF/tT5BdRQAku37CgC0ulB0Z4KI=;
	h=Date:From:To:Subject:From;
	b=LXQdeH9hUWrmv9x+NrCFzhq0r85wtoOvd/fhvsqOTmpO/DCk1onJylU0cAlnFu/qM
	 h6zC1v+5Y32ingT4S27XdyPYiQKSOqnR3/QJSDAnJravn0N+tXH9QaphA2Faz9MObL
	 aPDkXDAPuxIJpb1xyM3/oY4NMTKJcte4HZ6Niu2U=
Date: Sat, 10 Apr 2021 10:32:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <YHFiiWTXw9eGWjUM@kroah.com>
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

