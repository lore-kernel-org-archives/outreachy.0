X-GM-THRID: 6205086344963686400
X-Received: by 10.129.107.139 with SMTP id g133mr3657669ywc.38.1444746344305;
        Tue, 13 Oct 2015 07:25:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.116 with SMTP id u107ls3292043qgd.54.gmail; Tue, 13 Oct
 2015 07:25:43 -0700 (PDT)
X-Received: by 10.129.56.7 with SMTP id f7mr28465396ywa.52.1444746343797;
        Tue, 13 Oct 2015 07:25:43 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id wl2si323565pab.1.2015.10.13.07.25.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 07:25:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (24-104-73-111-ip-static.hfc.comcastbusiness.net [24.104.73.111])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9D5E7258;
	Tue, 13 Oct 2015 14:24:46 +0000 (UTC)
Date: Tue, 13 Oct 2015 07:24:46 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Fix various issues
Message-ID: <20151013142446.GA7818@kroah.com>
References: <cover.1444733999.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444733999.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 13, 2015 at 04:33:56PM +0530, Shivani Bhardwaj wrote:
> This patch removes unused code and changes the variable type to more
> effective one.
> After applying this patch, code becomes better.

Ok, not to pick on just this patch, but everyone's 0/X emails need a bit
more work please.

First off, they need 'staging' in them, and then need to be a bit more
descriptive as to what the patch series does (hint, this one is really
vague.)

Don't worry about this one, I'll take it, but in the future, if
_everyone_ could work on their 0/X emails, I would greatly appreciate
it.

thanks,

greg k-h

