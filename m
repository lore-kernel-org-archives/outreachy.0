X-GM-THRID: 6802515514721566720
X-Received: by 2002:aed:2499:: with SMTP id t25mr5768590qtc.127.1584454196798;
        Tue, 17 Mar 2020 07:09:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:420b:: with SMTP id k11ls1810453qvp.0.gmail; Tue, 17 Mar
 2020 07:09:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt4MjrlrgXBmV38iF9Y0XNXAfaM2V7xB4/k4W86HRcUU3XQ+nBPT7wfnkOREX3hzdMez7ls
X-Received: by 2002:a0c:cd8d:: with SMTP id v13mr4959985qvm.189.1584454194695;
        Tue, 17 Mar 2020 07:09:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584454194; cv=none;
        d=google.com; s=arc-20160816;
        b=hlchZ7jip3PldmSsNFSU367qXN+jM2tVVCplpDDXgtSuw5sR1CYtBXlJJEnkdiSVS7
         1WAkZuhWpe793lL/PARRdw282fi+upNJQf3MGmo4uLFvzhPl9NinwsRGurqNPyhvxbT4
         WqOn0qS0PpvxrCv8W5tNr5kJ/OfRKYEC/8VRFTb/Hx9Ru1v54V0qJBHC2KbwMt/UDv01
         r53/Jj+Ob4LRmrQ70betzgQ8BeFI+br5I9r+Ke0IbGntxBDyjXw6QlKM54ywvWuut30x
         jTB781Gbhp9saDpu7hqCiXJdwk00J21msuZ0GpmFB62fqDycp8cHuBqpjQ7MYHiNKvbK
         2wwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=DZjbQEN3OcJ44d5WcUl4rs0J/EgRgI9oNAJe5PtmWZKA4AFBsbnEPhOH84+/+e4fiD
         3JtP59yTx/e5H8FMgdIh4HPBkzyGLI1tIN15bgUM0gB1jElaPgXvDAjLLJkmD759gAtf
         ztdlALjQxszHT2In7JNgFNaHkA2I9aarq8Jlq4p3uMgOBqGGwlVLzLerFRPofBN1pdKC
         n1mLi+RXVwCDmVot4XzYuX8eBSih2X7d9N+Vs5gBvUzL54O64i40jF9ckp9p0qF4AKzr
         O9tnpG4/RiICUwXHiiT0VKlAZsNn9itPl4vQ/Ujjqpkf7Pc+eUC1GCoFCTjEWquEJRuY
         T/Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="YNnin3/o";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x11si234439qka.4.2020.03.17.07.09.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 07:09:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="YNnin3/o";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 31E7B205ED;
	Tue, 17 Mar 2020 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584454193;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=YNnin3/oBI4u4aaQklHud4Hja7umWa/Hi7R8X5AnJseh0OBO7ZTw+Li2CBXdWbrtC
	 l8XsERvTUafZyozQNWOL8YDl5DVB+BmFBi5wwOkQKWJNWg7wpqNDRUzsz1LPNOUZvE
	 Tr2TjorEQxVJB9yyf6fwnNO0HkqK+/prQxLBlAos=
Date: Tue, 17 Mar 2020 15:09:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20200317140951.GA1362367@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

