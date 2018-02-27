X-GM-THRID: 6527220059011547136
X-Received: by 10.25.201.204 with SMTP id z195mr833169lff.32.1519756771632;
        Tue, 27 Feb 2018 10:39:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.79 with SMTP id l76ls239686lfe.1.gmail; Tue, 27 Feb
 2018 10:39:30 -0800 (PST)
X-Google-Smtp-Source: AG47ELv5XphsWIj8Np0SqigEU6XNPCTnXO2GCU/+u3ODRocYVyklTysdY3IE9RBqmYqFdsb6+zbw
X-Received: by 10.25.0.140 with SMTP id 134mr1123682lfa.9.1519756770141;
        Tue, 27 Feb 2018 10:39:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519756770; cv=none;
        d=google.com; s=arc-20160816;
        b=IC1S2VB47qR4K5i9CmcPytZVjA8Np6Yel9Ze+FhTpDnRHPkzqLjnxTrVcjpnvyvRO5
         PcsVQ0o613VdSgRc86laraiUIr+PezFgsaawUdQx9Wzp2Wg56//E8hJnXn/nvyfx+SIM
         Gm0mzhNvOJdAvAY8iHlLigce4yIw0PlBWqcw+0bBGoKItnli1lydOLZK/pZRMJX9CCWd
         AVXyCgZ/cng4hEQH94ye/13mvk4BPd8ofaiXP9LysNW60kOh72++d7PWAQDoTSv9UHRz
         kpN74JwwF9TZfZQ7/uSNpPI//ecSvvxc3ngROOk5PdxNO+xx6h/crvHQsgAqfR7ylbpv
         /DCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=ZCFNVBr/ekndnn5LpC9ExrdfIjXpCTjmtFL1bzOgNTY=;
        b=QCxCV1JA3Ekk9rfN3oma7ncEq1xJxVyYX23UlpzcwqMCTJzUSAps7XHyHWl6hwf5as
         547eLaEDlFpFZ45/kU+L0pvdPDJkMHT9WncidJn0JEgIvtRRreNv1YPr0OdxDoKcl5X3
         3tExzPozGCI8XUwlc3E3ZopKfvZzdFbq07JwS/JbYxOxCr1iSTCPCklMdKf9fqWPJv9A
         GiozCS2GwOE9kfUZtZJ9AOVcDlTvcx7+HoMbVj+XUPogXoySw4YtS9XrckQckhMAf3WF
         5H3yG41DUt0ktS8XVdScnwMRW2pKmYhjROFkOMDrjZnIRXOrTuX3YSGjM7fM140iVChA
         Dm+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m18si512333lfj.0.2018.02.27.10.39.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 10:39:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (clnet-b04-243.ikbnet.co.at [83.175.124.243])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 04BA01143;
	Tue, 27 Feb 2018 18:39:27 +0000 (UTC)
Date: Tue, 27 Feb 2018 19:39:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Difficulty with git email
Message-ID: <20180227183929.GH20601@kroah.com>
References: <CAK-LDb+Wr14J8yE36Uzc-cSecuof4dh+15z8UuZp=OBF-=87ug@mail.gmail.com>
 <1519739244-3684-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1519739244-3684-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Tue, Feb 27, 2018 at 07:17:24PM +0530, Nishka Dasgupta wrote:
> Hi,
> I am still having trouble with sending patches through git send-email (which is what I'm using instead of mutt). As you can see, I appear to have figured it out with regards to regular text replies to messages, but I still don't understand how to do it in a patch. How can I separate the message from the commit title in a patch submission? 

You should have a blank line from the first line of the commit message
(the short summary), and the larger changelog text.  That will cause the
patch to be converted into the first line being the subject of the
email, and the rest of the text to be the body.

Look at any of the commits in the kernel tree already for examples of
how to do this.

Hope this helps,

greg k-h

