X-GM-THRID: 6811389983474057216
X-Received: by 2002:a05:6808:d9:: with SMTP id t25mr2157000oic.22.1585900314186;
        Fri, 03 Apr 2020 00:51:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2e7:: with SMTP id 94ls2694492otl.6.gmail; Fri, 03 Apr
 2020 00:51:53 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ8hdJ4g10bAdBn1iqXLRnpO/LGOMueaagTzqS/NMZAfCEvJ54sh+A3LoLobaFAiGEM5UEF
X-Received: by 2002:a9d:340b:: with SMTP id v11mr5369951otb.14.1585900313063;
        Fri, 03 Apr 2020 00:51:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585900313; cv=none;
        d=google.com; s=arc-20160816;
        b=0kf+bt8E3YmllYDj2CCFbB60x+nH8g91ZfCLt3zV4KthUw07vT+ID6I0qPoIifBg5h
         RNNm//IcIQTExlf1Rkl5ums7Zjow1LyeaRZy87xW22+ls2E/YIEXepIt9mRjNP/t8Hru
         Bx7W5vXa0LQproUMoADn4pV9KSu4oqWD69ivIAqLCHrAV4L/e3+FlogWyEEC9Pl627Q0
         oYsb1EP7SqUOtACRfw4N/Vdq0kQjgMQKHnOUT6Wc+WocQ9WrLbfHkD+OiFvwddqHiUTT
         /hvnR0rl4vj7JFgDT5T4uohpD7dbv5qXejfkBejrhQqCgeXPdedpD818aZ//ikDqO5Y2
         8wow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=PMChUJBF9fiKFwNp2fxhBg2yPGfmmYw6fX6Vr+bvw4ORkc3iwAoKBNX7k53cgPydct
         jcHT1jGW6y2ztbN8RjM9hNmtYd4H0W+VrZJzfmTBp71TvaqIre583ePQapILuNEiSW07
         QVJzYeKRuJIBMja2TMulEovmtoJhthPbFW5Li3uHdhYExN21wqpa/W+ERKpqiICEvsDT
         Wch4PyGpenLjID9vDvKBEvzIhmjYrsWiNr3Ftt1fnZX/SAf6g21kfZMvVS9KtiyHh0iO
         P/kjXO14+rgNtrvHcaeu8eUp85Ud1lEGu50Z078Z+8VAxozYx/uWrXFa4yzVEFpSpP7R
         cmQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e7hjKbdz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d188si616493oig.0.2020.04.03.00.51.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 00:51:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e7hjKbdz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8F9DD2073B;
	Fri,  3 Apr 2020 07:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585900312;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=e7hjKbdzPW3Q3pWTK5BJYTUGT6yEIBXUUZAqnqeJcEMc9MCK07dQ+URWgrzxcBuu7
	 N9WOTisZ+9j3/JkREgZnBw/Vt4Z8czZDPHAgjzFZkGzfMgzHxEc4EN9T6kJq5Zo9sD
	 N7O/oA77oMkkZwQc3HhQDPavIQFgzc6+5D/ILz1s=
Date: Fri, 3 Apr 2020 09:51:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on, yet again.
Message-ID: <20200403075149.GA3517426@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

