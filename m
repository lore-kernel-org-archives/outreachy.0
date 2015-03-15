X-GM-THRID: 7359371935744
X-Received: by 10.182.91.79 with SMTP id cc15mr60337535obb.20.1426415698432;
        Sun, 15 Mar 2015 03:34:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.25.196 with SMTP id 62ls2332521qgt.29.gmail; Sun, 15 Mar
 2015 03:34:58 -0700 (PDT)
X-Received: by 10.236.19.8 with SMTP id m8mr59918729yhm.53.1426415698294;
        Sun, 15 Mar 2015 03:34:58 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1282314pac.0.2015.03.15.03.34.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:34:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1E9B013;
	Sun, 15 Mar 2015 10:34:56 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:34:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750: Replace 'foo *
 bar' with 'foo *bar'
Message-ID: <20150315103453.GA2675@kroah.com>
References: <1426025262-8878-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1426025262-8878-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 11, 2015 at 12:07:42AM +0200, Ioana Ciornei wrote:
> Remove space after * in pointer type, to follow the Linux coding style.
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 171 ++++++++++++++++++++--------------------
>  1 file changed, 86 insertions(+), 85 deletions(-)

This patch doesn't apply at all to my tree :(

