X-GM-THRID: 6807375109139988480
X-Received: by 2002:a17:902:7593:: with SMTP id j19mr22183766pll.55.1584965528159;
        Mon, 23 Mar 2020 05:12:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls7597993pfy.11.gmail; Mon, 23 Mar
 2020 05:12:06 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvBUTd+nf6aUgCKwiIqenpLa4qwlhlbmJGhiaNF5XrlgK/vpreg6tZsCgGQmLZaGrOX3vny
X-Received: by 2002:a62:6454:: with SMTP id y81mr10225473pfb.13.1584965526494;
        Mon, 23 Mar 2020 05:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584965526; cv=none;
        d=google.com; s=arc-20160816;
        b=MFARzuw4t7ZbQrTTXcBb//TOXtJzQyN/hFgu0LzaeohKuCqy1Dbede3IpLyfAXEmel
         5WJ6RqrD4PUiB6eRKHoGmMgdE3DgEjorymSbPoRwJLzrSFLQRD7rS88jIRD6iJ4ImP0K
         e6WzXH/PSpyh1/rrUQCFdryqvU1DZ0x2pENZrQjab9Yr5k4b3wtv8YpCOkui2ejXcwPT
         N/kAs2bl1F0oBPfqTYZyieD+J+fG+T9o+9hbi6iEokHIG9KN5ewpBGH9OxZcxyqyigwn
         LT+a2jR0vwwD+gwrl0awxJfiJjVn6uzDfAC7cCilOLO7t3IBaiclc/4HU7BXL3rQhA0J
         iWCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=XYLyGlmxLqi1Z/EOWczWM4b4Qvx/nus+mWUvA4vmwrqRtJLX1g4GfmQUZgqaZmzg1q
         x1XCz+ZIUB3mXwGWku/L7Q2v4G8WdBlz0XY2/vSyTo0WrQvL3YgRj0/Fvm5V78lNbDMw
         UjrceM1L3J7UxChCyN0h/BGw41vfgBgdXIXQXrjCz/lAjycnO0efzHUJSBGuAfJGUBBn
         S53TUUCyhwwG4fjCPeG75qZYge/pZV+CJs6oQ0eDIaL7dALk0K5NjZa/NbKj91dZwqHZ
         Bf1hIEctjw9iOI365SaMPFHQhL4ChpdKDfNt93DtL07ZZaQLxnkGjZfO8FG59DhBfA43
         IsaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SNm+b4HE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 138si149044pfa.6.2020.03.23.05.12.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 05:12:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SNm+b4HE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B41C320784;
	Mon, 23 Mar 2020 12:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584965526;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=SNm+b4HEwgRNVMWtvJ1XELuYLNlkuzGM7YoDz118AcY+v3wMwObAEzVQxvuyo05SR
	 W8HpFRt0b0IPicZGjYoFQxiVKoyHJtKuN+/fiNDe19RB3bwnGSbRTk7zUCoJLwQXdc
	 8/WDFFOEYXM/1fO3369GWalis7Gt3B3jYbBMznDQ=
Date: Mon, 23 Mar 2020 13:12:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on, again.
Message-ID: <20200323121203.GA800252@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

