X-GM-THRID: 6813025056847822848
X-Received: by 2002:a25:aa69:: with SMTP id s96mr5402331ybi.85.1586281009562;
        Tue, 07 Apr 2020 10:36:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6902:6c6:: with SMTP id m6ls1494328ybt.9.gmail; Tue, 07
 Apr 2020 10:36:48 -0700 (PDT)
X-Google-Smtp-Source: APiQypIi7ENsH8YpufPRY2EU1TYGlPpEfRbcOD+SUWkGbwpemF7cF/dKEnXsSlRY2GI6rcWXTip1
X-Received: by 2002:a25:664d:: with SMTP id z13mr5533535ybm.34.1586281008278;
        Tue, 07 Apr 2020 10:36:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586281008; cv=none;
        d=google.com; s=arc-20160816;
        b=KhcQpuoxlCKCyIP2beU1qVoTA90Nk27bkJGv0DCNVDwNA05H8MTQCF6hRWJDAYrkcR
         MR2OGmLnbqmD4yCwc6v3xpcyCJL93LEsmgdw9IoKtmI5akHQP3W/WA9duL1srJQoIu/O
         6MSUZkPQSlyDRoogvkNSjcFNXEUnbQN9nD7x1UlRd5XsnU63AE/ihF45RXo7Dh0kIBdG
         arbEAbVpCBCsOfKSfByloh2O+HW881ui00rpxXwFUo5axzQjMUq0EilKHXv2X6HyFmn2
         6lc45ERfdAN2H3cUkXPLaZYm+EAY++gI5J5PZJCcjKUVxO0H+fY60/s47HXQ8ifRgeCc
         jtRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=cUtxIhtYWheQtIJ9jDUtBUM1ygdzknVWBpCTMFhMvC1dY/cr3O9qydlUtUu7QktiPm
         /Y5MVItA5yIP2Pvf9hY6T7aTxuNsjOL19XExzt/EdczaLUuM/x1h7GERKY4Je4od9ClM
         X814U7O1YK0mGEfc96Fnf0rIPflh7i1AYmJeEgIJxmdu1x2RbYUdLRnDPhzbm3gI8xa3
         t9NZ+LGKoDaR6YmZcIfDv2d8lFvL5ctKGGE4Bb29G+qfUu/MLiBNI6Sscq3ia6bUVoZ4
         FTbaCDasMNv6LV8nf69xwhdveOLyvIfFUoLPELq+t8WHFcxTSVbj9q5HCF6EPm03wnqC
         Lxjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=N8ZR+ClY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f195si206529ybg.4.2020.04.07.10.36.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 10:36:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=N8ZR+ClY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B36D82078C;
	Tue,  7 Apr 2020 17:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1586281007;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=N8ZR+ClYTAX8mnR085gg6VBx0r6Vt0IsthNTIH9+r23EdHIujf5+VoCz/4G/GSZmd
	 Q4QoJ2bnL9agLQqndN0ydqDV5yCQxtLyFIivmwpy3UC9bdiECVCh76FaPRm76B3Ayt
	 dvfUdKQoS0aemXKjF3JwsCWP3O1Y7/T3RDcXmaz4=
Date: Tue, 7 Apr 2020 19:36:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on, again.
Message-ID: <20200407173645.GA989360@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

