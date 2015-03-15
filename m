X-GM-THRID: 7714883239936
X-Received: by 10.42.183.206 with SMTP id ch14mr52232739icb.24.1426415927136;
        Sun, 15 Mar 2015 03:38:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.8.98 with SMTP id q2ls732393iga.33.gmail; Sun, 15 Mar 2015
 03:38:46 -0700 (PDT)
X-Received: by 10.66.221.165 with SMTP id qf5mr58546009pac.30.1426415926937;
        Sun, 15 Mar 2015 03:38:46 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l3si1282471pdo.0.2015.03.15.03.38.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:38:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BC9AC13;
	Sun, 15 Mar 2015 10:38:45 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:38:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/9] staging: sm750: Place space
 before after control flow instructions
Message-ID: <20150315103842.GA20049@kroah.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>
 <864a11697be94a3e1a6ab6b12c5b9946cd99761e.1426188525.git.ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <864a11697be94a3e1a6ab6b12c5b9946cd99761e.1426188525.git.ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 12, 2015 at 09:58:45PM +0200, Ioana Ciornei wrote:
> Place space between control flow instructions such as: if, switch,
> while etc and '(' in order to improve readability.
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 180 ++++++++++++++++++++--------------------
>  1 file changed, 90 insertions(+), 90 deletions(-)

Also does not apply at all :(

