X-GM-THRID: 6389561220722065408
X-Received: by 10.157.43.47 with SMTP id o44mr1273395otb.1.1487956351346;
        Fri, 24 Feb 2017 09:12:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.78 with SMTP id u75ls1958084ioi.50.gmail; Fri, 24 Feb
 2017 09:12:30 -0800 (PST)
X-Received: by 10.99.109.14 with SMTP id i14mr1223197pgc.152.1487956350511;
        Fri, 24 Feb 2017 09:12:30 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d63si1545976pfe.2.2017.02.24.09.12.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 09:12:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E5E6E259;
	Fri, 24 Feb 2017 17:12:29 +0000 (UTC)
Date: Fri, 24 Feb 2017 18:12:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 2/2] staging: ks7010: Unnecessary parentheses are
 removed and also improved coding style.
Message-ID: <20170224171223.GB14009@kroah.com>
References: <20170222130111.GA28363@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170222130111.GA28363@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Wed, Feb 22, 2017 at 06:31:12PM +0530, Arushi Singhal wrote:
> Unnecessary parentheses are removed as reported by checkpatch.pl
> to make coder nicer and to improve readability.
> Also coding style is improved.For example:-
> It's often nicer to read if &(foo[0]) is converted to foo like:
>      memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
>      memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> Changes in v3:
>   - Commit message made more accurate and as per the changes.
>   - previously versions were not marked.

Where is patch 1/2?  And why does this have the same subject as another
patch you sent that was listed as patch 1/1?  Please fix up and send an
updated patch.

thanks,

greg k-h

