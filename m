X-GM-THRID: 6529805913740541952
X-Received: by 10.28.99.8 with SMTP id x8mr1361969wmb.13.1520338913607;
        Tue, 06 Mar 2018 04:21:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.77 with SMTP id v74ls2047823wmv.7.canary-gmail; Tue, 06
 Mar 2018 04:21:52 -0800 (PST)
X-Google-Smtp-Source: AG47ELtYXXK6EQD6cqI9YnjYx6LfHSBHfuUXntWj0f5MTapDi7K9KN5LxctRoVOGEoxmBDar4WWw
X-Received: by 10.28.52.142 with SMTP id b136mr1006652wma.13.1520338912687;
        Tue, 06 Mar 2018 04:21:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520338912; cv=none;
        d=google.com; s=arc-20160816;
        b=Jc8QyYa+1qbsQ/79agKT+QRVPOVMV69a5sbmtKJtCm1WiRLIT8oO/Xr/bRxR+N5sCF
         In++CR6USi01klP1kaD5KrbsReJMBQJdhXJVQ6Fs2y8Lt7wSvhmyn6lHfyA9EGwYVof6
         ZVe8HxkrHcaV1AqdlwD5Cpc9ueJ7otiKnqnc5GaOlJANX4QF8BMsZXLYFwb7ZS98CX7m
         Be63l8HH51xFKmxnqmPD7UyklIJX94OzTVy9O4GJ/Dym2k0HQ2vXxuA00iQCTddkyBdo
         Vr3nl2H1eFKhASAvIznYIeMhZD6eSjEtRDOd/sP5oK6I8kJnyk+/58z+mv2gL8fjaOG8
         U+Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:arc-authentication-results;
        bh=Lc+a1wp73+9kXqAltq/NIzpjpzN3Hbyh/NlfKCf/Y/I=;
        b=Yaj8SKmcZxm10p6om+lgwSaOWoy5vgXNR3ELu9FakPCsSnETLNrziiu7IF5bgQQ6Ra
         +2utTgsvl1q5ohFA24jxiWuo1ayPaKz/KBgjs2KOO/wBH/NVIx19nD/QHgxWUgCf6cSQ
         iBkc4Kr6BdwTkVbwycDdeVeE+ynSq80SqgbP13CHSJLnexk/p0ZlEqUDx/oGzby3bfOB
         Z/UDHBoyHFG9feHVkbVld93KfiuXupTXCXLA/ksWrVzqW62ltvq+kEGfkfNW9LI5C2GQ
         XJFqsrbtwJTjKG1vhNHJhjHf0UC6rSExR+Q8wtr2pQ6bDdRLpd7RbhcaACL7qGkcQA57
         LT8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l1si368838wmc.0.2018.03.06.04.21.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Mar 2018 04:21:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [185.236.200.248])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 17364901;
	Tue,  6 Mar 2018 12:21:50 +0000 (UTC)
Date: Tue, 6 Mar 2018 04:21:54 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20180306122154.GA5088@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply
(i.e. ones for the drivers/staging/ tree that are not media patches.)

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

