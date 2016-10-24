X-GM-THRID: 6341070364600172544
X-Received: by 10.36.149.136 with SMTP id m130mr1250826itd.18.1477315746412;
        Mon, 24 Oct 2016 06:29:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.66 with SMTP id t2ls146187ott.0.gmail; Mon, 24 Oct 2016
 06:29:05 -0700 (PDT)
X-Received: by 10.31.169.22 with SMTP id s22mr10145354vke.34.1477315745908;
        Mon, 24 Oct 2016 06:29:05 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id qv3si2381767pab.2.2016.10.24.06.29.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Oct 2016 06:29:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2BA90950;
	Mon, 24 Oct 2016 13:29:05 +0000 (UTC)
Date: Mon, 24 Oct 2016 15:29:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	forest@alittletooquiet.net
Subject: Re: [PATCH] staging: vt6655: Fix line over 80 characters.
Message-ID: <20161024132912.GA20773@kroah.com>
References: <20161013215008.GA21291@euri>
 <20161014072754.GA5464@kroah.com>
 <fcecb65b-9fdd-4662-8485-4320d03b4616@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fcecb65b-9fdd-4662-8485-4320d03b4616@googlegroups.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Thu, Oct 20, 2016 at 11:10:36AM -0700, Varsha Rao wrote:
> >People keep trying to "fix" these lines. Please just leave them as-is,
> >it's much easier to read them in the old way, right? And that takes
> >precedence over the "obey checkpatch.pl" movement.
> 
> � Okay, I will not change them. Can the fix line warning be removed ?
> � So that in future nobody else tries to fix them.

It's a script, there is no warning that could be removed, sorry.

greg k-h

