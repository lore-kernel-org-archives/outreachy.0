X-GM-THRID: 6330587655423655936
X-Received: by 10.157.15.145 with SMTP id d17mr6883877otd.21.1473957529940;
        Thu, 15 Sep 2016 09:38:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.100 with SMTP id l91ls3965986otl.14.gmail; Thu, 15 Sep
 2016 09:38:49 -0700 (PDT)
X-Received: by 10.157.35.244 with SMTP id t107mr6870698otb.2.1473957529442;
        Thu, 15 Sep 2016 09:38:49 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 142si3045012pfx.2.2016.09.15.09.38.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 09:38:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C11D58D9;
	Thu, 15 Sep 2016 16:38:48 +0000 (UTC)
Date: Thu, 15 Sep 2016 18:38:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Doubts Regaarding the checkpatch.pl
Message-ID: <20160915163855.GD30633@kroah.com>
References: <eb4ec0a3-54df-4a86-a7d5-85c77aea38c2@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eb4ec0a3-54df-4a86-a7d5-85c77aea38c2@googlegroups.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 15, 2016 at 08:53:18AM -0700, Anchal Jain wrote:
> In checkpatch.pl tool only considers those patch which fixes the
> warning and errors.

What do you mean by this?

> Those patch fixes the CHECK using checkpatch.pl tool. It is considered
> in the patch or not?

I'm sorry, but I can not parse this, can you rephrase it?

thanks,

gre gk-h

